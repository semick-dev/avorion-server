## Manual Steps for Avorion Server on Ubuntu 20.04

```bash
sudo apt-get install lib32gcc1
yum install glibc.i686 libstdc++.i686
mkdir <steamdir>
cd <steamdir> && curl -sqL "https://steamcdn-a.akamaihd.net/client/installer/steamcmd_osx.tar.gz" | tar zxvf -
./steamcmd +login anonymous +force_install_dir <steamdir>/<gamedir> +app_update 565060 validate +exit

# rest of example uses game dir of avorion. So it looks like /home/steam/Stream/avorion on my local ubuntu proto.
```

Permissions issues notwithstanding, that's the gist of it.

Get your 64bit steam id here
https://steamid.io/lookup/76561197980019233

This will be added onto the `--admin <steamid>` when running the server.

```bash
mkdir <avorion-server>
cd /home/steam/Steam/avorion && ./server.sh --galaxy-name the-melting-pot --admin 76561197980019233 --datapath <avorion-server>
```

Once you you've run the above command, you will be able to mess with the server.ini contained within it.

Also, this is the time to add multiple admins.

Add this to `admin.xml'`. Go find it.

`find <avorion-server> -iname admin.xml`

```xml
<administrators>
    <admin name="Meltdown" id="76561197980019233"/>
</administrators>
```

This is what the file structure looks like.

```

```

sudo ufw allow 27000/tcp
sudo ufw allow 27000/udp
sudo ufw allow 27003/udp
sudo ufw allow 27020/udp
sudo ufw allow 27021/udp

