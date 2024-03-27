#!/bin/bash

port=${1:-8080}

echo "Serving on: $port"

while true
do 
    {
        echo -e 'HTTP/1.1 200 OK\n\n'
        cat "index.html"
    } | netcat -nlv -p "$port" -w 0
done

