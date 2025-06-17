#!/bin/bash

# Abhängigkeiten installieren
sudo apt update
sudo apt install -y python3 python3-pip python3-tk python3-xlib xdotool
sudo pip3 install pynput psutil requests

# Wayland-Support (optional)
sudo apt install -y ydotool
sudo systemctl enable --now ydotool

# Anwendung installieren
APP_DIR="/opt/ProjectLyrica"
sudo mkdir -p $APP_DIR
sudo cp -r . $APP_DIR

# Desktop-Verknüpfung erstellen
cat <<EOF | sudo tee /usr/share/applications/project-lyrica.desktop
[Desktop Entry]
Name=Project Lyrica
Comment=Music player for Sky: Children of the Light
Exec=$APP_DIR/ProjectLyrica.sh
Icon=$APP_DIR/resources/icons/icon.png
Terminal=false
Type=Application
Categories=Audio;Music;
Keywords=music;player;sky;
EOF

# Berechtigungen setzen
sudo chmod +x $APP_DIR/ProjectLyrica.sh

echo "Installation abgeschlossen! Die Anwendung findest du im Anwendungsmenü."