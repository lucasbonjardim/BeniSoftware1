unit Unit_Cadastro_de_Empresa;

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
  FireDAC.Comp.DataSet, FireDAC.Comp.Client, Vcl.DBCtrls, cxDBEdit, cxMaskEdit,
  cxSpinEdit, Vcl.Buttons, Soap.InvokeRegistry, Soap.Rio,
  Soap.SOAPHTTPClient, cxStyles, cxCustomData, cxFilter, cxData, cxDataStorage,
  cxNavigator, cxDBData, cxGridLevel, cxGridCustomView, cxGridCustomTableView,
  cxGridTableView, cxGridDBTableView, cxGrid;

type
  TForm_Cadastro_de_Empresa = class(TForm_Cadastro_Modelo)
    FDQ_Principal: TFDQuery;
    FDQ_PrincipalCOD_EMP: TIntegerField;
    FDQ_PrincipalRAZAO_EMP: TStringField;
    FDQ_PrincipalEND_EMP: TWideStringField;
    FDQ_PrincipalBAI_EMP: TWideStringField;
    FDQ_PrincipalCID_EMP: TWideStringField;
    FDQ_PrincipalCEP_EMP: TWideStringField;
    FDQ_PrincipalEST_EMP: TWideStringField;
    FDQ_PrincipalINSC_EMP: TWideStringField;
    FDQ_PrincipalTEL_EMP: TWideStringField;
    FDQ_PrincipalFAX_EMP: TWideStringField;
    FDQ_PrincipalNOME_EMP_ETIQUETA: TWideStringField;
    FDQ_PrincipalNUMERO_EMP: TWideStringField;
    FDQ_PrincipalRESP_EMP: TWideStringField;
    FDQ_PrincipalCAMINHO_FOTO_EMP: TWideStringField;
    FDQ_PrincipalFANTASIA_EMP: TWideStringField;
    FDQ_PrincipalMOSTRAR_SITCLI_PREVENDA: TWideStringField;
    FDQ_PrincipalCADASTRAR_CLIENTE_SEM_CPF: TWideStringField;
    FDQ_PrincipalTIPO_EMP: TIntegerField;
    FDQ_PrincipalTIPO_CARGA_BALANCA: TIntegerField;
    FDQ_PrincipalCNPJ_EMP: TWideStringField;
    FDQ_PrincipalCAMINHO_VALIDADOR_SINTEGRA: TWideStringField;
    FDQ_PrincipalINSCRICAO_MUNICIPAL: TWideStringField;
    FDQ_PrincipalPERFIL_EFD: TWideStringField;
    FDQ_PrincipalCODIGO_MUNICIPIO: TWideStringField;
    FDQ_PrincipalTIPO_ATIVIDADE_EFD: TIntegerField;
    FDQ_PrincipalNOME_CONTADOR: TWideStringField;
    FDQ_PrincipalCPF_CONTADOR: TWideStringField;
    FDQ_PrincipalCRC_CONTADOR: TWideStringField;
    FDQ_PrincipalCNPJ_CONTADOR: TWideStringField;
    FDQ_PrincipalCEP_CONTADOR: TWideStringField;
    FDQ_PrincipalEND_CONTADOR: TWideStringField;
    FDQ_PrincipalNUMERO_CONTADOR: TWideStringField;
    FDQ_PrincipalBAIRRO_CONTADOR: TWideStringField;
    FDQ_PrincipalTEL_CONTADOR: TWideStringField;
    FDQ_PrincipalFAX_CONTADOR: TWideStringField;
    FDQ_PrincipalCODIGO_MUNICIPIO_CONTADOR: TWideStringField;
    FDQ_PrincipalVERSAO_EFD: TIntegerField;
    FDQ_PrincipalEMAIL_CONTADOR: TWideStringField;
    PC: TPageControl;
    TabSheet1: TTabSheet;
    Label1: TLabel;
    Label2: TLabel;
    Label6: TLabel;
    Label7: TLabel;
    Label11: TLabel;
    Label12: TLabel;
    Label8: TLabel;
    Label9: TLabel;
    Label10: TLabel;
    Label13: TLabel;
    Label3: TLabel;
    Label5: TLabel;
    Label14: TLabel;
    Label17: TLabel;
    Label19: TLabel;
    TabSheet2: TTabSheet;
    Label4: TLabel;
    Label15: TLabel;
    Label16: TLabel;
    Label18: TLabel;
    BtnCaminhoValidador: TButton;
    GroupBox1: TGroupBox;
    Label21: TLabel;
    Label22: TLabel;
    Label23: TLabel;
    Label24: TLabel;
    Label25: TLabel;
    Label20: TLabel;
    BConfigEFD: TButton;
    Contador: TTabSheet;
    Label26: TLabel;
    Label27: TLabel;
    Label28: TLabel;
    Label29: TLabel;
    Label31: TLabel;
    Label32: TLabel;
    Label33: TLabel;
    Label34: TLabel;
    Label35: TLabel;
    Label30: TLabel;
    Label36: TLabel;
    Label37: TLabel;
    TabSheet3: TTabSheet;
    GroupBox6: TGroupBox;
    BtnLimpa: TBitBtn;
    Panel3: TPanel;
    BtnFoto: TBitBtn;
    cod_emp: TcxDBSpinEdit;
    cxDBTextEdit1: TcxDBTextEdit;
    cxDBTextEdit2: TcxDBTextEdit;
    cxDBTextEdit3: TcxDBTextEdit;
    cxDBTextEdit4: TcxDBTextEdit;
    cxDBTextEdit7: TcxDBTextEdit;
    cxDBTextEdit8: TcxDBTextEdit;
    cxDBTextEdit5: TcxDBTextEdit;
    cxDBTextEdit9: TcxDBTextEdit;
    cxDBTextEdit10: TcxDBTextEdit;
    cxDBTextEdit12: TcxDBTextEdit;
    cxDBTextEdit15: TcxDBTextEdit;
    cxDBTextEdit6: TcxDBTextEdit;
    DBComboBox2: TDBComboBox;
    DBComboBox1: TDBComboBox;
    cxDBMaskEdit1: TcxDBMaskEdit;
    DBImage1: TDBImage;
    DBImage2: TDBImage;
    DBCheckBox1: TDBCheckBox;
    DBCheckBox2: TDBCheckBox;
    DBComboBox3: TDBComboBox;
    dbedit_caminhosintegravalidador: TcxDBTextEdit;
    cxDBTextEdit14: TcxDBTextEdit;
    cxDBTextEdit16: TcxDBTextEdit;
    cxDBSpinEdit2: TcxDBSpinEdit;
    OpenDialog: TOpenDialog;
    cxDBTextEdit13: TcxDBTextEdit;
    cxDBTextEdit17: TcxDBTextEdit;
    cxDBTextEdit18: TcxDBTextEdit;
    cxDBTextEdit19: TcxDBTextEdit;
    cxDBTextEdit20: TcxDBTextEdit;
    cxDBTextEdit21: TcxDBTextEdit;
    cxDBTextEdit22: TcxDBTextEdit;
    cxDBTextEdit28: TcxDBTextEdit;
    cxDBTextEdit27: TcxDBTextEdit;
    cxDBTextEdit23: TcxDBTextEdit;
    cxDBTextEdit24: TcxDBTextEdit;
    cxDBTextEdit25: TcxDBTextEdit;
    cxDBTextEdit26: TcxDBTextEdit;
    DBComboBox4: TDBComboBox;
    Button1: TButton;
    Button2: TButton;
    HTTPRIO1: THTTPRIO;
    cxGrid1DBTableView1: TcxGridDBTableView;
    cxGrid1Level1: TcxGridLevel;
    cxGrid1: TcxGrid;
    cxGrid1DBTableView1COD_EMP: TcxGridDBColumn;
    cxGrid1DBTableView1RAZAO_EMP: TcxGridDBColumn;
    cxGrid1DBTableView1END_EMP: TcxGridDBColumn;
    cxGrid1DBTableView1BAI_EMP: TcxGridDBColumn;
    cxGrid1DBTableView1CID_EMP: TcxGridDBColumn;
    cxGrid1DBTableView1CEP_EMP: TcxGridDBColumn;
    cxGrid1DBTableView1EST_EMP: TcxGridDBColumn;
    cxGrid1DBTableView1INSC_EMP: TcxGridDBColumn;
    cxGrid1DBTableView1TEL_EMP: TcxGridDBColumn;
    cxGrid1DBTableView1FAX_EMP: TcxGridDBColumn;
    cxGrid1DBTableView1NUMERO_EMP: TcxGridDBColumn;
    cxGrid1DBTableView1CNPJ_EMP: TcxGridDBColumn;
    cxGrid1DBTableView1INSCRICAO_MUNICIPAL: TcxGridDBColumn;
    procedure BtnCaminhoValidadorClick(Sender: TObject);
    procedure BConfigEFDClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }

  end;

var
  Form_Cadastro_de_Empresa: TForm_Cadastro_de_Empresa;

implementation

{$R *.dfm}

uses ParamControleLicenca, ParamControleTerminalECF, ParamControleTerminalPDV,
  UdtmACBR, UdtmBcoErp, UdtmImagens, Unit_Acesso, Unit_Alerta,
  Unit_Baixa_Tabela_IBPT, Unit_Cadastro_ICMS, Unit_Cadastro_Produtos,
  Unit_Cadastro_Usuario, Unit_exibeefeitoespera, Unit_F_mensagem_Dialog,
  Unit_Principal, Unit_Relatorio_Produtos_Alterados, Unit_Relatorios,
  Unit_Rotinas, unit_utilfuncs, Unit_Variaveis_Globais,
  Unit_Configurar_Pis_Cofins;

procedure TForm_Cadastro_de_Empresa.BConfigEFDClick(Sender: TObject);
begin
  inherited;
  if cod_emp.Text = '' then
     Exit;
   Application.CreateForm( Tform_Configurar_Pis_Cofins, form_Configurar_Pis_Cofins);
   form_Configurar_Pis_Cofins.CODEMP := StrToInt( cod_emp.Text );
   form_Configurar_Pis_Cofins.ShowModal;

end;

procedure TForm_Cadastro_de_Empresa.BtnCaminhoValidadorClick(Sender: TObject);
begin
  inherited;
   if OpenDialog.Execute then
     begin
        dbedit_caminhosintegravalidador.Text:= OpenDialog.FileName;
     end;
end;

end.
