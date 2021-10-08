#!/bin/bash

show=$3
name=$1
ln=$2
if [ "$show" = "true" ]; then
  echo "Hello, $name $ln"
else 
  echo "if you want to see the name, please select the show option"
fi

