#!/bin/bash

# Erstelle AppDir-Struktur
mkdir -p ProjectLyrica.AppDir/usr/bin
mkdir -p ProjectLyrica.AppDir/usr/share/project-lyrica

# Dateien kopieren
cp -r ProjectLyrica/* ProjectLyrica.AppDir/usr/share/project-lyrica/
cp ProjectLyrica.sh ProjectLyrica.AppDir/usr/bin/project-lyrica

# Desktop-Datei erstellen
cat <<EOF > ProjectLyrica.AppDir/project-lyrica.desktop
[Desktop Entry]
Name=Project Lyrica
Exec=project-lyrica
Icon=icon
Type=Application
Categories=Audio;
EOF

# Icon kopieren
cp resources/icons/icon.png ProjectLyrica.AppDir/icon.png

# AppImage erstellen
linuxdeploy --appdir ProjectLyrica.AppDir --output appimage