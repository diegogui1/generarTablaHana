const { LeerErrorPA } = require("../lib/TablaErroresPA");
const { LeerErroresTop5 } = require("../lib/TablaErroresPA");

module.exports = (srv) => {
  srv.on("READ", "erroresPA", LeerErrorPA);
  srv.on("READ", "erroresTop5", LeerErroresTop5);

  srv.on("error", (err, req) => {
    err.message = "Oh no! " + err.message;
    console.log(err.message);
  });
  srv.on("kpiPA1", async (req) => {
    req.data["CantidadErrores"] = "20";
    req.data["CantExito"] = "10";
    req.data["Exito"] = "71";
    req.data["CantTotal"] = "100";
    req.data["Fecha"] = "2024-07-11";
    req.data["Hora"] = "07:59:59";

    return req.data;
  });
  srv.on("antiguedades", async (req) => {
    let data = [];
    let result = {};

    result.TIPO_ERROR = "error 1";
    result.CANT_ERROR = 12;
    result.CANT_7 = 20;
    result.CANT_14 = 5;
    result.CANT_MAS = 3;
    data.push(result);
    result = {};
    result.TIPO_ERROR = "error 3";
    result.CANT_ERROR = 78;
    result.CANT_7 = 5;
    result.CANT_14 = 5;
    result.CANT_MAS = 3;
    data.push(result);

    return data;
  });

  srv.on("integraciones", async (req) => {
     
    let result = {};

    result.ExitoTotal = 12;
    result.ErrorTotal = 12;
    result.TotalExitosos = 20;
  

    return result;
  });

  // para action/event srv.on ('xxxx',LeerErrorPA);
};
