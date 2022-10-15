#!/bin/bash

rm text.txt

if [ -e text.txt ] ; then
  echo 'The file "text.txt" exist.'
else
  echo 'The file "text.txt" does not exist.'
fi
