#!/bin/bash
# API="${API_ORIGIN:-http://localhost:4741}"
API="${API_ORIGIN:-https://amoridarity.herokuapp.com/}"

URL_PATH="/matches"
curl "${API}${URL_PATH}" \
  --include \
  --request POST \
  --header "Content-Type: application/json" \
  --header "Authorization: Token token=$TOKEN" \
  --data '{
    "match": {
      "offer_id": "'"${OFFERID}"'",
      "request_id": "'"${REQUESTID}"'"
    }
  }'

echo
