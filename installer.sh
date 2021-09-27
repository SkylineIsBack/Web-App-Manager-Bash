#!/bin/bash

# By SkylineIsBack

echo "Installing zenity"
sudo apt install zenity
echo "Installed zenity"

sudo cp -r webappmanager.png /usr/share/icons/
sudo cp -r webappmanager /usr/bin/
sudo chmod +x /usr/bin/webappmanager
cd /usr/share/applications/
sudo echo "[Desktop Entry]
Type=Application
Encoding=UTF-8
Name=Web App Manager
Comment=A tool for creating Web Apps
Exec=webappmanager
Icon=webappmanager
Terminal=false" >> "webappmanager.desktop"
sudo chmod +x webappmanager.desktop
zenity --info --title "Installer" --text "Successfully installed WebApp Manager" --no-wrap