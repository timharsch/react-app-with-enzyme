
docker build -t react-app-with-enzyme:latest . 

docker run -v `pwd`:/code react-app-with-enzyme:latest bash -c 'CI=true yarn test'
