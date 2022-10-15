#!/bin/bash

if [ -e directorylist.txt ] ; then
  echo 'The file "directorylist.txt" exist.'
else
  echo 'The file "directorylist.txt" does not exist.'
fi
