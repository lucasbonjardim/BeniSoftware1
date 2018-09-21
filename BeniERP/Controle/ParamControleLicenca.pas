unit ParamControleLicenca;

interface

uses
  System.SysUtils, System.Classes;

  type
  TParamControleLicenca = class
  private
    fwNrLicenca   : Integer ;
    fwDataLicenca : TDate ;
    fwNomeCliente : String ;
    fwNrDias      : Integer ;
    fwDataValidade: TDate ;
    fwNrSerie     : TStringList ;
    fwNrChekSum   : Integer ;
  public
    property NrLicenca   : Integer read fwNrLicenca write fwNrLicenca ;
    property DataLicenca : TDate read fwDataLicenca write fwDataLicenca ;
    property NomeCliente : String read fwNomeCliente write fwNomeCliente ;
    property NrDias      : Integer read fwNrDias write fwNrDias ;
    property DataValidade: TDate read fwDataValidade write fwDataValidade ;
    property NrSerie     : TStringList read fwNrSerie write fwNrSerie ;
    property NrChekSum   : Integer read fwNrChekSum write fwNrChekSum ;
  end;


implementation

end.
