!#/bin/sh

echo "installing software now. please wait..."
sudo apt update
sudo apt upgrade -y
sudo apt install ffmpeg
sudo apt install htop
sudo apt install neofetch
sudo apt install gnome-tweaks
sudo apt install vlc
sudo curl -L https://github.com/yt-dlp/yt-dlp/releases/latest/download/yt-dlp -o /usr/local/bin/yt-dlp

echo "creating directories & unpacking assets now. please wait..."
mkdir ~/.themes
mkdir ~/.icons
tar -xf ~/Downloads/pop_setup/themes/WhiteSur-dark.tar.xz -C ~/.themes
tar -xf ~/Downloads/pop_setup/themes/WhiteSur-dark-solid.tar.xz -C ~/.themes
tar -xf ~/Downloads/pop_setup/themes/WhiteSur-light.tar.xz -C ~/.themes
tar -xf ~/Downloads/pop_setup/themes/WhiteSur-light-solid.tar.xz -C ~/.themes
tar -xf ~/Downloads/pop_setup/icons/01-WhiteSur.tar.xz -C ~/.icons
tar -xf ~/Downloads/pop_setup/cursors/McMojave-cursors.tar.xz -C ~/.icons
cp -R ~/Downloads/pop_setup/personal_wallpapers ~/Pictures

echo "configuring system now. please wait..."
sudo chmod a+rx /usr/local/bin/yt-dlp
sudo ln -s /usr/bin/python3 /usr/bin/python
sudo ufw enable

echo "preparing to finish & reboot. please wait..."
sleep 5
sudo reboot now

exit 0