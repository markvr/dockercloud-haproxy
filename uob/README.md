This folder contains UoB specific code and docs.  All UoB only content should 
be in here, so it is easier to remove when sending PRs to upstream.

# Instructions

Run:

    vagrant up
    vagrant ssh
    sudo su
    cd /vagrant/uob
    

# Run tests

    ./run-tests

This will run the python unit tests.

# Build and run a test swarm and services

    ./run-swarm <ip>
    
where <ip> is the IP address of your VM that is pingable from Windows.  It probably starts with `172`.
This is used to tell swarm what IP to publish services on, and they can then be tested from a browser on 
Windows.
    
This will:

  - Build the haproxy image
  - Create a swarm
  - Deploy the webapp-stack.xml config with the new image.
  - Print the generated haproxy config file
   
When finished you should have a swarm with haproxy, and a tomcat service.

# Useful commands:

  - `./show-config` Show the haproxy.cfg file from within the container
  - `./show-logs` Show the haproxy config build logs
  - `docker deploy -c webapp-stack.xml webapps` Redeploy the webapps stack
