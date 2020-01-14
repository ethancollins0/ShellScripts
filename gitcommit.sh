#! /bin/bash

echo "enter commit message"
read message

git add --all $PWD
git commit -m "$message" $PWD
git push $PWD