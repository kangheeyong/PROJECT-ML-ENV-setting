
docker_container_remove:
	-sudo docker stop $$(sudo docker ps -a -q -f name=jeiger)
	-sudo docker rm $$(sudo docker ps -a -q -f name=jeiger)

docker_image_remove: docker_container_remove
	-sudo docker rmi $$(sudo docker images -q -f dangling=true)
	-sudo docker rmi $$(docker images -q -f reference=local/cuda:10.1-base)
	
docker_run:
	sudo docker build -t local/cuda:10.1-base -f docker/Dockerfile .
	sudo docker run --gpus all -d -ti -p 8090:8090 --name jeiger local/cuda:10.1-base

nvidia_docker_inastall:
	sh shell_script/nvidia-container-runtime-script.sh

nvidia_docker_test: 
	sudo docker run --gpus all nvidia/cuda:10.1-base nvidia-smi
