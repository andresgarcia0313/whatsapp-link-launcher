#!/bin/bash

[ "$EUID" -ne 0 ] && echo "Ejecuta con 'sudo' para instalar." && exit 1

cp "$(dirname "$0")/whatsapp_handler.py" /usr/local/bin/whatsapp_handler.py
chmod +x /usr/local/bin/whatsapp_handler.py
cp "$(dirname "$0")/whatsapp-handler.desktop" /usr/share/applications/whatsapp-handler.desktop

xdg-mime default whatsapp-handler.desktop x-scheme-handler/whatsapp
