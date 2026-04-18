#!/bin/bash

cd $(`dirname $0`/initctf.py "$@")

git --no-pager diff
