namespace mintdb;

@cds.persistence.exists
@cds.persistence.skip
entity TablaErroresPA {
  key IdMonitor      : String(16);
      Lognumber      : String(16);
      Zuneg          : String(16);
      Name1          : String(16);
      Land1          : String(16);
      Extnumber      : String(16);
      Aluser         : String(16);
      Ename          : String(16);
      Kostl          : String(16);
      Abkrs          : String(16);
      Bukrs          : String(16);
      Butxt          : String(16);
      Werks          : String(16);
      Btrtl          : String(16);
      Plans          : String(16);
      Aldate         : DateTime;
      Altime         : Time;
      Clase          : String(16);
      IdError        : String(16);
      ErrorMsg       : String(16);
      Categorizacion : String(16);
      Responsable    : String(16);
      Tipo_medida    : String(16);
      Desc_medida    : String(16);
      Negocio        : String(16);
      Begda          : String(16);
      Endda          : String(16);
}


@cds.persistence.exists
@cds.persistence.skip
entity TablaErroresSAPPAitems {
  key FECHA_FILTRO   : String(8) NOT null;
  key EXTNUMBER      : String(78) NOT null;
  key CLASE          : String(30) NOT null;
  key ID_ERROR       : String(10) NOT null;
  key MSGV1          : String(50) NOT null;
  key MSGV2          : String(50) NOT null;
  key MSGV3          : String(50) NOT null;
  key MSGV4          : String(50) NOT null;
      LOGNUMBER      : String(20);
      ZUNEG          : String(10);
      NAME1          : String(30);
      LAND1          : String(3);
      ALUSER         : String(200);
      ENAME          : String(200);
      KOSTL          : String(10);
      ABKRS          : String(2);
      BUKRS          : String(4);
      BUTXT          : String(25);
      WERKS          : String(4);
      BTRTL          : String(4);
      PLANS          : String(8);
      ALDATE         : String(8);
      ALTIME         : String(6);
      CATEGORIZACION : String(600);
      ID_CATEGORIA   : String(10);
      TIPO_MEDIDA    : String(2);
      DESC_MEDIDA    : String(30);
      NEGOCIO        : String(10)
}

@cds.persistence.exists
@cds.persistence.skip
entity TablaErroresSAPPA {
key id : String;
    ITEMS : Composition of many    TablaErroresSAPPAitems
}

@cds.persistence.exists
@cds.persistence.skip
entity TablaErroresSAPSet {
  key lognumber : String(60);
      extnumber : String(60);
      aldate    : String(60);
      altime    : String(60);
      pernrs    : String(60);
      clase     : String(60);
      id_error  : String(60);
      error_msg : String(60);
      msgty     : String(60);
      msgv1     : String(60);
      msgv2     : String(60);
      msgv3     : String(60);
      msgv4     : String(60);
}
