all: image

image: Dockerfile
	docker build -t infoxchange/elasticsearch .

local: Dockerfile
	docker build -t elasticsearch .
