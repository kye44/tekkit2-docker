### Tekkit2-Server
A docker image to spin up a Tekkit2 server.
Heavily inspired by [garrettheath4/tekkit-minecraft-docker](https://github.com/garrettheath4/tekkit-minecraft-docker/tree/master).
## Running the Server
### With Docker. 
1. Run `docker run -e EULA=TRUE -e SERVER_OP=[account name] -p 25565:25565 kyepurkis/tekkit2:latest`.

### With Docker Compose.
1. Update values in `docker-compose.yaml`.
1. Run `docker-compose up`.