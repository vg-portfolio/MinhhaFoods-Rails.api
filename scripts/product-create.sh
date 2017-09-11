#!/bin/bash

TOKEN="BAhJIiVjNjRhYTAxZmRhN2I4NWFjZTUyOGI0Zjk2ODdjOTdkZAY6BkVG--0cfa4bc4b3a055aff49f06702ebbf5021cd8f772"
TEXT="Product#1"
ID="3"

API="${API_ORIGIN:-http://localhost:4741}"
URL_PATH="/products"
curl "${API}${URL_PATH}" \
  --include \
  --request POST \
  --header "Content-Type: application/json" \
  --header "Authorization: Token token=$TOKEN" \
  --data '{
    "product": {
      "title": "'"${TEXT}"'",
      "product_category_id": "'"${ID}"'"
    }
  }'

echo
