curl -X GET "https://api.odpt.org/api/v4/odpt:Operator?acl:consumerKey=${ODPT_CONSUMER_KEY}" | jq -r '.[] | {id: ."@id", name:."dc:title", alias: ."owl:sameAs"}'
