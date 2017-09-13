#!/bin/bash

TOKEN="BAhJIiU1NTEyOGE0ZTVkNjkzMDMxZDc4NGIxNzA5NGRjMTg5ZgY6BkVG--e31e175fe206b922fdecf1d002cd72aee0c058ef"
ID="1"
TEXT="Sweet"
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


TOKEN="BAhJIiU1NTEyOGE0ZTVkNjkzMDMxZDc4NGIxNzA5NGRjMTg5ZgY6BkVG--e31e175fe206b922fdecf1d002cd72aee0c058ef"
ID="1"
TEXT="Vietnamese"
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
