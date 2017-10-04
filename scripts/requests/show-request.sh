# API="${API_ORIGIN:-http://localhost:4741}"
API="${API_ORIGIN:-https://amoridarity.herokuapp.com/}"
URL_PATH="/requests/${ID}"
curl "${API}${URL_PATH}" \
  --include \
  --request GET \
  --header "Authorization: Token token=$TOKEN"
