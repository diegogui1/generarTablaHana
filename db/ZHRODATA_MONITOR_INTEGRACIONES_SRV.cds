/* checksum : 11b764855bffe93e465b9a291151ba27 */
// //@cds.external : true
// @m.IsDefaultEntityContainer : 'true'
// @sap.supported.form//@cds.external : trueats : 'atom json xlsx'


 @cds.persistence.skip : true
@sap.content.version : '1'
@sap.creatable : 'false'
@sap.updatable : 'false'
@sap.deletable : 'false'
@sap.pageable : 'false'
entity  ZHRODATA_MONITOR_INTEGRACIONES_SRV.Grafico {
 TIPO_ERROR: String(100) ;
 CANT_ERROR: String(100) ;
 CANT_7 :String(100) ;
 CANT_14: String(100) ;
 Fecha : String;
CANT_MAS : String;
}

 

 @cds.persistence.skip : true
@sap.content.version : '1'
@sap.creatable : 'false'
@sap.updatable : 'false'
@sap.deletable : 'false'
@sap.pageable : 'false'
entity  ZHRODATA_MONITOR_INTEGRACIONES_SRV.KpiPA {
 CantTotal: String(100) ;
 CantidadErrores: String(100) ;
 CantExito :String(100) ;
 Exito: String(100) ;
 Fecha : Date;
Hora : Time;
}

 @cds.persistence.skip : true
@sap.content.version : '1'
@sap.creatable : 'false'
@sap.updatable : 'false'
@sap.deletable : 'false'
@sap.pageable : 'false'
entity  ZHRODATA_MONITOR_INTEGRACIONES_SRV.KpiOM {
  key id: String ;
  CantidadErrores: String(100) ;
 CantExito :String(100) ;
 Exito: String(100) ;

}
 @cds.persistence.skip : true
@sap.content.version : '1'
@sap.creatable : 'false'
@sap.updatable : 'false'
@sap.deletable : 'false'
@sap.pageable : 'false'
entity  ZHRODATA_MONITOR_INTEGRACIONES_SRV.KpiTS {
  key id: String ;
  CantidadErrores: String(100) ;
 CantExito :String(100) ;
 Exito: String(100) ;

}
 @cds.persistence.skip : true
@sap.content.version : '1'
@sap.creatable : 'false'
@sap.updatable : 'false'
@sap.deletable : 'false'
@sap.pageable : 'false'
entity  ZHRODATA_MONITOR_INTEGRACIONES_SRV.KpiTM {
  key id: String ;
  CantidadErrores: String(100) ;
 CantExito :String(100) ;
 Exito: String(100) ;

}

 @cds.persistence.skip : true
@sap.content.version : '1'
@sap.creatable : 'false'
@sap.updatable : 'false'
@sap.deletable : 'false'
@sap.pageable : 'false'
entity  ZHRODATA_MONITOR_INTEGRACIONES_SRV.ErroresTop5 {
key id: String ;
MSJ_Error : String(100) ;
ID_Personal : String(6) ;
Categoria_de_Error : String(10) ;
Fecha_de_Error : String(10) ;
Antiguedad : String(10) ;
Negocio : String(10) ;

}

service ZHRODATA_MONITOR_INTEGRACIONES_SRV {};
 @cds.persistence.skip : true
@sap.content.version : '1'
@sap.creatable : 'false'
@sap.updatable : 'false'
@sap.deletable : 'false'
@sap.pageable : 'false'
entity  ZHRODATA_MONITOR_INTEGRACIONES_SRV.generalErrores {
  @sap.creatable : 'false'
  @sap.updatable : 'false'
  @sap.sortable : 'false'
  @sap.filterable : 'false'
  @sap.label : 'Cantidad de Errores'
  CantErroresAp : String(6) not null;
  @sap.creatable : 'false'
  @sap.updatable : 'false'
  @sap.sortable : 'false'
  @sap.filterable : 'false'
  @sap.label : 'Cantidad de Errores'
  CantErroresOm : String(6) not null;
  @sap.creatable : 'false'
  @sap.updatable : 'false'
  @sap.sortable : 'false'
  @sap.filterable : 'false'
  @sap.label : 'Cantidad de Errores'
  CantErroresTs : String(6) not null;
  @sap.creatable : 'false'
  @sap.updatable : 'false'
  @sap.sortable : 'false'
  @sap.filterable : 'false'
  @sap.label : 'Cantidad de Errores'
  CantErroresTm : String(6) not null;
  @sap.creatable : 'false'
  @sap.updatable : 'false'
  @sap.sortable : 'false'
  @sap.filterable : 'false'
  @sap.label : 'Cantidad de Errores'
  CantSuccesAp : String(6) not null;
  @sap.creatable : 'false'
  @sap.updatable : 'false'
  @sap.sortable : 'false'
  @sap.filterable : 'false'
  @sap.label : 'Cantidad de Errores'
  CantSuccesOm : String(6) not null;
  @sap.creatable : 'false'
  @sap.updatable : 'false'
  @sap.sortable : 'false'
  @sap.filterable : 'false'
  @sap.label : 'Cantidad de Errores'
  CantSuccesTs : String(6) not null;
  @sap.creatable : 'false'
  @sap.updatable : 'false'
  @sap.sortable : 'false'
  @sap.filterable : 'false'
  @sap.label : 'Cantidad de Errores'
  CantSuccesTm : String(6) not null;
};


//@cds.external : true
@cds.persistence.skip : true
@sap.content.version : '1'
@sap.creatable : 'false'
@sap.updatable : 'false'
@sap.deletable : 'false'
@sap.pageable : 'false'
entity ZHRODATA_MONITOR_INTEGRACIONES_SRV.TablaCatErroresSet {
  @sap.creatable : 'false'
  @sap.updatable : 'false'
  @sap.sortable : 'false'
  @sap.filterable : 'false'
  @sap.unicode : 'false'
  key IdMonitor : String(2) not null;
  @sap.creatable : 'false'
  @sap.updatable : 'false'
  @sap.sortable : 'false'
  @sap.filterable : 'false'
  @sap.unicode : 'false'
  @sap.label : 'Categorización'
  key Categorizacion : LargeString not null;
  @sap.creatable : 'false'
  @sap.updatable : 'false'
  @sap.sortable : 'false'
  @sap.filterable : 'false'
  @sap.unicode : 'false'
  @sap.label : 'Cantidad de Errores'
  Cantidad : String(6) not null;
  @sap.creatable : 'false'
  @sap.updatable : 'false'
  @sap.sortable : 'false'
  @sap.filterable : 'false'
  @sap.unicode : 'false'
  @sap.label : 'Unidad de Negocio'
  Zuneg : String(5) not null;
};

//@cds.external : true
@cds.persistence.skip : true
@sap.content.version : '1'
@sap.creatable : 'false'
@sap.updatable : 'false'
@sap.deletable : 'false'
@sap.pageable : 'false'
entity ZHRODATA_MONITOR_INTEGRACIONES_SRV.ReporteAPSet {
  @sap.creatable : 'false'
  @sap.updatable : 'false'
  @sap.sortable : 'false'
  @sap.filterable : 'false'
  @sap.unicode : 'false'
  key ID : String(100) not null;
  @sap.creatable : 'false'
  @sap.updatable : 'false'
  @sap.sortable : 'false'
  @sap.filterable : 'false'
  @sap.unicode : 'false'
  FechaDesde : String(8) not null;
  @sap.creatable : 'false'
  @sap.updatable : 'false'
  @sap.sortable : 'false'
  @sap.filterable : 'false'
  @sap.unicode : 'false'
  FechaHasta : String(8) not null;
  @sap.creatable : 'false'
  @sap.updatable : 'false'
  @sap.sortable : 'false'
  @sap.filterable : 'false'
  @sap.unicode : 'false'
  Land1 : String(3) not null;
  @sap.creatable : 'false'
  @sap.updatable : 'false'
  @sap.sortable : 'false'
  @sap.filterable : 'false'
  @sap.unicode : 'false'
  MonPA : String(1);
  @sap.creatable : 'false'
  @sap.updatable : 'false'
  @sap.sortable : 'false'
  @sap.filterable : 'false'
  @sap.unicode : 'false'
  MonTS : String(1);
  @sap.creatable : 'false'
  @sap.updatable : 'false'
  @sap.sortable : 'false'
  @sap.filterable : 'false'
  @sap.unicode : 'false'
  MonTM : String(1);
  @sap.creatable : 'false'
  @sap.updatable : 'false'
  @sap.sortable : 'false'
  @sap.filterable : 'false'
  @sap.unicode : 'false'
  Ename : LargeString not null;
  @sap.creatable : 'false'
  @sap.updatable : 'false'
  @sap.sortable : 'false'
  @sap.filterable : 'false'
  @sap.unicode : 'false'
  Bukrs : String(4) not null;
  @sap.creatable : 'false'
  @sap.updatable : 'false'
  @sap.sortable : 'false'
  @sap.filterable : 'false'
  @sap.unicode : 'false'
  Werks : String(4) not null;
  @sap.creatable : 'false'
  @sap.updatable : 'false'
  @sap.sortable : 'false'
  @sap.filterable : 'false'
  @sap.unicode : 'false'
  Zuneg : String(10) not null;
  @sap.creatable : 'false'
  @sap.updatable : 'false'
  @sap.sortable : 'false'
  @sap.filterable : 'false'
  @sap.unicode : 'false'
  CantErrores : String(6) not null;
  @sap.creatable : 'false'
  @sap.updatable : 'false'
  @sap.sortable : 'false'
  @sap.filterable : 'false'
  @sap.unicode : 'false'
  ErroresPA : String(6) not null;
  @sap.creatable : 'false'
  @sap.updatable : 'false'
  @sap.sortable : 'false'
  @sap.filterable : 'false'
  @sap.unicode : 'false'
  ErroresTS : String(6) not null;
  @sap.creatable : 'false'
  @sap.updatable : 'false'
  @sap.sortable : 'false'
  @sap.filterable : 'false'
  @sap.unicode : 'false'
  ErroresTM : String(6) not null;
};

//@cds.external : true
@cds.persistence.skip : true
@sap.content.version : '1'
@sap.creatable : 'false'
@sap.updatable : 'false'
@sap.deletable : 'false'
@sap.pageable : 'false'
entity ZHRODATA_MONITOR_INTEGRACIONES_SRV.MonitorIntegracionesSet {
  @sap.creatable : 'false'
  @sap.updatable : 'false'
  @sap.sortable : 'false'
  @sap.filterable : 'false'
  @sap.unicode : 'false'
  key IdMonitor : String(2) not null;
  @sap.creatable : 'false'
  @sap.updatable : 'false'
  @sap.sortable : 'false'
  @sap.filterable : 'false'
  @sap.unicode : 'false'
  FechaDesde : String(8) not null;
  @sap.creatable : 'false'
  @sap.updatable : 'false'
  @sap.sortable : 'false'
  @sap.filterable : 'false'
  @sap.unicode : 'false'
  FechaHasta : String(8) not null;
  @sap.creatable : 'false'
  @sap.updatable : 'false'
  @sap.sortable : 'false'
  @sap.filterable : 'false'
  @sap.unicode : 'false'
  @sap.label : 'Usuario'
  IdUsuario : String(50) not null;
  @sap.creatable : 'false'
  @sap.updatable : 'false'
  @sap.sortable : 'false'
  @sap.filterable : 'false'
  @sap.unicode : 'false'
  Pais : String(3) not null;
  @sap.creatable : 'false'
  @sap.updatable : 'false'
  @sap.sortable : 'false'
  @sap.filterable : 'false'
  @sap.unicode : 'false'
  TotIndexOk : String(15) not null;
  @sap.creatable : 'false'
  @sap.updatable : 'false'
  @sap.sortable : 'false'
  @sap.filterable : 'false'
  @sap.unicode : 'false'
  EjecutarPA : String(1) not null;
  @sap.creatable : 'false'
  @sap.updatable : 'false'
  @sap.sortable : 'false'
  @sap.filterable : 'false'
  @sap.unicode : 'false'
  EjecutarOM : String(1) not null;
  @sap.creatable : 'false'
  @sap.updatable : 'false'
  @sap.sortable : 'false'
  @sap.filterable : 'false'
  @sap.unicode : 'false'
  EjecutarTS : String(1) not null;
  @sap.creatable : 'false'
  @sap.updatable : 'false'
  @sap.sortable : 'false'
  @sap.filterable : 'false'
  @sap.unicode : 'false'
  EjecutarTM : String(1) not null;
  @sap.creatable : 'false'
  @sap.updatable : 'false'
  @sap.sortable : 'false'
  @sap.filterable : 'false'
  @sap.unicode : 'false'
  Error_Msg : LargeString not null;
  @sap.creatable : 'false'
  @sap.updatable : 'false'
  @sap.sortable : 'false'
  @sap.unicode : 'false'
  @sap.label : 'Indicador'
  NotifMailMon : Boolean not null;
  @sap.creatable : 'false'
  @sap.updatable : 'false'
  @sap.sortable : 'false'
  @sap.filterable : 'false'
  @sap.unicode : 'false'
  @sap.label : 'Indicador'
  EsOxxo : Boolean not null;
  GeneralErrores : ZHRODATA_MONITOR_INTEGRACIONES_SRV.GeneralErrores not null;
  CategoriaErrores : ZHRODATA_MONITOR_INTEGRACIONES_SRV.CategoriaErrores not null;
  AntiguedadErrores : ZHRODATA_MONITOR_INTEGRACIONES_SRV.AntiguedadErrores not null;
  @cds.ambiguous : 'missing on condition?'
  NavOM : Association to many ZHRODATA_MONITOR_INTEGRACIONES_SRV.TablaErroresOMSet on NavOM.IdMonitor = IdMonitor;
  @cds.ambiguous : 'missing on condition?'
  NavPA : Association to many ZHRODATA_MONITOR_INTEGRACIONES_SRV.TablaErroresPASet on NavPA.IdMonitor = IdMonitor;
  @cds.ambiguous : 'missing on condition?'
  NavTM : Association to many ZHRODATA_MONITOR_INTEGRACIONES_SRV.TablaErroresTMSet on NavTM.IdMonitor = IdMonitor;
  @cds.ambiguous : 'missing on condition?'
  NavCat : Association to many ZHRODATA_MONITOR_INTEGRACIONES_SRV.TablaCatErroresSet on NavCat.IdMonitor = IdMonitor;
  @cds.ambiguous : 'missing on condition?'
  NavTS : Association to many ZHRODATA_MONITOR_INTEGRACIONES_SRV.TablaErroresTSSet on NavTS.IdMonitor = IdMonitor;
  @cds.ambiguous : 'missing on condition?'
  NavTop5 : Association to many ZHRODATA_MONITOR_INTEGRACIONES_SRV.TablaTop5Set on NavTop5.TipoMonitor = IdMonitor;
  @cds.ambiguous : 'missing on condition?'
  NavUE : Association to many ZHRODATA_MONITOR_INTEGRACIONES_SRV.UltimaEjecucionSet on NavUE.IdMonitor = IdMonitor;
};

@cds.persistence.exists
@cds.persistence.skip
entity ZHRODATA_MONITOR_INTEGRACIONES_SRV.TablaErroresSAPPA {
key IdMonitor : String;
    ITEMS : Composition of many    ZHRODATA_MONITOR_INTEGRACIONES_SRV.TablaErroresPASet
};

//@cds.external : true
@cds.persistence.skip : true
@sap.content.version : '1'
@sap.creatable : 'true'
@sap.updatable : 'true'
@sap.deletable : 'true'
@sap.pageable : 'true'
entity ZHRODATA_MONITOR_INTEGRACIONES_SRV.TablaErroresPASet {
  @sap.creatable : 'false'
  @sap.updatable : 'false'
  @sap.sortable : 'false'
  @sap.filterable : 'true'
  @sap.unicode : 'false'
  key IdMonitor : String(2) not null;
  @sap.creatable : 'false'
  @sap.updatable : 'false'
  @sap.sortable : 'false'
  @sap.filterable : 'false'
  @sap.unicode : 'false'
  @sap.label : 'Número log'
  Lognumber : String(20) not null;
  @sap.creatable : 'false'
  @sap.updatable : 'false'
  @sap.sortable : 'false'
  @sap.filterable : 'false'
  @sap.unicode : 'false'
  @sap.label : 'Unidad de Negocio'
  Zuneg : String(10) not null;
  @sap.creatable : 'false'
  @sap.updatable : 'false'
  @sap.sortable : 'false'
  @sap.filterable : 'false'
  @sap.unicode : 'false'
  @sap.label : 'Texto div.pers.'
  Name1 : String(30) not null;
  @sap.creatable : 'false'
  @sap.updatable : 'false'
  @sap.sortable : 'false'
  @sap.filterable : 'false'
  @sap.unicode : 'false'
  @sap.label : 'País'
  Land1 : String(3) not null;
  @sap.creatable : 'false'
  @sap.updatable : 'false'
  @sap.sortable : 'false'
  @sap.filterable : 'false'
  @sap.unicode : 'false'
  @sap.label : 'Identif.ext.'
  Extnumber : String(100) not null;
  @sap.creatable : 'false'
  @sap.updatable : 'false'
  @sap.sortable : 'false'
  @sap.filterable : 'false'
  @sap.unicode : 'false'
  @sap.label : 'Nombre usuario'
  Aluser : LargeString not null;
  @sap.creatable : 'false'
  @sap.updatable : 'false'
  @sap.sortable : 'false'
  @sap.filterable : 'false'
  @sap.unicode : 'false'
  @sap.label : 'Nombre campo'
  Ename : LargeString not null;
  @sap.creatable : 'false'
  @sap.updatable : 'false'
  @sap.sortable : 'false'
  @sap.filterable : 'false'
  @sap.unicode : 'false'
  @sap.label : 'Centro coste'
  Kostl : String(10) not null;
  @sap.creatable : 'false'
  @sap.updatable : 'false'
  @sap.sortable : 'false'
  @sap.filterable : 'false'
  @sap.unicode : 'false'
  @sap.label : 'Área nómina'
  Abkrs : String(2) not null;
  @sap.creatable : 'false'
  @sap.updatable : 'false'
  @sap.sortable : 'false'
  @sap.filterable : 'false'
  @sap.unicode : 'false'
  @sap.label : 'Sociedad'
  Bukrs : String(4) not null;
  @sap.creatable : 'false'
  @sap.updatable : 'false'
  @sap.sortable : 'false'
  @sap.filterable : 'false'
  @sap.unicode : 'false'
  @sap.label : 'Denominación de la sociedad o empresa'
  Butxt : String(25) not null;
  @sap.creatable : 'false'
  @sap.updatable : 'false'
  @sap.sortable : 'false'
  @sap.filterable : 'false'
  @sap.unicode : 'false'
  @sap.label : 'División pers.'
  Werks : String(4) not null;
  @sap.creatable : 'false'
  @sap.updatable : 'false'
  @sap.sortable : 'false'
  @sap.filterable : 'false'
  @sap.unicode : 'false'
  @sap.label : 'Subdiv.pers.'
  Btrtl : String(4) not null;
  @sap.creatable : 'false'
  @sap.updatable : 'false'
  @sap.sortable : 'false'
  @sap.filterable : 'false'
  @sap.unicode : 'false'
  @sap.label : 'Posicion'
  Plans : String(8) not null;
  @odata.Type : 'Edm.DateTime'
  @odata.Precision : 7
  @sap.creatable : 'false'
  @sap.updatable : 'false'
  @sap.sortable : 'false'
  @sap.filterable : 'false'
  @sap.unicode : 'false'
  @sap.label : 'Fecha'
  Aldate : Timestamp not null;
  @sap.creatable : 'false'
  @sap.updatable : 'false'
  @sap.sortable : 'false'
  @sap.filterable : 'false'
  @sap.unicode : 'false'
  @sap.label : 'Hora'
  Altime : Time not null;
  @sap.creatable : 'false'
  @sap.updatable : 'false'
  @sap.sortable : 'false'
  @sap.filterable : 'false'
  @sap.unicode : 'false'
  @sap.label : 'Clase'
  Clase : LargeString not null;
  @sap.creatable : 'false'
  @sap.updatable : 'false'
  @sap.sortable : 'false'
  @sap.filterable : 'false'
  @sap.unicode : 'false'
  @sap.label : 'Id Error'
  IdError : LargeString not null;
  @sap.creatable : 'false'
  @sap.updatable : 'false'
  @sap.sortable : 'false'
  @sap.filterable : 'false'
  @sap.unicode : 'false'
  @sap.label : 'Mensaje de error'
  ErrorMsg : LargeString not null;
  @sap.creatable : 'false'
  @sap.updatable : 'false'
  @sap.sortable : 'false'
  @sap.filterable : 'false'
  @sap.unicode : 'false'
  @sap.label : 'Categorización'
  Categorizacion : LargeString not null;
  @sap.creatable : 'false'
  @sap.updatable : 'false'
  @sap.sortable : 'false'
  @sap.filterable : 'false'
  @sap.unicode : 'false'
  @sap.label : 'Responsable'
  Responsable : String(100) not null;
  @sap.creatable : 'false'
  @sap.updatable : 'false'
  @sap.sortable : 'false'
  @sap.filterable : 'false'
  @sap.unicode : 'false'
  @sap.label : 'Tipo de Medida'
  Tipo_medida : String(2) not null;
  @sap.creatable : 'false'
  @sap.updatable : 'false'
  @sap.sortable : 'false'
  @sap.filterable : 'false'
  @sap.unicode : 'false'
  @sap.label : 'Descripción Medidad'
  Desc_medida : String(30) not null;
  @sap.creatable : 'false'
  @sap.updatable : 'false'
  @sap.sortable : 'false'
  @sap.filterable : 'false'
  @sap.unicode : 'false'
  @sap.label : 'Unidad Negocio'
  Negocio : String(10) not null;
  @sap.creatable : 'false'
  @sap.updatable : 'false'
  @sap.sortable : 'false'
  @sap.filterable : 'false'
  @sap.unicode : 'false'
  @sap.label : 'FechaDesde'
  Begda : String(10) not null;
  @sap.creatable : 'false'
  @sap.updatable : 'false'
  @sap.sortable : 'false'
  @sap.filterable : 'false'
  @sap.unicode : 'false'
  @sap.label : 'FechaHasta'
  Endda : String(10) not null;
};

//@cds.external : true
@cds.persistence.skip : true
@sap.content.version : '1'
@sap.creatable : 'false'
@sap.updatable : 'false'
@sap.deletable : 'false'
@sap.pageable : 'false'
entity ZHRODATA_MONITOR_INTEGRACIONES_SRV.TablaErroresOMSet {
  @sap.creatable : 'false'
  @sap.updatable : 'false'
  @sap.sortable : 'false'
  @sap.filterable : 'false'
  @sap.unicode : 'false'
  key IdMonitor : String(2) not null;
  @sap.creatable : 'false'
  @sap.updatable : 'false'
  @sap.sortable : 'false'
  @sap.filterable : 'false'
  @sap.unicode : 'false'
  @sap.label : 'Número log'
  Lognumber : String(20) not null;
  @sap.creatable : 'false'
  @sap.updatable : 'false'
  @sap.sortable : 'false'
  @sap.filterable : 'false'
  @sap.unicode : 'false'
  @sap.label : 'Identif.ext.'
  Extnumber : String(100) not null;
  @sap.creatable : 'false'
  @sap.updatable : 'false'
  @sap.sortable : 'false'
  @sap.filterable : 'false'
  @sap.unicode : 'false'
  @sap.label : 'Text'
  Otext : String(100) not null;
  @sap.creatable : 'false'
  @sap.updatable : 'false'
  @sap.sortable : 'false'
  @sap.filterable : 'false'
  @sap.unicode : 'false'
  @sap.label : 'Unidad de Negocio'
  Uneg : String(10) not null;
  @sap.creatable : 'false'
  @sap.updatable : 'false'
  @sap.sortable : 'false'
  @sap.filterable : 'false'
  @sap.unicode : 'false'
  @sap.label : 'Texto div.pers.'
  Name1 : String(30) not null;
  @sap.creatable : 'false'
  @sap.updatable : 'false'
  @sap.sortable : 'false'
  @sap.filterable : 'false'
  @sap.unicode : 'false'
  @sap.label : 'País'
  Land1 : String(3) not null;
  @sap.creatable : 'false'
  @sap.updatable : 'false'
  @sap.sortable : 'false'
  @sap.filterable : 'false'
  @sap.unicode : 'false'
  @sap.label : 'Nombre usuario'
  Aluser : LargeString not null;
  @sap.creatable : 'false'
  @sap.updatable : 'false'
  @sap.sortable : 'false'
  @sap.filterable : 'false'
  @sap.unicode : 'false'
  @sap.label : 'ID objeto'
  Objid : String(8) not null;
  @sap.creatable : 'false'
  @sap.updatable : 'false'
  @sap.sortable : 'false'
  @sap.filterable : 'false'
  @sap.unicode : 'false'
  @sap.label : 'Tipo objeto'
  Otype : String(2) not null;
  @sap.creatable : 'false'
  @sap.updatable : 'false'
  @sap.sortable : 'false'
  @sap.filterable : 'false'
  @sap.unicode : 'false'
  @sap.label : 'Sociedad'
  Bukrs : String(4) not null;
  @sap.creatable : 'false'
  @sap.updatable : 'false'
  @sap.sortable : 'false'
  @sap.filterable : 'false'
  @sap.unicode : 'false'
  @sap.label : 'Denominación de la sociedad o empresa'
  Butxt : String(25) not null;
  @sap.creatable : 'false'
  @sap.updatable : 'false'
  @sap.sortable : 'false'
  @sap.filterable : 'false'
  @sap.unicode : 'false'
  @sap.label : 'División pers.'
  Persa : String(4) not null;
  @sap.creatable : 'false'
  @sap.updatable : 'false'
  @sap.sortable : 'false'
  @sap.filterable : 'false'
  @sap.unicode : 'false'
  @sap.label : 'Subdiv.pers.'
  Btrtl : String(4) not null;
  @odata.Type : 'Edm.DateTime'
  @odata.Precision : 7
  @sap.creatable : 'false'
  @sap.updatable : 'false'
  @sap.sortable : 'false'
  @sap.filterable : 'false'
  @sap.unicode : 'false'
  @sap.label : 'Fecha'
  Aldate : Timestamp not null;
  @sap.creatable : 'false'
  @sap.updatable : 'false'
  @sap.sortable : 'false'
  @sap.filterable : 'false'
  @sap.unicode : 'false'
  @sap.label : 'Hora'
  Altime : Time not null;
  @sap.creatable : 'false'
  @sap.updatable : 'false'
  @sap.sortable : 'false'
  @sap.filterable : 'false'
  @sap.unicode : 'false'
  @sap.label : 'Clase'
  Clase : LargeString not null;
  @sap.creatable : 'false'
  @sap.updatable : 'false'
  @sap.sortable : 'false'
  @sap.filterable : 'false'
  @sap.unicode : 'false'
  @sap.label : 'Id Error'
  IdError : LargeString not null;
  @sap.creatable : 'false'
  @sap.updatable : 'false'
  @sap.sortable : 'false'
  @sap.filterable : 'false'
  @sap.unicode : 'false'
  @sap.label : 'Mensaje de error'
  ErrorMsg : LargeString not null;
  @sap.creatable : 'false'
  @sap.updatable : 'false'
  @sap.sortable : 'false'
  @sap.filterable : 'false'
  @sap.unicode : 'false'
  @sap.label : 'Categorización'
  Categorizacion : LargeString not null;
  @sap.creatable : 'false'
  @sap.updatable : 'false'
  @sap.sortable : 'false'
  @sap.filterable : 'false'
  @sap.unicode : 'false'
  @sap.label : 'Responsable'
  Responsable : LargeString not null;
};

//@cds.external : true
@cds.persistence.skip : true
@sap.content.version : '1'
@sap.creatable : 'false'
@sap.updatable : 'false'
@sap.deletable : 'false'
@sap.pageable : 'false'
entity ZHRODATA_MONITOR_INTEGRACIONES_SRV.TablaErroresTMSet {
  @sap.creatable : 'false'
  @sap.updatable : 'false'
  @sap.sortable : 'false'
  @sap.filterable : 'false'
  @sap.unicode : 'false'
  key IdMonitor : String(2) not null;
  @sap.creatable : 'false'
  @sap.updatable : 'false'
  @sap.sortable : 'false'
  @sap.filterable : 'false'
  @sap.unicode : 'false'
  @sap.label : 'Número log'
  Lognumber : String(20) not null;
  @sap.creatable : 'false'
  @sap.updatable : 'false'
  @sap.sortable : 'false'
  @sap.filterable : 'false'
  @sap.unicode : 'false'
  @sap.label : 'PRES ABS'
  PresAbs : LargeString not null;
  @sap.creatable : 'false'
  @sap.updatable : 'false'
  @sap.sortable : 'false'
  @sap.filterable : 'false'
  @sap.unicode : 'false'
  @sap.label : 'Identif.ext.'
  Extnumber : String(100) not null;
  @sap.creatable : 'false'
  @sap.updatable : 'false'
  @sap.sortable : 'false'
  @sap.filterable : 'false'
  @sap.unicode : 'false'
  @sap.label : 'Unidad de Negocio'
  Zuneg : String(5) not null;
  @sap.creatable : 'false'
  @sap.updatable : 'false'
  @sap.sortable : 'false'
  @sap.filterable : 'false'
  @sap.unicode : 'false'
  @sap.label : 'País'
  Land1 : String(3) not null;
  @sap.creatable : 'false'
  @sap.updatable : 'false'
  @sap.sortable : 'false'
  @sap.filterable : 'false'
  @sap.unicode : 'false'
  @sap.label : 'Nombre usuario'
  Aluser : LargeString not null;
  @sap.creatable : 'false'
  @sap.updatable : 'false'
  @sap.sortable : 'false'
  @sap.filterable : 'false'
  @sap.unicode : 'false'
  @sap.label : 'Nombre Empleado'
  Ename : LargeString not null;
  @sap.creatable : 'false'
  @sap.updatable : 'false'
  @sap.sortable : 'false'
  @sap.filterable : 'false'
  @sap.unicode : 'false'
  @sap.label : 'Centro coste'
  Kostl : String(10) not null;
  @sap.creatable : 'false'
  @sap.updatable : 'false'
  @sap.sortable : 'false'
  @sap.filterable : 'false'
  @sap.unicode : 'false'
  @sap.label : 'Área nómina'
  Abkrs : String(2) not null;
  @sap.creatable : 'false'
  @sap.updatable : 'false'
  @sap.sortable : 'false'
  @sap.filterable : 'false'
  @sap.unicode : 'false'
  @sap.label : 'Sociedad'
  Bukrs : String(4) not null;
  @sap.creatable : 'false'
  @sap.updatable : 'false'
  @sap.sortable : 'false'
  @sap.filterable : 'false'
  @sap.unicode : 'false'
  @sap.label : 'Denominación de la sociedad o empresa'
  Butxt : String(25) not null;
  @sap.creatable : 'false'
  @sap.updatable : 'false'
  @sap.sortable : 'false'
  @sap.filterable : 'false'
  @sap.unicode : 'false'
  @sap.label : 'División pers.'
  Werks : String(4) not null;
  @sap.creatable : 'false'
  @sap.updatable : 'false'
  @sap.sortable : 'false'
  @sap.filterable : 'false'
  @sap.unicode : 'false'
  @sap.label : 'Texto div.pers.'
  Name1 : String(30) not null;
  @sap.creatable : 'false'
  @sap.updatable : 'false'
  @sap.sortable : 'false'
  @sap.filterable : 'false'
  @sap.unicode : 'false'
  @sap.label : 'Subdiv.pers.'
  Btrtl : String(4) not null;
  @sap.creatable : 'false'
  @sap.updatable : 'false'
  @sap.sortable : 'false'
  @sap.filterable : 'false'
  @sap.unicode : 'false'
  @sap.label : 'Posicion'
  Plans : String(8) not null;
  @odata.Type : 'Edm.DateTime'
  @odata.Precision : 7
  @sap.creatable : 'false'
  @sap.updatable : 'false'
  @sap.sortable : 'false'
  @sap.filterable : 'false'
  @sap.unicode : 'false'
  @sap.label : 'Fecha'
  Aldate : Timestamp not null;
  @sap.creatable : 'false'
  @sap.updatable : 'false'
  @sap.sortable : 'false'
  @sap.filterable : 'false'
  @sap.unicode : 'false'
  @sap.label : 'Hora'
  Altime : Time not null;
  @sap.creatable : 'false'
  @sap.updatable : 'false'
  @sap.sortable : 'false'
  @sap.filterable : 'false'
  @sap.unicode : 'false'
  @sap.label : 'Clase'
  Clase : LargeString not null;
  @sap.creatable : 'false'
  @sap.updatable : 'false'
  @sap.sortable : 'false'
  @sap.filterable : 'false'
  @sap.unicode : 'false'
  @sap.label : 'Id Error'
  IdError : LargeString not null;
  @sap.creatable : 'false'
  @sap.updatable : 'false'
  @sap.sortable : 'false'
  @sap.filterable : 'false'
  @sap.unicode : 'false'
  @sap.label : 'Mensaje de error'
  ErrorMsg : LargeString not null;
  @sap.creatable : 'false'
  @sap.updatable : 'false'
  @sap.sortable : 'false'
  @sap.filterable : 'false'
  @sap.unicode : 'false'
  @sap.label : 'Categorización'
  Categorizacion : LargeString not null;
  @sap.creatable : 'false'
  @sap.updatable : 'false'
  @sap.sortable : 'false'
  @sap.filterable : 'false'
  @sap.unicode : 'false'
  @sap.label : 'Responsable'
  Responsable : String(100) not null;
  @sap.creatable : 'false'
  @sap.updatable : 'false'
  @sap.sortable : 'false'
  @sap.filterable : 'false'
  @sap.unicode : 'false'
  @sap.label : 'Tipo de Medida'
  Tipo_Medida : String(2) not null;
  @sap.creatable : 'false'
  @sap.updatable : 'false'
  @sap.sortable : 'false'
  @sap.filterable : 'false'
  @sap.unicode : 'false'
  @sap.label : 'Descripción Medida'
  Desc_medida : String(30) not null;
  @sap.creatable : 'false'
  @sap.updatable : 'false'
  @sap.sortable : 'false'
  @sap.filterable : 'false'
  @sap.unicode : 'false'
  @sap.label : 'Unidad de Negocio'
  Negocio : String(10) not null;
  @sap.creatable : 'false'
  @sap.updatable : 'false'
  @sap.sortable : 'false'
  @sap.filterable : 'false'
  @sap.unicode : 'false'
  @sap.label : 'FechaDesde'
  Begda : String(10) not null;
  @sap.creatable : 'false'
  @sap.updatable : 'false'
  @sap.sortable : 'false'
  @sap.filterable : 'false'
  @sap.unicode : 'false'
  @sap.label : 'FechaHasta'
  Endda : String(10) not null;
};

//@cds.external : true
@cds.persistence.skip : true
@sap.content.version : '1'
@sap.creatable : 'false'
@sap.updatable : 'false'
@sap.deletable : 'false'
@sap.pageable : 'false'
entity ZHRODATA_MONITOR_INTEGRACIONES_SRV.TablaErroresTSSet {
  @sap.creatable : 'false'
  @sap.updatable : 'false'
  @sap.sortable : 'false'
  @sap.filterable : 'false'
  @sap.unicode : 'false'
  key IdMonitor : String(2) not null;
  @sap.creatable : 'false'
  @sap.updatable : 'false'
  @sap.sortable : 'false'
  @sap.filterable : 'false'
  @sap.unicode : 'false'
  @sap.label : 'Número log'
  Lognumber : String(20) not null;
  @sap.creatable : 'false'
  @sap.updatable : 'false'
  @sap.sortable : 'false'
  @sap.filterable : 'false'
  @sap.unicode : 'false'
  @sap.label : 'PRES ABS'
  PresAbs : LargeString not null;
  @sap.creatable : 'false'
  @sap.updatable : 'false'
  @sap.sortable : 'false'
  @sap.filterable : 'false'
  @sap.unicode : 'false'
  @sap.label : 'Unidad de Negocio'
  Zuneg : String(5) not null;
  @sap.creatable : 'false'
  @sap.updatable : 'false'
  @sap.sortable : 'false'
  @sap.filterable : 'false'
  @sap.unicode : 'false'
  @sap.label : 'Identif.ext.'
  Extnumber : String(100) not null;
  @sap.creatable : 'false'
  @sap.updatable : 'false'
  @sap.sortable : 'false'
  @sap.filterable : 'false'
  @sap.unicode : 'false'
  @sap.label : 'País'
  Land1 : String(3) not null;
  @sap.creatable : 'false'
  @sap.updatable : 'false'
  @sap.sortable : 'false'
  @sap.filterable : 'false'
  @sap.unicode : 'false'
  @sap.label : 'Nombre usuario'
  Aluser : LargeString not null;
  @sap.creatable : 'false'
  @sap.updatable : 'false'
  @sap.sortable : 'false'
  @sap.filterable : 'false'
  @sap.unicode : 'false'
  @sap.label : 'Nombre Empleado'
  Ename : LargeString not null;
  @sap.creatable : 'false'
  @sap.updatable : 'false'
  @sap.sortable : 'false'
  @sap.filterable : 'false'
  @sap.unicode : 'false'
  @sap.label : 'Centro coste'
  Kostl : String(10) not null;
  @sap.creatable : 'false'
  @sap.updatable : 'false'
  @sap.sortable : 'false'
  @sap.filterable : 'false'
  @sap.unicode : 'false'
  @sap.label : 'Área nómina'
  Abkrs : String(2) not null;
  @sap.creatable : 'false'
  @sap.updatable : 'false'
  @sap.sortable : 'false'
  @sap.filterable : 'false'
  @sap.unicode : 'false'
  @sap.label : 'Sociedad'
  Bukrs : String(4) not null;
  @sap.creatable : 'false'
  @sap.updatable : 'false'
  @sap.sortable : 'false'
  @sap.filterable : 'false'
  @sap.unicode : 'false'
  @sap.label : 'Denominación de la sociedad o empresa'
  Butxt : String(25) not null;
  @sap.creatable : 'false'
  @sap.updatable : 'false'
  @sap.sortable : 'false'
  @sap.filterable : 'false'
  @sap.unicode : 'false'
  @sap.label : 'División pers.'
  Werks : String(4) not null;
  @sap.creatable : 'false'
  @sap.updatable : 'false'
  @sap.sortable : 'false'
  @sap.filterable : 'false'
  @sap.unicode : 'false'
  @sap.label : 'Texto div.pers.'
  Name1 : String(30) not null;
  @sap.creatable : 'false'
  @sap.updatable : 'false'
  @sap.sortable : 'false'
  @sap.filterable : 'false'
  @sap.unicode : 'false'
  @sap.label : 'Subdiv.pers.'
  Btrtl : String(4) not null;
  @sap.creatable : 'false'
  @sap.updatable : 'false'
  @sap.sortable : 'false'
  @sap.filterable : 'false'
  @sap.unicode : 'false'
  @sap.label : 'Posicion'
  Plans : String(8) not null;
  @odata.Type : 'Edm.DateTime'
  @odata.Precision : 7
  @sap.creatable : 'false'
  @sap.updatable : 'false'
  @sap.sortable : 'false'
  @sap.filterable : 'false'
  @sap.unicode : 'false'
  @sap.label : 'Fecha'
  Aldate : Timestamp not null;
  @sap.creatable : 'false'
  @sap.updatable : 'false'
  @sap.sortable : 'false'
  @sap.filterable : 'false'
  @sap.unicode : 'false'
  @sap.label : 'Hora'
  Altime : Time not null;
  @sap.creatable : 'false'
  @sap.updatable : 'false'
  @sap.sortable : 'false'
  @sap.filterable : 'false'
  @sap.unicode : 'false'
  @sap.label : 'Clase'
  Clase : LargeString not null;
  @sap.creatable : 'false'
  @sap.updatable : 'false'
  @sap.sortable : 'false'
  @sap.filterable : 'false'
  @sap.unicode : 'false'
  @sap.label : 'Id Error'
  IdError : LargeString not null;
  @sap.creatable : 'false'
  @sap.updatable : 'false'
  @sap.sortable : 'false'
  @sap.filterable : 'false'
  @sap.unicode : 'false'
  @sap.label : 'Mensaje de error'
  ErrorMsg : LargeString not null;
  @sap.creatable : 'false'
  @sap.updatable : 'false'
  @sap.sortable : 'false'
  @sap.filterable : 'false'
  @sap.unicode : 'false'
  @sap.label : 'Categorización'
  Categorizacion : LargeString not null;
  @sap.creatable : 'false'
  @sap.updatable : 'false'
  @sap.sortable : 'false'
  @sap.filterable : 'false'
  @sap.unicode : 'false'
  @sap.label : 'Responsable'
  Responsable : String(100) not null;
  @sap.creatable : 'false'
  @sap.updatable : 'false'
  @sap.sortable : 'false'
  @sap.filterable : 'false'
  @sap.unicode : 'false'
  @sap.label : 'Tipo de Medida'
  Tipo_medida : String(2) not null;
  @sap.creatable : 'false'
  @sap.updatable : 'false'
  @sap.sortable : 'false'
  @sap.filterable : 'false'
  @sap.unicode : 'false'
  @sap.label : 'Descripción Medida'
  Desc_medida : String(30) not null;
  @sap.creatable : 'false'
  @sap.updatable : 'false'
  @sap.sortable : 'false'
  @sap.filterable : 'false'
  @sap.unicode : 'false'
  @sap.label : 'Unidad Negocio'
  Negocio : String(10) not null;
  @sap.creatable : 'false'
  @sap.updatable : 'false'
  @sap.sortable : 'false'
  @sap.filterable : 'false'
  @sap.unicode : 'false'
  @sap.label : 'FechaDesde'
  Begda : String(10) not null;
  @sap.creatable : 'false'
  @sap.updatable : 'false'
  @sap.sortable : 'false'
  @sap.filterable : 'false'
  @sap.unicode : 'false'
  @sap.label : 'FechaHasta'
  Endda : String(10) not null;
};

//@cds.external : true
@cds.persistence.skip : true
@sap.content.version : '1'
@sap.creatable : 'false'
@sap.updatable : 'false'
@sap.deletable : 'false'
@sap.pageable : 'false'
entity ZHRODATA_MONITOR_INTEGRACIONES_SRV.TablaTop5Set {
  @sap.creatable : 'false'
  @sap.updatable : 'false'
  @sap.sortable : 'false'
  @sap.filterable : 'false'
  @sap.unicode : 'false'
  @sap.label : 'Componente del número de versión'
  key TipoMonitor : String(2) not null;
  @sap.creatable : 'false'
  @sap.updatable : 'false'
  @sap.sortable : 'false'
  @sap.filterable : 'false'
  @sap.unicode : 'false'
  @sap.label : 'Categorizacion'
  Categorizacion : String(50) not null;
  @sap.creatable : 'false'
  @sap.updatable : 'false'
  @sap.sortable : 'false'
  @sap.filterable : 'false'
  @sap.unicode : 'false'
  @sap.label : 'Nº personal'
  IdPersonal : String(8) not null;
  @sap.creatable : 'false'
  @sap.updatable : 'false'
  @sap.sortable : 'false'
  @sap.filterable : 'false'
  @sap.unicode : 'false'
  @sap.label : 'Texto (200 c.)'
  MsjError : String(200) not null;
  @odata.Type : 'Edm.DateTime'
  @odata.Precision : 7
  @sap.creatable : 'false'
  @sap.updatable : 'false'
  @sap.sortable : 'false'
  @sap.filterable : 'false'
  @sap.unicode : 'false'
  @sap.label : 'Fecha'
  Antiguedad : Timestamp not null;
  @sap.creatable : 'false'
  @sap.updatable : 'false'
  @sap.sortable : 'false'
  @sap.filterable : 'false'
  @sap.unicode : 'false'
  @sap.label : 'Clase'
  Clase : LargeString not null;
  @sap.creatable : 'false'
  @sap.updatable : 'false'
  @sap.sortable : 'false'
  @sap.filterable : 'false'
  @sap.unicode : 'false'
  @sap.label : 'Unidad de negocio'
  UnidadNegocio : String(10) not null;
  @sap.creatable : 'false'
  @sap.updatable : 'false'
  @sap.sortable : 'false'
  @sap.filterable : 'false'
  @sap.unicode : 'false'
  @sap.label : 'Sociedad'
  Sociedad : String(4) not null;
  @sap.creatable : 'false'
  @sap.updatable : 'false'
  @sap.sortable : 'false'
  @sap.filterable : 'false'
  @sap.unicode : 'false'
  @sap.label : 'Denominación de la sociedad o empresa'
  Butxt : String(25) not null;
  @sap.creatable : 'false'
  @sap.updatable : 'false'
  @sap.sortable : 'false'
  @sap.filterable : 'false'
  @sap.unicode : 'false'
  @sap.label : 'División'
  Division : String(4) not null;
  @sap.creatable : 'false'
  @sap.updatable : 'false'
  @sap.sortable : 'false'
  @sap.filterable : 'false'
  @sap.unicode : 'false'
  @sap.label : 'Texto div.pers.'
  Name1 : String(30) not null;
  @sap.creatable : 'false'
  @sap.updatable : 'false'
  @sap.sortable : 'false'
  @sap.filterable : 'false'
  @sap.unicode : 'false'
  @sap.label : 'Nombre Campo'
  Ename : LargeString not null;
  @sap.creatable : 'false'
  @sap.updatable : 'false'
  @sap.sortable : 'false'
  @sap.filterable : 'false'
  @sap.unicode : 'false'
  @sap.label : 'Área nómina'
  Abkrs : String(2) not null;
  @sap.creatable : 'false'
  @sap.updatable : 'false'
  @sap.sortable : 'false'
  @sap.filterable : 'false'
  @sap.unicode : 'false'
  @sap.label : 'Numero de posicion de empleado'
  Plans : String(8) not null;
  @sap.creatable : 'false'
  @sap.updatable : 'false'
  @sap.sortable : 'false'
  @sap.filterable : 'false'
  @sap.unicode : 'false'
  @sap.label : 'Hora del error'
  Hora : Time not null;
  @sap.creatable : 'false'
  @sap.updatable : 'false'
  @sap.sortable : 'false'
  @sap.filterable : 'false'
  @sap.unicode : 'false'
  @sap.label : 'Numero de Log'
  Lognumber : String(20) not null;
  @sap.creatable : 'false'
  @sap.updatable : 'false'
  @sap.sortable : 'false'
  @sap.filterable : 'false'
  @sap.unicode : 'false'
  @sap.label : 'Subunidad de Negocio'
  ZSUNEG : String(10) not null;
  @sap.creatable : 'false'
  @sap.updatable : 'false'
  @sap.sortable : 'false'
  @sap.filterable : 'false'
  @sap.unicode : 'false'
  @sap.label : 'Tipo de Medida'
  MASSN : String(2) not null;
  @sap.creatable : 'false'
  @sap.updatable : 'false'
  @sap.sortable : 'false'
  @sap.filterable : 'false'
  @sap.unicode : 'false'
  @sap.label : 'Descripción Medida'
  MNTXT : String(30) not null;
  @sap.creatable : 'false'
  @sap.updatable : 'false'
  @sap.sortable : 'false'
  @sap.filterable : 'false'
  @sap.unicode : 'false'
  @sap.label : 'FechaDesde'
  Begda : String(10) not null;
  @sap.creatable : 'false'
  @sap.updatable : 'false'
  @sap.sortable : 'false'
  @sap.filterable : 'false'
  @sap.unicode : 'false'
  @sap.label : 'FechaHasta'
  Endda : String(10) not null;
  @sap.creatable : 'false'
  @sap.updatable : 'false'
  @sap.sortable : 'false'
  @sap.filterable : 'false'
  @sap.unicode : 'false'
  @sap.label : 'Tipo objeto'
  Otype : String(2) not null;
  @sap.creatable : 'false'
  @sap.updatable : 'false'
  @sap.sortable : 'false'
  @sap.filterable : 'false'
  @sap.unicode : 'false'
  @sap.label : 'Descripcion Objeto'
  Otext : String(100) not null;
};

//@cds.external : true
@cds.persistence.skip : true
@sap.content.version : '1'
@sap.creatable : 'false'
@sap.updatable : 'false'
@sap.deletable : 'false'
@sap.pageable : 'false'
@sap.addressable : 'false'
entity ZHRODATA_MONITOR_INTEGRACIONES_SRV.UltimaEjecucionSet {
  @sap.creatable : 'false'
  @sap.updatable : 'false'
  @sap.sortable : 'false'
  @sap.filterable : 'false'
  @sap.unicode : 'false'
  @sap.label : 'IDMONITOR'
  key IdMonitor : String(2) not null;
  @sap.creatable : 'false'
  @sap.updatable : 'false'
  @sap.sortable : 'false'
  @sap.filterable : 'false'
  @sap.unicode : 'false'
  @sap.label : 'MONITOR'
  Monitor : String(2) not null;
  @sap.creatable : 'false'
  @sap.updatable : 'false'
  @sap.sortable : 'false'
  @sap.filterable : 'false'
  @sap.unicode : 'false'
  @sap.label : 'FECHA'
  Fecha : String(10) not null;
  @sap.creatable : 'false'
  @sap.updatable : 'false'
  @sap.sortable : 'false'
  @sap.filterable : 'false'
  @sap.unicode : 'false'
  @sap.label : 'HORA'
  Hora : String(8) not null;
  @sap.creatable : 'false'
  @sap.updatable : 'false'
  @sap.sortable : 'false'
  @sap.filterable : 'false'
  @sap.unicode : 'false'
  @sap.label : 'DEMORO'
  Demoro : String(1) not null;
};

//@cds.external : true
@cds.persistence.skip : true
@sap.content.version : '1'
@sap.creatable : 'false'
@sap.updatable : 'false'
@sap.deletable : 'false'
@sap.pageable : 'false'
@sap.addressable : 'false'
entity ZHRODATA_MONITOR_INTEGRACIONES_SRV.ListaClaseErrorSet {
  @sap.creatable : 'false'
  @sap.updatable : 'false'
  @sap.sortable : 'false'
  @sap.filterable : 'false'
  @sap.unicode : 'false'
  @sap.label : 'Clase'
  key Clase : String(20) not null;
  @sap.creatable : 'false'
  @sap.updatable : 'false'
  @sap.sortable : 'false'
  @sap.filterable : 'false'
  @sap.unicode : 'false'
  @sap.label : 'Tipo'
  Tipo : String(1) not null;
  @sap.creatable : 'false'
  @sap.updatable : 'false'
  @sap.sortable : 'false'
  @sap.filterable : 'false'
  @sap.unicode : 'false'
  @sap.label : 'Message'
  Message : String(200) not null;
};

//@cds.external : true
@cds.persistence.skip : true
@sap.content.version : '1'
@sap.creatable : 'false'
@sap.updatable : 'false'
@sap.deletable : 'false'
@sap.pageable : 'false'
@sap.addressable : 'false'
entity ZHRODATA_MONITOR_INTEGRACIONES_SRV.ListaIdErrorSet {
  @sap.creatable : 'false'
  @sap.updatable : 'false'
  @sap.sortable : 'false'
  @sap.unicode : 'false'
  @sap.label : 'Clase'
  key Clase : String(20) not null;
  @sap.creatable : 'false'
  @sap.updatable : 'false'
  @sap.sortable : 'false'
  @sap.filterable : 'false'
  @sap.unicode : 'false'
  @sap.label : 'Id'
  Id : String(3) not null;
  @sap.creatable : 'false'
  @sap.updatable : 'false'
  @sap.sortable : 'false'
  @sap.filterable : 'false'
  @sap.unicode : 'false'
  @sap.label : 'Tiipo'
  Tipo : String(1) not null;
  @sap.creatable : 'false'
  @sap.updatable : 'false'
  @sap.sortable : 'false'
  @sap.filterable : 'false'
  @sap.unicode : 'false'
  @sap.label : 'Message'
  Message : String(200) not null;
};

//@cds.external : true
@cds.persistence.skip : true
@sap.content.version : '1'
@sap.creatable : 'false'
@sap.updatable : 'false'
@sap.deletable : 'false'
@sap.pageable : 'false'
@sap.addressable : 'false'
entity ZHRODATA_MONITOR_INTEGRACIONES_SRV.CategoriaErrorSet {
  @sap.creatable : 'false'
  @sap.updatable : 'false'
  @sap.sortable : 'false'
  @sap.unicode : 'false'
  @sap.label : 'Clase'
  key Clase : String(20) not null;
  @sap.creatable : 'false'
  @sap.updatable : 'false'
  @sap.sortable : 'false'
  @sap.unicode : 'false'
  @sap.label : 'Id'
  key Id : String(3) not null;
  @sap.creatable : 'false'
  @sap.updatable : 'false'
  @sap.sortable : 'false'
  @sap.filterable : 'false'
  @sap.unicode : 'false'
  @sap.label : 'Categoria'
  Categoria : String(50) not null;
  @sap.creatable : 'false'
  @sap.updatable : 'false'
  @sap.sortable : 'false'
  @sap.filterable : 'false'
  @sap.unicode : 'false'
  @sap.label : 'Tiipo'
  Tipo : String(1) not null;
  @sap.creatable : 'false'
  @sap.updatable : 'false'
  @sap.sortable : 'false'
  @sap.filterable : 'false'
  @sap.unicode : 'false'
  @sap.label : 'Message'
  Message : String(200) not null;
};

//@cds.external : true
type ZHRODATA_MONITOR_INTEGRACIONES_SRV.AntiguedadErrores {
  @sap.creatable : 'false'
  @sap.updatable : 'false'
  @sap.sortable : 'false'
  @sap.filterable : 'false'
  @sap.label : 'Cantidad de Errores'
  Menor2 : String(6) not null;
  @sap.creatable : 'false'
  @sap.updatable : 'false'
  @sap.sortable : 'false'
  @sap.filterable : 'false'
  @sap.label : 'Cantidad de Errores'
  De2a7 : String(6) not null;
  @sap.creatable : 'false'
  @sap.updatable : 'false'
  @sap.sortable : 'false'
  @sap.filterable : 'false'
  @sap.label : 'Cantidad de Errores'
  Mayor7menor14 : String(6) not null;
  @sap.creatable : 'false'
  @sap.updatable : 'false'
  @sap.sortable : 'false'
  @sap.filterable : 'false'
  @sap.label : 'Cantidad de Errores'
  Mayor14 : String(6) not null;
};

//@cds.external : true
type ZHRODATA_MONITOR_INTEGRACIONES_SRV.CategoriaErrores {
  @sap.creatable : 'false'
  @sap.updatable : 'false'
  @sap.sortable : 'false'
  @sap.filterable : 'false'
  @sap.label : 'Cantidad de Errores'
  ErrorOpera : String(6) not null;
  @sap.creatable : 'false'
  @sap.updatable : 'false'
  @sap.sortable : 'false'
  @sap.filterable : 'false'
  @sap.label : 'Cantidad de Errores'
  ErrorNomina : String(6) not null;
  @sap.creatable : 'false'
  @sap.updatable : 'false'
  @sap.sortable : 'false'
  @sap.filterable : 'false'
  @sap.label : 'Cantidad de Errores'
  ErrorConfig : String(6) not null;
  @sap.creatable : 'false'
  @sap.updatable : 'false'
  @sap.sortable : 'false'
  @sap.filterable : 'false'
  @sap.label : 'Cantidad de Errores'
  ErrorBloqueo : String(6) not null;
};

//@cds.external : true
type ZHRODATA_MONITOR_INTEGRACIONES_SRV.GeneralErrores {
  @sap.creatable : 'false'
  @sap.updatable : 'false'
  @sap.sortable : 'false'
  @sap.filterable : 'false'
  @sap.label : 'Cantidad de Errores'
  CantErroresAp : String(6) not null;
  @sap.creatable : 'false'
  @sap.updatable : 'false'
  @sap.sortable : 'false'
  @sap.filterable : 'false'
  @sap.label : 'Cantidad de Errores'
  CantErroresOm : String(6) not null;
  @sap.creatable : 'false'
  @sap.updatable : 'false'
  @sap.sortable : 'false'
  @sap.filterable : 'false'
  @sap.label : 'Cantidad de Errores'
  CantErroresTs : String(6) not null;
  @sap.creatable : 'false'
  @sap.updatable : 'false'
  @sap.sortable : 'false'
  @sap.filterable : 'false'
  @sap.label : 'Cantidad de Errores'
  CantErroresTm : String(6) not null;
  @sap.creatable : 'false'
  @sap.updatable : 'false'
  @sap.sortable : 'false'
  @sap.filterable : 'false'
  @sap.label : 'Cantidad de Errores'
  CantSuccesAp : String(6) not null;
  @sap.creatable : 'false'
  @sap.updatable : 'false'
  @sap.sortable : 'false'
  @sap.filterable : 'false'
  @sap.label : 'Cantidad de Errores'
  CantSuccesOm : String(6) not null;
  @sap.creatable : 'false'
  @sap.updatable : 'false'
  @sap.sortable : 'false'
  @sap.filterable : 'false'
  @sap.label : 'Cantidad de Errores'
  CantSuccesTs : String(6) not null;
  @sap.creatable : 'false'
  @sap.updatable : 'false'
  @sap.sortable : 'false'
  @sap.filterable : 'false'
  @sap.label : 'Cantidad de Errores'
  CantSuccesTm : String(6) not null;
};





