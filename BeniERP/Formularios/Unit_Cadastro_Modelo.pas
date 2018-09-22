unit Unit_Cadastro_Modelo;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Data.DB, Vcl.Grids, Vcl.DBGrids,
  Vcl.ComCtrls, Vcl.ExtCtrls, Vcl.StdCtrls, Vcl.Imaging.pngimage,
  System.ImageList, Vcl.ImgList, cxGraphics, cxControls, cxLookAndFeels,
  cxLookAndFeelPainters, dxSkinsCore, dxSkinBlack, dxSkinBlue, dxSkinBlueprint,
  dxSkinCaramel, dxSkinCoffee, dxSkinDarkRoom, dxSkinDarkSide,
  dxSkinDevExpressDarkStyle, dxSkinDevExpressStyle, dxSkinFoggy,
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
  cxCustomData, cxFilter, cxData, cxDataStorage, cxEdit, cxNavigator, cxDBData,
  Vcl.Menus, System.Actions, Vcl.ActnList, cxButtons, cxGridLevel, cxClasses,
  cxGridCustomView, cxGridCustomTableView, cxGridTableView, cxGridDBTableView,
  cxGrid,FireDAC.Comp.Client, cxPC;

type
  TForm_Cadastro_Modelo = class(TForm)
    cxPageControl1: TcxPageControl;
    tbCadastro: TcxTabSheet;
    tbPesquisa: TcxTabSheet;
    cxGrid1: TcxGrid;
    cxGrid1DBTableView1: TcxGridDBTableView;
    cxGrid1Level1: TcxGridLevel;
    Panel1: TPanel;
    BtnNovo: TcxButton;
    BtnExcluir: TcxButton;
    BtnAlterar: TcxButton;
    BtnPesquisar: TcxButton;
    BtnSalvar: TcxButton;
    BtnCancelar: TcxButton;
    BtnPrimeiroRegistro: TcxButton;
    BtnRegistroAnterior: TcxButton;
    BtnLimparPesquisa: TcxButton;
    BtnImprimir: TcxButton;
    BtnRegistroPosterior: TcxButton;
    BtnUltimoRegistro: TcxButton;
    dsPrincipal: TDataSource;
    cxLookAndFeelController1: TcxLookAndFeelController;
    btnFechar: TcxButton;
    procedure btn_sairClick(Sender: TObject);
    procedure BtnPrimeiroRegistroClick(Sender: TObject);
    procedure BtnRegistroAnteriorClick(Sender: TObject);
    procedure BtnRegistroPosteriorClick(Sender: TObject);
    procedure BtnUltimoRegistroClick(Sender: TObject);
    procedure BtnPesquisarClick(Sender: TObject);
    procedure BtnLimparPesquisaClick(Sender: TObject);
    procedure BtnNovoClick(Sender: TObject);
    procedure BtnAlterarClick(Sender: TObject);
    procedure BtnCancelarClick(Sender: TObject);
    procedure BtnSalvarClick(Sender: TObject);
    procedure BtnExcluirClick(Sender: TObject);
    procedure BtnFecharClick(Sender: TObject);
    procedure dsPrincipalStateChange(Sender: TObject);
    procedure AC_FecharExecute(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form_Cadastro_Modelo: TForm_Cadastro_Modelo;

implementation

{$R *.dfm}

uses UdtmImagens;

procedure TForm_Cadastro_Modelo.AC_FecharExecute(Sender: TObject);
begin
  close;
end;

procedure TForm_Cadastro_Modelo.BtnAlterarClick(Sender: TObject);
begin
   try
    cxPageControl1.ActivePage := tbCadastro;
    dsPrincipal.DataSet.Edit;
  except on e:Exception do
    begin
      ShowMessage('Erro em alterar Registro: '+e.Message);
    end;
  end;
end;

procedure TForm_Cadastro_Modelo.BtnCancelarClick(Sender: TObject);
begin
   try
    if TFDQuery(dsPrincipal.DataSet).State in [dsInsert] then
    begin
      TFDQuery(dsPrincipal.DataSet).Cancel;
      TFDQuery(dsPrincipal.DataSet).Close;
    end
    else
      TFDQuery(dsPrincipal.DataSet).Cancel;
  except on e:Exception do
    begin
      ShowMessage('Erro ao cancelar opera��o: '+e.Message);
    end;
  end;
end;

procedure TForm_Cadastro_Modelo.BtnExcluirClick(Sender: TObject);
begin
  try
    If Application.MessageBox('Confirma Exclus�o ?','Aten��o!!!',MB_YESNO +
    MB_ICONQUESTION + MB_DEFBUTTON2) = IDYES Then
     begin
       dsPrincipal.DataSet.Delete;
       cxPageControl1.ActivePage := tbPesquisa;
     end;

  except on e:exception do
    begin
      ShowMessage('Erro ao Excluir Registro: '+e.Message);
    end;

  end;
end;

procedure TForm_Cadastro_Modelo.BtnFecharClick(Sender: TObject);
begin
  close;
end;

procedure TForm_Cadastro_Modelo.BtnLimparPesquisaClick(Sender: TObject);
begin
  try
    dsPrincipal.DataSet.Close;
  except on e:Exception do
    begin
      ShowMessage('Erro ao cancelar pesquisa: '+e.Message);
    end;
  end;
end;

procedure TForm_Cadastro_Modelo.BtnNovoClick(Sender: TObject);
begin
  try
    cxPageControl1.ActivePage := tbCadastro;

    if not dsPrincipal.DataSet.Active then
    begin
      dsPrincipal.DataSet.Open;
    end
    else
      dsPrincipal.Dataset.Filtered := False;

    dsPrincipal.DataSet.Insert;

  except on e:Exception do
    begin
      ShowMessage('Erro ao Incluir Registro: '+e.Message);
    end;
  end;
end;

procedure TForm_Cadastro_Modelo.BtnPesquisarClick(Sender: TObject);
begin
  try
    cxPageControl1.ActivePage := tbPesquisa;
    dsPrincipal.DataSet.open;

  except on e:Exception do
    begin
      ShowMessage('Erro ao pesquisar Registro: '+e.Message);
    end;
  end;
end;

procedure TForm_Cadastro_Modelo.BtnPrimeiroRegistroClick(Sender: TObject);
begin
  try
    dsPrincipal.DataSet.First;

  except on e:Exception do
    begin
      ShowMessage('Erro para ir no primeiro Registro: '+e.Message);
    end;
  end;
end;

procedure TForm_Cadastro_Modelo.BtnRegistroAnteriorClick(Sender: TObject);
begin
  try
    dsPrincipal.DataSet.Prior;
  except on e:Exception do
    begin
      ShowMessage('Erro para ir no registro anterior: '+e.Message);
    end;
  end;
end;

procedure TForm_Cadastro_Modelo.BtnRegistroPosteriorClick(Sender: TObject);
begin
  try
    dsPrincipal.DataSet.Next;

  except on e:Exception do
    begin
      ShowMessage('Erro para ir ao proximo Registro: '+e.Message);
    end;
  end;
end;

procedure TForm_Cadastro_Modelo.BtnSalvarClick(Sender: TObject);
begin
  try
    TFDQuery(dsPrincipal.DataSet).Post;

  except on e:Exception do
    begin
     ShowMessage('Erro ao Salvar Registro: '+e.Message);
    end;

  end;
end;

procedure TForm_Cadastro_Modelo.BtnUltimoRegistroClick(Sender: TObject);
begin
   try
    dsPrincipal.DataSet.Last;
  except on e:Exception do
    begin
      ShowMessage('Erro para ir ao ultimo Registro: '+e.Message);
    end;
  end;
end;

procedure TForm_Cadastro_Modelo.btn_sairClick(Sender: TObject);
begin
  Close;
end;

procedure TForm_Cadastro_Modelo.dsPrincipalStateChange(Sender: TObject);
begin
  BtnPesquisar.Enabled         := (Sender as TDataSource).State in [dsInactive];
  BtnLimparPesquisa.Enabled    := (Sender as TDataSource).State in [Dsbrowse];
  BtnRegistroAnterior.Enabled  := (Sender as TDataSource).State in [Dsbrowse];
  BtnRegistroPosterior.Enabled := (Sender as TDataSource).State in [Dsbrowse];
  BtnPrimeiroRegistro.Enabled  := (Sender as TDataSource).State in [Dsbrowse];
  BtnUltimoRegistro.Enabled    := (Sender as TDataSource).State in [Dsbrowse];
  btnNovo.Enabled              := (Sender as TDataSource).State in [Dsbrowse, dsInactive];
  btnSalvar.Enabled            := (Sender as TDataSource).State in [dsEdit, dsInsert];
  btnCancelar.Enabled          := btnSalvar.Enabled;
  btnAlterar.Enabled           := (Sender as TDataSource).State in [Dsbrowse];
  btnExcluir.Enabled           := btnAlterar.Enabled;
  btnFechar.Enabled            := btnNovo.Enabled;

   if (Sender as TDataSource).State in [dsInactive] then
     cxPageControl1.ActivePage := tbPesquisa;
end;

procedure TForm_Cadastro_Modelo.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  Action :=caFree;
end;

end.
