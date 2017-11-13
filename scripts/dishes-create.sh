#!/bin/bash

TOKEN="BAhJIiU2MmJkYmVjODEzNjZlM2VhNzE4ODE4Y2MxYTM2YWZiYgY6BkVG--b8f5eea0e7797dfa942b33ca42eef5db2a43869c"
TEXT="Pho"
ID="6"

API="${API_ORIGIN:-http://localhost:4741}"
URL_PATH="/dishes"
curl "${API}${URL_PATH}" \
  --include \
  --request POST \
  --header "Content-Type: application/json" \
  --header "Authorization: Token token=$TOKEN" \
  --data '{
    "dish": {
      "title": "'"${TEXT}"'",
      "category_id": "'"${ID}"'"
    }
  }'

echo


TOKEN="BAhJIiU2YzI3OGIyNjM4MDRjYTg3NDE5NjM1NDA1ZWQyMGY0ZgY6BkVG--cc4890a30119346e5880d043566b81940a2ad644"
TEXT="Dish 1"
ID="1"

API="${API_ORIGIN:-http://localhost:4741}"
URL_PATH="/dishes"
curl "${API}${URL_PATH}" \
  --include \
  --request POST \
  --header "Content-Type: application/json" \
  --header "Authorization: Token token=$TOKEN" \
  --data '{
    "dish": {
      "title": "'"${TEXT}"'",
      "chef_category_id": "'"${ID}"'"
    }
  }'

echo


TOKEN="BAhJIiU1NTEyOGE0ZTVkNjkzMDMxZDc4NGIxNzA5NGRjMTg5ZgY6BkVG--e31e175fe206b922fdecf1d002cd72aee0c058ef"
TEXT="Dish 1"
ID="15"

API="${API_ORIGIN:-http://localhost:4741}"
URL_PATH="/dishes"
curl "${API}${URL_PATH}" \
  --include \
  --request POST \
  --header "Content-Type: application/json" \
  --header "Authorization: Token token=$TOKEN" \
  --data '{
    "dish": {
      "title": "'"${TEXT}"'",
      "category_id": "'"${ID}"'"
    }
  }'

echo
