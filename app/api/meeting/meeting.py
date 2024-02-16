# pip3 install requests
import requests
import json

API_KEY_SECRET = "videodialling_default_secret"
videodialling_URL = "https://sfu.videodialling.com/api/v1/meeting"
# videodialling_URL = "http://localhost:3010/api/v1/meeting"

headers = {
    "authorization": API_KEY_SECRET,
    "Content-Type": "application/json",
}

response = requests.post(
    videodialling_URL,
    headers=headers
)

print("Status code:", response.status_code)
data = json.loads(response.text)
print("meeting:", data["meeting"])
