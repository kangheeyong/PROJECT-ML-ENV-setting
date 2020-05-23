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

