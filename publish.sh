#!/bin/bash
set -ex
here=$(realpath $(dirname "$0"))
cd "$here"

if [ -z ${1+x} ] ; then
    echo "missing tag"
    exit 1
fi

export TAG=$1

docker build -t protryon/postfix:$TAG -f ./Dockerfile .
docker push protryon/postfix:$TAG
docker image rm protryon/postfix:$TAG

echo "Uploaded image protryon/postfix:$TAG"
