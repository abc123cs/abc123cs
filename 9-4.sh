#!/bin/bash

while true; do
  read -p "请输入学生成绩（输入q退出）: " score

  if [ "$score" = "q" ]; then
    echo "退出程序"
    break
  fi

  if (( score < 60 )); then
    echo "not pass"
  elif (( score <= 70 )); then
    echo "D"
  elif (( score <= 80 )); then
    echo "C"
  elif (( score < 90 )); then
    echo "B"
  else
    echo "A"
  fi
done
