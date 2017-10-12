#!/bin/bash

TOKEN="BAhJIiU5NmU0MzkwZTc1MjEyM2YzMTA2YTczOGYyNDdhNmNhNAY6BkVG--303000b813c3902ab1ff36aeb2408caf349e835b"
TEXT="Chef Tips"
DES="LipsumOccaecat ipsum exercitation veniam in eu nisi id in ullamco esse et commodo quis laborum adipisicing et mollit. Adipisicing ullamco ullamco tempor nisi culpa fugiat anim magna officia occaecat cillum sunt ea deserunt. Ad id ad id consectetur voluptate ex sit laboris consequat do."

API="${API_ORIGIN:-http://localhost:4741}"
URL_PATH="/chef_sections"
curl "${API}${URL_PATH}" \
  --include \
  --request PATCH \
  --header "Authorization: Token token=${TOKEN}" \
  --header "Content-Type: application/json" \
  --data '{
    "chef_section": {
      "title": "'"${TEXT}"'",
      "titleVn": "'"${TVN}"'",
      "description": "'"${DES}"'",
      "descriptionVn": "'"${DESVN}"'"
    }
  }'

echo
