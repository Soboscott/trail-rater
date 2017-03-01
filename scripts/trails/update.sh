#!/bin/bash
API="${API_ORIGIN:-https://trail-rater.herokuapp.com/}"
URL_PATH="/trails"
curl "${API}${URL_PATH}" \
  --include \
  --request PATCH \
  --header "Content-Type: application/json" \
  --data '{
    "": {
      "": "'"${}"'",
    }
  }'
   #\
  # --header "Authorization: Token token=$TOKEN"

echo
