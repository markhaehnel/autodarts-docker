# autodarts-docker

A docker images for [autodarts](https://github.com/autodarts/releases).

The images are built for the amd64 and arm64 architectures.

## Usage

### Docker

```bash
docker run -it \
  -v autodarts_data:/home/autodarts/.config/autodarts \
  --device /dev/video0 \
  --device /dev/video1 \
  --device /dev/video2 \
  -p 3180:3180 \
  ghcr.io/markhaehnel/autodarts:latest
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

# Configuration

The configuration is stored in `/home/autodarts/.config/autodarts` inside the container. You can mount a volume to persist the configuration.

The examples above use the volume `autodarts_data` to persist the configuration.

# License

This code is licensed under the [MIT License](./LICENSE).