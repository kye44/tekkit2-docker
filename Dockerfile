FROM openjdk:8-jre-slim-buster

WORKDIR /minecraft

COPY ./launch.sh .

ENV SERVER_OP=""
ENV SERVER_MOTD="A Tekkit Server"
ENV SERVER_PVP="true"
# EULA false by default, needs setting to true via env variable.
ENV EULA="false"

# Install pre-reqs.
run apt-get update \
    && apt-get install -y --no-install-recommends curl unzip

# Download server.
run curl https://servers.technicpack.net/Technic/servers/tekkit-2/Tekkit-2_Server_v1.2.2.zip -o tekkit_server.zip

# Unzip files and tidy up.
run unzip tekkit_server.zip \
    && rm tekkit_server.zip

run chmod +x launch.sh

VOLUME /minecraft/world
VOLUME /minecraft/world_nether
VOLUME /minecraft/world_the_end

EXPOSE 25565/udp
EXPOSE 25565/tcp

CMD ["./launch.sh"]