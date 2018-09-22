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
  cxLookupEdit, cxDBLookupEdit, cxDBLookupComboBox, cxMaskEdit, cxCalendar;






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
    cxGrid1DBTableView1COD_PRO: TcxGridDBColumn;
    cxGrid1DBTableView1COD_LAB: TcxGridDBColumn;
    cxGrid1DBTableView1COD_SEC: TcxGridDBColumn;
    cxGrid1DBTableView1VALOR_PRO: TcxGridDBColumn;
    cxGrid1DBTableView1PROMOCAO_PRO: TcxGridDBColumn;
    cxGrid1DBTableView1CONTROLA_ESTOQUE_PRO: TcxGridDBColumn;
    cxGrid1DBTableView1COMISSAO_PRO: TcxGridDBColumn;
    cxGrid1DBTableView1QUANT_UNIDADE_ENTRADA: TcxGridDBColumn;
    cxGrid1DBTableView1ESTOQUE_MINIMO_PRO: TcxGridDBColumn;
    cxGrid1DBTableView1NOME_PRO: TcxGridDBColumn;
    cxGrid1DBTableView1DESC_CUPOM: TcxGridDBColumn;
    cxGrid1DBTableView1ATIVO_PRO: TcxGridDBColumn;
    cxGrid1DBTableView1MARGEM_LUCRO_PRO: TcxGridDBColumn;
    cxGrid1DBTableView1LOCALIZACAO_PRO: TcxGridDBColumn;
    cxGrid1DBTableView1PRODUTO_PESADO_PRO: TcxGridDBColumn;
    cxGrid1DBTableView1COD_SETOR: TcxGridDBColumn;
    cxGrid1DBTableView1TECLA_ATALHO_PRO: TcxGridDBColumn;
    cxGrid1DBTableView1INDICE_RECEITA_PRO: TcxGridDBColumn;
    cxGrid1DBTableView1DIAS_VALIDADE_PRO: TcxGridDBColumn;
    cxGrid1DBTableView1REFERENCIA_PRO: TcxGridDBColumn;
    cxGrid1DBTableView1COMPLEMENTO_PRO: TcxGridDBColumn;
    cxGrid1DBTableView1ICMS_CONT_EST: TcxGridDBColumn;
    cxGrid1DBTableView1ICMS_CONT_FORA: TcxGridDBColumn;
    cxGrid1DBTableView1ICMS_CF_EST: TcxGridDBColumn;
    cxGrid1DBTableView1ICMS_CF_FORA: TcxGridDBColumn;
    cxGrid1DBTableView1CST_CONT_EST: TcxGridDBColumn;
    cxGrid1DBTableView1CST_CONT_FORA: TcxGridDBColumn;
    cxGrid1DBTableView1CST_CF_EST: TcxGridDBColumn;
    cxGrid1DBTableView1CST_CF_FORA: TcxGridDBColumn;
    cxGrid1DBTableView1CAMINHO_FOTO_PRO: TcxGridDBColumn;
    cxGrid1DBTableView1SAIR_TABELA_PRECO: TcxGridDBColumn;
    cxGrid1DBTableView1CFOP_VENDAS_CONT_EST: TcxGridDBColumn;
    cxGrid1DBTableView1CFOP_VENDAS_CF_EST: TcxGridDBColumn;
    cxGrid1DBTableView1CFOP_VENDAS_CONT_FORA: TcxGridDBColumn;
    cxGrid1DBTableView1CFOP_VENDAS_CF_FORA: TcxGridDBColumn;
    cxGrid1DBTableView1ST_CONT_EST: TcxGridDBColumn;
    cxGrid1DBTableView1VR_AGREG_CONT_EST: TcxGridDBColumn;
    cxGrid1DBTableView1IPI_CONT_EST: TcxGridDBColumn;
    cxGrid1DBTableView1IPI_CF_EST: TcxGridDBColumn;
    cxGrid1DBTableView1IPI_CONT_FORA: TcxGridDBColumn;
    cxGrid1DBTableView1IPI_CF_FORA: TcxGridDBColumn;
    cxGrid1DBTableView1COD_NCM: TcxGridDBColumn;
    cxGrid1DBTableView1CLASSIFICACAO_FISCAL: TcxGridDBColumn;
    cxGrid1DBTableView1CODIGO_TIPO: TcxGridDBColumn;
    cxGrid1DBTableView1COD_PRODUTO_ESTOQUE: TcxGridDBColumn;
    cxGrid1DBTableView1COD_GRUPO: TcxGridDBColumn;
    cxGrid1DBTableView1SUB_GRUPO: TcxGridDBColumn;
    cxGrid1DBTableView1PRECO_PROGRAMADO: TcxGridDBColumn;
    cxGrid1DBTableView1ALIQUOTA_PIS: TcxGridDBColumn;
    cxGrid1DBTableView1ALIQUOTA_COFINS: TcxGridDBColumn;
    cxGrid1DBTableView1ALIQUOTA_IR: TcxGridDBColumn;
    cxGrid1DBTableView1ALIQUOTA_CSLL: TcxGridDBColumn;
    cxGrid1DBTableView1ALIQUOTA_OUTRAS: TcxGridDBColumn;
    cxGrid1DBTableView1ISENTO_PIS_COFINS_PRO: TcxGridDBColumn;
    cxGrid1DBTableView1PRECO_CUSTO: TcxGridDBColumn;
    cxGrid1DBTableView1CREDITO_ICMS: TcxGridDBColumn;
    cxGrid1DBTableView1PRECO_PRAZO_PRO: TcxGridDBColumn;
    cxGrid1DBTableView1TIPO_PRODUCAO: TcxGridDBColumn;
    cxGrid1DBTableView1CODIGO_BARRA_PRO: TcxGridDBColumn;
    cxGrid1DBTableView1CODIGO_UNIDADE_SAIDA: TcxGridDBColumn;
    cxGrid1DBTableView1CODIGO_UNIDADE_ENTRADA: TcxGridDBColumn;
    cxGrid1DBTableView1PRECO_PROGRAMADO_PRAZO: TcxGridDBColumn;
    cxGrid1DBTableView1RED_CF_EST: TcxGridDBColumn;
    cxGrid1DBTableView1RED_CF_FORA: TcxGridDBColumn;
    cxGrid1DBTableView1RED_CONT_EST: TcxGridDBColumn;
    cxGrid1DBTableView1RED_CONT_FORA: TcxGridDBColumn;
    cxGrid1DBTableView1DATA_VALIDADE: TcxGridDBColumn;
    cxGrid1DBTableView1CODIGO_SETOR_ESTOQUE: TcxGridDBColumn;
    cxGrid1DBTableView1ORIG: TcxGridDBColumn;
    cxGrid1DBTableView1CSOSN: TcxGridDBColumn;
    cxGrid1DBTableView1IPI: TcxGridDBColumn;
    cxGrid1DBTableView1ICMS: TcxGridDBColumn;
    cxGrid1DBTableView1RICMS: TcxGridDBColumn;
    cxGrid1DBTableView1IVA: TcxGridDBColumn;
    cxGrid1DBTableView1PIS: TcxGridDBColumn;
    cxGrid1DBTableView1CONFINS: TcxGridDBColumn;
    cxGrid1DBTableView1TAMANHO: TcxGridDBColumn;
    cxGrid1DBTableView1COR: TcxGridDBColumn;
    cxGrid1DBTableView1OBS: TcxGridDBColumn;
    cxGrid1DBTableView1CST_PIS: TcxGridDBColumn;
    cxGrid1DBTableView1CST_COFINS: TcxGridDBColumn;
    cxGrid1DBTableView1CST_IPI: TcxGridDBColumn;
    cxGrid1DBTableView1ULTIMA_ALTERACAO: TcxGridDBColumn;
    cxGrid1DBTableView1VALOR_ATACADO: TcxGridDBColumn;
    cxGrid1DBTableView1ALIQ_IBPT_NAC: TcxGridDBColumn;
    cxGrid1DBTableView1ALIQ_IBPT_IMP: TcxGridDBColumn;
    cxGrid1DBTableView1FATOR_CONVERSAO: TcxGridDBColumn;
    cxGrid1DBTableView1ALERTA_COPA: TcxGridDBColumn;
    cxGrid1DBTableView1ALERTA_COZINHA: TcxGridDBColumn;
    cxGrid1DBTableView1ANDROID_VISUALIZA: TcxGridDBColumn;
    cxGrid1DBTableView1TEMPO_PREPARO: TcxGridDBColumn;
    cxGrid1DBTableView1NAO_PERMITE_FRAC: TcxGridDBColumn;
    cxGrid1DBTableView1SABORES: TcxGridDBColumn;
    cxGrid1DBTableView1CEST: TcxGridDBColumn;
    cxGrid1DBTableView1NCM_EX: TcxGridDBColumn;
    cxGrid1DBTableView1CODIGO_SERVICO: TcxGridDBColumn;
    cxGrid1DBTableView1SERVICO_CODIGO: TcxGridDBColumn;
    cxGrid1DBTableView1CLASSE_TERAPEUTICA: TcxGridDBColumn;
    cxGrid1DBTableView1REGISTRO_MEDICAMENTO: TcxGridDBColumn;
    cxGrid1DBTableView1NUMERO_LOTE: TcxGridDBColumn;
    cxGrid1DBTableView1UNIDADE_MEDICAMENTO: TcxGridDBColumn;
    cxGrid1DBTableView1USO_PROLONGADO: TcxGridDBColumn;
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
    Panel1: TPanel;
    cxLabel1: TcxLabel;
    dbedtCOD_PRO: TDBEdit;
    cxLabel3: TcxLabel;
    dbedtCODIGO_BARRA_PRO: TDBEdit;
    cxLabel4: TcxLabel;
    cxDBLTipo: TcxDBLookupComboBox;
    dbrgrpTIPO_PRODUCAO: TDBRadioGroup;
    Panel2: TPanel;
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
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form_Cadastro_Produtos: TForm_Cadastro_Produtos;

implementation

{$R *.dfm}

uses UdtmBcoErp;

end.
