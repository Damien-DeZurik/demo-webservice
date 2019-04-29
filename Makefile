DOCKER_ID_USER=ddezurik
VER=v3

build:
	echo "[!] PREREQUISITE: Install Docker Desktop with auth to docker hub"

	docker images
	docker build -t localpoc:$(VER) .
	docker tag localpoc:$(VER) $(DOCKER_ID_USER)/dpoc:$(VER)
	docker push $(DOCKER_ID_USER)/dpoc

run:
	docker run -it $(DOCKER_ID_USER)/dpoc:latest
