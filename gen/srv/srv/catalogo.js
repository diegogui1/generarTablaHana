const cds = require("@sap/cds");
const entityTablaErroresPA = require("./TablaErroresPA/service-TablaErroresPA");
const entityTablaErroresSAP = require("./LogErroresSAP/service-LogErroresSap");
const express = require('express')
const app = express();
const xsenv = require('@sap/xsenv');

xsenv.loadEnv();

module.exports = cds.service.impl(async function () {
    console.info("logica principal");
    await entityTablaErroresPA(this);
    await entityTablaErroresSAP(this);
    
 
}); 
 


 