#!/bin/bash


API_KEY="ADD YOUR GPT KEY HERE"
QUESTION="$1"

if [ -z "$QUESTION" ]; then
  echo "Usage: $0 <question>"
  exit 1
fi


RESPONSE=$(curl -s "https://api.openai.com/v1/chat/completions" \
  -H "Content-Type: application/json" \
  -H "Authorization: Bearer $API_KEY" \
  -d '{
    "model": "gpt-3.5-turbo",
    "messages": [
      {"role": "system", "content": "You are a helpful assistant."},
      {"role": "user", "content": "'"${QUESTION}"'"}
    ]
  }'
)

# Extract and print the model's reply
MODEL_REPLY=$(echo "$RESPONSE" | jq -r '.choices[0].message.content')
echo "$MODEL_REPLY"
