clean:
	-find -name "*.un~" -exec rm {} \;
	-find -name "*.swp" -exec rm {} \;
	-find -name "*.pyc" -exec rm {} \;


docker_run:
	- mkdir ~/jeiger
	docker build -t local/ubuntu:18.04-tensorflow-cpu .
	docker run -d -ti --name jeiger\
		   -p 18000-19000:18000-19000\
		   -v ~/jeiger:/root/jeiger\
		   local/ubuntu:18.04-tensorflow-cpu

jupyter_run:
	jupyter notebook --no-browser --NotebookApp.token= --port 18000 --allow-root

docker_exec:
	docker exec -ti jeiger /bin/zsh --login

docker_container_remove:
	-docker stop $$(docker ps -a -q -f name=jeiger)
	-docker rm $$(docker ps -a -q -f name=jeiger)

docker_image_remove:
	-docker rmi $$(docker images -q -f dangling=true)
	-docker rmi $$(docker images -q -f reference=local/ubuntu)


