#Based on https://hub.docker.com/r/firilith/airprint
FROM firilith/airprint

#Xerox Phaser 6000b driver and any otherw 
COPY ./drivers .

RUN dpkg --add-architecture i386 && apt-get -y update && apt-get -y install libcupsimage2:i386 lib32stdc++6 && dpkg -i *.deb && apt-get clean && rm -f /var/lib/apt/lists/*_*
