DEFAULT_GOAL := container

container:
	docker build -t lpy docker/

dev: container
	docker run -it \
		--volume="$$HOME/.Xauthority:/user/.Xauthority:rw" \
		--env="DISPLAY" \
		--net=host lpy bash
