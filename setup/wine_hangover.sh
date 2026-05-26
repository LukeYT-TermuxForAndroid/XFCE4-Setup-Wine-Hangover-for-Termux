clear
echo -e "\e[32mUpdating & Upgrading\e[0m"
pkg update && pkg upgrade -y
clear
echo -e "\e[32mInstalling Wine Hangover\e[0m"
pkg install hangover*
wget -O wine.tar.xz https://github.com/alexvorxx/hangover-termux/releases/download/9.22/wine_hangover_9.22_bionic_build_patched.tar.xz
tar -xf wine.tar.xz
cd wine_hangover/arm64-v8a
mv bin/ /data/data/com.termux/files/usr/
mv lib/ /data/data/com.termux/files/usr/
mv share/ /data/data/com.termux/files/usr/
clear
echo -e "\e[32mRunning Wine Explorer\e[0m"
wine explorer
