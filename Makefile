build: Dockerfile
	docker build -t mlhw3 .

run: build
	docker run -d --rm --name mlhw3c -p 8888:8888 -v `pwd`:/home/jovyan/work mlhw3 start-notebook.sh --NotebookApp.token=''

stop:
	docker stop mlhw3c

terminal:
	docker run --rm -it -v `pwd`:/home/jovyan/work mlhw3 /bin/bash

clean:
	docker rmi mlhw3