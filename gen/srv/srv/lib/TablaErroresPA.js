const cds = require("@sap/cds");
const CircularJSON = require("circular-json");
(async function () {
    // Connect to external SFSF OData services
    assPersonalInformation = await cds.connect.to('ECPersonalInformation');
     
})();

async function onReadFilter(req, nentidad) {
  var multiples,multiplesref, entidad, operador, valorentidad, logical;
  var no = 0;
  var valor
  for (var key in req.query.SELECT.where) {
    if (req.query.SELECT.where[key].xpr) {
      multiples = 'xpr';
      break ;
    };

    if (req.query.SELECT.where[key].ref) {
        multiplesref = 'ref';
        break ;
  
      };
  }

  if (multiples === 'xpr')   {
    valor = req.query.SELECT.where.findIndex(
      (filter) => filter && filter.xpr && filter.xpr[0].ref.find((field) => field === nentidad)
    )
    entidad = nentidad;
    operador = req.query.SELECT.where[0].xpr[valor + 1]
    valorentidad = req.query.SELECT.where[0].xpr[valor + 2].val
    logical = req.query.SELECT.where[0].xpr[valor + 3]

    const consultawhere = entidad + operador + "'" + valorentidad + "'";
     return consultawhere;

  }else if  (multiplesref === 'ref')   {
    valor = req.query.SELECT.where.findIndex(
      (filter) => filter && filter.ref && filter.ref[0] ===  nentidad);
 
    entidad = nentidad;
    operador = req.query.SELECT.where[valor + 1]
    valorentidad = req.query.SELECT.where[valor + 2].val
    logical = req.query.SELECT.where[valor + 3]

    const consultawhere = entidad + operador + "'" + valorentidad + "'";
     return consultawhere;

  } else {
    valor = req.query.SELECT.where.findIndex(
      (filter) => filter && filter.ref && filter.ref && filter.ref.find((field) => field === nentidad)
    )
    entidad = nentidad;
    operador = req.query.SELECT.where[valor + 1]
    valorentidad = req.query.SELECT.where[valor + 2].val
    const consultawhere = entidad + operador + "'" + valorentidad + "'";
    return consultawhere;
  }
}

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

async function LeerErrorPA(req){

  //  await readSFSF_PersonalInformation(req);
    const tx = cds.transaction(req);
    var serialized = CircularJSON.stringify( req.data);
    const body = JSON.stringify(serialized);
    try {

   // const sFiltro = await  onReadFilter(req, "IdMonitor");
   // let sqlwhere = cds.parse.expr (`${sFiltro}`);

        const data = await tx.run(  SELECT.from("VIR_ZTTGS_MAESTRO"));
        req.res.json(data.results);
       // return data.results;
      } catch (err) {

        console.info (err);
          req.res.json(err);

      }



}
async function LeerErroresTop5(req){

  req.data["MSJ_Error"] = "20";
  req.data["ID_Personal"] = "10";
  req.data["Categoria_de_Error"] = "71";
  req.data["Fecha_de_Error"] = "01-01-2025";
  req.data["Antiguedad"] = "10";
  req.data["Negocio"] = "test";

 


  return req.data;
}


module.exports = {
    LeerErrorPA ,
    LeerErroresTop5
}