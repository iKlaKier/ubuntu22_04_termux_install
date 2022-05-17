mkdir -p ubuntu22_04-fs/var/tmp 
rm -rf ubuntu22_04-fs/usr/local/bin/* 
wget -q https://raw.githubusercontent.com/AndronixApp/AndronixOrigin/master/Rootfs/Ubuntu19/.profile -O ubuntu22_04-fs/root/.profile.1 
cat ubuntu22_04-fs/root/.profile.1 >> ubuntu22_04-fs/root/.profile  rm -rf ubuntu22_04-fs/root/.profile.1 
wget -q https://raw.githubusercontent.com/AndronixApp/AndronixOrigin/master/Rootfs/Ubuntu19/vnc -P ubuntu22_04-fs/usr/local/bin 
wget -q https://raw.githubusercontent.com/AndronixApp/AndronixOrigin/master/Rootfs/Ubuntu19/vncpasswd -P ubuntu22_04-fs/usr/local/bin 
wget -q https://raw.githubusercontent.com/AndronixApp/AndronixOrigin/master/Rootfs/Ubuntu19/vncserver-stop -P ubuntu22_04-fs/usr/local/bin 
wget -q https://raw.githubusercontent.com/AndronixApp/AndronixOrigin/master/Rootfs/Ubuntu19/vncserver-start -P ubuntu22_04-fs/usr/local/bin 
chmod +x ubuntu22_04-fs/root/.bash_profile 
chmod +x ubuntu22_04-fs/root/.profile 
chmod +x ubuntu22_04-fs/usr/local/bin/vnc 
chmod +x ubuntu22_04-fs/usr/local/bin/vncpasswd 
chmod +x ubuntu22_04-fs/usr/local/bin/vncserver-start 
chmod +x ubuntu22_04-fs/usr/local/bin/vncserver-stop 
touch ubuntu22_04-fs/root/.hushlogin 
echo "127.0.0.1 localhost localhost" > ubuntu22_04-fs/etc/hosts 
echo "nameserver 1.1.1.1" > ubuntu22_04-fs/etc/resolv.conf
chmod +x $folder/etc/resolv.conf
echo "fixing shebang of start-ubuntu22_04.sh"
termux-fix-shebang start-ubuntu22_04.sh
echo "making start-ubuntu22_04.sh executable"
chmod +x start-ubuntu22_04.sh
clear
echo "You can now launch Ubuntu with the ubuntu22_04.sh script form next time" 