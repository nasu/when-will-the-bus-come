curl -X GET "https://api.odpt.org/api/v4/odpt:BusstopPoleTimetable?acl:consumerKey=${ODPT_CONSUMER_KEY}&odpt:busstopPole=${ODPT_POLE}&" |\
  jq '.[] | {calendar: ."odpt:calendar", depatureTime: [."odpt:busstopPoleTimetableObject"[] | ."odpt:departureTime"]}'
