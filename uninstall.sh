#!/bin/bash

APP_DIR="/opt/ProjectLyrica"

# Anwendung entfernen
sudo rm -rf $APP_DIR

# Desktop-Verknüpfung entfernen
sudo rm /usr/share/applications/project-lyrica.desktop

# Abhängigkeiten entfernen (optional)
# sudo apt remove -y python3-pip xdotool ydotool
# sudo pip3 uninstall -y pynput psutil requests

echo "Deinstallation abgeschlossen."