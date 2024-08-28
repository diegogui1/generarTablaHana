const cds = require('@sap/cds');

async function getIdEmpleadoByEmail(email) {

    const tx = cds.transaction();

    try {
        //SELECT a la tabla que almacena los ID, buscando por email
        const result = await tx.run(`SELECT TOP 1 "IDEMPLEADO" FROM "NEV2_HDI_CONSULTAINCIDENCIASDETALLES_DB_DEPLOYER_1"."HISTEMPLEADOS" where "CORREOELECTRONICO" = '${email}'`);

        return result;

    } catch (error) {

        throw error;

    }
}

module.exports = {
    getIdEmpleadoByEmail: getIdEmpleadoByEmail
};