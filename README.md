# TP-Routes-API

api endpoint: GET [url]/journeytime

json inputs: {
  "routeid", 
  "source", 
  "destination"
}


json outputs: {
  "totalJourneyTime", 
  "stationsOnJourney":[{"stationName", "timeToStation"}]
}
