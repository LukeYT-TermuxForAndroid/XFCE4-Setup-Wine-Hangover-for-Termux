clear
echo -e "\e[32mUpdating & Upgrading\e[0m"
pkg update && pkg upgrade -y
clear
echo -e "\e[32mInstalling Termux-x11\e[0m"
pkg install x11-repo -y
pkg install termux-x11-nightly -y
clear
echo -e "\e[32mInstalling PulseAudio\e[0m"
pkg install pulseaudio -y
clear
echo -e "\e[32mInstalling XFCE4 Desktop\e[0m"
pkg install xfce4 -y
clear
echo -e "\e[32mInstalling Chromium\e[0m"
pkg install tur-repo -y
pkg install chromium -y
wget https://raw.githubusercontent.com/LinuxDroidMaster/Termux-Desktops/main/scripts/termux_native/startxfce4_termux.sh
chmod +x startxfce4_termux.sh
clear
echo -e "\e[32mRunning XFCE4 Desktop\e[0m"
./startxfce4_termux.sh
