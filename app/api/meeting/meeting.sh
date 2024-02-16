#!/bin/bash

API_KEY_SECRET="videodialling_default_secret"
videodialling_URL="https://sfu.videodialling.com/api/v1/meeting"
# videodialling_URL="http://localhost:3010/api/v1/meeting"

curl $videodialling_URL \
    --header "authorization: $API_KEY_SECRET" \
    --header "Content-Type: application/json" \
    --request POST