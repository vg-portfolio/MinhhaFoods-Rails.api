#!/bin/bash

TOKEN="BAhJIiVjNjRhYTAxZmRhN2I4NWFjZTUyOGI0Zjk2ODdjOTdkZAY6BkVG--0cfa4bc4b3a055aff49f06702ebbf5021cd8f772"
TEXT="Why Us?"
DES="why us description goes here"

API="${API_ORIGIN:-http://localhost:4741}"
URL_PATH="/why_us"
curl "${API}${URL_PATH}" \
  --include \
  --request POST \
  --header "Content-Type: application/json" \
  --header "Authorization: Token token=$TOKEN" \
  --data '{
    "why_us": {
      "title": "'"${TEXT}"'",
      "titleVn": "'"${TVN}"'",
      "description": "'"${DES}"'",
      "descriptionVn": "'"${DESVN}"'"
    }
  }'

echo