#!/bin/bash
API="${API_ORIGIN:-http://localhost:4741}"
# API="${API_ORIGIN:-https://seedsower.herokuapp.com}"
URL_PATH="/offers"
curl "${API}${URL_PATH}" \
  --include \
  --request POST \
  --header "Content-Type: application/json" \
  --header "Authorization: Token token=$TOKEN" \
  --data '{
    "offer": {
      "user_id": "'"${ID}"'",
      "offer_type": "'"${TYPE}"'"
    }
  }'

echo
