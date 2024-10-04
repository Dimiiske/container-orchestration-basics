## Part 1. Running multiple docker containers using docker compose

1) Write a Dockerfile for each individual microservice. The necessary dependencies are described in the materials. Write the size of the built images of any service in the report in different ways.

Dockerfile for services:

   <img src="./Part1/Dockerfiles/dockerfile-booking.png" width="700"/>

Database-service:

   <img src="./Part1/Dockerfiles/dockerfile-db.png" width="700"/>

Images size:

   <img src="./Part1/Dockerfiles/images-size.png" width="700"/>


2) Write a docker-compose file that performs a correct interaction of services. Forward ports to access the gateway service and session service from the local machine. 

   <img src="./Part1/docker-compose/part1.png" width="700"/>
   
   <img src="./Part1/docker-compose/part2.png" width="700"/>

   <img src="./Part1/docker-compose/part3.png" width="700"/>

3) Build and deploy a web service using a docker compose file written on the local machine.

   ``` docker-compose -f ./Part1/docker-compose/docker-compose_local.yml build ```

   ``` docker-compose -f ./Part1/docker-compose/docker-compose_local.yml up -d ```

4) Run the tests you have prepared through postman and make sure they are all successful. You can find instructions on how to run the tests in the materials. Write the test results in the report.

   <img src="./Part1/postman-test/postman-test.png" width="700"/>
   
## Part 2. Creating virtual machines

1) Install and initialize Vagrant at the root of the project. Write a Vagrantfile for one virtual machine. Move the source code of the web service to the virtual machine's working directory.

Initialize VM:

   <img src="./Part2/vagrant_init.png" width="700"/>

Starting VM:

   <img src="./Part2/vagrant_up.png" width="700"/>


2) Use the console to go inside the virtual machine and make sure that the source code is in place. Stop and destroy the virtual machine.


   <img src="./Part2/vagrant_scp.png" width="700"/>

   <img src="./Part2/vagrant_destroy.png" width="700"/>

## Part 3. Creating a simple docker swarm

1) Modify Vagrantfile to create three machines: manager01, worker01, worker02. Write shell scripts to install docker inside machines, initialize and connect to docker swarm.

   <img src="./Part3/ex03/vagrantfile.png" width="700"/>

Shell-script:

   <img src="./Part3/ex00/script_sh.png" width="700"/>


2) Load the built images on the docker hub and modify the docker-compose file to load the images located on the docker hub.


   <img src="./Part3/dockerhub/docker_login.png" width="700"/>

   <img src="./Part3/dockerhub/tag_push.png" width="700"/>

   <img src="./Part3/dockerhub/dockerhubrep.png" width="700"/>

Modified docker-compose file:
   
   <img src="./Part3/ex03/part1.png" width="700"/>

   <img src="./Part3/ex03/part2.png" width="700"/>

   <img src="./Part3/ex03/part3.png" width="700"/>

   <img src="./Part3/ex03/part4.png" width="700"/>

3) Run virtual machines and move the docker-compose file to the manager. Run the service stack using the docker-compose file you wrote.

<img src="./Part3/ex03/deploy_stack.png" width="700"/>

However, when deploying the Docker Swarm stack, the laptop could not cope with the load.

<img src="./Part2/memory.png" width="700"/>

I had to set up servers on one of the cloud servers. Change addresses in shell script and Postman.

<img src="./Part2/cloud.png" width="700"/>

4) Configure an nginx-based proxy to access the gateway service and session service via the overlay network. Make the gateway service and session service themselves unavailable directly.

<img src="./Part3/ex03/nginx_compose.png" width="700"/>

5) Run the prepared tests through postman and make sure that they are all successful. Write the test results in the report.

<img src="./Part3/ex03/pass_test_server.png" width="700"/>

6) Using docker commands, show the distribution of containers by nodes in the report.

<img src="./Part3/ex03/cli_check_node.png" width="700"/>

7) Install a separate Portainer stack inside the cluster. Show a visualization of the distribution of tasks over the nodes using the Portainer in the report.

<img src="./Part3/ex03/portainer.png" width="700"/>


<img src="./Part3/ex03/visual.png" width="700"/>