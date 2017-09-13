#!/bin/bash

TOKEN="BAhJIiU1NTEyOGE0ZTVkNjkzMDMxZDc4NGIxNzA5NGRjMTg5ZgY6BkVG--e31e175fe206b922fdecf1d002cd72aee0c058ef"
API="${API_ORIGIN:-http://localhost:4741}"
URL_PATH="/product_sections"
curl "${API}${URL_PATH}" \
  --include \
  --request GET \
  --header "Authorization: Token token=$TOKEN"

echo
