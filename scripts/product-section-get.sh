#!/bin/bash

API="${API_ORIGIN:-http://localhost:4741}"
URL_PATH="/product_sections"
curl "${API}${URL_PATH}" \
  --include \
  --request GET \
  --header "Authorization: Token token=$TOKEN"

echo
