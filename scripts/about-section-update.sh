#!/bin/bash

TOKEN="BAhJIiU5NmU0MzkwZTc1MjEyM2YzMTA2YTczOGYyNDdhNmNhNAY6BkVG--303000b813c3902ab1ff36aeb2408caf349e835b"
TEXT="Story About Us"
DES="Ullamco id consequat tempor fugiat proident in duis fugiat commodo minim eu laborum in exercitation consectetur ipsum. Voluptate nisi excepteur nisi Lorem elit pariatur cillum ipsum culpa id ut sunt aliquip proident. Eiusmod officia magna amet exercitation deserunt Lorem deserunt. Cillum voluptate excepteur consectetur non aute duis anim."

API="${API_ORIGIN:-http://localhost:4741}"
URL_PATH="/about_sections"
curl "${API}${URL_PATH}" \
  --include \
  --request PATCH \
  --header "Authorization: Token token=${TOKEN}" \
  --header "Content-Type: application/json" \
  --data '{
    "about_sections": {
      "title": "'"${TEXT}"'",
      "titleVn": "'"${TVN}"'",
      "description": "'"${DES}"'",
      "descriptionVn": "'"${DESVN}"'"
    }
  }'

echo
