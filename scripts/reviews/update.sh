#!/bin/bash
API="${API_ORIGIN:-http://localhost:4741}"
URL_PATH="/reviews"
curl "${API}${URL_PATH}" \
  --include \
  --request Patch \
  --header "Content-Type: application/json" \
  --header "Authorization: Token token=$TOKEN" \
  --data '{
    "review": {
      "comments": "'"${COMMENT}"'",
      "trail_id": "'"${TRAIL_ID}"'"
    }
  }'

echo
