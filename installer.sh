#!/bin/bash

# By SkylineIsBack

echo "Installing zenity"
sudo apt install zenity
echo "Installed zenity"

if [[ -d ~/.icons ]]
then
    cp -r webappmanager.png ~/.icons
else
    mkdir ~/.icons
    cp -r webappmanager.png ~/.icons
fi
sudo cp -r webappmanager /usr/bin/
sudo chmod +x /usr/bin/webappmanager
cd ~/.local/share/applications/
echo "[Desktop Entry]
Type=Application
Encoding=UTF-8
Name=Web App Manager
Comment=A tool for creating Web Apps
Exec=webappmanager
Icon=webappmanager
Terminal=false" >> "webappmanager.desktop"
chmod +x webappmanager.desktop
zenity --info --title "Installer" --text "Successfully installed WebApp Manager" --no-wrap