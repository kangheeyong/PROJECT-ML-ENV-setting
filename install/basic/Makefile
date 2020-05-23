docker_container_remove:
	-sudo docker stop $$(sudo docker ps -a -q -f name=jeiger)
	-sudo docker rm $$(sudo docker ps -a -q -f name=jeiger)

docker_image_remove: docker_container_remove
	-sudo docker rmi $$(sudo docker images -q -f dangling=true)
	
docker_run:
	sudo docker build -t local/ubuntu:18.04-tensorflow .
	sudo docker run -d -ti -p 8090:8090 --name jeiger local/ubuntu:18.04-tensorflow

