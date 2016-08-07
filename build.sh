#!/bin/bash

set -ex -o pipefail

img_tag="openvnet/${BRANCH_NAME}"
docker build -t "${img_tag}" .
cid=$(docker run -d "${img_tag}")
(rm -rf openvnet; git clone --depth=1 https://github.com/axsh/openvnet.git)
(
    docker cp openvnet "${cid}:/var/tmp"
    docker exec $cid -t /bin/bash -c "cd openvnet; ./deployment/packagebuild/build_packages_vnet.sh"
) || :
docker rm -f $cid