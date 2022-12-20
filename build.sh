#!/bin/bash

rm -rf zip

docker image build -t zip-layer .

docker run --rm -v $PWD/layer/:/tmp/layer zip-layer

ls zip