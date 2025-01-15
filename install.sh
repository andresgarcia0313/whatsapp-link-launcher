#!/bin/bash

# Variables
INSTALL_PATH="/usr/local/bin"
ICON_DEST="/usr/share/icons"
SCRIPT_NAME="whatsapp_handler.py"
SCRIPT_PATH="$INSTALL_PATH/$SCRIPT_NAME"
DESKTOP_FILE="/usr/share/applications/whatsapp-handler.desktop"

# Verificar permisos
[ "$EUID" -ne 0 ] && echo "Ejecuta con 'sudo' para instalar." && exit 1

# Copiar script e ícono
cp "$(dirname "$0")/$SCRIPT_NAME" "$SCRIPT_PATH"
chmod +x "$SCRIPT_PATH"

# Crear archivo .desktop
cat <<EOL >"$DESKTOP_FILE"
[Desktop Entry]
Name=WhatsApp Handler
Exec=$SCRIPT_PATH %u
Type=Application
Terminal=false
NoDisplay=true
MimeType=x-scheme-handler/whatsapp;
EOL

# Registrar protocolo
xdg-mime default whatsapp-handler.desktop x-scheme-handler/whatsapp

# Confirmación
echo "Instalación completada. Prueba con:"
echo "xdg-open 'whatsapp://send?phone=573012456984&text=Hola%2C%20mi%20nombre%20es%20Andrés.%20Háblame%20de%20negocios.'"
