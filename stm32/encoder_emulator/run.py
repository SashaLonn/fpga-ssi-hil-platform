import serial
import pygame
from pygame.locals import *
from OpenGL.GL import *
from OpenGL.GLU import *
import pywavefront

# --- KONFIGURATION ---
SERIAL_PORT = 'COM6'
BAUD_RATE = 115200
MODEL_FILE = r'C:\fpga-ssi-hil-framewor\fpga-ssi-hil-platform\stm32\encoder_emulator\Drone_Costum\Material\drone_costum.obj'

def read_latest_line(ser):
    """Läser ALLA väntande rader och returnerar bara den senaste,
    så vi aldrig visar eftersläpande data."""
    latest_line = None
    while ser.in_waiting:
        try:
            line = ser.readline().decode('utf-8').strip()
            if line:
                latest_line = line
        except UnicodeDecodeError:
            pass
    return latest_line

def draw_wavefront_scene(scene):
    """Ritar hela dronens geometri, materialgrupp för materialgrupp,
    så att varje del får sin egen färg."""
    glEnable(GL_COLOR_MATERIAL)
    glColorMaterial(GL_FRONT_AND_BACK, GL_AMBIENT_AND_DIFFUSE)

    for name, material in scene.materials.items():
        diffuse = material.diffuse if material.diffuse else (0.3, 0.3, 0.3, 1.0)
        glColor4f(*diffuse)
        _draw_material_vertices(material)

    glDisable(GL_COLOR_MATERIAL)


def _draw_material_vertices(material):
    """Tolkar material.vertex_format och ritar triangelströmmen korrekt,
    oavsett om den innehåller texturkoordinater/normaler eller inte."""
    fmt = material.vertex_format
    data = material.vertices

    has_t2f = 'T2F' in fmt
    has_n3f = 'N3F' in fmt
    has_c3f = 'C3F' in fmt

    stride = 0
    if has_t2f: stride += 2
    if has_n3f: stride += 3
    if has_c3f: stride += 3
    stride += 3  # V3F alltid sist

    glBegin(GL_TRIANGLES)
    for i in range(0, len(data), stride):
        chunk = data[i:i + stride]
        offset = 0
        if has_t2f:
            offset += 2  # hoppa över UV, vi struntar i texturer här
        if has_n3f:
            nx, ny, nz = chunk[offset:offset + 3]
            glNormal3f(nx, ny, nz)
            offset += 3
        if has_c3f:
            offset += 3
        vx, vy, vz = chunk[offset:offset + 3]
        glVertex3f(vx, vy, vz)
    glEnd()


def main():
    pygame.init()
    display = (800, 600)
    pygame.display.set_mode(display, DOUBLEBUF | OPENGL)
    pygame.display.set_caption("3D Drone HIL Visualizer")

    glClearColor(1.0, 1.0, 1.0, 1.0)
    gluPerspective(45, (display[0] / display[1]), 0.1, 100.0)
    glTranslatef(0.0, 0.0, -10.0)
    glEnable(GL_DEPTH_TEST)

    glEnable(GL_LIGHTING)
    glEnable(GL_LIGHT0)
    glLightfv(GL_LIGHT0, GL_POSITION, (5.0, 10.0, 10.0, 1.0))
    glLightfv(GL_LIGHT0, GL_AMBIENT, (0.4, 0.4, 0.4, 1.0))
    glLightfv(GL_LIGHT0, GL_DIFFUSE, (0.8, 0.8, 0.8, 1.0))

    try:
        # create_materials=True räcker - vi behöver INTE collect_faces längre,
        # eftersom vi ritar via scene.materials istället för scene.mesh_list
        scene = pywavefront.Wavefront(MODEL_FILE, create_materials=True, collect_faces=True)
        print(f"Modellen '{MODEL_FILE}' laddades framgångsrikt!")
    except Exception as e:
        print(f"Kunde inte ladda modellen: {e}")
        return

    try:
        ser = serial.Serial(SERIAL_PORT, BAUD_RATE, timeout=0.1)
        print(f"Ansluten till {SERIAL_PORT}!")
    except Exception as e:
        print(f"Serieport fel: {e}")
        return

    angle_x = 0.0
    angle_y = 0.0
    running = True
    while running:
        for event in pygame.event.get():
            if event.type == pygame.QUIT:
                running = False

        if ser.in_waiting:
            line = read_latest_line(ser)
            if line and ',' in line:
                try:
                    parts = line.split(',')
                    angle_x = float(parts[0])
                    angle_y = float(parts[1])
                except (ValueError, IndexError):
                    pass

        glClear(GL_COLOR_BUFFER_BIT | GL_DEPTH_BUFFER_BIT)
        glPushMatrix()
        glRotatef(angle_x, 1, 0, 0)
        glRotatef(angle_y, 0, 1, 0)
        glScalef(0.5, 0.5, 0.5)

        draw_wavefront_scene(scene)

        glPopMatrix()
        pygame.display.flip()
        pygame.time.wait(10)

    ser.close()
    pygame.quit()


if __name__ == '__main__':
    main()