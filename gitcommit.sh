#! /bin/bash

echo "enter commit message"
read message

git add $PWD
git commit -m "$message" $PWD
git push $PWD