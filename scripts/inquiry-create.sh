#!/bin/bash

FIRST="Viz"
LAST="Guo"
EMAIL="viz@gmail.com"

API="${API_ORIGIN:-http://localhost:4741}"
URL_PATH="/inquiries"
curl "${API}${URL_PATH}" \
  --include \
  --request POST \
  --header "Content-Type: application/json" \
  --data '{
    "inquiry": {
      "firstName": "'"${FIRST}"'",
      "lastName": "'"${LAST}"'",
      "email": "'"${EMAIL}"'"
    }
  }'

echo
