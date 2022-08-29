curl -X GET "https://api.odpt.org/api/v4/odpt:Calendar?acl:consumerKey=${ODPT_CONSUMER_KEY}" |\
  jq '.[] | select(."owl:sameAs" | contains("odpt.Calendar:Specific.Toei")) | [."@id", ."dc:title", ."owl:sameAs", ."odpt:duration"]'
