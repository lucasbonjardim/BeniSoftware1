unit Unit_Variaveis_Globais;

interface

uses
  Vcl.Dialogs, Vcl.Controls,
  ACBrECF, ACBrDevice, ACBrECFClass,
  IniFiles, Vcl.StdCtrls, Contnrs, System.Classes,FireDAC.Comp.Client, System.JSON;


  type
  TPROPDVTipoRegistro = ( regVendeItem,               regDescontoTotalCupom,
                          regFinalizadorVenda,        regCancelamentoCupom,
                          regAcrescimoTotalCupom,     regContraValeEmitido,
                          regCupomVasilhame,          regTicketTrocaEmitido,
                          regCorrecaoFinalizador,     regCancelamentoItem,
                          regCancelamentoVenda,       regTrocoFinalizador,
                          regIdentificacaoCliente,    regLocalEntrega,
                          regSangria,                 regEntradaCaixa,
                          regSaidaCaixa,              regAberturaCaixa,
                          regFechamentoCaixa,         regEncerramentoDia,
                          regEmissaoCupomPedido,      regIniciante, // Tanque/Bico
                          regAbastecimento,           regEncerrante, // Tanque/Bico
                          regCancelamentoCCRC,        regCancelamentoCCCRotativo,
                          regCancelamentoTTefDiscado, regCancelamentoTTef,
                          regCancelamentoPgtoConta,   regCancelamentoRecebmtoContaCliLj,
                          regCadastroSenhaCliente,    regPagamentoConta,
                          regRecebimentoContaCliLj,   regRecargaCelular,
                          regCartaoFidelidade,        regRegistroR06,
                          regIdentificacaoClienteCRM, regCodPromocionalCupom,
                          regInstBeneficente,         regFechamentoCego,regIdentificacaoClienteEndEntrega,
                          regRGBebidaAlcoolica,regCancelamentoTaxaEntrega,
                          regVendaTaxaEntrega,regIdentificacaoClienteFidelidade,regCPFPontosDMCard) ;

  TPROPDVComandoECF = ( cmdVendeItem, cmdDescontoAcrescimoItemAnterior,
                      cmdDescontoTotalCupom, cmdCancelaItemVendido,
                      cmdCancelaCupom, cmdRegistraItemNaoFiscal, cmdSubTotalizaCupom,
                      cmdEfetuaPagamento, cmdAcrescimoTotalCupom, cmdFechaCupom,
                      cmdLeituraX, cmdReducaoZ, cmdAbreCupom, cmdAbreGerencial,
                      cmdAbreCupomVinculado, cmdFechaGerencial, cmdPulaLinhas,
                      cmdFechaVinculado, cmdImprimePagamentos ) ;

const


c_TipoTeclado: Array[1..19] of String = ( 'KT','KX','KF','IC','PC','GT',
            'GD','GB','GA','SM','KS','SS','FT','SK','KD','FK','KC','FP','FR' ) ;

  ModalResults: array[TMsgDlgBtn] of Integer = ( mrYes, mrNo, mrOk, mrCancel,
            mrAbort, mrRetry, mrIgnore, mrAll, mrNoToAll, mrYesToAll, mrClose, 0 ) ;

  BaudDeful: array[TACBrECFModelo] of Integer = ( 9600,9600,9600,9600,9600,
            9600,9600,9600,9600,9600,9600,9600,115200,38400,115200,9600,9600,9600 );

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

  fsIdentificador = '15.146.535/0001-42';

  fsItensMenuRecebimento    = '1:Recarga Celular;'+
                              '2:Convenios;'+
                              '3:Correspondente Bancário;'+
                              '4:Reimpressão Ultimo RelGerencial;'+
                              '5:Reimpressão Ultimo Cupom SAT/NFC-e;'+
                              '6:Reimpressão Digitado Cupom SAT/NFC-e;'+
                              '7:Consulta Status Operacional SAT' ;

  fsItensMenuOperador       = '1:Retornar ao Caixa;'+
                              '2:Fechamento do Operador(a) s/Relatórios;'+
                              '3:Fechamento do Operador(a) c/Relatórios' ;

{  fsItensMenuPVendaDavPedOn = '1:PV-Comanda;'+
                              '2:Pré-Venda;'+
                              '3:DAV;'+
                              '4:DAV-OS';}

  fsItensMenuPVendaDavPedOn = '1:Pré-Venda;'+
                              '2:DAV';

  fsItensMenuPVendaDavPedOff= '1:PV-Comanda;'+
                              '2:Pré-Venda';

  fsItensMenuFiscalPafEcfOff= '1:LX;'+
                              '2:LMFC;'+
                              '3:LMFS;'+
                              '4:Espelho MFD;'+
                              '5:Arq. MFD';

  fsItensMenuFiscalPafEcfOn = '1:LX;'+
                              '2:LMF;'+
                              '3:Arq. MF;'+
                              '4:Arq. MFD;'+
                              '5:Arq. AC 17/04;'+
                              '6:Identificação do PAF-ECF;'+
                              '7:Vendas do Período;'+
                              '8:Tab. Índice Técnico Produção;'+
                              '9:Parâmetros de Configuração;'+
                              '10:Registros do PAF-ECF;'+
                              '11:Espelho MFD;'+
                              '12:Envio ao FISCO-REDUÇÃO Z;'+
                              '13:Envio ao FISCO-ESTOQUE;'+
                              '14:Vendas Identificadas pelo CPF/CNPJ;';

  fsItensMenuLMF            = '1:Completa;'+
                              '2:Simplificada';

  fsItensMenuLMFCompleta    = '1:Impressão MFC p/(DATA);'+
                              '2:Impressão MFC p/(REDUÇÃO)';

  fsItensMenuLMFSimplificada= '1:Impressão MFS p/(DATA);'+
                              '2:Impressão MFS p/(REDUÇÃO)';

  fsItensMenuEstoque        = '1:Estoque Total;'+
                              '2:Estoque Parcial';

  fsItensMenuDAVsEmitidas   = '1:Gerar Arquivo;'+
                              '2:Gerar Gerencial';

  fsItensMenuVendaPeriodo   = '1:Manual Conv. 57/95;'+
                              '2:Ato COTEP/ICMS 09/08 [Perfil A];'+
                              '3:Ato COTEP/ICMS 09/08 [Perfil B]';

  fsItensMenuRelatorios     = '1:Relatório de Caixa (Operadora);'+
                              '2:Relatório de Cheques;'+
                              '3:Relatório de Recebimento de Convênio;'+
                              '4:Relatório de Contra-Vales Emitidos';

  fsItensFuncoes            = '1:Alterar Valor Produto Local;'+
                              '2:Cancelar Cupom SisConvenio;'+
                              '3:Reenvia XMLs SAT para o Concentrador;'+
                              '4:Lista dos ultimos 15 cupons do caixa';

  fsItensMenuConsultaOnLine = '1:Consulta CredSat;'+
                              '2:Consulta Retag (Cheque);'+
                              '3:Consulta Retag (Convênio);'+
                              '4:Consulta Retag (Convênio Web);'+
                              '5:Extrato de Conta Retag';

  fsItensMenuFucoes         = '1:Sangria;'+
                              '2:Entrada em Caixa (Reforço);'+
                              '3:Correção de Finalizador;'+
                              '4:Cadastro de Senha de Cliente;'+
                              '5:Recuperação de Cupom' ;

  fsItensMenuSairSistema    = '1:Fechar e Desligar;'+
                              '2:Fechar e Reiniciar;'+
                              '3:Fechar e Retornar Windows;'+
                              '4:Reiniciar iSotis PDV;';

  fsItensMenuNotaFiscal     = '1:Endereço Entrega;'+
                              '2:Nota Fiscal Paulista;'+
                              '3:Programa de Pontuação "CRM";'+
                              '4:Endereço Entrega em Branco;'+
                              '5:Preencher Endereço Entrega;'+
                              '6:Nota Fiscal Paulista com Nome e Endereco;';

  var
 // ArquivoControleVO   : TVOArquivoControle;
 // PdvParametrosVO     : TVOPdvParametros;
 // PdvTerminaisVO      : TVOPdvTerminais;
 // PdvEcfsVO           : TVOPdvEcfs;
  //***** Variavéis de Controle *****\\
  CNF                 : TACBrECFComprovanteNaoFiscal;
  RG                  : TACBrECFRelatorioGerencial;
  FPG                 : TACBrECFFormaPagamento;
  ICMS                : TACBrECFAliquota;
  fsStreamMemo        : TMemoryStream;
  fsModalResult       : TModalResult;
  iniCliSiTef         : TIniFile;
  iniPDVsParam        : TIniFile;
  strListPARC         : TStringList;
  AJsonObject         : TJSONObject;
  AJsonSubObj         : TJSONObject;
  AJsonPair           : TJSONPair;
  AJsonSubPair        : TJSONPair;
  AJsonArray          : TJSONArray;
  WOldEstado          : TACBrECFEstado ;
  ConexaoDados        : TFdConnection;
  //***** Variavéis para tela de Consulta *****\\
  vl_WPrecoUnit       : Real;
  vl_WTotalItem       : Real;
  vl_WProd            : string;
  vl_WQtdeCap         : string;
  vl_Restricoes       : PChar;
  //***** Variavéis de Controle *****\\
  fswTipoRegistro             : TPROPDVTipoRegistro;
  fswFormasPagamento          : TObjectList ;
  fswRelatoriosPendentes      : TObjectList ;
  fswRelatoriosPendentesCount : Integer ;
  fswRespPendente             : Integer ;
  fsRelatoriosPendentes       : TObjectList ;
  fsRelatoriosPendentesCount  : Integer ;
  fpNomeArqINI                : string;
  fsCurDirTbBin               : string;
  fsCurDirImgGif              : string;
  //***** Variaveis Controle de Status *****//
  bolStTransf            : Boolean ;
  bolStVenda             : Boolean ;
  bolStDescItem          : Boolean ;
  bolStPagto             : Boolean ;
  bolStMult              : Boolean ;
  bolStContrVasilhame    : Boolean ;
  bolStCPAutomatico      : Boolean ;
  bolStGAC1704Automatico : Boolean ;
  bolStTef               : Boolean ;
  bolStCupomAbertoBanco  : Boolean ;
  bolStGaveta            : Boolean ;
  bolStItem              : Boolean ;
  bolStCli               : Boolean ;
  bolStCancItem          : Boolean ;
  bolStCestaBasica       : Boolean ;
  bolStDAVPedido         : Boolean ;
  bolStDAVServico        : Boolean ;
  bolStPreVenda          : Boolean ;
  bolStAtacado           : Boolean ;
  bolStDescCupom         : Boolean ;
  bolStAcresCupom        : Boolean ;
  bolStPVComanda         : Boolean ;
  bolStFinVinculado      : Boolean ;
  bolTeclaDCupomLista    : Boolean ;
  bolStRespRetag         : Boolean ;
  bolStEntrega           : Boolean ;
  intSeqItemTaxaEntrega  : Integer  ;
  bolStTeclaFinalizadora : Boolean ;
  bolStConsultaChq       : Boolean ;
  bolConsultaDMcard      : Boolean ;
  //***** Variaveis Controle de Recibos *****//
  bolWRecTef             : Boolean ;
  bolWRecRecarga         : Boolean ;
  bolWRecCVal            : Boolean ;
  bolWRecConv            : Boolean ;
  bolWRecRecebimto       : Boolean ;
  bolWRecCVasilhame      : Boolean ;
  bolWRelMasterPlus      : Boolean ;
  bolWImprChq            : Boolean ;
  //**** Variaveis BOOLEAN ****//
  bolImagPromocao        : Boolean ;
  bolECFChq              : Boolean ;
  bolRemoverMsg          : Boolean ;
  bolCancelado           : Boolean ;
  bolWsoffine            : Boolean ;

  //***** Variaves Controle de Teclas *****//
  bolTeclaX              : Boolean ;
  bolCaixaFechado        : Boolean ;
  bolTeclaZ              : Boolean ;
  bolTeclaRecebimento    : Boolean ;
  bolTeclaCCupom         : Boolean ;
  bolTeclaCItem          : Boolean ;
  bolTeclaCItemLista     : Boolean ;
  bolTeclaDesconto       : Boolean ;
  bolTeclaDescontoLista  : Boolean ;
  bolTeclaSangria        : Boolean ;
  bolTeclaFechamentoCego : Boolean ;
  bolTeclaPVComanda      : Boolean ;
  bolTeclaAutentica      : Boolean ;
  bolTeclaAcrescimo      : Boolean ;
  bolTeclaRelatorio      : Boolean ;
  bolTeclaPeso           : Boolean ;
  bolTeclaPesoManual     : Boolean ;
  bolTeclaSubtotal       : Boolean ;
  bolTeclaRecuperaCupom  : Boolean ;
  bolTeclaNF             : Boolean ;
  bolTeclaCliFidelidade  : Boolean ;
  bolTeclaCliFinalizador : Boolean ;
  bolTeclaCredSat        : Boolean ;
  bolTeclaBco            : Boolean ;
  bolTeclaChAvulso       : Boolean ;
  bolFinChkConv          : Boolean ;
  bolTemDadosFila        : Boolean ;
   // Lucas Bonjardim
  bolaplicacrescimofin   : Boolean ;
  bolaplicadesccliente   : Boolean ;
  IntTfinausada          : Integer ;
  BolAplicouDescontoFidel: Boolean ;
  Bolauxiliar            : Boolean ;
  BolDescontoeAcrescimo  : Boolean ;
  //**** Variaveis INTEGER ****//
  intFinTrocoM        : array[0..19] of Integer ;
  intFinCodRef        : array[0..19] of Integer ;
  intFinPedeCpf       : array[0..19] of Integer ;
  intFinChkConv       : array[0..19] of Integer ;
  intFinPedeBco       : array[0..19] of Integer ;
  intFinImprCh        : array[0..19] of Integer ;
  intFinAutent        : array[0..19] of Integer ;
  intFinAcPgtConv     : array[0..19] of Integer ;
  intFinAcPgtRecg     : array[0..19] of Integer ;
  intFinAcRetirarJuros: array[0..19] of Integer ;
  intFinAbreGv        : array[0..19] of Integer ;
  intFinContraV       : array[0..19] of Integer ;
  intFinChkLim        : array[0..19] of Integer ;
  intFinRecibo        : array[0..19] of Integer ;
  intFinPdCartao      : array[0..19] of Integer ;
  intFinPdLocEntr     : array[0..19] of Integer ;
  intFinPdDocumento   : array[0..19] of Integer ;
  intFinPdTicketTroca : array[0..19] of Integer ;
  ReaFinLimiteSangria : array[0..19] of Currency;
  intQtdTitJuros      : Integer ;
  intCXSCREEN         : Integer ;
  intCYSCREEN         : Integer ;
  intSeqItem          : Integer ;
  intSeqItensCons     : Integer ;
  intSeqCupom         : Integer ;
  intRetorno          : Integer ;
  intCooDFV           : Integer ;
  intLocEntrCodigo    : Integer ;
  intNPVComanda       : Integer ;
  intTipoCodCli       : Integer ;
  intNrItemCancelado  : Integer ;
  intQtdVinculado     : Integer ;
  intIFinaliza        : Integer ;
  intDescontoFin      : Integer ;
  intCodigoTransSitef : Integer ;
  intVASItemCount     : Integer ;
  intCodFinalRetag    : Integer ;
  intCodConv          : Integer ;
  intInstBeneficenteCodigo: Integer;
  intAuxiliar         : Integer ;

  //**** Variaveis TEF    ****//
  intQtdParc          : Integer ;
  intNumero           : Integer ;
  //**** Variaveis de cheque **** //
  intBancoCheque      : Integer ;
  intC1Cheque         : Integer ;
  intC2Cheque         : Integer ;
  intC3Cheque         : Integer ;
  intCamCompCheque    : Integer ;
  intTipoCliCheque    : Integer;
  //**** Variaveis STRING ****//
  strFinLegFin           : array[0..19] of string  ;
  strEcfNomeFin          : array[0..19] of string  ;
  strWQtdePeso           : String  ;
  strCodBar              : String  ;
  strFuncao              : String  ;
  strFinal               : String  ;
  strFinVinculado        : String  ;
  strFinalizadora01      : String  ;
  strFinalizadora02      : String  ;
  strResp01              : String  ;
  strResp02              : String  ;
  strResp03              : String  ;
  strResp04              : String  ;
  strAuxiliar            : String  ;
  strTpoDocumento        : String  ;
  strTpoCliente          : String  ;
  strTpoProduto          : String  ;
  strTpoRegRefFIN_ID     : String  ;
  strTpServicoRetag      : String  ;
  strVlrCupomRetag       : String  ;
  strTpConsulta          : String  ;
  strTipoDAVPedido       : String  ;
  strDescricaoRG         : String  ;
  strDescricaoCNF        : String  ;
  strDescricaoFPG        : String  ;
  strCodigoCliNFiscal    : String  ;
  strCodigoCliFidelidade : String  ;
  strCodigoCliFinalizador: String  ;
  strIdentClienteCAT     : String  ;
  strNomeClienteCAT      : String  ;
  strEnderecoClienteCAT  : String  ;
  strCpfPontosDMCard     : String  ;
  strIdentClienteCRM     : String  ;
  strLegTributacao       : String  ;
  strTabPrecUtilizada    : String  ;
  strCupomVasilhame      : String  ;
  strPriDoctoDig         : String  ;
  strSegDoctoDig         : String  ;
  strTerDoctoDig         : String  ;
  strQuaDoctoDig         : String  ;
  strNrTicketTroca       : String  ;
  strCodigoPromocional   : String  ;
  strURL                 : String  ;
  strResultGet           : String  ;
  strNrsCaixaEntrega     : String  ;
  strChaveIBPT           : String  ;
   // String Lucas
  StrValAcrescimoFin     : string  ;
  StrCLiEmpresa          : string  ;
  StrDescProValeAgua     : string  ;
  StrDescProValeGas      : string  ;
  //**** Variaveis TEF  ****//
  strDtPredatado         : String  ;
  strNumeroDocSerCancelada: String ;
  //**** Variaveis de cheque ***** //
  strCGCCPFCheque        : String  ;
  strAgenciaCheque       : String  ;
  strNumeroCheque        : String  ;
  strFoneCheque          : String  ;
  strCMC7Cheque          : String  ;
  strContaCorrCheque     : String  ;
  strDadosChequeTef      : String  ;
  strNomeCFe             : String  ;
  //**** Variaveis REAL ****//
  reaWDescontoItem      : Real  ;
   //**** Variaveis Utilizada quando tem desconto promocao e desconto manual fim cupom ****//
  reaWDescIpromocaoDescManual      : Real  ;
  reaWDescontoCupom     : Real  ;
  reaWAcrescimoCupom    : Real  ;
  reaWTotalPago         : Real  ;
  reaWValorPagoAcum     : Real  ;
  reaWPerDesctoItem     : Real  ;
  reaWPerDesctoCupom    : Real  ;
  reaWPerAcrescCupom    : Real  ;
  reaWTroco             : Real  ;
  reaWPrecoUnit         : Real  ;
  reaWAcrescimoFinanc   : Real  ;
  reaWSldDispConCli     : Real  ;
  reaWSldDispChqCli     : Real  ;
  reaTimeAtual          : Real  ;
  reaTimeOut            : Real  ;
  reaWTotalPagoPerParc  : Real  ;
  reaValorPago          : Real  ;
  //**** Variaveis TEF    ****//
  reaValorTef         : Real    ;
  //**** Variaveis DOUBLE ****//
  douWSubTotal             : Double  ;
  douQtdeProdValeGas       : Double  ;
  douQtdeProdValAgua       : Double  ;
  douWTotalItem            : Double  ;
  douWTotTaxaEntrega       : Double  ;
  douWTotalSangria         : Double  ;
  douWTotalFechamentoCego  : Double  ;
  douQtdeProdPatrocinado   : Double  ;
  douWAuxiliar             : Double  ;
  douWTotDesconto          : Double  ;
  douWTotAcrescimo         : Double  ;
  douWqtde                 : Double  ;
  douTotalCupom            : Double  ;
  douQtdItens              : Double  ;
  douQtdMultProAssoc       : Double  ;
  douQtdMultFormula        : Double  ;
  douTotImpostos           : Double  ;
  douImpostosF             : Double  ;
  douQtdeCupomPatrocinado  : Double;
  douImpostosE             : Double  ;
  douImpostosM             : Double  ;
  douVendaLiquida          : Double  ;
  douWTotPerProdParc       : Double  ;
  //*** Lucas variaveis Double
  douvlr_dif_acrs_desc_vlr : Double  ;
  douvlr_dif_acrs_desc_vlr1: Double  ;
	douSgrFin: Array[0..19] of Double;
  douFechaCegoFin: Array[0..19] of Double;
  //**** Variaveis Recupera Cupom ****//
  dateRecCupomDate    : TDate;
  intRecCupomECF      : Integer;
  intRecCupomCOO      : Integer;
  //**** Variaveis PAF-ECFs ****//
  wDataEstoque        : TDateTime;
  wDataEstqAtual      : TDateTime;

  QtdeItemPromocaoP1  : Integer;
  QtdeItemPromocaoP2  : Integer;
  strChaveCupomCancelado : string;
  intNrCupomCancelado : Integer;
  intNrCCF            : Integer;
  IntNrGNF            : Integer;
  // Rogerio Entrega
  strNrsCaixaEntregaPereciveis : String;
  bolRotinaEntrega             : Boolean;
  // *** Variaveis substituto do acbrEcf.ini
  douVendaLiquidaAcbr                   : Double  ;
  bolRelReciboEntregaPreencherManual    : Boolean;
  bolRelReciboEntregaPreencherTecladoPC : Boolean;
  bolCancelandoCupom                    : Boolean;

  RGBebidaAlcoolica            : String;
  DtaNascimentoBebidaAlcoolica : TDate;

  //*** Variaveis Dados de entrega manual
  bolPreencheManualEndereco  : Boolean ;
  strNome                    : string;
  strEndereco                : string;
  strBairro                  : string;
  strCidade                  : string;
  strCep                     : string;
  strFone                    : string;

  //** CoopBanc **//
  douWTotDescontoFina        : Double;
  douWTotDescontoFinaParcial : Double;
  percDescontoConfeccao      : Double;
  douTotalPagoConfeccao      : Double;
  bolCalculaDesconto         : Boolean;
implementation

end.
