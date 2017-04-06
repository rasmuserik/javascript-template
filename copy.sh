#!/usr/bin/env bash
cd $(dirname "$0")
if [ -d ../$1 ]; then
  exit 1
fi
rm -rf `cat .gitignore`
rm dist.js
cp -a . ../$1
cd ../$1
perl -pi -e s/javascript-template/$1/g *
mv javascript-template.js "$1".js
rm -rf .git copy.sh
git init
git add . 
git commit -am 'initialised via javascript-template.solsort.com/'
git remote add origin https://github.com/solsort/javascript-template.git
git push -u origin master
