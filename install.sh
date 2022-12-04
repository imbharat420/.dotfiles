#!/bin/sh

cp ./scripts ~/temp-custom-scripts -r
cp ./lib/.gitignore ~/.gitignore

cat ./scripts/main.sh > ~/.bashrc
echo >> ~/.bashrc
cat ./scripts/node.sh >> ~/.bashrc

git config --global core.excludesfile ~/.gitignore

mv ./config ./config.sh
source config.sh
mv ./config.sh ./config
