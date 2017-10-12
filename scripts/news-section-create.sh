#!/bin/bash

TOKEN="BAhJIiU2MmJkYmVjODEzNjZlM2VhNzE4ODE4Y2MxYTM2YWZiYgY6BkVG--b8f5eea0e7797dfa942b33ca42eef5db2a43869c"
TEXT="Latest News"
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
