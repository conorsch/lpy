DEFAULT_GOAL := container

container:
	docker build -t lpy docker/
