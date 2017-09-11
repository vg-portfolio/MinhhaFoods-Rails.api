#!/bin/bash

TOKEN="BAhJIiVjNjRhYTAxZmRhN2I4NWFjZTUyOGI0Zjk2ODdjOTdkZAY6BkVG--0cfa4bc4b3a055aff49f06702ebbf5021cd8f772"
TEXT="THIS IS SPARTA"
DES="History description goes here"

API="${API_ORIGIN:-http://localhost:4741}"
URL_PATH="/histories"
curl "${API}${URL_PATH}" \
  --include \
  --request PATCH \
  --header "Authorization: Token token=${TOKEN}" \
  --header "Content-Type: application/json" \
  --data '{
    "history": {
      "title": "'"${TEXT}"'",
      "titleVn": "'"${TVN}"'",
      "description": "'"${DES}"'",
      "descriptionVn": "'"${DESVN}"'"
    }
  }'

echo
