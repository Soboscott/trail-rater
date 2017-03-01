!/bin/bash
API="${API_ORIGIN:-https://trail-rater.herokuapp.com/}"
URL_PATH="/trails"
curl "${API}${URL_PATH}" \
  --include \
  --request POST \
  --header "Content-Type: application/json" \
    --header "Authorization: Token token=$TOKEN" \
  --data '{
    "trail_name": {
      "trail_name": "'"${TRAIL_NAME}"'",
    }
  }'

echo
