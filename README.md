# docker-terraria

A nice and easy way to get a Terraria server up and running using docker and TShock. For
help on getting started with docker see the [official getting started guide][0].
For more information on Terraria and check out it's [website][1].
You can simply take the image from the official repository with:

    docker.io pull izissise/terraria

## Building docker-terraria

Running this will build you a docker image with the latest version of both
docker-terraria and Armagetronad-0.2.9-sty+ct+ap itself.

    git clone https://github.com/izissise/docker-terraria
    cd docker-terraria
    docker.io build -t izissise/terraria .


## Running docker-terraria

Running the first time will set your port to a static port of your choice so
that you can easily map a proxy to. If this is the only thing running on your
system you can map the port to 7777 and no proxy is needed. i.e.
`-p=7777:7777`.

    docker.io run -i -t -p 7777:7777 --name="terraria" izissise/terraria

From now on when you start/stop docker-terraria you should use the container id
with the following commands. To get your container id, after you initial run
type `sudo docker.io ps` and it will show up on the left side followed by the
image name which is `izissise/terraria`.

    docker.io start <container_id>
    docker.io stop <container_id>

### Notes on the run command

 + `izissise/terraria` is simply what I called my docker build of this image
 + `-d=true` allows this to run cleanly as a daemon, remove for debugging
 + `-p` is the port it connects to, `-p=host_port:docker_port`

[0]: http://www.docker.io/gettingstarted/
[1]: http://www.terraria.org/
