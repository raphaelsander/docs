# Docker

## Livros e Documentações

- <https://livro.descomplicandodocker.com.br/>

## Introdução

Se você está tentando aprender o Docker, primeiro terá que dominar seus vários comandos de terminal. Este guia tem como objetivo ajudá-lo a começar com os comandos básicos do Docker.

Este tutorial pressupõe que você já tenha o Docker instalado em seu sistema. Caso contrário, você pode começar pelo link abaixo para aprender como instalar rapidamente o Docker. Recomendamos a instalação do Docker no sistema operacional Linux para melhor aproveitamento dos recursos.

<https://docs.docker.com/engine/install/>

---

## Working with Docker Containers

The below commands are docker commands that can be used when working with containers. Below you will learn how to create, remove, start and stop containers.

### Creating a Container

To create a simple container, use the below command and replace [IMAGE_NAME] with the name of the image you want to run. When you hit the enter key, Docker will search the Docker Hub for that image, download it to your system and create a stopped container.

```bash
docker create [IMAGE_NAME]
```

*Você pode encontrar várias imagens em [Docker Hub](https://registry.hub.docker.com).*

### Download de uma Imagem

Você pode baixar a imagem de alguma aplicação diretamente através do seguinte comando:

```bash
docker pull mysql
```

### Creating and Running a Container

To create and run a container, use this command. As with before, replace [IMAGE_NAME] with the name of the image that you want to run. This command will search the Docker Hub for the image that you specified, download it, create a container and start that container.

```bash
docker run [IMAGE_NAME]
```

ou

```bash
docker run [IMAGE_NAME] /bin/echo "Hello Docker!"
```

***/bin/echo** é o comando que será executado no docker ao iniciar.*  
***"Hello Docker!"** é o argumento do comando echo.*

### Starting a Stopped Container

To start a container on your system that is stopped, you can run the following command. Replace [CONTAINER_NAME] with the name or ID of the stopped container on your system that you would like to start.

```bash
docker start [CONTAINER_NAME]
```

### Stopping a Running Container

Use this command to stop a container on your system that is running. Once the container is stopped you can start it later by running the start command. Replace [CONTAINER_NAME] with the name or ID of your running container.

```bash
docker stop [CONTAINER_NAME]
```

### Restarting a Running Container

Occasionally you may need to restart a running container to give it a fresh start. Just replace [CONTAINER_NAME] with the name or ID of the container you would like to restart.

```bash
docker restart [CONTAINER_NAME]
```

### Pausing a Running Container

If you need to pause the process within a running container temporarily, run the following command after replacing [CONTAINER_NAME] with the name or ID of the container that you would like to pause.

```bash
docker pause [CONTAINER_NAME]
```

### Resuming a Paused Container

After pausing a container, you can resume a paused container by using the below command. Replace [CONTAINER_NAME] with the name or ID of the container that you need to resume.

```bash
docker unpause [CONTAINER_NAME]
```

### List Running Containers

If you need to view a list of running containers on your system, run the below command.

```bash
docker ps
```

or

```bash
docker container ls
```

### Removing a Container

In order to delete a container from your system you can run the following command. Replace [CONTAINER_NAME] with the name or ID of the container that you would like to delete.

```bash
docker rm [CONTAINER_NAME]
```

---

## Working with Docker Container Images

Docker container images are files that contain the operating system, application and initial state of a docker container. They can be built from Dockerfiles or created from containers that you already have running. The following docker commands will help you get started working with container images.

### Building an Image from a Dockerfile

A dockerfile is a list of commands that docker uses to create and build a container image. You can build an image from a dockerfile by running the below command. Repace [DOCKERFILE_PATH] with the URL to the dockerfile you would like to build from.

```bash
docker build -f [DOCKERFILE_PATH]
```

### Building an Image from a Container

You can also build an image from a running container. This is a quick to take a backup snapshot of a container that you are working with. Replace [CONTAINER_NAME] with the name of the container that you would like to create an image from. Replace [IMAGE_NAME] with the image name you would like to use for the newly created image.

```bash
docker commit [CONTAINER_NAME] [IMAGE_NAME]
```

### Pulling an Image from the Docker Hub

Use the below command to download an image from the Docker Hub to your system. Replace [IMAGE_NAME] with the name of the image used on the hub.

```bash
docker image pull [IMAGE_NAME]
```

### Pushing an Image to the Docker Hub

Before you push a container image to the docker hub, you must create an account at the docker hub and login from your terminal. Once you have your account ready, run the following command in your terminal:

```bash
docker login
```

You will then be asked for your docker hub username and password. Once you are logged in, you can push an image to the hub by using the following command. Replace [IMAGE_NAME] with the name of the image that you would like to push.

```bash
docker image push [IMAGE_NAME]
```

### List Container Images

If you need to view a list of images on your system, run the following command:

```bash
docker image ls
```

or

```bash
docker images
```

### Deleting an Image from your System

If you would like to remove an image from your system, use the following command, replacing [IMAGE_NAME] with the image name you would like to delete.

```bash
docker image remove [IMAGE_NAME]
```

---

## Working with Docker Volumes

Attaching Docker Volumes to containers via the docker run, or docker create commands will allow some of the data in your container to persist across image rebuilds. The following docker commands will help you get started with working with docker volumes.

### Create a Docker Volume

To create a docker volume run the following command. Replace [VOLUME_NAME] with what you want to call your new volume.

```bash
docker volume create [VOLUME_NAME]
```

### Remove a Docker Volume

Run the below command to remove a Docker Volume. Remember, if you delete a volume, you will delete any data stored within that volume. Replace [VOLUME_NAME] with the name of the volume that you want to remove.

```bash
docker volume rm [VOLUME_NAME]
```

### Inspect a Docker Volume

Sometimes you’ll need to view various details about a volume that you created. You can see those details by running the below command and replacing [VOLUME_NAME] with the name of the volume you would like to inspect.

```bash
docker volume inspect [VOLUME_NAME]
```

### List all Docker Volumes

If you need to view a list of all of the volumes on your system, you can type type the below command in terminal:

```bash
docker volume ls
```

---

## Working with Docker Networks

Docker networks determine how containers connect to each other, and the internet. Private networks can be created for various software application stacks to ensure data security. The below docker commands will allow you to easily work with docker networks.

### Creating a Docker Network

Tis command will create a bridge network on your system that connects containers to each other and shares the network and internet connection of the host machine. Replace [NETWORK_NAME] with the name you want your network to have.

```bash
docker network create [NETWORK_NAME]
```

### Connecting a Container to a Network

In order to connect a container to a new network use the following command. Replace [NETWORK_NAME] with the name of the network you want to connect the container to and replace [CONTAINER_NAME] with the container that you would like to connect to the network.

```bash
docker network connect [NETWORK_NAME] [CONTAINER_NAME]
```

### Disconnecting a Container from a Network

To disconnect a container from a network use the below command. Replace [NETWORK_NAME] with the name of the network you want to disconnect the container from and replace [CONTAINER_NAME] with the container that you would like to disconnect from the network.

```bash
docker network disconnect [NETWORK_NAME] [CONTAINER_NAME]
```

### Inspecting a Network

If you need to inspect details on a network type the following command. Replace [NETWORK_NAME] with the name of the network that you would like to inspect.

```bash
docker network inspect [NETWORK_NAME]
```

### Listing all Networks

The following command will list all of the networks on your system.

```bash
docker network ls
```

### Removing a Network

To delete a network from your system. Run the following command. Replace [NETWORK_NAME] with the name of the network that you would like to delete.

```bash
docker network rm [NETWORK_NAME]
```

---

## Additional Information

If you need any more help with any of these docker commands you can type append --help to the end of any of the above docker commands and type enter. If you need more information you can visit the [Docker Documentation](https://docs.docker.com/) page. Remember to prune your system after working with docker in order to free up system resources.

If there are any other Docker commands you would like to see added to this post, leave a comment below.
