docker:
	docker build -t user-test .

start:
	# docker run -u $(shell id -u):$(shell id -g) -v ${PWD}/hello.txt:/hello.txt user-test
	# docker run --rm -it -u 1000:1000 -v ${PWD}/data:/tmp user-test
	docker run --rm -it -v ${PWD}/data:/tmp user-test
