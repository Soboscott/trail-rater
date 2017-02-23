!/bin/bash
API="${API_ORIGIN:-http://localhost:4741}"
URL_PATH="/trails"
curl "${API}${URL_PATH}" \
  --include \
  --request POST \
  --header "Content-Type: application/json" \
  --data '{
    "trail_name": {
      "trail_name": "'"${TRAIL_NAME}"'",
    }
  }'
   #\
  # --header "Authorization: Token token=$TOKEN"

echo
