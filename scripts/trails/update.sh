#!/bin/bash
API="${API_ORIGIN:-https://trail-rater.herokuapp.com/}"
URL_PATH="/trails"
curl "${API}${URL_PATH}" \
  --include \
  --request PATCH \
  --header "Content-Type: application/json" \
  --data '{
    "trail_name": {
      "trail_name": "'"${TRAIL_NAME}"'",
    }
  }'
   #\
  # --header "Authorization: Token token=$TOKEN"

echo
