unit Unit_Cadastro_ICMS;

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
  dxSkinXmas2008Blue, dxSkinscxPCPainter, dxBarBuiltInMenu, cxStyles,
  cxCustomData, cxFilter, cxData, cxDataStorage, cxEdit, cxNavigator, Data.DB,
  cxDBData, cxContainer, Vcl.Menus, FireDAC.Stan.Intf, FireDAC.Stan.Option,
  FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf,
  FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt, FireDAC.Comp.Client,
  cxClasses, FireDAC.Comp.DataSet, Vcl.DBCtrls, System.ImageList, Vcl.ImgList,
  Vcl.StdCtrls, Vcl.ExtCtrls, cxButtons, Vcl.Mask, Vcl.ComCtrls, cxTextEdit,
  cxCurrencyEdit, cxLabel, cxGridLevel, cxGridCustomView, cxGridCustomTableView,
  cxGridTableView, cxGridDBTableView, cxGrid, cxPC, Vcl.ToolWin;

type
  TForm_Cadastro_ICMS = class(TForm_Cadastro_Modelo)
    Panel3: TPanel;
    cxLabel1: TcxLabel;
    dbedtCOD_ICMS: TDBEdit;
    Panel6: TPanel;
    pnlIcms: TPanel;
    cxLabel3: TcxLabel;
    dbedtICMS: TDBEdit;
    pnlReducao: TPanel;
    cxLabel4: TcxLabel;
    dbedtREDUCAO: TDBEdit;
    pnlDiferido: TPanel;
    cxLabel5: TcxLabel;
    dbedtDIF: TDBEdit;
    pnlMva: TPanel;
    cxLabel6: TcxLabel;
    dbedtMVA: TDBEdit;
    Panel5: TPanel;
    dbrgrpCST: TDBRadioGroup;
    Panel4: TPanel;
    cxLabel2: TcxLabel;
    dbedtDESCRICAO: TDBEdit;
    QPrincipal: TFDQuery;
    QPrincipalCOD_ICMS: TIntegerField;
    QPrincipalCOD_EMP: TIntegerField;
    QPrincipalDESCRICAO: TStringField;
    QPrincipalCST: TStringField;
    QPrincipalICMS: TBCDField;
    QPrincipalREDUCAO: TBCDField;
    QPrincipalDIF: TBCDField;
    QPrincipalMVA: TBCDField;
    cxStyleRepository1: TcxStyleRepository;
    cxstylPadrao: TcxStyle;
    cxstylOdd: TcxStyle;
    cxstylHeader: TcxStyle;
    cxstylHeaderBold: TcxStyle;
    cxstylInactive: TcxStyle;
    cxstylVermelho: TcxStyle;
    cxstylGrupos: TcxStyle;
    cxImgsGrid: TcxImageList;
    cxGrid1: TcxGrid;
    cxGridDBTableView1: TcxGridDBTableView;
    cxVisualizaDBTableView1COD_ICMS: TcxGridDBColumn;
    cxVisualizaDBTableView1DESCRICAO: TcxGridDBColumn;
    cxVisualizaDBTableView1CST: TcxGridDBColumn;
    cxVisualizaDBTableView1ICMS: TcxGridDBColumn;
    cxVisualizaDBTableView1REDUCAO: TcxGridDBColumn;
    cxVisualizaDBTableView1DIF: TcxGridDBColumn;
    cxVisualizaDBTableView1MVA: TcxGridDBColumn;
    cxGridLevel1: TcxGridLevel;
    procedure cxGridDBTableView1DblClick(Sender: TObject);
    procedure QPrincipalAfterInsert(DataSet: TDataSet);
    procedure QPrincipalAfterScroll(DataSet: TDataSet);
  private
    procedure MostraCampos;
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form_Cadastro_ICMS: TForm_Cadastro_ICMS;

implementation

{$R *.dfm}

uses UdtmBcoErp, Unit_Variaveis_Globais;

procedure TForm_Cadastro_ICMS.cxGridDBTableView1DblClick(Sender: TObject);
begin
  cxPageControl1.ActivePage := tbCadastro;

end;

procedure TForm_Cadastro_ICMS.QPrincipalAfterInsert(DataSet: TDataSet);
begin
  inherited;
   if dsPrincipal.State = dsInsert then
     QPrincipalCOD_EMP.AsInteger := COD_EMP;
 //  MostraCampos;
end;

procedure TForm_Cadastro_ICMS.QPrincipalAfterScroll(DataSet: TDataSet);
begin
  inherited;
 //  MostraCampos;
end;
procedure TForm_Cadastro_ICMS.MostraCampos;
begin
   pnlIcms.Visible := dbrgrpCST.ItemIndex in [ 0, 1, 2, 6, 7, 8, 9, 10 ];
   pnlReducao.Visible := dbrgrpCST.ItemIndex in [ 2, 9, 10 ];
   pnlDiferido.Visible := dbrgrpCST.ItemIndex in [ 7, 10 ];
   pnlMva.Visible := dbrgrpCST.ItemIndex in [ 1, 3, 8, 9, 10 ];

end;

end.
