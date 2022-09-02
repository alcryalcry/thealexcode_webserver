build-image:
	docker build -t thealexcode/nginx-base .
run:
	docker run --rm -d -p 80:80 --name nginx thealexcode/nginx-base 
run-dev:
	docker run --rm -it -p 80:80 --name nginx thealexcode/nginx-base 
stop:
	docker stop nginx
remove-image:
	docker rmi thealexcode/nginx-base