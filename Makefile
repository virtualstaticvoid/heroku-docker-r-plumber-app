# default build target
all::

.PHONY: all
all:: build

.PHONY: build
build:

	docker build --tag heroku-docker-r-example:plumber .

.PHONY: run
run:

	docker run -it -p "8080:8080" heroku-docker-r-example:plumber

.PHONY: test
test:

	@curl -v "localhost:8080/echo?msg=Hello%20World!"
	@curl -v -d "a=10" -d "b=2" localhost:8080/sum
	@curl -v "http://localhost:8080/plot" -o plot.png
