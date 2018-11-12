unit Unit_Variaveis_Globais;

interface

uses
  Vcl.Dialogs, Vcl.Controls,
  ACBrECF, ACBrDevice, ACBrECFClass,
  IniFiles, Vcl.StdCtrls, Contnrs, System.Classes,FireDAC.Comp.Client;

  // Variaveis Teclas
  const
  VK_ESCAPE = 27;
  vk_f5     = 116;
  vk_f6     = 117;
  vk_f7     = 118;
  vk_f8     = 119;
  vk_f9     = 120;


  type
  TPROPDVTipoRegistro = (regPagamentoConvenio,regPagamentoBoleto,
                          regPagamento) ;



const

  ModalResults: array[TMsgDlgBtn] of Integer = ( mrYes, mrNo, mrOk, mrCancel,
            mrAbort, mrRetry, mrIgnore, mrAll, mrNoToAll, mrYesToAll, mrClose, 0 ) ;


  Estados: array[TACBrECFEstado] of string = ( 'Não Inicializada','Desconhecido',
            'Livre','Venda','Pagamento','Relatório','Bloqueada','Requer Z',
            'Requer X','Nao Fiscal' );

  c_CNFiscal: Array[1..10] of String = ( 'FUNDO DE CAIXA','Suprimento','Suprimentos',
            'FUNDO CAIXA','Fundo de Troco','REFORCO CAIXA','ABERTURA CAIXA',
            'CONVENIO','RECARGA CEL','RECEBIMENTO' );

  c_RGerencial: Array[1..6] of String = ( 'REL DE CAIXA','REL DE CHEQUES',
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

  CNF                 : TACBrECFComprovanteNaoFiscal;
  RG                  : TACBrECFRelatorioGerencial;
  FPG                 : TACBrECFFormaPagamento;
  ICMS                : TACBrECFAliquota;
  fsStreamMemo        : TMemoryStream;
  fsModalResult       : TModalResult;
  iniCliSiTef         : TIniFile;
  iniPDVsParam        : TIniFile;
  strListPARC         : TStringList;

  ConexaoDados        : TFdConnection;

  fswTipoRegistro             : TPROPDVTipoRegistro;
  fswFormasPagamento          : TObjectList ;
  fswRelatoriosPendentes      : TObjectList ;
  fswRelatoriosPendentesCount : Integer ;
  fswRespPendente             : Integer ;
  fsRelatoriosPendentes       : TObjectList ;
  fsRelatoriosPendentesCount  : Integer ;


  intSequenciaItem    : Integer ;
  intAuxiliar         : Integer ;
  strAuxiliar         : String  ;
  COD_EMP             : Integer;


implementation

end.
