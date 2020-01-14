#! /bin/bash


echo "Enter remote repo ssh"
read repo

echo 'initializing git'
git init $PWD
echo "================================"
echo 'staging files'
git add $PWD
echo "================================"
echo 'committing files'
git commit -m 'initial commit' $PWD
echo "================================"
echo 'adding remote repository link'
git remote remove origin
git remote add origin $repo
if [ $? -eq 0 ]; then
  echo 'Successfully added origin, pushing files'
  git push
else
  echo 'failed to add origin, please check input value and try again'
fi


