#!/bin/bash

set -ex -o pipefail

img_tag="openvnet/${BRANCH_NAME}"
docker build -t "${img_tag}" .
cid=$(docker run "${img_tag}")
(rm -rf ovn; git --depth=1 https://github.com/axsh/openvnet.git ovn)
#docker cp ovn 
