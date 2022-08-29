curl -X GET "https://api.odpt.org/api/v4/odpt:BusroutePattern?acl:consumerKey=${ODPT_CONSUMER_KEY}&odpt:operator=${ODPT_OPERATOR}" |\
 jq ".[] | select(.\"dc:title\" | contains(\"${ODPT_BUSROUTE_NAME}\")) | [.\"dc:title\", .\"@id\", .\"odpt:busroute\", .\"odpt:pattern\", .\"odpt:note\", .\"owl:sameAs\"]"



