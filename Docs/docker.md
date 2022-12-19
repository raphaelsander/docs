# Docker

## Livros e Documentações

- <https://livro.descomplicandodocker.com.br/>

## Introdução

Se você está tentando aprender o Docker, primeiro terá que dominar seus vários comandos de terminal. Este guia tem como objetivo ajudá-lo a começar com os comandos básicos do Docker.

Este tutorial pressupõe que você já tenha o Docker instalado em seu sistema. Caso contrário, você pode começar pelo link abaixo para aprender como instalar rapidamente o Docker. Recomendamos a instalação do Docker no sistema operacional Linux para melhor aproveitamento dos recursos.

<https://docs.docker.com/engine/install/>

---

## Criando um Container

Para criar um simples container, iremos utilizar uma imagem existente no repositório do Docker Hub (repositório padrão do Docker).

```bash
$ # docker create <IMAGEM>
$ docker create ubuntu
19df91855054b401e8d86f83628c746c1c4cdff1cc5e1204b3ab134aa7a3b4de

$ docker ps -a
CONTAINER ID   IMAGE     COMMAND   CREATED          STATUS    PORTS     NAMES
19df91855054   ubuntu    "bash"    21 seconds ago   Created             laughing_hodgkin
$ # O argumento -a exibe todos os container
```

Podemos notar acima que o container foi criado utilizando a imagem do ``ubuntu`` e com nome aleatório gerado pelo próprio Docker, porém esse container foi apenas criado e não está em execução.

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

Em alguns casos queremos fazer uma limpeza de todos os containers em nosso ambiente, em execução ou não, para isso podemos utilizar a saída do comando ``docker container ls -a -q`` dentro do comando ``docker rm``. O argumento ``-q`` faz com que somente os IDs dos containers sejam exibidos e o argumento ``-a`` exibe todos os containers, em execução e parados. Outra opção é a utilização do comando ``docker ps -a -q``, sendo mais comum por ser mais rápido na digitação.

```bash
$ docker container ls -a -q
b83df1566372
780a3edaf439
f1f11e1391f1
c4690c8a17de

$ docker ps -a -q
b83df1566372
780a3edaf439
f1f11e1391f1
c4690c8a17de
```

Agora juntando a saída do comando anterior e utilizando dentro do ``docker rm`` e posteriormente verificando o número de containers com auxílio do comando ``wc -l`` podemos identificar que há **0** containers no ambiente após a limpeza.

```bash
$ docker rm $(docker ps -a -q)
b83df1566372
780a3edaf439
f1f11e1391f1
c4690c8a17de

$ docker ps -a -q | wc -l
0
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

## Using the Ubuntu Docker image

**Author:** Matthew Casperson  
**Date:** September 7, 2022 • 4 mins  
**Original Link:** <https://octopus.com/blog/using-ubuntu-docker-image>

The official Ubuntu Docker image is the most downloaded image from Docker Hub. With over one billion downloads, Ubuntu has proven itself to be a popular and reliable base image on which to build your own custom Docker images.

In this post, I show you how to make the most of the base Ubuntu images while building your own Docker images.

### An example Dockerfile

This is an example ``Dockerfile`` that includes the tweaks discussed in this post. I go through each of the settings to explain what value they add:

```Dockerfile
FROM ubuntu:22.04
RUN echo 'APT::Install-Suggests "0";' >> /etc/apt/apt.conf.d/00-docker
RUN echo 'APT::Install-Recommends "0";' >> /etc/apt/apt.conf.d/00-docker
RUN DEBIAN_FRONTEND=noninteractive \
  apt-get update \
  && apt-get install -y python3 \
  && rm -rf /var/lib/apt/lists/*
RUN useradd -ms /bin/bash apprunner
USER apprunner
```

Build the image with the command:

```bash
docker build . -t myubuntu
```

Now that you've seen how to build a custom image from the Ubuntu base image, let's go through each of the settings to understand why they were added.

### Selecting a base image

Docker images are provided for all versions of Ubuntu, including Long Term Support (LTS) releases such as 20.04 and 22.04, and normal releases like 19.04, 19.10, 21.04, and 21.10.

LTS releases are supported for 5 years, and the associated Docker images are also maintained by Canonical during this period, as described on the [Ubuntu release cycle page](https://ubuntu.com/about/release-cycle):

*These images are also kept up to date, with the publication of rolled up security updated images on a regular cadence, and you should automate your use of the latest images to ensure consistent security coverage for your users.*

When creating Docker images hosting production software, it makes sense to base your images from the latest LTS release. This allows DevOps teams to rebuild their custom images on top of the latest LTS base image, which automatically includes all updates, but is also unlikely to include the kind of breaking changes that can be introduced between major operating system versions.

I used the Ubuntu 22.04 LTS Docker image as the base for this image:

```Dockerfile
FROM ubuntu:22.04
```

### Not installing suggested or recommended dependencies

Some packages have a list of suggested or recommended dependencies that aren't required but are installed by default. These additional dependencies can add to the size of the final Docker image unnecessarily, as Ubuntu note in their blog post about reducing Docker image sizes.

To disable the installation of these optional dependencies for all invocations of ``apt-get``, the configuration file at ``/etc/apt/apt.conf.d/00-docker`` is created with the following settings:

```Dockerfile
RUN echo 'APT::Install-Suggests "0";' >> /etc/apt/apt.conf.d/00-docker
RUN echo 'APT::Install-Recommends "0";' >> /etc/apt/apt.conf.d/00-docker
```

### Installing additional packages

Most custom images based on Ubuntu require you to install additional packages. For example, to run custom applications written in Python, PHP, Java, Node.js, or DotNET, your custom image must have the packages associated with those languages installed.

On a typical workstation or server, packages are installed with a simple command like:

```bash
apt-get install python3
```

The process of installing new software in a Docker image is non-interactive, which means you don't have an opportunity to respond to prompts. This means you must add the ``-y`` argument to automatically answer "yes" to the prompt asking to continue with the package installation:

```Dockerfile
RUN apt-get install -y python3
```

### Preventing prompt errors during package installation

The installation of some packages attempts to open additional prompts to further customize installation options. In an non-interactive environment, such as during the construction of a Docker image, attempts to open these dialogs results in errors like:

```bash
unable to initialize frontend: Dialog
```

These errors can be ignored as they don't prevent the packages from being installed. But the errors can be prevented by setting the ``DEBIAN_FRONTEND`` environment variable to ``noninteractive``:

```Dockerfile
RUN DEBIAN_FRONTEND=noninteractive apt-get install -y python3
```

The Docker website provides [official guidance on the use of the DEBIAN_FRONTEND environment variable](https://docs.docker.com/engine/faq/#why-is-debian_frontendnoninteractive-discouraged-in-dockerfiles). They consider it a cosmetic change, and recommend against permanently setting the environment variable. The command above sets the environment variable for the duration of the single ``apt-get`` command, meaning any subsequent calls to ``apt-get`` will not have the ``DEBIAN_FRONTEND`` defined.

### Cleaning up package lists

Before any packages can be installed, you need to update the package list by calling:

```Dockerfile
RUN apt-get update
```

However, the package list is of little value after the required packages have been installed. It's best practice to remove any unnecessary files from a Docker image to ensure the resulting image is as small as it can be. To clean up the package list after the required packages have been installed, the files under ``/var/lib/apt/lists/`` are deleted.

Here you update the package list, install the required packages, and clean up the package list as part of a single command, broken up over multiple lines with a backslash at the end of each line:

```Dockerfile
RUN DEBIAN_FRONTEND=noninteractive \
  apt-get update \
  && apt-get install -y python3 \
  && rm -rf /var/lib/apt/lists/*
```

### Run as non-root user

By default, the root user is run in a Docker container. The root user typically has far more privileges than are required when running a custom application, and so creating a new user without root privileges provides better security.

The ``useradd`` command [provides a non-interactive way to create new users](https://manpages.ubuntu.com/manpages/jammy/en/man8/useradd.8.html).

This isn't to be confused with the ``adduser`` command, which is a [higher level wrapper](https://manpages.ubuntu.com/manpages/jammy/en/man8/adduser.8.html) over ``useradd``.

After all configuration files have been edited and packages have been installed, you create a new user called ``apprunner``:

```Dockerfile
RUN useradd -ms /bin/bash apprunner
```

This user is then set as the default user for any further operations:

```Dockerfile
USER apprunner
```

### Conclusion

It's possible to use the base Ubuntu Docker images with little customization beyond installing any required additional packages. But with a few tweaks to limit optional packages from being installed, cleaning up package lists after the packages are installed, and creating new users with limited permissions to run custom applications, you can create smaller and more secure images for your custom applications.

Learn how to use other popular container images:

- [Using the NGINX Docker image](https://octopus.com/blog/using-nginx-docker-image)
- [Using the HTTPd Docker image](https://octopus.com/blog/using-httpd-docker-image)
- [Using the Alpine Docker image](https://octopus.com/blog/using-alpine-docker-image)

---

## Additional Information

If you need any more help with any of these docker commands you can type append --help to the end of any of the above docker commands and type enter. If you need more information you can visit the [Docker Documentation](https://docs.docker.com/) page. Remember to prune your system after working with docker in order to free up system resources.

If there are any other Docker commands you would like to see added to this post, leave a comment below.
