const { InsertarErrorSAP, InsertarErrorSAPPA  } = require('../lib/TablaErroresSAP');

module.exports = (srv) => {
    srv.on("CREATE", "TablaErroresSAPPASet",InsertarErrorSAPPA);
   
};