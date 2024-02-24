#!/usr/bin/env sh

echo "WARNING! Destructive action"

rm -rf ./config
rm -rf ./serverconfig

cp -r ../1.20.4/config ./
cp -r ../1.20.4/world/serverconfig ./
