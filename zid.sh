curl -s -X GET "https://api.cloudflare.com/client/v4/zones?name=hmdeploy.com&status=active" \
  -H "Authorization: Bearer $CLOUDFLARE_BEARER" \
  -H "Content-Type: application/json" | jq -r '{"result"}[] | .[0] | .id'
