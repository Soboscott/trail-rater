# !/bin/bash
API="${API_ORIGIN:-https://trail-rater.herokuapp.com/}"
URL_PATH="/reviews"
curl "${API}${URL_PATH}" \
  --include \
  --request POST \
  --header "Content-Type: application/json" \
  --header "Authorization: Token token=$TOKEN" \
  --data '{
    "review": {
      "comments": "'"${COMMENT}"'",
      "trail_id": "'"${TRAIL_ID}"'",
      "user_id": "'"${USER_ID}"'"
    }
  }'

echo
