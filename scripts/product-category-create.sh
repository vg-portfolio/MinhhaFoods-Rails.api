#!/bin/bash

TOKEN="BAhJIiVjNjRhYTAxZmRhN2I4NWFjZTUyOGI0Zjk2ODdjOTdkZAY6BkVG--0cfa4bc4b3a055aff49f06702ebbf5021cd8f772"
TEXT="category 1"
DES="category description goes here"

API="${API_ORIGIN:-http://localhost:4741}"
URL_PATH="/product_categories"
curl "${API}${URL_PATH}" \
  --include \
  --request POST \
  --header "Content-Type: application/json" \
  --header "Authorization: Token token=$TOKEN" \
  --data '{
    "product_category": {
      "catType": "'"${TEXT}"'",
      "description": "'"${DES}"'"
    }
  }'

echo
