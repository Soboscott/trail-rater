#!/bin/bash
API="${API_ORIGIN:-http://localhost:4741}"
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
