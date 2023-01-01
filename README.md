# WireViz docker 
    
## Build image locally

    docker build -t wireviz-docker .

## Run Container Interactively 

    docker run -it wireviz-docker

## Run application inside container

    docker run --rm wireviz-docker wireviz --help

## Run application from Host by mounting current directory to the container's /home folder

    docker run --rm -u $(id -u):$(id -u) -v $(pwd):/home -w /home wireviz-docker wireviz FILE.yml

## Create alias in Host to run from command line 

    echo "Wireviz" >> /home/$USER/.bashrc
    echo "alias wireviz='docker run --rm -u $(id -u):$(id -u) -v $(pwd):/home -w /home wireviz-docker wireviz'" >> /home/$USER/.bashrc
    source /home/$USER/.bashrc
    wireviz FILE.yml
    
    
