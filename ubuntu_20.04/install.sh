apt-get update
dpkg --add-architecture i386
add-apt-repository multiverse
apt-get install wget gdebi-core libgl1-mesa-dri:i386 libgl1-mesa-glx:i386 steamcmd gcc-5 g++-5 lib32gcc1 curl -y
yum install glibc.i686 libstdc++.i686
dpkg --add-architecture i386
apt update
apt install lib32gcc1 steamcmd -y 

mkdir -p /srv/steam
mkdir -p /srv/avorion
mkdir -p /srv/galaxy
cd /srv/steam && curl -sqL "https://steamcdn-a.akamaihd.net/client/installer/steamcmd_osx.tar.gz" | tar zxvf -
./steamcmd +login anonymous +force_install_dir /srv/avorion +app_update 565060 validate +exit

# on docker EXPOSE of these ports will be enough, but we are doing it explicitly here for those of you who are running this 
# on real servers. on your local install all of these various commands may need to be adjusted to be `sudo` on each line.
# hoping to avoid that though haha.
ufw allow 27000/tcp
ufw allow 27000/udp
ufw allow 27003/udp
ufw allow 27020/udp
ufw allow 27021/udp