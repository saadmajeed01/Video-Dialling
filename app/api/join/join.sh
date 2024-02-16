#!/bin/bash

API_KEY_SECRET="videodialling_default_secret"
videodialling_URL="https://sfu.videodialling.com/api/v1/join"
# videodialling_URL="http://localhost:3010/api/v1/join"

curl $videodialling_URL \
    --header "authorization: $API_KEY_SECRET" \
    --header "Content-Type: application/json" \
    --data '{"room":"test","roomPassword":"false","name":"videodialling","audio":"true","video":"true","screen":"false","hide":"false","notify":"true","token":{"username":"username","password":"password","presenter":"true", "expire":"1h"}}' \
    --request POST