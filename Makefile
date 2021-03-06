NS = sh4rk
REPO = socat
VERSION ?= latest

default: deps build

deps:
	docker pull alpine:3.3

build:
	docker build -t $(NS)/$(REPO):$(VERSION) --force-rm=true .
