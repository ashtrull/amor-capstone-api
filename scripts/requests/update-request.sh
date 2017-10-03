#!/bin/bash

API="${API_ORIGIN:-http://localhost:4741}"
# API="${API_ORIGIN:-https://seedsower.herokuapp.com}"
URL_PATH="/requests/${ID}"
curl "${API}${URL_PATH}" \
  --include \
  --request PATCH \
  --header "Content-Type: application/json" \
  --header "Authorization: Token token=$TOKEN" \
  --data '{
    "request": {
      "request_type": "'"${TYPE}"'"
    }
  }'

echo
