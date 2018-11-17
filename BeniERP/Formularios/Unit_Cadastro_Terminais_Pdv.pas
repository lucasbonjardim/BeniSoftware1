unit Unit_Cadastro_Terminais_Pdv;

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
  Vcl.Menus, dxScreenTip, dxCustomHint, cxHint, ACBrBase, ACBrEnterTab,
  System.ImageList, Vcl.ImgList, cxClasses, Data.DB, Vcl.StdCtrls, Vcl.ExtCtrls,
  cxButtons, Vcl.Mask, Vcl.ComCtrls, cxTextEdit, cxCurrencyEdit, cxLabel, cxPC,
  Vcl.ToolWin, FireDAC.Stan.Intf, FireDAC.Stan.Option, FireDAC.Stan.Param,
  FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf, FireDAC.DApt.Intf,
  FireDAC.Stan.Async, FireDAC.DApt, FireDAC.Comp.DataSet, FireDAC.Comp.Client,
  cxStyles, cxCustomData, cxFilter, cxData, cxDataStorage, cxNavigator,
  cxDBData, cxDBEdit, cxMaskEdit, cxSpinEdit, cxGridCustomTableView,
  cxGridTableView, cxGridDBTableView, cxGridLevel, cxGridCustomView, cxGrid,
  Vcl.DBCtrls;

type
  TForm_Cadastro_Terminais_PDV = class(TForm_Cadastro_Modelo)
    FDQ_Principal: TFDQuery;
    cxGrid1DBTableView1: TcxGridDBTableView;
    cxGrid1Level1: TcxGridLevel;
    cxGrid1: TcxGrid;
    cxGrid1DBTableView1TER_ID: TcxGridDBColumn;
    cxGrid1DBTableView1TER_TIPO_PDV: TcxGridDBColumn;
    cxGrid1DBTableView1TER_DT_ULT_ATUALIZACAO: TcxGridDBColumn;
    cxGrid1DBTableView1TER_HR_ULT_ATUALIZACAO: TcxGridDBColumn;
    GroupBox1: TGroupBox;
    DBCheckBox1: TDBCheckBox;
    DBCheckBox2: TDBCheckBox;
    DBCheckBox3: TDBCheckBox;
    DBCheckBox4: TDBCheckBox;
    DBCheckBox5: TDBCheckBox;
    DBCheckBox6: TDBCheckBox;
    DBCheckBox7: TDBCheckBox;
    DBCheckBox8: TDBCheckBox;
    DBCheckBox9: TDBCheckBox;
    DBCheckBox10: TDBCheckBox;
    DBCheckBox11: TDBCheckBox;
    DBCheckBox12: TDBCheckBox;
    Label11: TLabel;
    cxDBSpinEdit10: TcxDBSpinEdit;
    cxDBSpinEdit9: TcxDBSpinEdit;
    Label10: TLabel;
    Label9: TLabel;
    cxDBSpinEdit8: TcxDBSpinEdit;
    Label5: TLabel;
    cxDBSpinEdit4: TcxDBSpinEdit;
    Label4: TLabel;
    cxDBSpinEdit3: TcxDBSpinEdit;
    Label3: TLabel;
    cxDBSpinEdit2: TcxDBSpinEdit;
    db_combo_tpo_pdv: TDBComboBox;
    Label2: TLabel;
    Label1: TLabel;
    cxDBSpinEdit1: TcxDBSpinEdit;
    BConfigEFD: TButton;
    FDQ_PrincipalTER_ID: TIntegerField;
    FDQ_PrincipalTER_TIPO_PDV: TStringField;
    FDQ_PrincipalTER_COM_LEITOR: TIntegerField;
    FDQ_PrincipalTER_TPO_TECLADO: TIntegerField;
    FDQ_PrincipalTER_COM_TECLADO: TIntegerField;
    FDQ_PrincipalTER_HAB_DISP_TEC: TIntegerField;
    FDQ_PrincipalTER_HAB_MSG_TEC: TIntegerField;
    FDQ_PrincipalTER_HABILITA_PINPAD: TIntegerField;
    FDQ_PrincipalTER_COM_PINPAD: TIntegerField;
    FDQ_PrincipalTER_TPO_BALANCA: TIntegerField;
    FDQ_PrincipalTER_COM_BALANCA: TIntegerField;
    FDQ_PrincipalTER_HAB_VENDEDOR: TIntegerField;
    FDQ_PrincipalTER_HAB_TEF: TIntegerField;
    FDQ_PrincipalTER_CHK_PROD_BAL: TIntegerField;
    FDQ_PrincipalTER_CHK_GAV_ABERTA: TIntegerField;
    FDQ_PrincipalTER_FLAG_GAV_FECHADA: TIntegerField;
    FDQ_PrincipalTER_HAB_IMG_TELA: TIntegerField;
    FDQ_PrincipalTER_HAB_TELA_TROCO: TIntegerField;
    FDQ_PrincipalTER_TROCO_COMP_DETALHADO: TStringField;
    FDQ_PrincipalTER_HAB_CMC7: TIntegerField;
    FDQ_PrincipalTER_CARGA_PRO_GERAL: TIntegerField;
    FDQ_PrincipalTER_HAB_ROT_DESC_PDV: TIntegerField;
    FDQ_PrincipalTER_DH_ULT_CAR_PRODUTO: TSQLTimeStampField;
    FDQ_PrincipalTER_CARGA_CLI_GERAL: TIntegerField;
    FDQ_PrincipalTER_DH_ULT_CAR_CLIENTE: TSQLTimeStampField;
    FDQ_PrincipalTER_CARGA_CONFIGURACAO: TIntegerField;
    FDQ_PrincipalTER_DT_ULT_ATUALIZACAO: TDateField;
    FDQ_PrincipalTER_HR_ULT_ATUALIZACAO: TTimeField;
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form_Cadastro_Terminais_PDV: TForm_Cadastro_Terminais_PDV;

implementation

{$R *.dfm}

uses UdtmBcoErp, Unit_Alerta, Unit_F_mensagem_Dialog,
  Unit_Principal, Unit_Rotinas, unit_utilfuncs;

procedure TForm_Cadastro_Terminais_PDV.FormCreate(Sender: TObject);
begin
  inherited;
  FDQ_Principal.Active := False;
end;

end.
