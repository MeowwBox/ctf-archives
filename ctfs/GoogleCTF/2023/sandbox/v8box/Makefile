# Copyright 2023 Google LLC
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#     https://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.

all: d8 snapshot_blob.bin

d8 snapshot_blob.bin: build.dockerfile args.gn v8.patch 0001-Protect-chunk-headers-on-the-heap.patch
	- docker rm tmp-chal-container 2> /dev/null
	docker build -t tmp-chal-image -f build.dockerfile .
	docker run --name tmp-chal-container tmp-chal-image /bin/true
	docker cp tmp-chal-container:/build/v8/v8/out.gn/x64.release/d8 .
	docker cp tmp-chal-container:/build/v8/v8/out.gn/x64.release/snapshot_blob.bin .
	- docker rm tmp-chal-container 2> /dev/null
	touch d8 snapshot_blob.bin
