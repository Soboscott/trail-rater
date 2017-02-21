#!/bin/bash

API="${API_ORIGIN:-http://localhost:4741}"
URL_PATH="/comments"
curl "${API}${URL_PATH}" \
  --include \
  --request POST \
  --header "Content-Type: application/json" \
  --data '{
    "comment": {
      "trail_name": "'"${TRAIL_NAME}"'",
      "location": "'"${LOCATION}"'"
      "comments": "'"${COMMENTS}"'"

      }
    }' # \
  # --header "Authorization: Token token=$TOKEN"

echo
