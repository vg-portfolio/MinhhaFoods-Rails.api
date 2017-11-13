#!/bin/bash

TOKEN="BAhJIiU3NGMxZDUxNzAxMGFiYjQ2NmU3Y2JkZGNhNzk1OTU2MAY6BkVG--78216e926124bb59ca36415e182d61d56917ea39"
TEXT="Mild"
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
      "cat_type": "'"${TEXT}"'",
      "description": "'"${DES}"'"
    }
  }'

echo

TOKEN="BAhJIiU3NGMxZDUxNzAxMGFiYjQ2NmU3Y2JkZGNhNzk1OTU2MAY6BkVG--78216e926124bb59ca36415e182d61d56917ea39"
TEXT="Yesssss"
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
      "cat_type": "'"${TEXT}"'",
      "description": "'"${DES}"'"
    }
  }'

echo

TOKEN="BAhJIiU1MGE0ZWZiMjI1ZmEyMjc5ODc0NmM1NDY0NDQ5YWI0MQY6BkVG--57979fd42bfa05a90a712265814227960fddb764"
ID="1"
TEXT="Asian"
DES="category description goes here"

API="${API_ORIGIN:-http://localhost:4741}"
URL_PATH="/chef_sections/${ID}/categories"
curl "${API}${URL_PATH}" \
  --include \
  --request POST \
  --header "Content-Type: application/json" \
  --header "Authorization: Token token=$TOKEN" \
  --data '{
    "category": {
      "catType": "'"${TEXT}"'",
      "description": "'"${DES}"'"
    }
  }'

echo
