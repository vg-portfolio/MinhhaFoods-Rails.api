#!/bin/bash

TOKEN="BAhJIiU1MGE0ZWZiMjI1ZmEyMjc5ODc0NmM1NDY0NDQ5YWI0MQY6BkVG--57979fd42bfa05a90a712265814227960fddb764"
ID="1"
TEXT="Dry Food"
DES="category description goes here"

API="${API_ORIGIN:-http://localhost:4741}"
URL_PATH="/product_sections/${ID}/categories"
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
