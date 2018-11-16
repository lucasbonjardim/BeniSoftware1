unit Unit_Cadastro_Aliquota_pdv;

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
  Vcl.Menus, dxSkinsdxNavBarPainter, dxSkinsdxNavBarAccordionViewPainter,
  dxScreenTip, dxCustomHint, cxHint, ACBrBase, ACBrEnterTab, System.ImageList,
  Vcl.ImgList, Data.DB, dxNavBarCollns, cxClasses, dxNavBarBase, dxNavBar,
  Vcl.StdCtrls, Vcl.ExtCtrls, cxButtons, Vcl.Mask, Vcl.ComCtrls, cxTextEdit,
  cxCurrencyEdit, cxLabel, cxPC, Vcl.ToolWin, FireDAC.Stan.Intf,
  FireDAC.Stan.Option, FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS,
  FireDAC.Phys.Intf, FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt,
  FireDAC.Comp.DataSet, FireDAC.Comp.Client, cxStyles, cxCustomData, cxFilter,
  cxData, cxDataStorage, cxNavigator, cxDBData, cxGridCustomTableView,
  cxGridTableView, cxGridDBTableView, cxGridLevel, cxGridCustomView, cxGrid,
  cxMaskEdit, cxDropDownEdit, cxCalc, cxDBEdit;

type
  TForm_Cadastro_Aliquota_pdv = class(TForm_Cadastro_Modelo)
    FDQ_Principal: TFDQuery;
    GroupBox1: TGroupBox;
    cxGrid1DBTableView1: TcxGridDBTableView;
    cxGrid1Level1: TcxGridLevel;
    cxGrid1: TcxGrid;
    FDQ_PrincipalALIQUOTA_ESTADO: TStringField;
    FDQ_PrincipalALIQUOTA_INTERNA: TBCDField;
    FDQ_PrincipalALIQUOTA_EXTERNA: TBCDField;
    FDQ_PrincipalALIQUOTA_VALOR: TFloatField;
    FDQ_PrincipalALIQUOTA_USUARIO_ALTERACAO: TWideStringField;
    FDQ_PrincipalALIQUOTA_DT_ULT_ATUALIZACAO: TDateField;
    FDQ_PrincipalALIQUOTA_HR_ULT_ATUALIZACAO: TTimeField;
    cxGrid1DBTableView1ALIQUOTA_ESTADO: TcxGridDBColumn;
    cxGrid1DBTableView1ALIQUOTA_INTERNA: TcxGridDBColumn;
    cxGrid1DBTableView1ALIQUOTA_EXTERNA: TcxGridDBColumn;
    cxGrid1DBTableView1ALIQUOTA_VALOR: TcxGridDBColumn;
    cxGrid1DBTableView1ALIQUOTA_USUARIO_ALTERACAO: TcxGridDBColumn;
    cxGrid1DBTableView1ALIQUOTA_DT_ULT_ATUALIZACAO: TcxGridDBColumn;
    cxGrid1DBTableView1ALIQUOTA_HR_ULT_ATUALIZACAO: TcxGridDBColumn;
    GroupBox2: TGroupBox;
    Label1: TLabel;
    cxDBTextEdit1: TcxDBTextEdit;
    Label2: TLabel;
    cxDBCurrencyEdit1: TcxDBCurrencyEdit;
    Label3: TLabel;
    cxDBCurrencyEdit2: TcxDBCurrencyEdit;
    Label4: TLabel;
    cxDBCalcEdit1: TcxDBCalcEdit;
    procedure BtnConsultarClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form_Cadastro_Aliquota_pdv: TForm_Cadastro_Aliquota_pdv;

implementation

{$R *.dfm}

uses  ParamControleLicenca,
  UdtmBcoErp,
  Unit_Relatorios, Unit_Rotinas,
  unit_utilfuncs, Unit_Variaveis_Globais;

procedure TForm_Cadastro_Aliquota_pdv.BtnConsultarClick(Sender: TObject);
begin
  inherited;
  with FDQ_Principal, DtmBcoErp do
  begin
    SQL.Clear;
    SQL.Text := ' Select * from tb_aliquota_pdv  '+
    'where tb_aliquota_pdv.aliquota_estado = :Estado';
    ParamByName('Estado').AsString := Fdq_TB_EMPRESA.FieldByName('EST_EMP').AsString;
    Open;
  end;
end;

end.
