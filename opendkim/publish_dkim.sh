#!/bin/bash
set -ex
here=$(realpath $(dirname "$0"))
cd "$here"

if [ -z ${1+x} ] ; then
    echo "missing tag"
    exit 1
fi

export TAG=$1

docker build -t protryon/opendkim:$TAG -f ./Dockerfile .
docker push protryon/opendkim:$TAG
docker image rm protryon/opendkim:$TAG

echo "Uploaded image protryon/opendkim:$TAG"
