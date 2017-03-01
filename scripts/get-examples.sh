#!/bin/bash

API="${API_ORIGIN:-http://trail-rater.herokuapp.com}"
URL_PATH="/examples"
curl "${API}${URL_PATH}" \
  --include \
  --request GET \
  --header "Authorization: Token token=$TOKEN"

echo
