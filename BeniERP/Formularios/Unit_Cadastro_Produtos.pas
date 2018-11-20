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
  cxLookupEdit, cxDBLookupEdit, cxDBLookupComboBox, cxMaskEdit,System.StrUtils, cxCalendar,
  ACBrBase, ACBrEnterTab, dxScreenTip, dxCustomHint, cxHint,
  dxSkinsdxNavBarPainter, dxSkinsdxNavBarAccordionViewPainter, dxNavBarCollns,
  dxNavBarBase, dxNavBar, dxmdaset, cxCalc, cxSpinEdit, cxTimeEdit;

type
  TForm_Cadastro_Produtos = class(TForm_Cadastro_Modelo)
    FdqProdutos: TFDQuery;
    cxPaginas2: TcxPageControl;
    cxDadosProduto: TcxTabSheet;
    cxBalanca: TcxTabSheet;
    cxObs: TcxTabSheet;
    dbmmoOBS: TDBMemo;
    cxCompra: TcxTabSheet;
    Panel17: TPanel;
    shp2: TShape;
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
    cxGridImg: TcxImageList;
    cxVisualiza: TcxGrid;
    cxVisualizaDBTableView1: TcxGridDBTableView;
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
    chk_mostrafiltrogrid: TCheckBox;
    ACBrEnterTab: TACBrEnterTab;
    cxVisualizaDBTableView1PRO_ID: TcxGridDBColumn;
    cxVisualizaDBTableView1PRO_COD_BARRA: TcxGridDBColumn;
    cxVisualizaDBTableView1PRO_DESCRICAO_CUPOM: TcxGridDBColumn;
    cxVisualizaDBTableView1PRO_DESCRICAO_PDV: TcxGridDBColumn;
    cxVisualizaDBTableView1PRO_TIPO_PRODUTO: TcxGridDBColumn;
    cxVisualizaDBTableView1PRO_CONTROLA_ESTOQUE_PRO: TcxGridDBColumn;
    cxVisualizaDBTableView1PRO_ESTOQUE_MINIMO: TcxGridDBColumn;
    cxVisualizaDBTableView1PRO_SALDO_ESTOQUE: TcxGridDBColumn;
    cxVisualizaDBTableView1PRO_VLR_CUSTO: TcxGridDBColumn;
    cxVisualizaDBTableView1PRO_PRECO_V_ATACADO: TcxGridDBColumn;
    cxVisualizaDBTableView1PRO_VLR_PADRAO: TcxGridDBColumn;
    cxVisualizaDBTableView1PRO_VLR_PROMOC: TcxGridDBColumn;
    cxVisualizaDBTableView1PRO_VLR_PRECO2: TcxGridDBColumn;
    cxVisualizaDBTableView1PRO_VLR_PRECO3: TcxGridDBColumn;
    cxVisualizaDBTableView1PRO_VLR_PRECO4: TcxGridDBColumn;
    cxVisualizaDBTableView1PRO_QTD_MIN_VLR_ATACADO: TcxGridDBColumn;
    cxVisualizaDBTableView1PRO_QTD_MIN_VLR_PROMOC: TcxGridDBColumn;
    cxVisualizaDBTableView1PRO_CEST: TcxGridDBColumn;
    cxVisualizaDBTableView1PRO_CFOP: TcxGridDBColumn;
    cxVisualizaDBTableView1PRO_NCM: TcxGridDBColumn;
    cxVisualizaDBTableView1PRO_CHAVE_IBPT: TcxGridDBColumn;
    cxVisualizaDBTableView1PRO_DT_ATUALIZACAO_CADASTRO: TcxGridDBColumn;
    cxVisualizaDBTableView1PRO_HR__ATUALIZACAO_CADASTRO: TcxGridDBColumn;
    FDQuxiliarPRO_ID: TLargeintField;
    FDQuxiliarPRO_COD_BARRA: TLargeintField;
    FDQuxiliarPRO_DESCRICAO_CUPOM: TWideStringField;
    FDQuxiliarPRO_DESCRICAO_PDV: TWideStringField;
    FDQuxiliarPRO_ATIVO: TWideStringField;
    FDQuxiliarPRO_TIPO_PRODUTO: TWideStringField;
    FDQuxiliarPRO_CONTROLA_ESTOQUE_PRO: TWideStringField;
    FDQuxiliarPRO_ESTOQUE_MINIMO: TBCDField;
    FDQuxiliarPRO_SALDO_ESTOQUE: TBCDField;
    FDQuxiliarPRO_DATA_VALIDADE: TDateField;
    FDQuxiliarPRO_FORMULA: TWideStringField;
    FDQuxiliarPRO_UN_REFERENCIA: TWideStringField;
    FDQuxiliarPRO_VLR_CUSTO: TFloatField;
    FDQuxiliarPRO_PRECO_V_ATACADO: TCurrencyField;
    FDQuxiliarPRO_VLR_PADRAO: TCurrencyField;
    FDQuxiliarPRO_VLR_PROMOC: TCurrencyField;
    FDQuxiliarPRO_VLR_PRECO2: TCurrencyField;
    FDQuxiliarPRO_VLR_PRECO3: TCurrencyField;
    FDQuxiliarPRO_VLR_PRECO4: TCurrencyField;
    FDQuxiliarPRO_QTD_MIN_VLR_ATACADO: TBCDField;
    FDQuxiliarPRO_QTD_MIN_VLR_PROMOC: TBCDField;
    FDQuxiliarPRO_DIAS_VALIDADE: TIntegerField;
    FDQuxiliarPRO_PERMITE_FRAC: TIntegerField;
    FDQuxiliarPRO_ALCOOLICO: TWideStringField;
    FDQuxiliarPRO_COD_VASILHAME: TLargeintField;
    FDQuxiliarPRO_PEDE_LIBERACAO_FSC: TIntegerField;
    FDQuxiliarPRO_QUANT_UNIDADE_ENTRADA: TBCDField;
    FDQuxiliarPRO_QTD_MAXIMA_COMPRA: TIntegerField;
    FDQuxiliarPRO_QTD_MAX_VARIAVEL: TWideStringField;
    FDQuxiliarPRO_PER_ALTERA_PRECO_PDV: TWideStringField;
    FDQuxiliarPRO_BLOQQUEIA_MULTIPLICACAO: TWideStringField;
    FDQuxiliarPRO_LEVEX_PAGUEY: TWideStringField;
    FDQuxiliarPRO_COR: TWideStringField;
    FDQuxiliarPRO_LOCALIZACAO: TWideStringField;
    FDQuxiliarPRO_OBS: TMemoField;
    FDQuxiliarPRO_CLASSIFICACAO_FISCAL: TWideStringField;
    FDQuxiliarPRO_COD_ALIQUOTA: TIntegerField;
    FDQuxiliarPRO_COMISSAO: TBCDField;
    FDQuxiliarPRO_ALIQUOTA_CSLL: TBCDField;
    FDQuxiliarPRO_ALIQUOTA_OUTRAS: TBCDField;
    FDQuxiliarPRO_ISENTO_PIS_COFINS_PRO: TWideStringField;
    FDQuxiliarPRO_CREDITO_ICMS: TBCDField;
    FDQuxiliarPRO_TIPO_PRODUCAO: TWideStringField;
    FDQuxiliarPRO_COD_GRUPO: TIntegerField;
    FDQuxiliarPRO_SUB_GRUPO: TIntegerField;
    FDQuxiliarPRO_SIT_TRIBUTARIA: TWideStringField;
    FDQuxiliarPRO_CEST: TWideStringField;
    FDQuxiliarPRO_CFOP: TWideStringField;
    FDQuxiliarPRO_NCM: TFloatField;
    FDQuxiliarPRO_CHAVE_IBPT: TWideStringField;
    FDQuxiliarPRO_CST_ICMS: TWideStringField;
    FDQuxiliarPRO_CST_PIS: TWideStringField;
    FDQuxiliarPRO_CST_COFINS: TWideStringField;
    FDQuxiliarPRO_ALIQ_ICMS: TBCDField;
    FDQuxiliarPRO_ALIQ_PIS: TBCDField;
    FDQuxiliarPRO_ALIQ_COFINS: TBCDField;
    FDQuxiliarPRO_PERC_IMPOSTOS: TFloatField;
    FDQuxiliarPRO_PERC_IMPOSTOS_E: TFloatField;
    FDQuxiliarPRO_PERC_IMPOSTOS_M: TFloatField;
    FDQuxiliarPRO_ULTIMO_USUARIO_ALTERACAO: TWideStringField;
    FDQuxiliarPRO_PERMITE_PARCELAMENTO_PDV: TIntegerField;
    FDQuxiliarPRO_ORIGEM_MERCA: TIntegerField;
    FDQuxiliarPRO_IMP_VALE_GAS: TIntegerField;
    FDQuxiliarPRO_IMP_VALE_AGUA: TIntegerField;
    FDQuxiliarPRO_ALERTA_COZINHA: TWideStringField;
    FDQuxiliarPRO_ANDROID_VISUALIZA: TWideStringField;
    FDQuxiliarPRO_NUMERO_LOTE: TWideStringField;
    FDQuxiliarPRO_TEMPO_PREPARO: TTimeField;
    FDQuxiliarPRO_DT_ATUALIZACAO_CADASTRO: TDateField;
    FDQuxiliarPRO_HR__ATUALIZACAO_CADASTRO: TTimeField;
    FDQuxiliarPRO_COD_SEC: TIntegerField;
    grp_produto: TGroupBox;
    edt_descr_pdv: TcxDBTextEdit;
    Label104: TLabel;
    DataSource1: TDataSource;
    cxTabSheet1: TcxTabSheet;
    DBCheckBox1: TDBCheckBox;
    DBCheckBox2: TDBCheckBox;
    DBCheckBox3: TDBCheckBox;
    DBCheckBox4: TDBCheckBox;
    DBCheckBox5: TDBCheckBox;
    DBCheckBox6: TDBCheckBox;
    DBCheckBox7: TDBCheckBox;
    DBCheckBox8: TDBCheckBox;
    DBCheckBox9: TDBCheckBox;
    cxTabSheet2: TcxTabSheet;
    GroupBox4: TGroupBox;
    Label37: TLabel;
    cxDBTextEdit8: TcxDBTextEdit;
    Label38: TLabel;
    cxDBTextEdit9: TcxDBTextEdit;
    cxDBCurrencyEdit6: TcxDBCurrencyEdit;
    Label41: TLabel;
    Label42: TLabel;
    cxDBCurrencyEdit7: TcxDBCurrencyEdit;
    cxDBLookupComboBox9: TcxDBLookupComboBox;
    Label10: TLabel;
    cxDBTextEdit10: TcxDBTextEdit;
    Label39: TLabel;
    DBCheckBox10: TDBCheckBox;
    GroupBox5: TGroupBox;
    Label33: TLabel;
    cxDBTextEdit5: TcxDBTextEdit;
    cxDBCurrencyEdit3: TcxDBCurrencyEdit;
    Label29: TLabel;
    Label31: TLabel;
    cxDBCurrencyEdit4: TcxDBCurrencyEdit;
    Label36: TLabel;
    cxDBTextEdit7: TcxDBTextEdit;
    Label43: TLabel;
    cxDBCalcEdit2: TcxDBCalcEdit;
    Label44: TLabel;
    cxDBCalcEdit3: TcxDBCalcEdit;
    Label45: TLabel;
    cxDBCalcEdit4: TcxDBCalcEdit;
    cxDBTextEdit6: TcxDBTextEdit;
    Label34: TLabel;
    cxDBTextEdit4: TcxDBTextEdit;
    Label32: TLabel;
    Label30: TLabel;
    cxDBTimeEdit1: TcxDBTimeEdit;
    Label40: TLabel;
    Label46: TLabel;
    cxDBCalcEdit5: TcxDBCalcEdit;
    Label47: TLabel;
    cxDBCurrencyEdit5: TcxDBCurrencyEdit;
    Label48: TLabel;
    cxDBCurrencyEdit8: TcxDBCurrencyEdit;
    Label49: TLabel;
    cxDBCurrencyEdit9: TcxDBCurrencyEdit;
    Label50: TLabel;
    cxDBCurrencyEdit10: TcxDBCurrencyEdit;
    Label51: TLabel;
    cxDBCurrencyEdit11: TcxDBCurrencyEdit;
    Label52: TLabel;
    cxDBCurrencyEdit12: TcxDBCurrencyEdit;
    DBCheckBox11: TDBCheckBox;
    FdqProdutosPRO_ID: TLargeintField;
    FdqProdutosPRO_COD_BARRA: TLargeintField;
    FdqProdutosPRO_DESCRICAO_CUPOM: TStringField;
    FdqProdutosPRO_DESCRICAO_PDV: TStringField;
    FdqProdutosPRO_ATIVO: TStringField;
    FdqProdutosPRO_TIPO_PRODUTO: TStringField;
    FdqProdutosPRO_CONTROLA_ESTOQUE_PRO: TStringField;
    FdqProdutosPRO_ESTOQUE_MINIMO: TBCDField;
    FdqProdutosPRO_SALDO_ESTOQUE: TBCDField;
    FdqProdutosPRO_DATA_VALIDADE: TDateField;
    FdqProdutosPRO_FORMULA: TStringField;
    FdqProdutosPRO_UN_REFERENCIA: TStringField;
    FdqProdutosPRO_VLR_CUSTO: TFloatField;
    FdqProdutosPRO_PRECO_V_ATACADO: TCurrencyField;
    FdqProdutosPRO_VLR_PADRAO: TCurrencyField;
    FdqProdutosPRO_VLR_PROMOC: TCurrencyField;
    FdqProdutosPRO_VLR_PRECO2: TCurrencyField;
    FdqProdutosPRO_VLR_PRECO3: TCurrencyField;
    FdqProdutosPRO_VLR_PRECO4: TCurrencyField;
    FdqProdutosPRO_QTD_MIN_VLR_ATACADO: TBCDField;
    FdqProdutosPRO_QTD_MIN_VLR_PROMOC: TBCDField;
    FdqProdutosPRO_DIAS_VALIDADE: TIntegerField;
    FdqProdutosPRO_PERMITE_FRAC: TIntegerField;
    FdqProdutosPRO_ALCOOLICO: TStringField;
    FdqProdutosPRO_COD_VASILHAME: TLargeintField;
    FdqProdutosPRO_PEDE_LIBERACAO_FSC: TIntegerField;
    FdqProdutosPRO_QUANT_UNIDADE_ENTRADA: TBCDField;
    FdqProdutosPRO_QTD_MAXIMA_COMPRA: TIntegerField;
    FdqProdutosPRO_QTD_MAX_VARIAVEL: TStringField;
    FdqProdutosPRO_PER_ALTERA_PRECO_PDV: TStringField;
    FdqProdutosPRO_BLOQQUEIA_MULTIPLICACAO: TStringField;
    FdqProdutosPRO_LEVEX_PAGUEY: TStringField;
    FdqProdutosPRO_COR: TStringField;
    FdqProdutosPRO_LOCALIZACAO: TStringField;
    FdqProdutosPRO_OBS: TMemoField;
    FdqProdutosPRO_COD_ALIQUOTA: TIntegerField;
    FdqProdutosPRO_COMISSAO: TBCDField;
    FdqProdutosPRO_ALIQUOTA_OUTRAS: TBCDField;
    FdqProdutosPRO_ISENTO_PIS_COFINS_PRO: TStringField;
    FdqProdutosPRO_CREDITO_ICMS: TBCDField;
    FdqProdutosPRO_TIPO_PRODUCAO: TStringField;
    FdqProdutosPRO_COD_GRUPO: TIntegerField;
    FdqProdutosPRO_SUB_GRUPO: TIntegerField;
    FdqProdutosPRO_SIT_TRIBUTARIA: TStringField;
    FdqProdutosPRO_CEST: TStringField;
    FdqProdutosPRO_CFOP: TStringField;
    FdqProdutosPRO_NCM: TFloatField;
    FdqProdutosPRO_CHAVE_IBPT: TStringField;
    FdqProdutosPRO_CST_ICMS: TStringField;
    FdqProdutosPRO_CST_PIS: TStringField;
    FdqProdutosPRO_CST_COFINS: TStringField;
    FdqProdutosPRO_ALIQ_ICMS: TBCDField;
    FdqProdutosPRO_ALIQ_PIS: TBCDField;
    FdqProdutosPRO_ALIQ_COFINS: TBCDField;
    FdqProdutosPRO_PERC_IMPOSTOS: TFloatField;
    FdqProdutosPRO_PERC_IMPOSTOS_E: TFloatField;
    FdqProdutosPRO_PERC_IMPOSTOS_M: TFloatField;
    FdqProdutosPRO_ULTIMO_USUARIO_ALTERACAO: TStringField;
    FdqProdutosPRO_PERMITE_PARCELAMENTO_PDV: TIntegerField;
    FdqProdutosPRO_ORIGEM_MERCA: TIntegerField;
    FdqProdutosPRO_IMP_VALE_GAS: TIntegerField;
    FdqProdutosPRO_IMP_VALE_AGUA: TIntegerField;
    FdqProdutosPRO_ALERTA_COZINHA: TStringField;
    FdqProdutosPRO_ANDROID_VISUALIZA: TStringField;
    FdqProdutosPRO_NUMERO_LOTE: TStringField;
    FdqProdutosPRO_TEMPO_PREPARO: TTimeField;
    FdqProdutosPRO_DT_ATUALIZACAO_CADASTRO: TDateField;
    FdqProdutosPRO_HR__ATUALIZACAO_CADASTRO: TTimeField;
    FdqProdutosPRO_COD_SEC: TIntegerField;
    cxDBLookupComboBox2: TcxDBLookupComboBox;
    Label35: TLabel;
    DBComboBox1: TDBComboBox;
    GBDadosProduto: TGroupBox;
    Label105: TLabel;
    Label133: TLabel;
    Label9: TLabel;
    Label8: TLabel;
    Label11: TLabel;
    Label12: TLabel;
    Label13: TLabel;
    Label53: TLabel;
    combodb_un_referencia: TcxDBLookupComboBox;
    cxDBTextEdit1: TcxDBTextEdit;
    cxDBMEsqlCadProdutosPRO_ID: TcxDBMaskEdit;
    cxDBMaskEdit1: TcxDBMaskEdit;
    cxDBCurrencyEdit1: TcxDBCurrencyEdit;
    cxDBLookupComboBox1: TcxDBLookupComboBox;
    cxDBDateEdit1: TcxDBDateEdit;
    cxDBSpinEdit1: TcxDBSpinEdit;
    procedure cxVisualizaDBTableView1DblClick(Sender: TObject);
    procedure cxButton1Click(Sender: TObject);
    procedure BtnConsultarClick(Sender: TObject);
    procedure edtMaskKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure BtnLimparPesquisaClick(Sender: TObject);
    procedure cxVisualizaDBTableView1KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure chk_mostrafiltrogridClick(Sender: TObject);
    procedure rgOptionGridClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure FormShow(Sender: TObject);
   
  private
    procedure MostraProdutos;
    function retornabusca: string;
    function PreencheSQLSring(lSQL: String):String;
    { Private declarations }
  public
    { Public declarations }
  end;



var
  Form_Cadastro_Produtos: TForm_Cadastro_Produtos;

implementation

{$R *.dfm}

uses UdtmBcoErp, Unit_Variaveis_Globais, ParamControleLicenca,
   UdtmACBR, UdtmImagens,
  Unit_Acesso, Unit_Alerta, Unit_Baixa_Tabela_IBPT, Unit_Cadastro_ICMS,
  Unit_Cadastro_Usuario, Unit_exibeefeitoespera, Unit_F_mensagem_Dialog,
  Unit_Principal, Unit_Relatorios, Unit_Rotinas, unit_utilfuncs,
  UdtmCadProdutos;

procedure TForm_Cadastro_Produtos.BtnConsultarClick(Sender: TObject);
begin
  MostraProdutos;
end;

procedure TForm_Cadastro_Produtos.BtnLimparPesquisaClick(Sender: TObject);
begin
  inherited;
  edtMask.Text := '';
  pnl_info_direita.Visible := False;
  pnl_info_direita.Caption :='';
end;

procedure TForm_Cadastro_Produtos.chk_mostrafiltrogridClick(Sender: TObject);
begin
  inherited;
  if chk_mostrafiltrogrid.Checked then
    cxVisualizaDBTableView1.FilterRow.Visible := (not cxVisualizaDBTableView1.FilterRow.Visible)
  else
  cxVisualizaDBTableView1.FilterRow.Visible := ( not cxVisualizaDBTableView1.FilterRow.Visible);

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

procedure TForm_Cadastro_Produtos.cxVisualizaDBTableView1KeyDown(
  Sender: TObject; var Key: Word; Shift: TShiftState);
begin
  inherited;
   if key = 13 then
    cxPageControl1.ActivePage := tbCadastro;
end;

procedure TForm_Cadastro_Produtos.edtMaskKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  inherited;
  if key in [13,114] then
  MostraProdutos
  else
  if key = 27 then
  begin
    edtMask.Text := '';
    edtMask.setfocus;
  end;
end;

procedure TForm_Cadastro_Produtos.FormCreate(Sender: TObject);
begin
  inherited;
  FdqProdutos.Active := False;
  cxPageControl1.Pages[0].brush.Color :=clWhite;
  cxPageControl1.Pages[1].brush.Color :=clWhite;

  dtm_cad_Produtos.dxmem_cod_tributacao_Pro.close;
  dtm_cad_Produtos.dxmem_cod_tributacao_Pro.Open;
end;

procedure TForm_Cadastro_Produtos.FormShow(Sender: TObject);
begin
  inherited;
  edtMask.SetFocus;
end;

function TForm_Cadastro_Produtos.retornabusca:String;
begin
  result := '''%'+edtMask.Text+'%''';
end;

procedure TForm_Cadastro_Produtos.rgOptionGridClick(Sender: TObject);
begin
  inherited;
  MostraProdutos;
end;

function TForm_Cadastro_Produtos.PreencheSQLSring(lSQL: String):String;
begin
   result := ''''+lSQL+'''';
end;


procedure TForm_Cadastro_Produtos.MostraProdutos;
var
  Liga, liga2: String;
  sql: String;
begin
  tbCadastro.TabVisible    := True;
  cxPageControl1.ActivePage := tbPesquisa;
  if rdg_tpo_pesquisa.ItemIndex = -1 then
    rdg_tpo_pesquisa.ItemIndex :=1;

  if ((rgOptionGrid.ItemIndex = 1) and (edtMask.Text = EmptyStr)) then
    if not  KDialog( 'Deseja Pesquisar somente produtos Ativos?', 'Atenção', tdtPergunta ) then
    begin
       dsPrincipal.DataSet.Close;
       exit;
    end;

  if ((rgOptionGrid.ItemIndex = 2) and (edtMask.Text = EmptyStr)) then
    if not  KDialog( 'Deseja Pesquisar somente produtos Inativos?', 'Atenção', tdtPergunta ) then
    begin
      dsPrincipal.DataSet.Close;
      exit;
    end;

  FdqProdutos.Close;
  DtmBcoErp.FDBcoERP.Commit;
  FdqProdutos.SQL.Clear;

  case  rdg_tpo_pesquisa.ItemIndex of
    0: Liga := 'PRO_ID';
    1: Liga := 'PRO_DESCRICAO_PDV';
    else
    begin
      AlertCard('Selecione o tipo da pesquisa!','Atenção!');
      edtMask.SetFocus;
      exit;
    end;
  end;

  case rgOptionGrid.ItemIndex of
    1: liga2 := 'and t.PRO_ATIVO LIKE ' + PreencheSQLSring('S');
    2: liga2 := 'and t.PRO_ATIVO LIKE ' + PreencheSQLSring('N');
    else
       liga2 := 'and (t.PRO_ATIVO =' + PreencheSQLSring('N')+' or t.PRO_ATIVO = '+ PreencheSQLSring('S')+')';
  end;


  sql :=
  ('select * from TB_PRODUTOS T                                                           '+
  'WHERE (                                                                                '+
  Liga  + ' LIKE' + retornabusca + ' OR t.PRO_DESCRICAO_PDV LIKE' + retornabusca + ')     '+
  liga2);

  FdqProdutos.SQL.Text := sql;
  FdqProdutos.Open;

   if  FdqProdutos.RecordCount = 0 then
  begin
    lblregistros.Visible := False;
    lblregistros.Caption :='';
    edtMask.Text := '';
    AlertCard('Nenhum Registro Encontrado conforme o Critério informado.','Atenção!');
    edtMask.SetFocus;
  end
  else
  begin
    lblregistros.Visible := true;
    lblregistros.Caption := IntToStr(FdqProdutos.RecordCount) + ' Registros Encontrados. '
  end;

end;

end.
