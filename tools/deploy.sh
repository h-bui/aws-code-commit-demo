#!/bin/bash

cd /var/www/html
rm -rf ./demo
mkdir -p demo

if [ ! -d "/var/www/html/aws-code-commit-demo" ]; then
  git clone https://github.com/h-bui/aws-code-commit-demo.git
fi

cd /var/www/html/aws-code-commit-demo
git pull origin > /dev/null 2>&1

cp -a /var/www/html/aws-code-commit-demo/build/ /var/www/html/demo