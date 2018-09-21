unit ParamControleTerminalPDV;

interface

uses
  System.SysUtils, System.Classes, System.UITypes;

type
  TParamControleTerminalPDV = class
  private
    fwTerTipo               : integer ;
    fwTerTpTeclado          : integer ;
    fwTerTpPinPad           : integer ;
    fwTerComPinPad          : integer ;
    fwTerHabVendedor        : integer ;
    fwTerHabMsgTec          : integer ;
    fwTerChkProdBal         : integer ;
    fwTerChkGavAberta       : integer ;
    fwTerHabPaf             : integer ;
    fwTerHabFundoTela       : integer ;
    fwTerHabRfd             : integer ;
    fwTerHabTelaTroco       : integer ;
    fwTerTrocoCompDet       : string  ;
    fwTerHabRotDesc         : integer ;
    fwTerHabCmc7            : integer ;
  public
    property TerTipo           : integer read fwTerTipo           write fwTerTipo        ;
    property TerTpTeclado      : integer read fwTerTpTeclado      write fwTerTpTeclado   ;
    property TerTpPinPad       : integer read fwTerTpPinPad       write fwTerTpPinPad    ;
    property TerComPinPad      : integer read fwTerComPinPad      write fwTerComPinPad   ;
    property TerHabVendedor    : integer read fwTerHabVendedor    write fwTerHabVendedor ;
    property TerHabMsgTec      : integer read fwTerHabMsgTec      write fwTerHabMsgTec   ;
    property TerChkProdBal     : integer read fwTerChkProdBal     write fwTerChkProdBal  ;
    property TerChkGavAberta   : integer read fwTerChkGavAberta   write fwTerChkGavAberta;
    property TerHabPaf         : integer read fwTerHabPaf         write fwTerHabPaf      ;
    property TerHabFundoTela   : integer read fwTerHabFundoTela   write fwTerHabFundoTela;
    property TerHabRfd         : integer read fwTerHabRfd         write fwTerHabRfd      ;
    property TerHabTelaTroco   : integer read fwTerHabTelaTroco   write fwTerHabTelaTroco;
    property TerTrocoCompDet   : string  read fwTerTrocoCompDet   write fwTerTrocoCompDet;
    property TerHabRotDesc     : integer read fwTerHabRotDesc     write fwTerHabRotDesc  ;
    property TerHabCmc7        : integer read fwTerHabCmc7        write fwTerHabCmc7     ;
  end;


implementation

end.
