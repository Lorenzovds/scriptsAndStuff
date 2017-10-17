#!/bin/bash

#Make sure to run the correct publish command for repositories

while [ 1 ]
do
  echo "Publish with lerna? [y/n] : "
  read anwser
  if [[ "$anwser" == "y" || "$anwser" == "yes" ]]; then
    lerna publish
    break
  elif [[ "$anwser" == "n" || "$anwser" == "no" ]]; then
    echo "Which version : "
    read version
    np $version
    break
  fi
  #Default to this when it's not yes or no
  echo "Invalid answer"
done
