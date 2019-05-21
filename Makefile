build:
	docker build -t jimmypw/minecraftserver:1.14.1 .

push: build
	docker push jimmypw/minecraftserver:1.14.1
