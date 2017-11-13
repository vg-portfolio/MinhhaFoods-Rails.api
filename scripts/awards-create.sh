#!/bin/bash

TOKEN="BAhJIiU3NGMxZDUxNzAxMGFiYjQ2NmU3Y2JkZGNhNzk1OTU2MAY6BkVG--78216e926124bb59ca36415e182d61d56917ea39"
TEXT="Awards #4"
DES="Awards description goes here"

API="${API_ORIGIN:-http://localhost:4741}"
URL_PATH="/awards"
curl "${API}${URL_PATH}" \
  --include \
  --request POST \
  --header "Content-Type: application/json" \
  --header "Authorization: Token token=$TOKEN" \
  --data '{
    "award": {
      "title": "'"${TEXT}"'",
      "titleVn": "'"${TVN}"'",
      "description": "'"${DES}"'",
      "descriptionVn": "'"${DESVN}"'"
    }
  }'

echo
