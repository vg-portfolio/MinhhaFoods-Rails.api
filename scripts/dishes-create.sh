#!/bin/bash

TOKEN="BAhJIiU1NTEyOGE0ZTVkNjkzMDMxZDc4NGIxNzA5NGRjMTg5ZgY6BkVG--e31e175fe206b922fdecf1d002cd72aee0c058ef"
TEXT="Dish 3"
ID="17"

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


TOKEN="BAhJIiU1NTEyOGE0ZTVkNjkzMDMxZDc4NGIxNzA5NGRjMTg5ZgY6BkVG--e31e175fe206b922fdecf1d002cd72aee0c058ef"
TEXT="Dish 2"
ID="16"

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
