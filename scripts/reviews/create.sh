# !/bin/bash
API="${API_ORIGIN:-http://localhost:4741}"
URL_PATH="/reviews"
curl "${API}${URL_PATH}" \
  --include \
  --request POST \
  --header "Content-Type: application/json" \
  --header "Authorization: Token token=$TOKEN" \
  --data '{
    "review": {
      "comments": "'"${COMMENT}"'",
      "date_seen": "'"${DATESEEN}"'",
          "location": "'"${LOCATION}"'",
        }
      }'
echo
