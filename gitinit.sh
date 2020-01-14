#! /bin/bash

echo "Enter remote repo ssh"
read repo

git init $PWD
git add $PWD
git commit -m 'initial commit' $PWD

git remote remove origin
git remote add origin $repo

if [ $? -eq 0 ]; then
  echo 'Successfully added origin, pushing files'
  git push
else
  echo 'failed to add origin, please check input value and try again'
fi


