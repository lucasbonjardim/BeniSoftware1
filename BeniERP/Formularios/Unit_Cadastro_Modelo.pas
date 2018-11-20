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
  cxGrid,FireDAC.Comp.Client, cxPC, Vcl.ToolWin, cxContainer, Vcl.Mask,
  cxTextEdit, cxCurrencyEdit, cxLabel, dxSkinsdxNavBarPainter,
  dxSkinsdxNavBarAccordionViewPainter, dxNavBar, ACBrBase, ACBrEnterTab,
  dxScreenTip, dxCustomHint, cxHint, dxNavBarCollns, dxNavBarBase;

type
  TForm_Cadastro_Modelo = class(TForm)
    dsPrincipal: TDataSource;
    cxLookAndFeelController1: TcxLookAndFeelController;
    BarraMenu: TcxImageList;
    cxPageControl1: TcxPageControl;
    tbPesquisa: TcxTabSheet;
    Panel1: TPanel;
    lblPesquisa: TcxLabel;
    Panel2: TPanel;
    edtText: TEdit;
    edtCurr: TcxCurrencyEdit;
    edtData: TDateTimePicker;
    edtMask: TMaskEdit;
    cxButton1: TcxButton;
    pnlData2: TPanel;
    edtData2: TDateTimePicker;
    rgOptionGrid: TRadioGroup;
    tbCadastro: TcxTabSheet;
    pnl_top: TPanel;
    Shape3: TShape;
    ACBrEnterTab1: TACBrEnterTab;
    cxHintStyleController1: TcxHintStyleController;
    pnl_baixo: TPanel;
    ToolBar1: TToolBar;
    BtnNovo: TToolButton;
    BtnSalvar: TToolButton;
    btnCancelar: TToolButton;
    BtnAlterar: TToolButton;
    BtnExcluir: TToolButton;
    BtnPesquisar: TToolButton;
    ToolButton6: TToolButton;
    BtnLimparPesquisa: TToolButton;
    ToolButton1: TToolButton;
    btnFechar: TToolButton;
    pbl_de_cima: TPanel;
    shape_cima: TShape;
    Shape2: TShape;
    lblStatusdataset: TLabel;
    pnl_esq: TPanel;
    pnl_dire: TPanel;
    pnl_info_direita: TPanel;
    lblregistros: TLabel;
    Label55: TLabel;
    ToolButton2: TToolButton;
    btn_Registro_anterior: TToolButton;
    BtnRegistroPosterior: TToolButton;
    procedure btn_sairClick(Sender: TObject);
    procedure BtnPrimeiroRegistroClick(Sender: TObject);
    procedure BtnRegistroAnteriorClick(Sender: TObject);
    procedure BtnRegistroPosteriorClick(Sender: TObject);
    procedure BtnUltimoRegistroClick(Sender: TObject);
    procedure BtnNovoClick(Sender: TObject);
    procedure BtnAlterarClick(Sender: TObject);
    procedure BtnCancelarClick(Sender: TObject);
    procedure BtnSalvarClick(Sender: TObject);
    procedure BtnExcluirClick(Sender: TObject);
    procedure BtnFecharClick(Sender: TObject);
    procedure dsPrincipalStateChange(Sender: TObject);
    procedure AC_FecharExecute(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure BtnConsultarClick(Sender: TObject);
    procedure BtnGravarClick(Sender: TObject);
    procedure BtnLimparPesquisaClick(Sender: TObject);
    procedure cxGrid1DBTableView1DblClick(Sender: TObject);
    procedure cxVisualizaDBTableView1DblClick(Sender: TObject);
    procedure FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form_Cadastro_Modelo: TForm_Cadastro_Modelo;

implementation

{$R *.dfm}

uses UdtmImagens, Unit_Principal, UdtmACBR, Unit_Variaveis_Globais,
  Unit_F_mensagem_Dialog, ParamControleLicenca,
  UdtmBcoErp, Unit_Acesso, Unit_Alerta,
  Unit_Baixa_Tabela_IBPT, Unit_Cadastro_ICMS, Unit_Cadastro_Produtos,
  Unit_exibeefeitoespera, Unit_Relatorios, Unit_Rotinas, unit_utilfuncs;

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
      DtmBcoErp.f_Auditoria('TForm_Cadastro_Modelo.BtnAlterarClick',E.Message);
      AlertCard('Erro em alterar Registro: '+e.Message,'Erro');
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
      DtmBcoErp.f_Auditoria('TForm_Cadastro_Modelo.BtnCancelarClick',E.Message);
      AlertCard('Ops... Nossos cavalos já irá trablhar para essa solução: '+e.Message,'Erro');
    end;
  end;
end;

procedure TForm_Cadastro_Modelo.BtnConsultarClick(Sender: TObject);
begin
  try
    tbCadastro.TabVisible        := True;
    cxPageControl1.ActivePage    := tbPesquisa;
    dsPrincipal.DataSet.open;

    if dsPrincipal.DataSet.RecordCount = 0 then
    begin
      lblregistros.Visible := False;
      lblregistros.Caption :='';
    end
    else
    begin
      lblregistros.Visible := true;
      lblregistros.Caption := IntToStr(dsPrincipal.DataSet.RecordCount) + ' Registros Encontrados.    '
    end;

  except on e:Exception do
    begin
      DtmBcoErp.f_Auditoria('TForm_Cadastro_Modelo.BtnConsultarClick',E.Message);
      AlertCard('Ops... Nossos cavalos já irá trablhar para essa solução: '+e.Message,'Erro');
    end;
  end;
end;

procedure TForm_Cadastro_Modelo.BtnExcluirClick(Sender: TObject);
begin
  try
    if KDialog( 'Confirma Exclusão do registro?', 'Exclusão de registro', tdtPergunta ) then
     begin
       dsPrincipal.DataSet.Delete;
       cxPageControl1.ActivePage := tbPesquisa;
     end;

  except on e:exception do
    begin
      DtmBcoErp.f_Auditoria('TForm_Cadastro_Modelo.BtnExcluirClick',E.Message);
      AlertCard('Ops... Nossos Motores já estão se aquecendo para trablhar  nessa solução: '+e.Message,'Erro');
    end;
  end;
end;

procedure TForm_Cadastro_Modelo.BtnFecharClick(Sender: TObject);
begin
  close;
end;

procedure TForm_Cadastro_Modelo.BtnGravarClick(Sender: TObject);
begin
   try
    TFDQuery(dsPrincipal.DataSet).Post;

  except on e:Exception do
    begin
      DtmBcoErp.f_Auditoria('TForm_Cadastro_Modelo.BtnGravarClick',E.Message);
      AlertCard('Erro ao Salvar Registro: '+e.Message, 'Erro');
    end;

  end;
end;

procedure TForm_Cadastro_Modelo.BtnNovoClick(Sender: TObject);
begin
   try
    tbCadastro.TabVisible        := True;
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
      DtmBcoErp.f_Auditoria('TForm_Cadastro_Modelo.BtnNovoClick',E.Message);
      AlertCard('Ops... Nossos Motores já estão se aquecendo para trablhar  nessa solução: '+e.Message, 'Erro');
    end;
  end;
end;

procedure TForm_Cadastro_Modelo.BtnPrimeiroRegistroClick(Sender: TObject);
begin
  try
    dsPrincipal.DataSet.First;

  except on e:Exception do
    begin
      DtmBcoErp.f_Auditoria('TForm_Cadastro_Modelo.BtnPrimeiroRegistroClick',E.Message);
      AlertCard('Erro para ir no primeiro Registro: '+e.Message,'Erro');
    end;
  end;
end;

procedure TForm_Cadastro_Modelo.BtnRegistroAnteriorClick(Sender: TObject);
begin
  try
    dsPrincipal.DataSet.Prior;
  except on e:Exception do
    begin
      DtmBcoErp.f_Auditoria('TForm_Cadastro_Modelo.BtnRegistroAnteriorClick',E.Message);
      AlertCard('Erro para ir no registro anterior: '+e.Message,'Erro');
    end;
  end;
end;

procedure TForm_Cadastro_Modelo.BtnRegistroPosteriorClick(Sender: TObject);
begin
  try
    dsPrincipal.DataSet.Next;

  except on e:Exception do
    begin
      DtmBcoErp.f_Auditoria('TForm_Cadastro_Modelo.BtnRegistroPosteriorClick',E.Message);
      AlertCard('Erro para ir ao proximo Registro: '+e.Message,'Erro');
    end;
  end;
end;

procedure TForm_Cadastro_Modelo.BtnSalvarClick(Sender: TObject);
begin
  try
    TFDQuery(dsPrincipal.DataSet).Post;

  except on e:Exception do
    begin
     DtmBcoErp.f_Auditoria('TForm_Cadastro_Modelo.BtnSalvarClick',E.Message);
     AlertCard('Erro ao Salvar Registro: '+e.Message,'Erro');
    end;
  end;
end;

procedure TForm_Cadastro_Modelo.BtnUltimoRegistroClick(Sender: TObject);
begin
   try
    dsPrincipal.DataSet.Last;
  except on e:Exception do
    begin
      DtmBcoErp.f_Auditoria('TForm_Cadastro_Modelo.BtnUltimoRegistroClick',E.Message);
      AlertCard('Erro para ir ao ultimo Registro: '+e.Message,'Erro');
    end;
  end;
end;

procedure TForm_Cadastro_Modelo.btn_sairClick(Sender: TObject);
begin
  Close;
end;

procedure TForm_Cadastro_Modelo.cxGrid1DBTableView1DblClick(Sender: TObject);
begin
   cxPageControl1.ActivePage := tbCadastro;
end;

procedure TForm_Cadastro_Modelo.cxVisualizaDBTableView1DblClick(
  Sender: TObject);
begin
   cxPageControl1.ActivePage := tbCadastro;
end;

procedure TForm_Cadastro_Modelo.dsPrincipalStateChange(Sender: TObject);
begin
  BtnPesquisar.Enabled         := (Sender as TDataSource).State in [dsInactive];
  BtnLimparPesquisa.Enabled    := (Sender as TDataSource).State in [Dsbrowse];
  btn_Registro_anterior.Enabled  := (Sender as TDataSource).State in [Dsbrowse];
  BtnRegistroPosterior.Enabled := (Sender as TDataSource).State in [Dsbrowse];
  //BtnPrimeiroRegistro.Enabled  := (Sender as TDataSource).State in [Dsbrowse];
  //BtnUltimoRegistro.Enabled    := (Sender as TDataSource).State in [Dsbrowse];
  btnNovo.Enabled              := (Sender as TDataSource).State in [Dsbrowse, dsInactive];
  btnSalvar.Enabled            := (Sender as TDataSource).State in [dsEdit, dsInsert];
  btnCancelar.Enabled          := btnSalvar.Enabled;
  btnAlterar.Enabled           := (Sender as TDataSource).State in [Dsbrowse];
  btnExcluir.Enabled           := btnAlterar.Enabled;
  btnFechar.Enabled            := btnNovo.Enabled;

   if (Sender as TDataSource).State in [dsInactive] then
     cxPageControl1.ActivePage := tbPesquisa;

  if (Sender as TDataSource).State in [dsInactive] then
    lblStatusdataset.Caption :='';

  if (Sender as TDataSource).State in [Dsbrowse] then
    lblStatusdataset.Caption :='Pesquisa Ativada';

  if (Sender as TDataSource).State in [dsEdit] then
    lblStatusdataset.Caption :='Em Edição';

  if (Sender as TDataSource).State in [dsInsert] then
    lblStatusdataset.Caption :='Em Inserção';

end;

procedure TForm_Cadastro_Modelo.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  if TFDQuery(dsPrincipal.DataSet).State in [dsInsert, dsEdit] then
  begin
    if KDialog( 'Existem dados Alterados que não foram salvos, Deseja Sair?', 'Cancelamento de Edição', tdtPergunta ) then
    Action :=caFree
    else
    exit;
  end
  else
  Action :=caFree;
end;

procedure TForm_Cadastro_Modelo.FormCreate(Sender: TObject);
begin
  BtnPesquisar.Enabled         :=True;
  BtnLimparPesquisa.Enabled    :=False;
  btn_Registro_anterior.Enabled:=False;
  BtnRegistroPosterior.Enabled :=False;
 // BtnPrimeiroRegistro.Enabled  :=False;
 // BtnUltimoRegistro.Enabled    :=False;
  btnNovo.Enabled              :=True;
  btnSalvar.Enabled            :=False;
  btnCancelar.Enabled          :=False;
  btnAlterar.Enabled           :=False;
  btnExcluir.Enabled           :=False;
  btnFechar.Enabled            :=True;
  cxPageControl1.ActivePage    := tbPesquisa;
  tbCadastro.TabVisible        := False;
  pnl_info_direita.Caption :='';
  lblStatusdataset.Caption :='';
  lblregistros.Caption :='';
end;

procedure TForm_Cadastro_Modelo.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
   case key of
     VK_ESCAPE:
     begin
       if KDialog( 'Deseja Sair?', 'Sair', tdtPergunta ) then
       BtnFecharClick( nil );
       Abort;
       Exit;
     end;

     vk_f5:
     begin
       if btnnovo.Enabled then
          btnnovo.Click;
     end;

     vk_f6:
     begin
       if BtnSalvar.Enabled then
          BtnSalvar.Click;
     end;

     vk_f7:
     begin
       if btncancelar.Enabled then
          btncancelar.Click;
     end;

     vk_f8:
     begin
       if btnalterar.Enabled then
          btnalterar.Click;
     end;

     vk_f9:
     begin
       if btnexcluir.Enabled then
          btnexcluir.Click;
     end;

     VK_F3:
     begin
      if dsPrincipal.State in [ dsInsert, dsEdit ] then
        Exit;
      btnPesquisar.Click
     end;
   end;
end;

procedure TForm_Cadastro_Modelo.BtnLimparPesquisaClick(Sender: TObject);
begin
  try
    tbCadastro.TabVisible        := False;
    cxPageControl1.ActivePage    := tbPesquisa;
    dsPrincipal.DataSet.Close;

    pnl_info_direita.Visible := False;
    pnl_info_direita.Caption :='';
  except on e:Exception do
    begin
      DtmBcoErp.f_Auditoria('TForm_Cadastro_Modelo.BtnLimparPesquisaClick',E.Message);
      AlertCard('Erro ao cancelar pesquisa: '+e.Message,'Erro');
    end;
  end;
end;

end.
