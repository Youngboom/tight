#!/usr/bin/env bash
sbt dist

rm -rf ./tmp
rm -rf ./deploy
unzip ./target/universal/tight-1.0.zip -d ./tmp
rm ./target/universal/tight-1.0.zip

mkdir ./deploy

mkdir ./deploy/lib
rm -rf ./deploy/lib/*
cp ./tmp/tight-1.0/lib/* ./deploy/lib

mkdir ./deploy/bin
rm -rf ./deploy/bin/*
cp ./tmp/tight-1.0/bin/* ./deploy/bin
chmod +x ./deploy/bin/tight

mkdir ./deploy/conf
rm -rf ./deploy/conf/*
cp -r ./tmp/tight-1.0/conf/* ./deploy/conf