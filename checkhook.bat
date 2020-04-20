@echo off
setlocal enabledelayedexpansion
if defined noneedcheck (	goto exitLabel )

mvn checkstyle:check
if [ $? -ne 0 ]
then
  echo "check faild！please read check report !"
  exit 1;
else
  echo "check success"
fi
:exitLabel
echo exit



