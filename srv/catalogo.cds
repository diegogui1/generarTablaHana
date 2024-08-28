using {mintdb as apps} from '../db/data-model';
using {ZHRODATA_MONITOR_INTEGRACIONES_SRV} from '../db/ZHRODATA_MONITOR_INTEGRACIONES_SRV';

//using { ECPersonalInformation } from './external/ECPersonalInformation';


@path: '/MintIntegracion'
service CatalogMintServiceIntegracion {
  /**
   * Entidad: TablaErroresSAPSet
   * Descripcion: entidad que se va a utilizar en onpremise para llegar los datos a HANA.
   */
  entity TablaErroresSAPPASet as projection on apps.TablaErroresSAPPA;

/** aqui tamabien entra en juego el router para traer los datos de SSFF  */


//@cds.persistence.skip
//@cds.persistence.exists

}


@path: '/MintMonitor'
service CatalogMintMonitor {

  /**
 * Entidad: TablaErroresPASet
 * Descripcion: entidad que se va a utilizar por el Fron-end.
 */
  @open
  // grafico barra antiguedad
  type antigued {
    TIPO_ERROR : String(100);
    CANT_ERROR : String(100);
    CANT_7     : String(100);
    CANT_14    : String(100);
    Fecha      : String;
    CANT_MAS   : String;
  };

  // grafico circulo integraciones
  type integracion {
    ExitoTotal    : String(100);
    ErrorTotal    : String(100);
    TotalExitosos : String(100);
  };

  entity erroresPA   as projection on ZHRODATA_MONITOR_INTEGRACIONES_SRV.TablaErroresSAPPA;
  entity erroresOM   as projection on ZHRODATA_MONITOR_INTEGRACIONES_SRV.TablaErroresOMSet;
  entity errores     as projection on ZHRODATA_MONITOR_INTEGRACIONES_SRV.generalErrores;
  entity erroresTop5 as projection on ZHRODATA_MONITOR_INTEGRACIONES_SRV.ErroresTop5;
  entity kpiPA       as projection on ZHRODATA_MONITOR_INTEGRACIONES_SRV.KpiPA;
  entity kpiOM       as projection on ZHRODATA_MONITOR_INTEGRACIONES_SRV.KpiOM;
  entity kpiTS       as projection on ZHRODATA_MONITOR_INTEGRACIONES_SRV.KpiTS;
  entity kpiTM       as projection on ZHRODATA_MONITOR_INTEGRACIONES_SRV.KpiTM;
  //   CARD PA
  function kpiPA1()                     returns kpiPA;
  // grafico
  function antiguedades()  returns array of antigued;
  function integraciones() returns integracion;

}
