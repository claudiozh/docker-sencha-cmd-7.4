#!/bin/bash

docker run --rm -it -p 1841:1841 -v $(pwd)/app:/app claudiozh/sencha-cmd:7.4
