docker build -t cfe-jupyter -f conf/Dockerfile .
docker run --env PORT=8888 -it -p 8888:8888 cfe-jupyter
# For Heroku, use separate push and release commands
