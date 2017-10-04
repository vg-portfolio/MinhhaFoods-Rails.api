#!/bin/bash

TOKEN="BAhJIiU1MGE0ZWZiMjI1ZmEyMjc5ODc0NmM1NDY0NDQ5YWI0MQY6BkVG--57979fd42bfa05a90a712265814227960fddb764"
TEXT="Chef Section"
DES="Chef description goes here"

API="${API_ORIGIN:-http://localhost:4741}"
URL_PATH="/chef_sections"
curl "${API}${URL_PATH}" \
  --include \
  --request POST \
  --header "Content-Type: application/json" \
  --header "Authorization: Token token=$TOKEN" \
  --data '{
    "chef_section": {
      "title": "'"${TEXT}"'",
      "titleVn": "'"${TVN}"'",
      "description": "'"${DES}"'",
      "descriptionVn": "'"${DESVN}"'"
    }
  }'

echo
