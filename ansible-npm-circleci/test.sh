#!/bin/bash
REQ="make git"

for i in $REQ
do
  echo 'test' $i 'exists'
  command -v $i >/dev/null 2>&1 || { echo >&2 "I require $i but it's not installed.  Aborting."; exit 1; }
  echo 'ok'
done
