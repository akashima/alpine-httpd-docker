#!/bin/sh
docker run --privileged -dit --name webserver -p 10080:80 $1 $2
