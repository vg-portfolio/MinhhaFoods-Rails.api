#!/bin/bash

TOKEN="BAhJIiU1NTEyOGE0ZTVkNjkzMDMxZDc4NGIxNzA5NGRjMTg5ZgY6BkVG--e31e175fe206b922fdecf1d002cd72aee0c058ef"
TEXT="Description hahahaaa"

API="${API_ORIGIN:-http://localhost:4741}"
ID="3"
URL_PATH="/products/${ID}/descriptions"
curl "${API}${URL_PATH}" \
  --include \
  --request POST \
  --header "Content-Type: application/json" \
  --header "Authorization: Token token=$TOKEN" \
  --data '{
    "description": {
      "body": "'"${TEXT}"'"
    }
  }'

echo

TOKEN="BAhJIiU1NTEyOGE0ZTVkNjkzMDMxZDc4NGIxNzA5NGRjMTg5ZgY6BkVG--e31e175fe206b922fdecf1d002cd72aee0c058ef"
TEXT="Description 3"

API="${API_ORIGIN:-http://localhost:4741}"
ID="5"
URL_PATH="/dishes/${ID}/descriptions"
curl "${API}${URL_PATH}" \
  --include \
  --request POST \
  --header "Content-Type: application/json" \
  --header "Authorization: Token token=$TOKEN" \
  --data '{
    "description": {
      "body": "'"${TEXT}"'"
    }
  }'

echo
