# POC in Angular 15
```
use Datatables
and Boostrap 5
```

# Process install datatables in Angular 15
```
Steps:
1.- guide of intallation of the web page
    url: http://l-lin.github.io/angular-datatables/#/getting-started

npm install jquery --save
npm install datatables.net --save
npm install datatables.net-dt --save
npm install angular-datatables --save
npm install @types/jquery --save-dev
npm install @types/datatables.net --save-dev

this project has installed boostrap 5 


```

# For this project shall to install Docker
```
    official website
    https://www.docker.com/
```

# Raise the project

```
AUTOMATION Start project whith docker
in the command line of your terminal writes
Only Linux, Mac in Windows install linux terminal 

./deploy build



Manual way

for run proyect in docker please use following commands

Before you must have docker installed

Imagen compilation
docker build -t "$IMAGE_NAME":"$IMAGE_TAG" .

example:   docker build -t test_datatables:v1 .

for run proyect in a terminal

docker run -it --name datatable \
  -p 80:4200 \
  -v "${PWD}/app:/opt/app" \
  test_datatables:v1


delete imagen
docker rm -f datatable

```