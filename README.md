# docker-dst

## Usage

### CLI

``` bash
docker run -e CLUSTER_TOKEN="" -e CLUSTER_NAME="" -p 10998-11000:10998-11000/udp -v ~/.klei:/root/.klei -dit inscorpio/docker-dst
```

### Docker Compose

- docker-compose.yml

``` yml
version: '3.5'
services:
  dst:
    image: inscorpio/docker-dst
    environment:
      - CLUSTER_TOKEN=
      - CLUSTER_NAME=
    ports:
      - 10998-11000:10998-11000/udp
    volumes:
      - ~/.klei:/root/.klei
```

- cli

``` bash
docker-compose up -d
```

## Environment variables

### **Required**

- `CLUSTER_TOKEN`
  - Open the [Klei Account](https://accounts.klei.com/account/game/servers?game=DontStarveTogether) page
  - Then, select a cluster token, it like `pds-g^xxx^xxx`

### Cluster config

- `CLUSTER_NAME`
  - Default: 'Super Server'
- `CLUSTER_DESCRIPTION`
  - Default: 'This server is super duper!'
- `CLUSTER_PASSWORD`
  - Default: ''
- `MAX_PLAYERS`
  - Default: 6
- `GAME_MODE`
  - Default: 'survival'
- `CLUSTER_DIR_NAME`
  - Default: 'Cluster_1'

