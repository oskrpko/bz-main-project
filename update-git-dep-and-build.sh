#!/bin/bash

pushd ../bz-commons-values
MYVAR=$(grep MYVAR values.bzl | cut -f 2 -d\")
MYVAR=$((MYVAR+1))
echo "MYVAR=$MYVAR"
sed -i -r "s/\".+\"/\"$MYVAR\"/g" values.bzl
git add values.bzl
git commit -m "Changed MYVAR to $MYVAR"
git push
popd

bazel build //...
