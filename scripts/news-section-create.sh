#!/bin/bash

TOKEN="BAhJIiVjNjRhYTAxZmRhN2I4NWFjZTUyOGI0Zjk2ODdjOTdkZAY6BkVG--0cfa4bc4b3a055aff49f06702ebbf5021cd8f772"
TEXT="News"
DES="News section description goes here"

API="${API_ORIGIN:-http://localhost:4741}"
URL_PATH="/news_sections"
curl "${API}${URL_PATH}" \
  --include \
  --request POST \
  --header "Content-Type: application/json" \
  --header "Authorization: Token token=$TOKEN" \
  --data '{
    "news_section": {
      "title": "'"${TEXT}"'",
      "titleVn": "'"${TVN}"'",
      "description": "'"${DES}"'",
      "descriptionVn": "'"${DESVN}"'"
    }
  }'

echo
