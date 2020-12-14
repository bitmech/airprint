




# first stage
FROM firilith/airprint

# second unnamed stage
#WORKDIR /opt/cecmonitor
COPY ./drivers .
# Install git, ssh and mariadb-dev
RUN dpkg --add-architecture i386 && apt-get -y update && apt-get -y install libcupsimage2:i386 lib32stdc++6 && dpkg -i *.deb && apt-get clean && rm -f /var/lib/apt/lists/*_*

#CMD [ "sh", "-c", "python ./cecmonitor.py -i $TV_IP_ADDRESS $ADDITIONAL_ARGS" ]
