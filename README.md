# TP-Routes-API

api endpoint: POST [url]/journeytime

json inputs: {
  "routeid", 
  "source", 
  "destination"
}


json outputs: {
  "totalJourneyTime", 
  "stationsOnJourney":[{"stationName", "timeToStation"}]
}
