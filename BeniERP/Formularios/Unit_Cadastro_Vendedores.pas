unit Unit_Cadastro_Vendedores;

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
  Vcl.Menus, dxScreenTip, cxStyles, cxCustomData, cxFilter, cxData,
  cxDataStorage, cxNavigator, Data.DB, cxDBData, cxGridLevel, cxClasses,
  cxGridCustomView, cxGridCustomTableView, cxGridTableView, cxGridDBTableView,
  cxGrid, dxCustomHint, cxHint, ACBrBase, ACBrEnterTab, System.ImageList,
  Vcl.ImgList, Vcl.ComCtrls, Vcl.ToolWin, Vcl.StdCtrls, Vcl.ExtCtrls, cxButtons,
  Vcl.Mask, cxTextEdit, cxCurrencyEdit, cxLabel, cxPC, FireDAC.Stan.Intf,
  FireDAC.Stan.Option, FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS,
  FireDAC.Phys.Intf, FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt,
  cxCheckBox, cxDBEdit, cxMaskEdit, cxSpinEdit, FireDAC.Comp.DataSet,
  FireDAC.Comp.Client;

type
  TForm_Cadastro_Vendedores = class(TForm_Cadastro_Modelo)
    cxGrid1DBTableView1: TcxGridDBTableView;
    cxGrid1Level1: TcxGridLevel;
    cxGrid1: TcxGrid;
    fdqVendedores: TFDQuery;
    GroupBox1: TGroupBox;
    fdqVendedoresCOD_VEND: TIntegerField;
    fdqVendedoresNOME_VEND: TStringField;
    fdqVendedoresATIVO_VEND: TStringField;
    fdqVendedoresCOMISSAO_VEND: TBCDField;
    fdqVendedoresCOD_REGIAO: TIntegerField;
    fdqVendedoresSENHA_VEND: TStringField;
    cxGrid1DBTableView1COD_VEND: TcxGridDBColumn;
    cxGrid1DBTableView1NOME_VEND: TcxGridDBColumn;
    cxGrid1DBTableView1ATIVO_VEND: TcxGridDBColumn;
    cxGrid1DBTableView1COMISSAO_VEND: TcxGridDBColumn;
    cxGrid1DBTableView1COD_REGIAO: TcxGridDBColumn;
    cxGrid1DBTableView1SENHA_VEND: TcxGridDBColumn;
    Label1: TLabel;
    cxDBSpinEdit1: TcxDBSpinEdit;
    Label2: TLabel;
    cxDBTextEdit1: TcxDBTextEdit;
    Label3: TLabel;
    cxDBTextEdit2: TcxDBTextEdit;
    Label4: TLabel;
    cxDBCurrencyEdit1: TcxDBCurrencyEdit;
    Label5: TLabel;
    cxDBSpinEdit2: TcxDBSpinEdit;
    Label6: TLabel;
    cxDBTextEdit3: TcxDBTextEdit;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form_Cadastro_Vendedores: TForm_Cadastro_Vendedores;

implementation

{$R *.dfm}

uses UdtmBcoErp;

end.
