const express = require("express");
const app = express();
const mysql = require("mysql2/promise");
require('dotenv').config();
const port = process.env.PORT || 3000;


const databaseOptions = {
    host: process.env.DB_HOST,
    user: process.env.DB_USER,
    password: process.env.DB_PASSWORD,
    database: process.env.DB_SCHEMA
};

const dbConnection = async()=>{
    const db = await mysql.createConnection(databaseOptions);
    return db;
}

app.use(express.json());

app.listen(port, ()=>{
    console.log("The TP_Routes API is running.")
});

app.get("/", (request, response)=>{
    console.log("Get request received.");
    response.send("Welcome to the TP_Routes API");
});

app.post("/journeytime", async (request, response)=>{
    const routeID = request.body.routeid;
    const sourceStation = request.body.source;
    const destinationStation = request.body.destination;
    const db = await dbConnection();
    let stationsOnJourney = [];
    let journeyTime = 0;
    let reverseCondition = false;

    const sqlQuery = 'select `routes`.`routes_name`, `stations`.`stations_name`, '+ 
	'`routes_stations`.`sequence`, `routes_stations`.`traveltimefromprevious_station` '+
    'from `routes` '+
    'join `routes_stations` on `routes`.`id`=`routes_stations`.`route_id` '+
    'join `stations` on `routes_stations`.`station_id`=`stations`.`id` '+
    'where `routes`.`routes_name`="' + routeID +'";';


    const results = await db.query(sqlQuery);
    const stationsOnRoute = results[0];

    sourceIndex = stationsOnRoute.findIndex(iterator => iterator.stations_name===sourceStation);
    destinationIndex = stationsOnRoute.findIndex(iterator => iterator.stations_name===destinationStation);

    if(sourceIndex>destinationIndex){
        reverseCondition=true;
        [sourceIndex,destinationIndex]=[destinationIndex,sourceIndex];
    }


    for(let i = sourceIndex; i <= destinationIndex; i++){
        const stationName = stationsOnRoute[i].stations_name;
        const timeToStation = stationsOnRoute[i].traveltimefromprevious_station;

        i==sourceIndex ? journeyTime +=0 : journeyTime +=timeToStation;
        
        stationsOnJourney.push({stationName,timeToStation});
    }

    if(reverseCondition){
        stationsOnJourney.reverse();
    }

    stationsOnJourney[0].timeToStation=0;

    response.json({
        "totalJourneyTime": journeyTime,
        "stationsOnJourney": stationsOnJourney 
    });
});