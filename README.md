# Aria 2 Docker

Very small docker container running aria2 with RPC connection open.

**- Runs on Raspberry Pi !**

Docker Image Repo : https://hub.docker.com/r/benkey0/aria2docker

Docker Compose Example :

``` 
version: "3"
services:
  aria2docker:
    image: benkey0/aria2docker:latest
    container_name: aria2docker
    volumes:
      - /pathtoyourdownloads:/downloads
    ports:
      - 6800:6800/tcp
    restart: unless-stopped
```

**Note : Current Secret Key is "mysecret"**

Todo :

- Add Env for secret
- Allow customer .conf file
- Expose more settings as Env for easy deployment
- Add comments to example .conf
