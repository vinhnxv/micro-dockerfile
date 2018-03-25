IMAGE_NAME=micro
PREFIX=arexeu/$(IMAGE_NAME)
TAG=v0.8.0

.PHONY: docker
docker:
	docker build -t $(IMAGE_NAME) --build-arg TAG=$(TAG) .

.PHONY: push
push:
	docker tag $(IMAGE_NAME) $(PREFIX):$(TAG)
	docker push $(PREFIX):$(TAG)
	docker push $(PREFIX):latest
