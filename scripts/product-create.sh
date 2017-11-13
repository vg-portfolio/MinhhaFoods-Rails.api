#!/bin/bash

TOKEN="BAhJIiU3NGMxZDUxNzAxMGFiYjQ2NmU3Y2JkZGNhNzk1OTU2MAY6BkVG--78216e926124bb59ca36415e182d61d56917ea39"
TEXT="oioipopop"
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


TOKEN="BAhJIiU3NGMxZDUxNzAxMGFiYjQ2NmU3Y2JkZGNhNzk1OTU2MAY6BkVG--78216e926124bb59ca36415e182d61d56917ea39"
TEXT="kjnkjhjhgiuhoij"
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
