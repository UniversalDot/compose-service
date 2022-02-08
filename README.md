![Logo](https://github.com/UniversalDot/documents/blob/master/logo/rsz_jpg-02.jpg)

# compose-service

Docker compose service that runs both the node and front-end on a single machine.



## Setup 

1. Install [docker](https://docs.docker.com/engine/install/)
2. Install [docker compose](https://docs.docker.com/compose/install/)
3. Download this repo via git.

```
git clone https://github.com/UniversalDot/compose-service.git
```

4. Navigate inside the folder...

```
cd compose-service
```
5. Run docker-compose command
```
docker-compose up -d
```
Note: -d flag stands for “detached” mode. When passing the '-d' flag we are running our services in the background.

6. Once docker-compose is up, navigate to the browser to open localhost on port 8000. This will open the substrate-front-end application in your browser.
```
http://localhost:8000
```

7. If you are installing on the server, you have to provide correct Server IP by configuring the - PROVIDER_SOCKET=ws://127.0.0.1:9944 in the front-end start.sh script.
After installing on the server, you can access the deployment at:

```
http://SERVERIP:8000
```

FINAL NOTE: The application is still under development so there might be problems based on current configurations or your environment/setup. This build script will be continuously improved.
