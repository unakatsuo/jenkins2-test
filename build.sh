#!/bin/bash

set -ex -o pipefail

img_tag="openvnet/${BRANCH_NAME}"
docker build -t "${img_tag}" .
cid=$(docker run -d "${img_tag}")
(rm -rf openvnet; git clone --depth=1 https://github.com/axsh/openvnet.git)
(
    docker cp openvnet ${cid}:
) || :
docker rm -f $cid