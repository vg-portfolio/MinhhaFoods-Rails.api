#!/bin/bash

TOKEN="BAhJIiU1MTQ0ZjU0YmVjNjBiNjI2N2NkNDA0ZGE1NTcwMzIwYQY6BkVG--e3211a38b7cb5f574fb7844f68f3541eea51d8ea"
TEXT="WHYYY THOOOO"
DES="Sit labore id nulla tempor proident tempor id deserunt. Sit labore id nulla tempor proident tempor id deserunt. Sit labore id nulla tempor proident tempor id deserunt."

API="${API_ORIGIN:-http://localhost:4741}"
URL_PATH="/why_us"
curl "${API}${URL_PATH}" \
  --include \
  --request PATCH \
  --header "Authorization: Token token=${TOKEN}" \
  --header "Content-Type: application/json" \
  --data '{
    "why_us": {
      "title": "'"${TEXT}"'",
      "titleVn": "'"${TVN}"'",
      "description": "'"${DES}"'",
      "descriptionVn": "'"${DESVN}"'"
    }
  }'

echo
