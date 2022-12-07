![Logo](https://github.com/UniversalDot/documents/blob/master/logo/rsz_jpg-02.jpg)

# compose-service

Docker compose service that runs both the node and front-end on a single machine.

## Docker-compose Setup 


1. Download this repo locally via git.

```
git clone https://github.com/UniversalDot/compose-service.git
```
Install docker and docker-compose via script
```
sh install_docker.sh
```

4. Navigate inside the folder...

```
cd compose-service
```
5. Run docker-compose command
```
docker compose up -d
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

#### Docker-compose down

To stop all running containers simply run: 
```
docker-compose down
```

## Build Docker Node

To build a Docker Node image, please navigate to `node` folder where you can find the respective Dockerfile.

Once you are in the `node` folder, to build an image run:
```
docker build -t node:v01 .
```
This should build a local image based on the Dockerfile available. The image has a name `node` and version `v01`. 

To see the list of docker image once it is built, run the following command.
```
docker image ls
```

To run the docker image locally, run the following command:
```
docker run -it node:v01 
```

This will navigate to the working directory for the release. 
`/universaldot-node/target/release`

To start running temporary development node, simply use 
```
cargo run --release -- --dev --tmp
```
This will start the node. Note: you might want to use `--ws-external` to expose your node externally via web socket or alternatively you can use other parameters.

For more details regarding docker CLI commands, please refer to official docker [documentation](https://docs.docker.com/engine/reference/commandline/cli/)

### Supported by Web3 Foundation 
![Logo](https://github.com/UniversalDot/documents/blob/9d0a4c0c984bee503e13278f72049da7eae16c14/logo/web3grant/web3%20foundation_grants_badge_black.jpg)

UniversalDot is recipient of the technical grant from Web3 Foundation.
