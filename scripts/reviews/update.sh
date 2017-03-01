#!/bin/bash
API="${API_ORIGIN:-http://trail-rater.herokuapp.com}"
URL_PATH="/reviews"
curl "${API}${URL_PATH}" \
  --include \
  --request PATCH \
  --header "Content-Type: application/json" \
  --data '{
    "review": {
      "comment": "'"${comment}"'",
    }
  }'
   #\
  # --header "Authorization: Token token=$TOKEN"

echo
