#!/bin/bash -x

echo "welcome to employee wage computation"

isPresent=1;

randomCheck=$((RANDOM%2));

if [[ $isPresent -eq $randomCheck ]]
then
  echo "Employee is Present"
else
  echo "Employee is Absent"
fi
