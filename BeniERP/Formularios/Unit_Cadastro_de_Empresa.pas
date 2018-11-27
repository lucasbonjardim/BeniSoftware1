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
  cxGridTableView, cxGridDBTableView, cxGrid, Vcl.Grids, Vcl.DBGrids;

type
  TForm_Cadastro_de_Empresa = class(TForm_Cadastro_Modelo)
    FDQ_Principal: TFDQuery;
    OpenDialog: TOpenDialog;
    FDQ_PrincipalCOD_EMP: TIntegerField;
    FDQ_PrincipalRAZAO_EMP: TStringField;
    FDQ_PrincipalEND_EMP: TStringField;
    FDQ_PrincipalBAI_EMP: TStringField;
    FDQ_PrincipalCID_EMP: TStringField;
    FDQ_PrincipalCEP_EMP: TStringField;
    FDQ_PrincipalEST_EMP: TStringField;
    FDQ_PrincipalINSC_EMP: TStringField;
    FDQ_PrincipalTEL_EMP: TStringField;
    FDQ_PrincipalFAX_EMP: TStringField;
    FDQ_PrincipalNOME_EMP_ETIQUETA: TStringField;
    FDQ_PrincipalNUMERO_EMP: TStringField;
    FDQ_PrincipalRESP_EMP: TStringField;
    FDQ_PrincipalCAMINHO_FOTO_EMP: TStringField;
    FDQ_PrincipalFANTASIA_EMP: TStringField;
    FDQ_PrincipalMOSTRAR_SITCLI_PREVENDA: TStringField;
    FDQ_PrincipalCADASTRAR_CLIENTE_SEM_CPF: TStringField;
    FDQ_PrincipalCNPJ_EMP: TStringField;
    FDQ_PrincipalCAMINHO_VALIDADOR_SINTEGRA: TStringField;
    FDQ_PrincipalINSCRICAO_MUNICIPAL: TStringField;
    FDQ_PrincipalPERFIL_EFD: TStringField;
    FDQ_PrincipalCODIGO_MUNICIPIO: TStringField;
    FDQ_PrincipalTIPO_ATIVIDADE_EFD: TIntegerField;
    FDQ_PrincipalNOME_CONTADOR: TStringField;
    FDQ_PrincipalCPF_CONTADOR: TStringField;
    FDQ_PrincipalCRC_CONTADOR: TStringField;
    FDQ_PrincipalCNPJ_CONTADOR: TStringField;
    FDQ_PrincipalCEP_CONTADOR: TStringField;
    FDQ_PrincipalEND_CONTADOR: TStringField;
    FDQ_PrincipalNUMERO_CONTADOR: TStringField;
    FDQ_PrincipalBAIRRO_CONTADOR: TStringField;
    FDQ_PrincipalTEL_CONTADOR: TStringField;
    FDQ_PrincipalFAX_CONTADOR: TStringField;
    FDQ_PrincipalCODIGO_MUNICIPIO_CONTADOR: TStringField;
    FDQ_PrincipalEMAIL_CONTADOR: TStringField;
    FDQ_PrincipalPERMITE_FECHA_ERP_JANELA_ABERTA: TStringField;
    FDQ_PrincipalTIPO_EMP: TStringField;
    FDQ_PrincipalVERSAO_EFD: TStringField;
    FDQ_PrincipalTIPO_CARGA_BALANCA: TStringField;
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
    cxGrid1DBTableView1NOME_EMP_ETIQUETA: TcxGridDBColumn;
    cxGrid1DBTableView1NUMERO_EMP: TcxGridDBColumn;
    cxGrid1DBTableView1RESP_EMP: TcxGridDBColumn;
    cxPageControl2: TcxPageControl;
    cxTabSheet1: TcxTabSheet;
    cxTabSheet2: TcxTabSheet;
    cxTabSheet3: TcxTabSheet;
    cxTabSheet4: TcxTabSheet;
    GroupBox1: TGroupBox;
    Label21: TLabel;
    Label22: TLabel;
    Label23: TLabel;
    Label24: TLabel;
    Label25: TLabel;
    Label20: TLabel;
    BConfigEFD: TButton;
    cxDBTextEdit14: TcxDBTextEdit;
    cxDBTextEdit16: TcxDBTextEdit;
    Button1: TButton;
    DBComboBox4: TDBComboBox;
    cxDBSpinEdit2: TcxDBSpinEdit;
    db_combo_tipo_empresa: TDBComboBox;
    Label15: TLabel;
    Label18: TLabel;
    cxDBTextEdit6: TcxDBTextEdit;
    Label4: TLabel;
    db_carga_balanca_tipo: TDBComboBox;
    Label16: TLabel;
    db_chk_cli_sem_cpf: TDBCheckBox;
    db_chk_cli_prevenda: TDBCheckBox;
    db_chk_fecherpJaberta: TDBCheckBox;
    DBCheckBox1: TDBCheckBox;
    dbedit_caminhosintegravalidador: TcxDBTextEdit;
    Button3: TButton;
    GroupBox2: TGroupBox;
    Label26: TLabel;
    cxDBTextEdit17: TcxDBTextEdit;
    Label27: TLabel;
    cxDBTextEdit22: TcxDBTextEdit;
    Label32: TLabel;
    cxDBTextEdit23: TcxDBTextEdit;
    Label28: TLabel;
    cxDBTextEdit24: TcxDBTextEdit;
    Label29: TLabel;
    cxDBTextEdit27: TcxDBTextEdit;
    Label31: TLabel;
    cxDBTextEdit21: TcxDBTextEdit;
    Label36: TLabel;
    cxDBTextEdit20: TcxDBTextEdit;
    cxDBTextEdit18: TcxDBTextEdit;
    Label33: TLabel;
    Label30: TLabel;
    cxDBTextEdit19: TcxDBTextEdit;
    cxDBTextEdit25: TcxDBTextEdit;
    Label34: TLabel;
    Label35: TLabel;
    cxDBTextEdit26: TcxDBTextEdit;
    Label37: TLabel;
    cxDBTextEdit28: TcxDBTextEdit;
    GroupBox6: TGroupBox;
    BtnLimpa: TBitBtn;
    Panel3: TPanel;
    DBImage2: TDBImage;
    BtnFoto: TBitBtn;
    GroupBox3: TGroupBox;
    cod_emp: TcxDBSpinEdit;
    Label1: TLabel;
    Label2: TLabel;
    db_razao: TcxDBTextEdit;
    Label17: TLabel;
    cxDBTextEdit12: TcxDBTextEdit;
    cxDBTextEdit2: TcxDBTextEdit;
    Label6: TLabel;
    cxDBTextEdit3: TcxDBTextEdit;
    cxDBTextEdit4: TcxDBTextEdit;
    Label7: TLabel;
    Label8: TLabel;
    Label11: TLabel;
    cxDBTextEdit15: TcxDBTextEdit;
    Label12: TLabel;
    cxDBTextEdit7: TcxDBTextEdit;
    cxDBTextEdit13: TcxDBTextEdit;
    Label19: TLabel;
    Label5: TLabel;
    cxDBTextEdit10: TcxDBTextEdit;
    Label14: TLabel;
    cxDBTextEdit9: TcxDBTextEdit;
    Label9: TLabel;
    DBComboBox1: TDBComboBox;
    cxDBTextEdit8: TcxDBTextEdit;
    Label13: TLabel;
    Label10: TLabel;
    cxDBMaskEdit1: TcxDBMaskEdit;
    cxDBTextEdit5: TcxDBTextEdit;
    Label3: TLabel;
    procedure BConfigEFDClick(Sender: TObject);
    procedure DBGrid1DblClick(Sender: TObject);
    procedure DBGrid1KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure BtnGravarClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure Button3Click(Sender: TObject);
  private
    function F_Dados_ok: Boolean;
    { Private declarations }
  public
    { Public declarations }

  end;

var
  Form_Cadastro_de_Empresa: TForm_Cadastro_de_Empresa;

implementation

{$R *.dfm}

uses ParamControleLicenca,
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

procedure TForm_Cadastro_de_Empresa.BtnGravarClick(Sender: TObject);
begin
  if f_dados_ok then
    inherited;

end;

procedure TForm_Cadastro_de_Empresa.Button3Click(Sender: TObject);
begin
  inherited;
  if OpenDialog.Execute then
  begin
    dbedit_caminhosintegravalidador.Text:= OpenDialog.FileName;
  end;
end;

procedure TForm_Cadastro_de_Empresa.FormCreate(Sender: TObject);
begin
  inherited;
  FDQ_Principal.Active := False;
end;

function TForm_Cadastro_de_Empresa.F_Dados_ok:Boolean;
begin
  Result :=False;
  if Length(Trim(cod_emp.Text))<=0 then
  begin
    Result := false;
    AlertCard('Código Loja pode estar vazio!','Atenção');
    Abort;
  end;

  if Length(Trim(db_razao.Text))<=0 then
  begin
    Result := false;
    AlertCard('Insira a Razão Social da Empresa!','Atenção');
    Abort;
  end;

  if ( not db_chk_cli_prevenda.Checked) then
  begin
    db_chk_cli_prevenda.Checked := False;
  end;

  if ( not db_chk_cli_sem_cpf.Checked) then
  begin
    db_chk_cli_prevenda.Checked := False;
  end;

  if db_combo_tipo_empresa.ItemIndex < 0  then
  begin
    Result := false;
    AlertCard('Selecione o tipo de Empresa!','Atenção');
    Abort;
  end;


   if db_carga_balanca_tipo.ItemIndex < 0  then
  begin
    Result := false;
    AlertCard('Selecione o tipo de Carga Balança!','Atenção');
    Abort;
  end;


   Result :=True;
end;

procedure TForm_Cadastro_de_Empresa.DBGrid1DblClick(Sender: TObject);
begin
  inherited;
   cxPageControl1.ActivePage := tbCadastro;
end;

procedure TForm_Cadastro_de_Empresa.DBGrid1KeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
  inherited;
   if key = 13 then
    cxPageControl1.ActivePage := tbCadastro;
end;

end.
