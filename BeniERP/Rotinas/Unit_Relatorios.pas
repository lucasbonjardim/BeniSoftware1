unit Unit_Relatorios;

interface

uses System.Classes, System.SysUtils,  Vcl.Dialogs, Vcl.Forms, Vcl.Controls,
  DateUtils, System.Contnrs, Data.DB, ACBrUtil;

type
  TPROPDVTipoRelatoriosPendentes = (relReciboQuitacaoConvenio,
                                    relRecibo) ;

  TPROPDVFormaPagamento = class
  private
    fwDescricao: String;
    fwQtd: Integer;
    fwTotalEntrada: Double;
    fwTotalSangria: Double;
    fwTotalDigitado: Double;
    fwIndice: String;
  public
    property Descricao    : String  read fwDescricao     write fwDescricao ;
    property Qtd          : Integer read fwQtd           write fwQtd ;
    property TotalEntrada : Double  read fwTotalEntrada  write fwTotalEntrada ;
    property TotalSangria : Double  read fwTotalSangria  write fwTotalSangria ;
    property TotalDigitado: Double  read fwTotalDigitado write fwTotalDigitado ;
    property Indice       : String  read fwIndice        write fwIndice ;
  end;

  TPROPDVRelatoriosPendentes = class
  private
    fsNomeGerencial          : String ;
    fsDocumentoVinculado     : String ;
    fsIndiceFPG_ECF          : String ;
    fsValor                  : Double ;
    fsImagemComprovante1aVia : TStringList ;
    fsImagemComprovante2aVia : TStringList ;
    fsImagemComprovanteReduz : TStringList ;
    fsImagemComprovanteReimp : TStringList ;
    fsTextoEspecialCliente   : String ;
    fsTextoEspecialOperador  : String ;
    fsAutenticacao           : String ;
  public
    property NomeGerencial          : String read fsNomeGerencial write fsNomeGerencial ;
    property DocumentoVinculado     : String read fsDocumentoVinculado write fsDocumentoVinculado ;
    property IndiceFPG_ECF          : String read fsIndiceFPG_ECF write fsIndiceFPG_ECF ;
    property Valor                  : Double read fsValor write fsValor ;
    property ImagemComprovante1aVia : TStringList read fsImagemComprovante1aVia write fsImagemComprovante1aVia ;
    property ImagemComprovante2aVia : TStringList read fsImagemComprovante2aVia write fsImagemComprovante2aVia ;
    property ImagemComprovanteReduz : TStringList read fsImagemComprovanteReduz write fsImagemComprovanteReduz ;
    property ImagemComprovanteReimp : TStringList read fsImagemComprovanteReimp write fsImagemComprovanteReimp ;
    property TextoEspecialCliente   : String read fsTextoEspecialCliente write fsTextoEspecialCliente ;
    property TextoEspecialOperador  : String read fsTextoEspecialOperador write fsTextoEspecialOperador ;
    property Autenticacao           : String read fsAutenticacao write fsAutenticacao ;

  end;

  TPROPDVDArrayGrupoRespostasPendentes = array of record
    IndiceFPG_ECF  : String ;
    OrdemPagamento : Integer ;
    Total  : Double ;
  end ;

implementation

end.
