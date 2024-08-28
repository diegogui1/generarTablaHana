const cds = require("@sap/cds");
const CircularJSON = require("circular-json");
(async function () {
    // Connect to external SFSF OData services
    assPersonalInformation = await cds.connect.to('ECPersonalInformation');
     
})();



// Read SFSF users
async function readSFSF_PersonalInformation(req) {
    try {
      

        // Handover to the SF OData Service to fecth the requested data
        const tx = assPersonalInformation.tx(req);

        const data =  await tx.run(SELECT.from("PerPerson"));
        return data;
    } catch (err) {
        req.error(err.code, err.message);
    }
}

async function InsertarErrorSAPPA(req){

  //  await readSFSF_PersonalInformation(req);
    const tx = cds.transaction(req);

    try {
        const data = await tx.run( await INSERT.into("TablaErroresSAPPA").entries( req.data));
        req.res.json(data.results);
       // return data.results;
      } catch (err) {

        console.info (err);
          req.res.json(err);

      }



}

module.exports = {
    InsertarErrorSAPPA
}