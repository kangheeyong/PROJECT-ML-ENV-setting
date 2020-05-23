clean:
	-find -name "*.un~" -exec rm {} \;
	-find -name "*.swp" -exec rm {} \;
	-find -name "*.pyc" -exec rm {} \;

process_run: make_folder
	supervisord -c /home/PROJECT-ML-ENV-setting/supervisor/basic_process.conf

process_monitor:
	supervisorctl -s http://localhost:23231

make_folder:
	-mkdir ~/log

get_requirements:
	pip3 freeze > requirements.txt

docker_exec:
	sudo docker exec -ti jeiger /bin/zsh --login

docker_install_cpu:
	sh install/tensorflow-cpu/install.sh

docker_install_gpu:
	sh install/tensorflow-gpu/install.sh

docker_container_remove:
	-sudo docker stop $$(sudo docker ps -a -q -f name=jeiger)
	-sudo docker rm $$(sudo docker ps -a -q -f name=jeiger)

docker_image_remove:
	-sudo docker rmi $$(sudo docker images -q -f reference=local/ubuntu)
	
