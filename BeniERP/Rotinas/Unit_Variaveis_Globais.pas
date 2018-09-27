unit Unit_Variaveis_Globais;

interface

uses
  Vcl.Dialogs, Vcl.Controls,
  ACBrECF, ACBrDevice, ACBrECFClass,
  IniFiles, Vcl.StdCtrls, Contnrs, System.Classes,FireDAC.Comp.Client, System.JSON;


  // Variaveis Teclas
  const
  VK_ESCAPE = 27;
  vk_f5     = 116;
  vk_f6     = 117;
  vk_f7     = 118;
  vk_f8     = 119;
  vk_f9     = 120;


  type
  TPROPDVTipoRegistro = ( regVendeItem,               regDescontoTotalCupom,
                          regFinalizadorVenda,        regCancelamentoCupom,
                          regAcrescimoTotalCupom,     regContraValeEmitido,
                          regCancelamentoItem,
                          regCancelamentoVenda,       regTrocoFinalizador,
                          regIdentificacaoCliente,    regLocalEntrega,
                          regSangria,                 regEntradaCaixa,
                          regSaidaCaixa,              regAberturaCaixa,
                          regFechamentoCaixa,         regEncerramentoDia,
                          regEmissaoCupomPedido,      regIniciante, // Tanque/Bico
                          regAbastecimento,           regEncerrante, // Tanque/Bico
                          regCancelamentoPgtoConta,   regCancelamentoRecebmtoContaCliLj,
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

  fsIdentificador = '00.000.000/0000-00';

  fsItensMenuRecebimento    = '1:Recarga de Celular;'+
                              '2:Correspondente Bancário;'+
                              '3:Reimpressão Ultimo RelGerencial;'+
                              '4:Reimpressão Ultimo Cupom SAT/NFC-e;'+
                              '5:Reimpressão Digitado Cupom SAT/NFC-e;'+
                              '6:Consulta Status Operacional SAT' ;

  fsItensMenuOperador       = '1:Voltar ao Caixa;'+
                              '2:Fechamento do Operador(a) s/Relatórios;'+
                              '3:Fechamento do Operador(a) c/Relatórios' ;



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

  bolvenda            : Boolean ;
  intSequenciaItem    : Integer ;
  intAuxiliar         : Integer ;
  strAuxiliar         : String  ;
  COD_EMP             : Integer;


implementation

end.
