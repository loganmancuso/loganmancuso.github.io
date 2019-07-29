###
# 'zaRefreshDate.sh'
# this program will refresh the date of last edit in all files
# recursively by sub directory
# finds string "Last Edit Date: 05-01-2019--16:27:49
# the current date and time
# Author/CopyRight: Mancuso, Logan
# Last Edit Date: 05-01-2019--16:27:49
###

#!/bin/bash
today=$(date +%m-%d-%Y--%H:%M:%S)
to_replace="Last Edit Date:"
#loop to replace last edit date
loop() {
  for item in *
  do
    if [[ -f $item ]];
    then
      echo "File $item"
      sed -i "0,\|.* $to_replace.*|{s|$to_replace.*|$to_replace $today|g1}" $item
    elif [[ -d $item ]];
    then
      echo "Directory $item"
      cd $item
      loop
      cd ../
    else
      echo "Error $item"
    fi
  done
}
# loop for all file in dir
for item in *
do
  if [[ -f $item ]];
  then
    echo "File $item"
    sed -i "0,\|.* $to_replace.*|{s|$to_replace.*|$to_replace $today|g1}" $item
  elif [[ -d $item ]];
  then
    echo "Directory $item"
    cd $item
    # use recursion if a directory is found
    loop
    cd ../
  else
    echo "Error $item"
  fi
done
#
###
# End 'zaRefreshDate.sh'
###

