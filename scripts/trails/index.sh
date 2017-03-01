#!/bin/bash
API="${API_ORIGIN:-https://trail-rater.herokuapp.com/}"
URL_PATH="/trails"
curl "${API}${URL_PATH}" \
  --include \
  --request GET \
  --header "Authorization: Token token=$TOKEN"

echo
