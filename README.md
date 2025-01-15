
# WhatsApp Link Launcher

## Descripción

**WhatsApp Link Launcher** es una herramienta de línea de comandos que facilita el lanzamiento de enlaces de WhatsApp directamente desde tu sistema, abriéndolos en [WhatsApp Web](https://web.whatsapp.com). Este proyecto consiste en un script en Python y un archivo de configuración `.desktop` que permite ejecutar enlaces de WhatsApp con un solo clic.

El proyecto incluye un instalador Bash para configurar el script y los archivos necesarios en tu sistema.

## Requisitos

- **Linux** (Compatible con todos los Linux sin embargo se valido en distribución basadas en Debian, como Ubuntu)
- **Python 3** instalado en el sistema
- **xdg-open** (Generalmente preinstalado en sistemas Linux)
- Acceso a Internet para abrir WhatsApp Web

## Archivos incluidos

### `install.sh`
Un script en Bash que realiza la instalación del proyecto, asegurándose de que los archivos estén en las ubicaciones correctas y de que se registren los tipos MIME.

### `whatsapp_handler.py`
Un script en Python que maneja los enlaces de WhatsApp. Si se proporciona un enlace de WhatsApp con un número de teléfono y un mensaje, abre WhatsApp Web con el número y texto correspondientes.

### `whatsapp-handler.desktop`
Un archivo de escritorio que configura la asociación de enlaces `whatsapp://` en tu sistema, permitiendo que se manejen de forma automática con el script Python.

## Instalación

Para instalar el proyecto, sigue estos pasos:

1. Clona este repositorio en tu máquina:
   ```bash
   git clone https://github.com/andresgarcia0313/whatsapp-link-launcher.git
   cd whatsapp-link-launcher
   ```

2. Ejecuta el script de instalación:
   ```bash
   sudo ./install.sh
   ```

   **Nota**: Asegúrate de tener permisos de administrador para instalar los archivos en las ubicaciones correctas.

   Este script realizará lo siguiente:
   - Copiará el script `whatsapp_handler.py` a `/usr/local/bin/`.
   - Asignará permisos de ejecución al script.
   - Copiará el archivo `.desktop` a `/usr/share/applications/` para asociar el esquema `whatsapp://`.
   - Registrará el tipo MIME necesario para manejar los enlaces de WhatsApp.

3. El proyecto está listo para usarse.

## Uso

Para usar el script, simplemente debes proporcionar un enlace de WhatsApp en el siguiente formato:

```
whatsapp://send?phone=<número>&text=<mensaje>
```

### Ejemplo:
```bash
whatsapp://send?phone=1234567890&text=Hola,%20¿Cómo%20estás?
```

El script abrirá automáticamente [WhatsApp Web](https://web.whatsapp.com) en tu navegador con el número de teléfono y mensaje indicados.

### Ejemplo de ejecución:
Si prefieres ejecutar el script manualmente con Python:

```bash
python3 /usr/local/bin/whatsapp_handler.py "whatsapp://send?phone=1234567890&text=Hola"
```

Esto abrirá WhatsApp Web con el mensaje "Hola" para el número `1234567890`.

## Problemas comunes

### 1. **Permisos de instalación**

Si al ejecutar el script de instalación obtienes un error de permisos, asegúrate de ejecutar el script con `sudo`:

```bash
sudo ./install.sh
```

### 2. **Enlace no funciona**

Asegúrate de que el enlace tenga el formato correcto (`whatsapp://send?phone=<número>&text=<mensaje>`). Si el formato es incorrecto, el script no podrá abrir WhatsApp Web correctamente.

## Contribuciones

Si deseas contribuir a este proyecto, por favor sigue los siguientes pasos:

1. Haz un fork del repositorio.
2. Crea una nueva rama (`git checkout -b feature-nueva`).
3. Realiza tus cambios.
4. Haz commit de los cambios (`git commit -am 'Agrega nueva funcionalidad'`).
5. Haz push a tu rama (`git push origin feature-nueva`).
6. Abre un Pull Request en GitHub.

## Licencia

Este proyecto está bajo la Licencia GNU General Public License v3.0. Puedes leer la licencia completa en [GNU GPL-3.0](https://www.gnu.org/licenses/gpl-3.0.html).


Resumen de la licencia:

La licencia GPL-3.0 (Licencia Pública General de GNU versión 3) permite a los usuarios usar, modificar y distribuir software libremente, siempre que se mantenga la misma licencia en las modificaciones y versiones derivadas. Exige que el código fuente sea accesible y que cualquier distribución (incluso modificada) sea acompañada de la misma libertad de uso. Prohíbe restricciones adicionales sobre el software y protege contra la tivoización (bloqueo de modificaciones en hardware) y patentes de software. La GPL-3.0 también garantiza que el software se mantenga libre en el futuro.

## Contacto

- **Desarrollador**: Andrés García
- **GitHub**: [andresgarcia0313](https://github.com/andresgarcia0313)
- **Correo**: andresgarcia0313@gmail.com
