#!/bin/bash

API="${API_ORIGIN:-http://localhost:4741}"
# API="${API_ORIGIN:-https://seedsower.herokuapp.com}"
URL_PATH="/offers/${ID}"
curl "${API}${URL_PATH}" \
  --include \
  --request PATCH \
  --header "Content-Type: application/json" \
  --header "Authorization: Token token=$TOKEN" \
  --data '{
    "offer": {
      "offer_type": "'"${TYPE}"'"
    }
  }'

echo
