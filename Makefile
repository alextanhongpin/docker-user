build:
	@docker build -t user-test .

non-user:
	@docker run --rm -it -u 10002:10002 -v ${PWD}/data:/home/nonroot user-test

default:
	@docker run --rm -it -v ${PWD}/data:/home/nonroot user-test

os-user:
	@docker run --rm -it -u $(shell id -u):$(shell id -g) -v ${PWD}/data:/home/nonroot user-test
