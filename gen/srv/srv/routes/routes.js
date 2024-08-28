const express = require('express');
const router = express.Router();
const { response, request, Router } = require("express");
const { transform, prettyPrint } = require("camaro");
const xml2js = require('xml2js');
const { json2xml } = require('xml-js');

 

const InsertaRecontratacionesSSFF = async (req  , res ) => {

    var persona = req.body["soapenv:Envelope"]["soapenv:Body"];

    for (let index = 0; index < persona.length; index++) {
        const element = persona[index];

        var builder = new xml2js.Builder();
        var options = { compact: true, ignoreComment: true, spaces: 0 };
        var xml = json2xml(JSON.stringify(element), options);
        const template = {
            'ID_EXTERNO': '/person/person_id_external',
            'BUKRS': '/person/employment_information/job_information/comp',
            'ZUNEG': '/person/employment_information/job_information/business_unit',
            'BUTXT': '/person/employment_information/job_information/companyName',
            'NAME1': '/person/employment_information/job_information/LocationGroupName',
            'WERKS': '/person/employment_information/job_information/custom_string12',
            'BTRTL': '/person/employment_information/job_information/location',
            'PLANS': '/person/employment_information/job_information/position',
            'ENAME': '/person/personal_information/formal_name',
            'LAND1': '/person/employment_information/job_information/company_territory_code',
            'MASSN': '/person/employment_information/job_information/Tipo_Medida',
            'ZSUNEG': '/person/employment_information/job_information/Negocio'
        };
        const mapping = await transform(xml, template);
        const tx = cds.transaction(req);
        try {

            const dataSql = await INSERT.into("SSFFRECONTRATARIONES").entries(mapping);
            /** 
                     const dataSql = await INSERT.into("SSFFRECONTRATARIONES").columns(
                        'ID_EXTERNO'
                     ).rows(
                        [persona_ide]
                    )
                   const data = await tx.run( await dataSql);
                     req.res.json(dataSql.results); return data.results;
                     //  console.info(err);
                   // req.res.json(err);
            */
            res.status(201).json(dataSql);

        } catch (err) {
            res.status(err.statusCode).json(err);


        }


    }

};



router.post("/recontrataciones", InsertaRecontratacionesSSFF);
module.exports = router;