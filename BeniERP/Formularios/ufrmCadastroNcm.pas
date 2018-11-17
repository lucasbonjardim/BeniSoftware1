unit ufrmCadastroNcm;

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
  Vcl.Menus, dxScreenTip, FireDAC.Stan.Intf, FireDAC.Stan.Option,
  FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf,
  FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt, Data.DB,
  FireDAC.Comp.DataSet, FireDAC.Comp.Client, dxCustomHint, cxHint, ACBrBase,
  ACBrEnterTab, System.ImageList, Vcl.ImgList, cxClasses, Vcl.ComCtrls,
  Vcl.ToolWin, Vcl.StdCtrls, Vcl.ExtCtrls, cxButtons, Vcl.Mask, cxTextEdit,
  cxCurrencyEdit, cxLabel, cxPC, cxStyles, cxCustomData, cxFilter, cxData,
  cxDataStorage, cxNavigator, cxDBData, cxGridLevel, cxGridCustomView,
  cxGridCustomTableView, cxGridTableView, cxGridDBTableView, cxGrid,
  cxDropDownEdit, cxCalendar, cxDBEdit, cxMaskEdit, cxSpinEdit, cxDBLabel;

type
  Tfrm_cadastro_ncm = class(TForm_Cadastro_Modelo)
    fdq_principal: TFDQuery;
    cxGrid1DBTableView1: TcxGridDBTableView;
    cxGrid1Level1: TcxGridLevel;
    cxGrid1: TcxGrid;
    fdq_principalCOD_EMP: TIntegerField;
    fdq_principalNCM: TIntegerField;
    fdq_principalEX: TIntegerField;
    fdq_principalTIPO: TIntegerField;
    fdq_principalDESCRICAO: TStringField;
    fdq_principalALI_NACIONAL_FEDERAL: TBCDField;
    fdq_principalALI_IMPORTADO_FEDERAL: TBCDField;
    fdq_principalALI_ESTADUAL: TBCDField;
    fdq_principalALI_MUNICIPAL: TBCDField;
    fdq_principalVIGENCIA_DT_INI: TDateField;
    fdq_principalVIGENCIA_DT_FIM: TDateField;
    fdq_principalCHAVE: TStringField;
    fdq_principalVERSAO: TStringField;
    fdq_principalFONTE_DADOS: TStringField;
    GroupBox1: TGroupBox;
    cxDBSpinEdit1: TcxDBSpinEdit;
    Label1: TLabel;
    Label5: TLabel;
    cxDBTextEdit1: TcxDBTextEdit;
    cxGrid1DBTableView1COD_EMP: TcxGridDBColumn;
    cxGrid1DBTableView1NCM: TcxGridDBColumn;
    cxGrid1DBTableView1EX: TcxGridDBColumn;
    cxGrid1DBTableView1TIPO: TcxGridDBColumn;
    cxGrid1DBTableView1DESCRICAO: TcxGridDBColumn;
    cxGrid1DBTableView1ALI_NACIONAL_FEDERAL: TcxGridDBColumn;
    cxGrid1DBTableView1ALI_IMPORTADO_FEDERAL: TcxGridDBColumn;
    cxGrid1DBTableView1ALI_ESTADUAL: TcxGridDBColumn;
    cxGrid1DBTableView1ALI_MUNICIPAL: TcxGridDBColumn;
    cxGrid1DBTableView1VIGENCIA_DT_INI: TcxGridDBColumn;
    cxGrid1DBTableView1VIGENCIA_DT_FIM: TcxGridDBColumn;
    cxGrid1DBTableView1CHAVE: TcxGridDBColumn;
    cxGrid1DBTableView1VERSAO: TcxGridDBColumn;
    cxGrid1DBTableView1FONTE_DADOS: TcxGridDBColumn;
    cxDBSpinEdit2: TcxDBSpinEdit;
    Label2: TLabel;
    GroupBox2: TGroupBox;
    Label6: TLabel;
    Label9: TLabel;
    Label3: TLabel;
    Label8: TLabel;
    Label15: TLabel;
    Label7: TLabel;
    cxDBCurrencyEdit2: TcxDBCurrencyEdit;
    cxDBCurrencyEdit1: TcxDBCurrencyEdit;
    cxDBCurrencyEdit4: TcxDBCurrencyEdit;
    cxDBSpinEdit3: TcxDBSpinEdit;
    cxDBCurrencyEdit3: TcxDBCurrencyEdit;
    cxDBCurrencyEdit5: TcxDBCurrencyEdit;
    Label10: TLabel;
    cxDBDateEdit1: TcxDBDateEdit;
    Label11: TLabel;
    cxDBDateEdit2: TcxDBDateEdit;
    Label12: TLabel;
    cxDBTextEdit2: TcxDBTextEdit;
    cxDBSpinEdit4: TcxDBSpinEdit;
    Label4: TLabel;
    cxDBLabel2: TcxDBLabel;
    cxDBLabel1: TcxDBLabel;
    Label13: TLabel;
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frm_cadastro_ncm: Tfrm_cadastro_ncm;

implementation

{$R *.dfm}

uses UdtmBcoErp, Unit_Alerta;

procedure Tfrm_cadastro_ncm.FormCreate(Sender: TObject);
begin
  inherited;
  fdq_principal.Active :=False;
end;

end.
