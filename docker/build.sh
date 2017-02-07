#!/bin/bash
docker build -t hadoopware/hexo -f Dockerfile.hexo .
docker build --no-cache -t hadoopware/hadoopware.io -f Dockerfile .

