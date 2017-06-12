.PHONY: all build bash run cloudtop
NAME=cloudtop
AUTHOR=ecno92
VERSION=$(shell date +'%Y%m%d.0')
FULLDOCKERNAME=$(AUTHOR)/$(NAME):$(VERSION)

all: build

artefacts/xrdp_0.6.3-devel_1_amd64.deb:
	docker build -f Dockerfile.artefacts --no-cache=false -t artefacts .
	docker run --rm --entrypoint cat artefacts /tmp/out/module-xrdp-sink.so > artefacts/module-xrdp-sink.so
	docker run --rm --entrypoint cat artefacts /tmp/out/xrdp_0.6.3-dev-1_amd64.deb > artefacts/xrdp_0.6.3-devel_1_amd64.deb
	docker run --rm --entrypoint tar artefacts cvf - /opt/X11rdp/ > artefacts/X11rdp.tar

build: artefacts/xrdp_0.6.3-devel_1_amd64.deb
	docker build -f Dockerfile.cloudtop --no-cache=false -t $(FULLDOCKERNAME) .
	@# and only now tag the built image as the "latest"
	docker tag $(FULLDOCKERNAME) $(AUTHOR)/$(NAME):latest

bash:
	docker run -it -p 3389:3389 --entrypoint /bin/bash $(AUTHOR)/$(NAME):latest

run:
	docker run --rm -it \
		--shm-size="1g" \
		--security-opt seccomp:${CURDIR}/artefacts/chrome.json \
		-p 3389:3389 \
		$(AUTHOR)/$(NAME):latest

cloudtop:
	rdesktop 127.0.0.1 -f -u cloudtop -p cloudtop -r "sound:local"
