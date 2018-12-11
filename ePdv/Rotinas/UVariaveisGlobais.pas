unit UVariaveisGlobais;

interface

uses
  Vcl.Dialogs, Vcl.Controls,
  ACBrECF, ACBrDevice, ACBrECFClass,
  IniFiles, Vcl.StdCtrls, Contnrs, System.Classes,FireDAC.Comp.Client,
  uPdvECF,  ufunctions;

  // Variaveis Teclas
  const
  VK_ESCAPE = 27;
  vk_f5     = 116;
  vk_f6     = 117;
  vk_f7     = 118;
  vk_f8     = 119;
  vk_f9     = 120;


type
  TypeRegistroBancoPDV = (regPagamentoConvenio,regPagamentoBoleto,
                          regPagamento) ;


 TypeComandoAcbrECF = (TypeVendeItem, TypeCancelaItemVendido, TypeCancelaCupom,
                       TypeDescontoAcrescimoItemAnterior, TypeFechaCupom,  TypeFechaVinculado,
                       TypeDescontoTotalCupom, TypeLeituraX, TypeAcrescimoTotalCupom,
                       TypeEfetuaPagamento, TypeReducaoZ,  TypeImprimePagamentos, TypeRegistraItemNaoFiscal,
                       TypeSubTotalizaCupom,   TypeAbreCupomVinculado,  TypePulaLinhas,  TypeFechaGerencial,
                       TypeAbreGerencial, TypeAbreCupom) ;

const

  ModalResults: array[TMsgDlgBtn] of Integer = ( mrYes, mrNo, mrOk, mrCancel,
            mrAbort, mrRetry, mrIgnore, mrAll, mrNoToAll, mrYesToAll, mrClose, 0 ) ;


  Estados: array[TACBrECFEstado] of string = ( 'Não Inicializada','Desconhecido',
            'Livre','Venda','Pagamento','Relatório','Bloqueada','Requer Z',
            'Requer X','Nao Fiscal' );

  CONST_CNFiscal: Array[1..6] of String = ('Suprimento','Sangria','Fundo de Troco','Abertura Caixa',
            'Recarga Celular','Recebimento Conta' );

  CONST_RGerencial: Array[1..6] of String = ( 'REL DE CAIXA','REL DE CHEQUES',
            'REL DE SANGRIAS','SAIDA OPER.','ENTRADA OPER.','CONTR. INTERNO' );

  fsItensMenuTipoComunTef: Array[1..8] of String = ( 'gpTefDial','gpTefDisc','gpHiperTef',
            'gpCliSiTef','gpTefGpu','gpVeSPague','gpBanese','gpTefAuttar' ) ;

  sLineBreak = #13#10;
  fsColunas = 48;
  fsMascaraItem = 'III CCCCCCCCCCCCCC DDDDDDDDDDDDDDDDDDDDDDDDDDDDD'+
                          'QQQQQQQQ UU x VVVVVVVVVVVVV AAAAAA TTTTTTTTTTTTT' ;


  fsItensMenuOperador       = '1:Voltar ao Caixa;'+
                              '2:Fechamento do Operador(a) s/Relatórios;'+
                              '3:Fechamento do Operador(a) c/Relatórios' ;


  var

  CNF                                  : TACBrECFComprovanteNaoFiscal;
  RG                                   : TACBrECFRelatorioGerencial;
  FPG                                  : TACBrECFFormaPagamento;
  ICMS                                 : TACBrECFAliquota;
  fsStreamMemo                         : TMemoryStream;
  fsModalResult                        : TModalResult;
  IniPDVconfig                         : TIniFile;
  StrTstringList                       : TStringList;
  PDVTECF                              : TPdvECF;
  ConexaoDados                         : TFdConnection;

  fsTypeRegistroBancoPDV               : TypeRegistroBancoPDV;
  fswFormasPagamento                   : TObjectList;
  fswRelatoriosPendentes               : TObjectList;
  fswRelatoriosPendentesCount          : Integer;
  fswRespPendente                      : Integer;
  fsRelatoriosPendentes                : TObjectList;
  fsRelatoriosPendentesCount           : Integer;

  COD_EMP                              : Integer ;
  intSequenciaItem                     : Integer ;
  intAuxiliar                          : Integer ;

  BolBloqueiaFechaERPJaberta           : Boolean ;
  BolVendaAberta                       : Boolean;
  bolMultiplicacaoItem                 : Boolean;



  douImpostosFederal                   : Double;
  douImpostosEstadual                  : Double;
  douImpostosMunicipal                 : Double;
  douqtdeItem                          : Double; // Quantidade
  douvlrUnitItem                       : Double; // Valor Unitario
  douTotalItem                         : Double; // Valor Total cupom
  douDescontoItem                      : Double; // Desconto item
  douWSubTotalCupom                    : Double;
  douWTotDescontoCupom                 : Double;
  douWTotAcrescimoCupom                : Double;
  douWAuxiliar                         : Double;
  douQtdItensCupom                     : Double;
  douTotalPago                         : Double;

  strRespt01                           : String;
  strChaveCupomIBPT                    : String;
  strCodBarra                          : String;
  strAuxiliar                          : String;
  strCpfConsumidrNFP                   : String;
  strQtdePeso                          : String;
  strUnidadeRefProduto                 : String;




implementation



end.

