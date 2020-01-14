#! /bin/bash

rm -r ./tobecompressed
rm ./compressed

start=`date +%s`

echo 'creating and compressing 1000 folders and textfiles, time starts now'
mkdir tobecompressed
cd tobecompressed

i=1

for (( num=1; num<=1000; num++ ))
do  
  echo "Creating folder/file number $num"
  mkdir $num
  cd $num
  touch $num.txt
  echo Here is some text to add size > $num.txt
  cd -
done
  cd ../

end=`date +%s`

echo "Finished creating folder. Runtime: $((end-start)) seconds"

start=`date +%s`

echo "Compressing folder"
tar -zcvf compressed.tar.gz ./tobecompressed

end=`date +%s`

echo "Finished compressing folder. Runtime: $((end-start)) seconds"
echo "Initial file size: " `du -sh ./tobecompressed`
echo "Compressed file size: " `du -sh ./compressed.tar.gz`