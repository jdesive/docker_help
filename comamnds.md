# Helpful Docker Commands
Made to quickly copy and paste commands.
## Docker

### Containers

#### Stop all containers:
```bash 
$ docker stop $(docker ps -a -q)
```

#### Remove all containers:
```bash
$ docker rm $(docker ps -a -q)
```

#### Remove all exited containers:
```bash
$ docker rm $(docker ps -a -f status=exited -q)
```

#### Stop & Remove all containers:
```bash
$ docker stop $(docker ps -a -q) | docker rm $(docker ps -a -q)
```

#### View logs of a conatainer:
Replace `<container>` with name or id of container your want to view the logs of. 
```bash
$ docker logs -f <container>
```

#### Execute on a container:
Replace `<container>` with name or id of container your want to execute a command on. 
Replace `<command>` with the command you want to execute.
```bash
$ docker exec <container> <command>
```

#### Execute on a container: (Interactive)
Replace `<container>` with name or id of container your want to execute a command on. 
```bash
$ docker exec -it <container> sh
```
```bash
$ docker exec -it <container> bash
```

## Images

#### Remove all dangling images:
```bash
$ docker rmi $(docker images -f dangling=true -q)
```

#### Remove all images: (Force)
```bash
$ docker rmi -f $(docker images -a -q)
```

#### Remove all images:
```bash
$ docker rmi $(docker images -a -q)
```

#### Build a tagged image:
```bash
$ docker build --tag image-name:latest .
```

### Volumes

#### Remove all dangling volumes:
```bash
docker volume rm $(docker volume ls -f dangling=true -q)
```

### Registry

#### Login to Docker registry:
```bash
$ docker login -u user -p pass registry.example.com
```

#### Push image to remote registry: (Must login first)
```bash
$ docker push image-name:latest
```

### Docker hub

#### Login to docker hub
```bash
$ docker login -u user -p pass
```

#### Commit containers
```bash
$ docker commit <container ID> <repo name>/<Name you want to give the image>
```

### Push to docker hub
```bash
$ docker push <repo name>/<Name you gave the image>
```
