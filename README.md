# autodarts-docker

A docker image for autodarts.

## Usage

### Docker

```bash
docker run -it --rm -v autodarts_data:/home/autodarts/.config/autodarts -p 3180:3180 ghcr.io/markhaehnel/autodarts
```

### Docke Compose

Download the [docker-compose.yml](docker-compose.yml) file:

```bash
wget https://raw.githubusercontent.com/markhaehnel/autodarts-docker/main/docker-compose.yml
```

Adjust the `docker-compose.yml` to your needs and run:

```bash
docker-compose up -d
```

# License

This code is licensed under the [MIT License](./LICENSE).