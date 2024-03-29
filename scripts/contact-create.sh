#!/bin/bash

TOKEN="BAhJIiU2MmJkYmVjODEzNjZlM2VhNzE4ODE4Y2MxYTM2YWZiYgY6BkVG--b8f5eea0e7797dfa942b33ca42eef5db2a43869c"
TEXT="Minh Ha Foods"
HOT="(08)3765 5229"
TEL="(08)3765 2193"

API="${API_ORIGIN:-http://localhost:4741}"
URL_PATH="/contacts"
curl "${API}${URL_PATH}" \
  --include \
  --request POST \
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
