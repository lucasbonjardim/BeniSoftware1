unit ParamControleTerminalECF;

interface

uses
  System.SysUtils, System.Classes, System.UITypes;

type
  TParamControleTerminalECF = class
  private
    fwNumeroECF     : Integer ;
    fwNumeroCOO     : Integer ;
    fwNumeroCCF     : Integer ;
    fwNumeroCRZ     : Integer ;
    fwNumeroGNF     : Integer ;
    fwNumeroSerie   : string  ;
    fwTipoECF       : string  ;
    fwMarcaECF      : string  ;
    fwModeloECF     : string  ;
    fwEstadoAtECF   : string  ;
    fwEstadoAnECF   : string  ;
    fwMFAdicional   : string  ;
    fwDataMovimento : TDate   ;
    fwStrComIfEcf   : String  ;
  public
    property NumeroECF     : Integer read fwNumeroECF     write fwNumeroECF     ;
    property NumeroCOO     : Integer read fwNumeroCOO     write fwNumeroCOO     ;
    property NumeroCCF     : Integer read fwNumeroCCF     write fwNumeroCCF     ;
    property NumeroCRZ     : Integer read fwNumeroCRZ     write fwNumeroCRZ     ;
    property NumeroGNF     : Integer read fwNumeroGNF     write fwNumeroGNF     ;
    property NumeroSerie   : string  read fwNumeroSerie   write fwNumeroSerie   ;
    property TipoECF       : string  read fwTipoECF       write fwTipoECF       ;
    property MarcaECF      : string  read fwMarcaECF      write fwMarcaECF      ;
    property ModeloECF     : string  read fwModeloECF     write fwModeloECF     ;
    property EstadoAtECF   : string  read fwEstadoAtECF   write fwEstadoAtECF   ;
    property EstadoAnECF   : string  read fwEstadoAnECF   write fwEstadoAnECF   ;
    property MFAdicional   : string  read fwMFAdicional   write fwMFAdicional   ;
    property DataMovimento : TDate   read fwDataMovimento write fwDataMovimento ;
    property StrComIfEcf   : string  read fwStrComIfEcf   write fwStrComIfEcf   ;
  end;


implementation

end.
