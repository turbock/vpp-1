#!/bin/bash
# Copyright (c) 2017 Cisco and/or its affiliates.
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at:
#
#     http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.

# takes dev docker image name + tag to extract from as the argument
IMAGE=${1}

# run the dev image as the "extract" container
echo "extracting binaries from ${IMAGE}"
CID=$(sudo docker run -itd ${IMAGE} sh)

# prepare the folder with the binaries
rm -rf binaries
mkdir -p binaries

# extract the binaries into the binaries/ folder
sudo docker cp ${CID}:/root/go/src/github.com/contiv/vpp/cmd/contiv-cni/contiv-cni binaries/
sudo docker cp ${CID}:/root/go/src/github.com/contiv/vpp/cmd/contiv-ksr/contiv-ksr binaries/
sudo docker cp ${CID}:/root/cni/loopback binaries/

# delete the "extract" container
sudo docker rm -f ${CID}
