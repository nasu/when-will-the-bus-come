#curl -X GET "https://api.odpt.org/api/v4/odpt:BusstopPoleTimetable?acl:consumerKey=${ODPT_CONSUMER_KEY}&odpt:fromBusstopPole=${ODPT_POLE}"
for p in ${ODPT_BUSROUTES//,/ }
do
  echo "--"
  echo $p
  curl -X GET "https://api.odpt.org/api/v4/odpt:BusstopPoleTimetable?acl:consumerKey=${ODPT_CONSUMER_KEY}&odpt:busroutePattern=${p}"
done
