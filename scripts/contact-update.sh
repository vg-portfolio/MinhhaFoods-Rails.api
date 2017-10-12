#!/bin/bash

TOKEN="BAhJIiU2MmJkYmVjODEzNjZlM2VhNzE4ODE4Y2MxYTM2YWZiYgY6BkVG--b8f5eea0e7797dfa942b33ca42eef5db2a43869c"
TEXT="Minh Ha Foods"
HOT="0837655229"
TEL="0837652193"
ID="1"

API="${API_ORIGIN:-http://localhost:4741}"
URL_PATH="/contacts"
curl "${API}${URL_PATH}/${ID}" \
  --include \
  --request PATCH \
  --header "Content-Type: application/json" \
  --header "Authorization: Token token=$TOKEN" \
  --data '{
    "contact": {
      "company_name": "'"${TEXT}"'",
      "hotline": "'"${HOT}"'",
      "tel": "'"${TEL}"'"
    }
  }'

echo
