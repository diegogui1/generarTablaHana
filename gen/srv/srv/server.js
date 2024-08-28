const cds = require('@sap/cds');
const cov2ap = require("@sap/cds-odata-v2-adapter-proxy");
const cds_swagger = require('cds-swagger-ui-express')
const express = require("express");
const bodyParser = require('body-parser');

//require("../srv/routes/librerias");

//https://cap.cloud.sap/docs/node.js/cds-server


const init = async (o) => {
    const app1 = (cds.app = o.app || express());
   // cds.on("bootstrap",  app1.use(bodyParser.json()));
   
    cds.on("bootstrap", app1.use(cov2ap()));
    cds.on('bootstrap', app1.use(cds_swagger({ "apiPath": "/v2/" })))

    // load specified models or all in project
    //  const csn = await cds.load(o.from || "*");
    //  cds.model = o.from = cds.linked(cds.compile.for.odata(csn));
    // load and prepare models
    const csn = await cds.load('*').then(cds.minify)
    cds.model = cds.compile.for.nodejs(csn)
    cds.emit('loaded', cds.model)

    const _init = o.in_memory && ((db) => cds.deploy(csn).to(db, o));
    if (cds.requires.db) cds.db = await cds.connect.to("db").then(_init);
    if (cds.requires.messaging) await cds.connect.to("messaging");
    if (cds.requires.multitenancy) await cds.mtx.in(app1);

   // app1.use(bodyParser.text());
   app1.use(bodyParser.xml());
   //app1.use(bodyParser.json());
    app1.use("/", require("./routes/routes"));

    await cds.serve('all').in(app1);
    cds.emit("served", cds.services); //> hook for listeners
    // start http server
    const port = o.port !== undefined ? o.port : process.env.PORT || 4004;
    const server = app1.listen(port);

    return server;
};

module.exports = init;