unit Unit_Cadastro_Produtos;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Unit_Cadastro_Modelo, cxGraphics,
  cxControls, cxLookAndFeels, cxLookAndFeelPainters, dxSkinsCore, dxSkinBlack,
  dxSkinBlue, dxSkinBlueprint, dxSkinCaramel, dxSkinCoffee, dxSkinDarkRoom,
  dxSkinDarkSide, dxSkinDevExpressDarkStyle, dxSkinDevExpressStyle, dxSkinFoggy,
  dxSkinGlassOceans, dxSkinHighContrast, dxSkiniMaginary, dxSkinLilian,
  dxSkinLiquidSky, dxSkinLondonLiquidSky, dxSkinMcSkin, dxSkinMetropolis,
  dxSkinMetropolisDark, dxSkinMoneyTwins, dxSkinOffice2007Black,
  dxSkinOffice2007Blue, dxSkinOffice2007Green, dxSkinOffice2007Pink,
  dxSkinOffice2007Silver, dxSkinOffice2010Black, dxSkinOffice2010Blue,
  dxSkinOffice2010Silver, dxSkinOffice2013DarkGray, dxSkinOffice2013LightGray,
  dxSkinOffice2013White, dxSkinOffice2016Colorful, dxSkinOffice2016Dark,
  dxSkinPumpkin, dxSkinSeven, dxSkinSevenClassic, dxSkinSharp, dxSkinSharpPlus,
  dxSkinSilver, dxSkinSpringTime, dxSkinStardust, dxSkinSummer2008,
  dxSkinTheAsphaltWorld, dxSkinsDefaultPainters, dxSkinValentine,
  dxSkinVisualStudio2013Blue, dxSkinVisualStudio2013Dark,
  dxSkinVisualStudio2013Light, dxSkinVS2010, dxSkinWhiteprint,
  dxSkinXmas2008Blue, dxSkinscxPCPainter, dxBarBuiltInMenu, cxContainer, cxEdit,
  Vcl.Menus, cxStyles, cxCustomData, cxFilter, cxData, cxDataStorage,
  cxNavigator, Data.DB, cxDBData, FireDAC.Stan.Intf, FireDAC.Stan.Option,
  FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf,
  FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt, FireDAC.Comp.DataSet,
  FireDAC.Comp.Client, System.ImageList, Vcl.ImgList, cxGridLevel, cxClasses,
  cxGridCustomView, cxGridCustomTableView, cxGridTableView, cxGridDBTableView,
  cxGrid, Vcl.StdCtrls, cxButtons, Vcl.Mask, Vcl.ComCtrls, cxTextEdit,
  cxCurrencyEdit, cxLabel, Vcl.ExtCtrls, cxPC, Vcl.ToolWin, cxDBEdit, cxDBLabel,
  Vcl.DBCtrls, cxDBExtLookupComboBox, Vcl.Buttons, cxDropDownEdit,
  cxLookupEdit, cxDBLookupEdit, cxDBLookupComboBox, cxMaskEdit,System.StrUtils, cxCalendar;

type
  TForm_Cadastro_Produtos = class(TForm_Cadastro_Modelo)
    FdqProdutos: TFDQuery;
    FdqProdutosCOD_PRO: TIntegerField;
    FdqProdutosCOD_LAB: TIntegerField;
    FdqProdutosCOD_SEC: TIntegerField;
    FdqProdutosVALOR_PRO: TBCDField;
    FdqProdutosPROMOCAO_PRO: TBCDField;
    FdqProdutosCONTROLA_ESTOQUE_PRO: TStringField;
    FdqProdutosCOMISSAO_PRO: TBCDField;
    FdqProdutosQUANT_UNIDADE_ENTRADA: TBCDField;
    FdqProdutosESTOQUE_MINIMO_PRO: TBCDField;
    FdqProdutosNOME_PRO: TStringField;
    FdqProdutosDESC_CUPOM: TStringField;
    FdqProdutosATIVO_PRO: TStringField;
    FdqProdutosMARGEM_LUCRO_PRO: TBCDField;
    FdqProdutosLOCALIZACAO_PRO: TStringField;
    FdqProdutosPRODUTO_PESADO_PRO: TStringField;
    FdqProdutosCOD_SETOR: TIntegerField;
    FdqProdutosTECLA_ATALHO_PRO: TIntegerField;
    FdqProdutosINDICE_RECEITA_PRO: TIntegerField;
    FdqProdutosDIAS_VALIDADE_PRO: TIntegerField;
    FdqProdutosREFERENCIA_PRO: TStringField;
    FdqProdutosCOMPLEMENTO_PRO: TStringField;
    FdqProdutosICMS_CONT_EST: TIntegerField;
    FdqProdutosICMS_CONT_FORA: TIntegerField;
    FdqProdutosICMS_CF_EST: TIntegerField;
    FdqProdutosICMS_CF_FORA: TIntegerField;
    FdqProdutosCST_CONT_EST: TStringField;
    FdqProdutosCST_CONT_FORA: TStringField;
    FdqProdutosCST_CF_EST: TStringField;
    FdqProdutosCST_CF_FORA: TStringField;
    FdqProdutosCAMINHO_FOTO_PRO: TStringField;
    FdqProdutosSAIR_TABELA_PRECO: TStringField;
    FdqProdutosCFOP_VENDAS_CONT_EST: TIntegerField;
    FdqProdutosCFOP_VENDAS_CF_EST: TIntegerField;
    FdqProdutosCFOP_VENDAS_CONT_FORA: TIntegerField;
    FdqProdutosCFOP_VENDAS_CF_FORA: TIntegerField;
    FdqProdutosST_CONT_EST: TStringField;
    FdqProdutosVR_AGREG_CONT_EST: TBCDField;
    FdqProdutosIPI_CONT_EST: TBCDField;
    FdqProdutosIPI_CF_EST: TBCDField;
    FdqProdutosIPI_CONT_FORA: TBCDField;
    FdqProdutosIPI_CF_FORA: TBCDField;
    FdqProdutosCOD_NCM: TStringField;
    FdqProdutosCLASSIFICACAO_FISCAL: TStringField;
    FdqProdutosCODIGO_TIPO: TIntegerField;
    FdqProdutosCOD_PRODUTO_ESTOQUE: TIntegerField;
    FdqProdutosCOD_GRUPO: TIntegerField;
    FdqProdutosSUB_GRUPO: TIntegerField;
    FdqProdutosPRECO_PROGRAMADO: TBCDField;
    FdqProdutosALIQUOTA_PIS: TBCDField;
    FdqProdutosALIQUOTA_COFINS: TBCDField;
    FdqProdutosALIQUOTA_IR: TBCDField;
    FdqProdutosALIQUOTA_CSLL: TBCDField;
    FdqProdutosALIQUOTA_OUTRAS: TBCDField;
    FdqProdutosISENTO_PIS_COFINS_PRO: TStringField;
    FdqProdutosPRECO_CUSTO: TBCDField;
    FdqProdutosCREDITO_ICMS: TBCDField;
    FdqProdutosPRECO_PRAZO_PRO: TBCDField;
    FdqProdutosTIPO_PRODUCAO: TStringField;
    FdqProdutosCODIGO_BARRA_PRO: TStringField;
    FdqProdutosCODIGO_UNIDADE_SAIDA: TIntegerField;
    FdqProdutosCODIGO_UNIDADE_ENTRADA: TIntegerField;
    FdqProdutosPRECO_PROGRAMADO_PRAZO: TBCDField;
    FdqProdutosRED_CF_EST: TBCDField;
    FdqProdutosRED_CF_FORA: TBCDField;
    FdqProdutosRED_CONT_EST: TBCDField;
    FdqProdutosRED_CONT_FORA: TBCDField;
    FdqProdutosDATA_VALIDADE: TDateField;
    FdqProdutosCODIGO_SETOR_ESTOQUE: TIntegerField;
    FdqProdutosORIG: TIntegerField;
    FdqProdutosCSOSN: TStringField;
    FdqProdutosIPI: TFloatField;
    FdqProdutosICMS: TFloatField;
    FdqProdutosRICMS: TFloatField;
    FdqProdutosIVA: TFloatField;
    FdqProdutosPIS: TFloatField;
    FdqProdutosCONFINS: TFloatField;
    FdqProdutosTAMANHO: TStringField;
    FdqProdutosCOR: TStringField;
    FdqProdutosOBS: TMemoField;
    FdqProdutosCST_PIS: TStringField;
    FdqProdutosCST_COFINS: TStringField;
    FdqProdutosCST_IPI: TStringField;
    FdqProdutosULTIMA_ALTERACAO: TDateField;
    FdqProdutosVALOR_ATACADO: TBCDField;
    FdqProdutosALIQ_IBPT_NAC: TBCDField;
    FdqProdutosALIQ_IBPT_IMP: TBCDField;
    FdqProdutosFATOR_CONVERSAO: TBCDField;
    FdqProdutosALERTA_COPA: TStringField;
    FdqProdutosALERTA_COZINHA: TStringField;
    FdqProdutosANDROID_VISUALIZA: TStringField;
    FdqProdutosTEMPO_PREPARO: TTimeField;
    FdqProdutosNAO_PERMITE_FRAC: TIntegerField;
    FdqProdutosSABORES: TIntegerField;
    FdqProdutosCEST: TStringField;
    FdqProdutosNCM_EX: TIntegerField;
    FdqProdutosCODIGO_SERVICO: TIntegerField;
    FdqProdutosSERVICO_CODIGO: TStringField;
    FdqProdutosCLASSE_TERAPEUTICA: TStringField;
    FdqProdutosREGISTRO_MEDICAMENTO: TStringField;
    FdqProdutosNUMERO_LOTE: TStringField;
    FdqProdutosUNIDADE_MEDICAMENTO: TStringField;
    FdqProdutosUSO_PROLONGADO: TStringField;
    cxPaginas2: TcxPageControl;
    cxDadosProduto: TcxTabSheet;
    pnlLateral1: TPanel;
    grpAtivoCont: TGroupBox;
    dbchkATIVO_PRO: TDBCheckBox;
    dbchkCOMPLEMENTO_PRO: TDBCheckBox;
    dbchkCONTROLA_ESTOQUE_PRO: TDBCheckBox;
    dbchkSAIR_TABELA_PRECO: TDBCheckBox;
    DBCheckBox1: TDBCheckBox;
    Panel11: TPanel;
    cxLabel25: TcxLabel;
    cxDBDATA_VALIDADE: TcxDBDateEdit;
    pnlCentral1: TPanel;
    Panel3: TPanel;
    cxLabel1: TcxLabel;
    dbedtCOD_PRO: TDBEdit;
    cxLabel3: TcxLabel;
    dbedtCODIGO_BARRA_PRO: TDBEdit;
    cxLabel4: TcxLabel;
    cxDBLTipo: TcxDBLookupComboBox;
    dbrgrpTIPO_PRODUCAO: TDBRadioGroup;
    Panel4: TPanel;
    cxLabel2: TcxLabel;
    dbedtNOME_PRO: TDBEdit;
    Panel5: TPanel;
    cxLabel5: TcxLabel;
    dbedtDESC_CUPOM: TDBEdit;
    Panel6: TPanel;
    dbtxtEX: TDBText;
    cxLabel6: TcxLabel;
    dbedtESTOQUE_MINIMO_PRO: TDBEdit;
    cxLabel7: TcxLabel;
    dbedtLOCALIZACAO_PRO: TDBEdit;
    cxLabel8: TcxLabel;
    dbedtREFERENCIA_PRO: TDBEdit;
    cxLabel9: TcxLabel;
    cxDBNCM: TcxDBExtLookupComboBox;
    cxLabel32: TcxLabel;
    cxLabel33: TcxLabel;
    cxDBExtCEST: TcxDBExtLookupComboBox;
    Panel7: TPanel;
    cxLabel10: TcxLabel;
    dbedtTAMANHO: TDBEdit;
    dbedtCOR: TDBEdit;
    cxLabel11: TcxLabel;
    cxDBCODIGO_UNIDADE_SAIDA: TcxDBLookupComboBox;
    cxLabel12: TcxLabel;
    cxDBCODIGO_UNIDADE_ENTRADA: TcxDBLookupComboBox;
    cxLabel13: TcxLabel;
    Panel8: TPanel;
    cxLabel14: TcxLabel;
    dbedtVALOR_PRO: TDBEdit;
    cxLabel15: TcxLabel;
    dbedtPRECO_PRAZO_PRO: TDBEdit;
    cxLabel16: TcxLabel;
    dbedtPROMOCAO_PRO: TDBEdit;
    cxLabel18: TcxLabel;
    dbedtMARGEM_LUCRO_PRO: TDBEdit;
    cxLabel19: TcxLabel;
    dbedtQUANT_UNIDADE_ENTRADA: TDBEdit;
    cxLabel20: TcxLabel;
    dbedtCOMISSAO_PRO: TDBEdit;
    Panel9: TPanel;
    cxLabel17: TcxLabel;
    cxDBCOD_LAB: TcxDBLookupComboBox;
    cxLabel21: TcxLabel;
    cxDBCODIGO_SETOR_ESTOQUE: TcxDBLookupComboBox;
    Panel10: TPanel;
    cxLabel22: TcxLabel;
    cxDBLookupComboBox1: TcxDBLookupComboBox;
    cxLabel23: TcxLabel;
    cxDBLookupComboBox2: TcxDBLookupComboBox;
    cxDBLookupComboBox3: TcxDBLookupComboBox;
    cxLabel24: TcxLabel;
    Panel20: TPanel;
    cxLabel31: TcxLabel;
    dbedtPRECO_CUSTO: TDBEdit;
    dbCodigo: TDBEdit;
    lbCodigo: TcxLabel;
    dbServico: TDBEdit;
    lbServico: TcxLabel;
    cxBalanca: TcxTabSheet;
    pnl1: TPanel;
    dbrgrpPRODUTO_PESADO_PRO: TDBRadioGroup;
    pnl2: TPanel;
    cxLabel26: TcxLabel;
    cxDBCOD_SETOR: TcxDBLookupComboBox;
    Panel12: TPanel;
    Panel13: TPanel;
    cxLabel27: TcxLabel;
    cxDBINDICE_RECEITA_PRO: TcxDBLookupComboBox;
    Panel14: TPanel;
    cxLabel28: TcxLabel;
    dbedtDIAS_VALIDADE_PRO: TDBEdit;
    Panel15: TPanel;
    cxLabel29: TcxLabel;
    dbedtTECLA_ATALHO_PRO: TDBEdit;
    cxObs: TcxTabSheet;
    dbmmoOBS: TDBMemo;
    cxFoto: TcxTabSheet;
    GroupBox1: TGroupBox;
    Panel16: TPanel;
    Image: TImage;
    btnNovaFoto: TcxButton;
    btnLimparFoto: TcxButton;
    cxCompra: TcxTabSheet;
    Panel17: TPanel;
    shp2: TShape;
    Shape2: TShape;
    cxCompras: TcxGrid;
    cxComprasDBTableView1: TcxGridDBTableView;
    cxComprasDBTableView1RAZAO_EMP: TcxGridDBColumn;
    cxComprasDBTableView1DATAEMI_ENT: TcxGridDBColumn;
    cxComprasDBTableView1DATAENT_ENT: TcxGridDBColumn;
    cxComprasDBTableView1RAZAO_FOR: TcxGridDBColumn;
    cxComprasDBTableView1NUMNF_ENT: TcxGridDBColumn;
    cxComprasDBTableView1QTD_PRO: TcxGridDBColumn;
    cxComprasDBTableView1VALOR_UNIT_PRO: TcxGridDBColumn;
    cxComprasDBTableView1FRETE_ENT: TcxGridDBColumn;
    cxComprasDBTableView1VALOR_DESCONTO: TcxGridDBColumn;
    cxComprasDBTableView1VALOR_ACRESCIMO: TcxGridDBColumn;
    cxComprasDBTableView1CUSTO: TcxGridDBColumn;
    cxComprasDBTableView1VALOR_ICMS_SUB: TcxGridDBColumn;
    cxComprasDBTableView1VALOR_ICMS: TcxGridDBColumn;
    cxComprasDBTableView1VL_IPI: TcxGridDBColumn;
    cxComprasLevel1: TcxGridLevel;
    cxLabel30: TcxLabel;
    Panel18: TPanel;
    GroupBox3: TGroupBox;
    Label14: TLabel;
    Label15: TLabel;
    Label16: TLabel;
    Label17: TLabel;
    Label18: TLabel;
    Label19: TLabel;
    Label20: TLabel;
    Label21: TLabel;
    Label22: TLabel;
    Label23: TLabel;
    Label24: TLabel;
    Label25: TLabel;
    Label26: TLabel;
    cxDBLabel1: TcxDBLabel;
    cxDBLabel2: TcxDBLabel;
    cxDBLabel3: TcxDBLabel;
    cxDBLabel4: TcxDBLabel;
    cxDBLabel5: TcxDBLabel;
    cxDBLabel6: TcxDBLabel;
    cxDBLabel7: TcxDBLabel;
    cxDBLabel8: TcxDBLabel;
    cxDBLabel9: TcxDBLabel;
    cxDBLabel10: TcxDBLabel;
    cxDBLabel11: TcxDBLabel;
    cxDBLabel12: TcxDBLabel;
    cxDBLabel13: TcxDBLabel;
    GroupBox2: TGroupBox;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    Label7: TLabel;
    cxDBLabel14: TcxDBLabel;
    cxDBLabel15: TcxDBLabel;
    cxDBLabel16: TcxDBLabel;
    cxDBLabel17: TcxDBLabel;
    cxDBLabel18: TcxDBLabel;
    cxDBLabel19: TcxDBLabel;
    tabFornecedores: TcxTabSheet;
    cxFornecedores: TcxGrid;
    cxFornecedoresDBTableView1: TcxGridDBTableView;
    cxFornecedoresDBTableView1COD_FOR: TcxGridDBColumn;
    cxFornecedoresDBTableView1RAZAO_FOR: TcxGridDBColumn;
    cxFornecedoresDBTableView1REFERENCIA: TcxGridDBColumn;
    cxFornecedoresLevel1: TcxGridLevel;
    pnl3: TPanel;
    tabComposicao: TcxTabSheet;
    cxComposicao: TcxGrid;
    cxGridDBTableView1: TcxGridDBTableView;
    cxComposicaoDBTableView1: TcxGridDBTableView;
    cxComposicaoDBTableView1COD_PRO_COMPOSICAO: TcxGridDBColumn;
    cxComposicaoDBTableView1NOME_PRO: TcxGridDBColumn;
    cxComposicaoDBTableView1QUANT: TcxGridDBColumn;
    cxComposicaoDBTableView1ESTOQUE: TcxGridDBColumn;
    cxComposicaoLevel1: TcxGridLevel;
    Panel19: TPanel;
    cxTabSheet1: TcxTabSheet;
    pnl4: TPanel;
    cxLabel34: TcxLabel;
    cxDBLookupComboBox4: TcxDBLookupComboBox;
    cxLabel36: TcxLabel;
    dbedtCST_CF_EST: TDBEdit;
    Panel21: TPanel;
    cxLabel35: TcxLabel;
    cxDBLookupComboBox5: TcxDBLookupComboBox;
    cxLabel37: TcxLabel;
    dbedtCST_CF_FORA: TDBEdit;
    cxTabSheet2: TcxTabSheet;
    Label8: TLabel;
    Label9: TLabel;
    Label10: TLabel;
    Label11: TLabel;
    Label12: TLabel;
    cxDBTextEdit2: TcxDBTextEdit;
    cxDBTextEdit3: TcxDBTextEdit;
    cxImgsGrid: TcxImageList;
    cxGridImg: TcxImageList;
    cxVisualiza: TcxGrid;
    cxVisualizaDBTableView1: TcxGridDBTableView;
    cxVisualizaDBTableView1STATUS: TcxGridDBColumn;
    cxVisualizaDBTableView1COD_PRO: TcxGridDBColumn;
    cxVisualizaDBTableView1CODIGO_BARRA_PRO: TcxGridDBColumn;
    cxVisualizaDBTableView1NOME_PRO: TcxGridDBColumn;
    cxVisualizaDBTableView1CODIGO_UNIDADE_SAIDA: TcxGridDBColumn;
    cxVisualizaDBTableView1CODIGO_UNIDADE_ENTRADA: TcxGridDBColumn;
    cxVisualizaDBTableView1VALOR_PRO: TcxGridDBColumn;
    cxVisualizaDBTableView1PRECO_PRAZO_PRO: TcxGridDBColumn;
    cxVisualizaDBTableView1PROMOCAO_PRO: TcxGridDBColumn;
    cxVisualizaDBTableView1ESTOQUE: TcxGridDBColumn;
    cxVisualizaDBTableView1DESC_CUPOM: TcxGridDBColumn;
    cxVisualizaDBTableView1REFERENCIA_PRO: TcxGridDBColumn;
    cxVisualizaDBTableView1CODIGO_TIPO: TcxGridDBColumn;
    cxVisualizaDBTableView1NOME_TIPO: TcxGridDBColumn;
    cxVisualizaDBTableView1TIPO_PRODUCAO: TcxGridDBColumn;
    cxVisualizaDBTableView1COD_SEC: TcxGridDBColumn;
    cxVisualizaDBTableView1NOME_SEC: TcxGridDBColumn;
    cxVisualizaDBTableView1COD_GRUPO: TcxGridDBColumn;
    cxVisualizaDBTableView1NOME_GRUPO: TcxGridDBColumn;
    cxVisualizaDBTableView1SUB_GRUPO: TcxGridDBColumn;
    cxVisualizaDBTableView1NOME_SUBGRUPO: TcxGridDBColumn;
    cxVisualizaDBTableView1COD_LAB: TcxGridDBColumn;
    cxVisualizaDBTableView1NOME_LAB: TcxGridDBColumn;
    cxVisualizaDBTableView1CONTROLA_ESTOQUE_PRO: TcxGridDBColumn;
    cxVisualizaDBTableView1COMISSAO_PRO: TcxGridDBColumn;
    cxVisualizaDBTableView1QUANT_UNIDADE_ENTRADA: TcxGridDBColumn;
    cxVisualizaDBTableView1ESTOQUE_MINIMO_PRO: TcxGridDBColumn;
    cxVisualizaDBTableView1ATIVO_PRO: TcxGridDBColumn;
    cxVisualizaDBTableView1MARGEM_LUCRO_PRO: TcxGridDBColumn;
    cxVisualizaDBTableView1LOCALIZACAO_PRO: TcxGridDBColumn;
    cxVisualizaDBTableView1PRODUTO_PESADO_PRO: TcxGridDBColumn;
    cxVisualizaDBTableView1COD_SETOR: TcxGridDBColumn;
    cxVisualizaDBTableView1NOME_SETOR_BAL: TcxGridDBColumn;
    cxVisualizaDBTableView1TECLA_ATALHO_PRO: TcxGridDBColumn;
    cxVisualizaDBTableView1INDICE_RECEITA_PRO: TcxGridDBColumn;
    cxVisualizaDBTableView1DIAS_VALIDADE_PRO: TcxGridDBColumn;
    cxVisualizaDBTableView1COMPLEMENTO_PRO: TcxGridDBColumn;
    cxVisualizaDBTableView1SAIR_TABELA_PRECO: TcxGridDBColumn;
    cxVisualizaDBTableView1COD_NCM: TcxGridDBColumn;
    cxVisualizaDBTableView1COD_PRODUTO_ESTOQUE: TcxGridDBColumn;
    cxVisualizaDBTableView1NOME_PRO_ESTOQUE: TcxGridDBColumn;
    cxVisualizaDBTableView1PRECO_PROGRAMADO: TcxGridDBColumn;
    cxVisualizaDBTableView1PRECO_CUSTO: TcxGridDBColumn;
    cxVisualizaDBTableView1PRECO_PROGRAMADO_PRAZO: TcxGridDBColumn;
    cxVisualizaDBTableView1DATA_VALIDADE: TcxGridDBColumn;
    cxVisualizaDBTableView1CODIGO_SETOR_ESTOQUE: TcxGridDBColumn;
    cxVisualizaDBTableView1NOME_SETOR_ESTOQUE: TcxGridDBColumn;
    cxVisualizaDBTableView1TAMANHO: TcxGridDBColumn;
    cxVisualizaDBTableView1COR: TcxGridDBColumn;
    cxVisualizaDBTableView1OBS: TcxGridDBColumn;
    cxVisualizaDBTableView1ULTIMA_ALTERACAO: TcxGridDBColumn;
    cxVisualizaDBTableView1VALOR_ATACADO: TcxGridDBColumn;
    cxVisualizaDBTableView1ALERTA_COPA: TcxGridDBColumn;
    cxVisualizaDBTableView1ALERTA_COZINHA: TcxGridDBColumn;
    cxVisualizaDBTableView1ANDROID_VISUALIZA: TcxGridDBColumn;
    cxVisualizaDBTableView1TEMPO_PREPARO: TcxGridDBColumn;
    cxVisualizaDBTableView1NAO_PERMITE_FRAC: TcxGridDBColumn;
    cxVisualizaDBTableView1SABORES: TcxGridDBColumn;
    cxVisualizaDBTableView1UNID_ENT: TcxGridDBColumn;
    cxVisualizaDBTableView1UNID_SAI: TcxGridDBColumn;
    cxNCMs: TcxGridDBTableView;
    cxNCMsNCM: TcxGridDBColumn;
    cxNCMsEX: TcxGridDBColumn;
    cxNCMsDESC_NCM: TcxGridDBColumn;
    cxNCMsDESCRICAO: TcxGridDBColumn;
    cxCEST: TcxGridDBTableView;
    cxCESTCEST: TcxGridDBColumn;
    cxCESTDescricao: TcxGridDBColumn;
    cxVisualizaLevel1: TcxGridLevel;
    FDQuxiliar: TFDQuery;
    rdg_tpo_pesquisa: TRadioGroup;
    lbl_qnt_produtos: TLabel;
    procedure cxVisualizaDBTableView1DblClick(Sender: TObject);
    procedure cxButton1Click(Sender: TObject);
    procedure BtnConsultarClick(Sender: TObject);
    procedure edtMaskKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure BtnLimparPesquisaClick(Sender: TObject);
  private
    procedure MostraProdutos;
    function retornabusca: string;
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form_Cadastro_Produtos: TForm_Cadastro_Produtos;

implementation

{$R *.dfm}

uses UdtmBcoErp, Unit_Variaveis_Globais, ParamControleLicenca,
  ParamControleTerminalECF, ParamControleTerminalPDV, UdtmACBR, UdtmImagens,
  Unit_Acesso, Unit_Alerta, Unit_Baixa_Tabela_IBPT, Unit_Cadastro_ICMS,
  Unit_Cadastro_Usuario, Unit_exibeefeitoespera, Unit_F_mensagem_Dialog,
  Unit_Principal, Unit_Relatorios, Unit_Rotinas, unit_utilfuncs;

procedure TForm_Cadastro_Produtos.BtnConsultarClick(Sender: TObject);
begin
  MostraProdutos;
end;

procedure TForm_Cadastro_Produtos.BtnLimparPesquisaClick(Sender: TObject);
begin
  inherited;
  edtMask.Text := '';
  lbl_qnt_produtos.Visible := False;
  lbl_qnt_produtos.Caption :='';
end;

procedure TForm_Cadastro_Produtos.cxButton1Click(Sender: TObject);
begin
  inherited;
  MostraProdutos;
end;

procedure TForm_Cadastro_Produtos.cxVisualizaDBTableView1DblClick(
  Sender: TObject);
begin
  inherited;
  cxPageControl1.ActivePage := tbCadastro;

end;

procedure TForm_Cadastro_Produtos.edtMaskKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  inherited;
  if key = 13 then
    MostraProdutos;
end;

function TForm_Cadastro_Produtos.retornabusca:String;
begin
  result := '''%'+edtMask.Text+'%''';
end;


procedure TForm_Cadastro_Produtos.MostraProdutos;
var
  Liga: String;
  sql: String;
begin
  if rdg_tpo_pesquisa.ItemIndex = -1 then
    rdg_tpo_pesquisa.ItemIndex :=1;

  FdqProdutos.Close;
  DtmBcoErp.FDBcoERP.Commit;
  FdqProdutos.SQL.Clear;
  case  rdg_tpo_pesquisa.ItemIndex of
    0: Liga := 'COD_PRO';
    1: Liga := 'nome_pro';
    else
    begin
      AlertCard('Selecione o tipo da pesquisa!','Atenção!');
      edtMask.SetFocus;
      exit;
    end;
  end;

  sql :=
  'select * from produto T                                                                          '+
  'WHERE                                                                                            '+
  Liga  + ' LIKE' + retornabusca + ' OR t.desc_cupom LIKE' + retornabusca ;

  FdqProdutos.SQL.Text := sql;
  FdqProdutos.Open;
  if  FdqProdutos.RecordCount = 0 then
  begin
    lbl_qnt_produtos.Visible := False;
    lbl_qnt_produtos.Caption :='';
    edtMask.Text := '';
    AlertCard('Nenhum Registro Encontrado conforme o Critério informado.','Atenção!');
    edtMask.SetFocus;
  end
  else
  begin
    lbl_qnt_produtos.Visible := true;
    lbl_qnt_produtos.Caption := IntToStr(FdqProdutos.RecordCount) + ' Registros Encontrados.  '
  end;



end;

end.
