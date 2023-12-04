docker build -t cfe-jupyter -f conf/Dockerfile .
docker run --env PORT=8888 -it -p 8888:8888 cfe-jupyter
heroku container:push web -a bios0030-cogniapp
heroku container:release web -a bios0030-cogniapp