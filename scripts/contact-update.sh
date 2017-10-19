#!/bin/bash

TOKEN="BAhJIiU2MDBlNzcyNGEyOWI5MjVmZWI2ZDkzYmYyYWYwNzdiMAY6BkVG--cd098375f377e23b937b5ed2ca686f351e583691"
TEXT="Lsdaskdjaskljd alskjdlaskjd lkasjdkasjdlkasd asdas dasdka snd,amsnd ansdasjn djkasdnkj asndasn dlasknd lkasndl kasndasjkdna sjkndaskjndasjdn jkasnd jka"
ID="1"

API="${API_ORIGIN:-http://localhost:4741}"
URL_PATH="/contacts"
curl "${API}${URL_PATH}/${ID}" \
  --include \
  --request PATCH \
  --header "Content-Type: application/json" \
  --header "Authorization: Token token=$TOKEN" \
  --data '{
    "contact": {
      "description": "'"${TEXT}"'"
    }
  }'

echo
