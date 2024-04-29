#!/bin/bash
version=latest
repositoryname=eugene1256

for service in "duolingo-gateway" "duolingo-users" "duolingo-words" "duolingo-client"
do 

docker tag $service:$version $repositoryname/$service:$version
docker push $repositoryname/$service:$version

done
