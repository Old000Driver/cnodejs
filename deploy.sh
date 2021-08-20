#!/usr/bin/env bash

npm run build &&
cd dist &&
git init &&
git add . &&
git commit -m "deploy" &&
git remote add origin git@github.com:Old000Driver/cnodejs-website.git &&
git push -u origin master -f
cd -