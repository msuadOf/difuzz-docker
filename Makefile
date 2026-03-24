REPOSITORY = ghcr.io/msuadof
IMAGE = $(REPOSITORY)/difuzz-rtl
VERSION = v1.0

all: image

image:
	DOCKER_BUILDKIT=1 \
	docker build --no-cache --tag $(IMAGE):$(VERSION) .
	docker tag $(IMAGE):$(VERSION) $(IMAGE):latest

.PHONY: all image