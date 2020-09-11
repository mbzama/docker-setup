
 ## For Windows: 

 Latest Version - OS version-> 10+: OS which supports Hyper-V, please follow the instructions
      
      https://docs.docker.com/v17.09/docker-for-windows/install/#start-docker-for-windows
 
 Older Version - OS version-> 7,8, 9, 10 (Home Edition): For legacy versions follow these instructions
 
      https://docs.docker.com/toolbox/toolbox_install_windows/
     
     

 ## For Mac OS: 
 Latest Version - Hardware must be a 2010 or a newer model & macOS must be version 10.13 or newer
 
        https://docs.docker.com/docker-for-mac/install/
        
 Older Version: 
  
        https://docs.docker.com/toolbox/toolbox_install_mac/
        
 
 ## For Ubuntu: 

    sudo apt-get update
    
    sudo apt-get remove docker docker-engine docker.io
    
    sudo apt install docker.io
    
    sudo apt install docker-compose
    
    

## Verify Installation: 

    docker run hello-world
    
    
It should print this in the console:
    
    	Hello from Docker!
        This message shows that your installation appears to be working correctly.

        To generate this message, Docker took the following steps:
         1. The Docker client contacted the Docker daemon.
         2. The Docker daemon pulled the "hello-world" image from the Docker Hub.
            (amd64)
         3. The Docker daemon created a new container from that image which runs the
            executable that produces the output you are currently reading.
         4. The Docker daemon streamed that output to the Docker client, which sent it
            to your terminal.

        To try something more ambitious, you can run an Ubuntu container with:
         $ docker run -it ubuntu bash

        Share images, automate workflows, and more with a free Docker ID:
         https://hub.docker.com/

        For more examples and ideas, visit:
         https://docs.docker.com/get-started/


## Working with Public Docker Registry:


1. Create account in dockerhub:

       https://hub.docker.com


2. Create docker repository with name as (Optional step)

       {repo_name}


3. Login to dockerhub registry

       docker login --username={user_name} 


4. Tag the image

       docker tag {image-name} {user_name}/{repo_name}


5. Upload the image to public docker registry:

       docker push {user_name}/{repo_name}
