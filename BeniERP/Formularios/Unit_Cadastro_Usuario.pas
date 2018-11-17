unit Unit_Cadastro_Usuario;

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
  Vcl.Menus, System.ImageList, Vcl.ImgList, cxClasses, Data.DB, Vcl.StdCtrls,
  Vcl.ExtCtrls, cxButtons, Vcl.Mask, Vcl.ComCtrls, cxTextEdit, cxCurrencyEdit,
  cxLabel, cxPC, Vcl.ToolWin, cxStyles, cxCustomData, cxFilter, cxData,
  cxDataStorage, cxNavigator, cxDBData, FireDAC.Stan.Intf, FireDAC.Stan.Option,
  FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf,
  FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt, cxDropDownEdit,
  cxCalendar, cxDBEdit, cxMaskEdit, cxSpinEdit, FireDAC.Comp.DataSet,
  FireDAC.Comp.Client, cxGridLevel, cxGridCustomView, cxGridCustomTableView,
  cxGridTableView, cxGridDBTableView, cxGrid, cxCheckBox, dxCore,
  dxGalleryControl, dxColorGallery, dxDBColorGallery, dxColorEdit, dxDBColorEdit,
  Vcl.DBCtrls,dxRibbonSkins, ACBrBase, ACBrEnterTab, dxScreenTip, dxCustomHint,
  cxHint, dxSkinsdxNavBarPainter, dxSkinsdxNavBarAccordionViewPainter,
  dxNavBarCollns, dxNavBarBase, dxNavBar, Vcl.Grids, Vcl.DBGrids;

type
  TForm_Cadastro_usuario = class(TForm_Cadastro_Modelo)
    FDQ_usuarios: TFDQuery;
    Label1: TLabel;
    cxDBSpinEdit1: TcxDBSpinEdit;
    Label2: TLabel;
    cxDBTextEdit1: TcxDBTextEdit;
    Label3: TLabel;
    cxDBTextEdit2: TcxDBTextEdit;
    Label4: TLabel;
    cxDBSpinEdit2: TcxDBSpinEdit;
    Label7: TLabel;
    cxDBTextEdit5: TcxDBTextEdit;
    Label8: TLabel;
    cxDBTextEdit6: TcxDBTextEdit;
    Label9: TLabel;
    cxDBDateEdit1: TcxDBDateEdit;
    cxPageControl2: TcxPageControl;
    cxTabSheet1: TcxTabSheet;
    cbdbUsapadraotema: TcxDBCheckBox;
    DBRadioGroup1: TDBRadioGroup;
    cxDBusuarioativo: TcxDBCheckBox;
    cxDBoperadorcaixa: TcxDBCheckBox;
    cxDBUsuarioMaster: TcxDBCheckBox;
    cxTabSheet2: TcxTabSheet;
    DBRadioGroup2: TDBRadioGroup;
    DBGrid1: TDBGrid;
    Label5: TLabel;
    cxDBSpinEdit3: TcxDBSpinEdit;
    Label6: TLabel;
    dxDBColorEdit1: TdxDBColorEdit;
    FDQAutoIncremento: TFDQuery;
    FDQ_usuariosCOD_USU: TIntegerField;
    FDQ_usuariosNOME_USU: TStringField;
    FDQ_usuariosSENHA_USU: TStringField;
    FDQ_usuariosCOD_GRUPO: TIntegerField;
    FDQ_usuariosOPERADOR_CAIXA: TStringField;
    FDQ_usuariosTEMA_COR: TStringField;
    FDQ_usuariosNOME_COMPLETO: TStringField;
    FDQ_usuariosEMAIL_USU: TStringField;
    FDQ_usuariosDATA_NASCIMENTO_USU: TDateField;
    FDQ_usuariosUSUARIO_ATIVO: TIntegerField;
    FDQ_usuariosMODELO_TEMA: TIntegerField;
    FDQ_usuariosUSA_TEMAPADRAO: TIntegerField;
    FDQ_usuariosUSUARIO_MASTER: TIntegerField;
    FDQ_usuariosCOD_EMPRESA_USU: TIntegerField;
    procedure BtnGravarClick(Sender: TObject);
    procedure cbdbUsapadraotemaClick(Sender: TObject);
    procedure cxDBusuarioativoClick(Sender: TObject);
    procedure DBRadioGroup2Change(Sender: TObject);
    procedure DBGrid1DblClick(Sender: TObject);
    procedure DBGrid1KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure FDQ_usuariosAfterEdit(DataSet: TDataSet);
    procedure BtnNovoClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form_Cadastro_usuario: TForm_Cadastro_usuario;

implementation

{$R *.dfm}

uses UdtmBcoErp, ParamControleLicenca,
  UdtmACBR, UdtmImagens, Unit_Acesso, Unit_Alerta,
  Unit_Baixa_Tabela_IBPT, Unit_Cadastro_ICMS, Unit_Cadastro_Produtos,
  Unit_exibeefeitoespera, Unit_F_mensagem_Dialog, Unit_Principal,
  Unit_Relatorios, Unit_Rotinas, unit_utilfuncs, Unit_Variaveis_Globais;

procedure TForm_Cadastro_usuario.BtnGravarClick(Sender: TObject);
var
senha: String;
begin
  if not cxDBusuarioativo.Checked and cxDBUsuarioMaster.Checked then
  begin
    AlertCard('Não é possivel desativar usuário Master', 'Atenção!');
    abort;
  end;
  senha := f_crypdbf(cxDBTextEdit2.text);
  cxDBTextEdit2.text := f_crypdbf(cxDBTextEdit2.text);
  cxDBTextEdit1.Text := UpperCase(cxDBTextEdit1.Text);
  if cbdbUsapadraotema.Checked then
    dxDBColorEdit1.ColorValue :=  StringToColor('$00EBC100');

  with Form_Principal do
  begin
    SV.Color                     := dxDBColorEdit1.ColorValue;
    pnlToolbar.Color             := dxDBColorEdit1.ColorValue;
    catMenuItems.HotButtonColor  := dxDBColorEdit1.ColorValue;
    btn_lateral.Repaint;

    case DBRadioGroup1.ItemIndex of
      0: dxRibbon1.Style := rs2016 ;
      1: dxRibbon1.Style := rs2016Tablet ;
    end;
  end;

  inherited;
end;

procedure TForm_Cadastro_usuario.BtnNovoClick(Sender: TObject);
begin
  inherited;
  FDQAutoIncremento.Close;
  FDQAutoIncremento.SQL.Clear;
  FDQAutoIncremento.SQL.Text := ' select max(COD_USU) as COD_USU from TB_USUARIO';
  FDQAutoIncremento.Open;
  cxDBSpinEdit1.Text  := IntToStr((FDQAutoIncremento.FieldByName('COD_USU').AsInteger + 1)) ;
  FDQAutoIncremento.Close;
end;

procedure TForm_Cadastro_usuario.cbdbUsapadraotemaClick(Sender: TObject);
begin
  inherited;
   if cbdbUsapadraotema.Checked then
    dxDBColorEdit1.ColorValue :=  StringToColor('$00EBC100') ;
end;

procedure TForm_Cadastro_usuario.cxDBusuarioativoClick(Sender: TObject);
begin
  inherited;
  if cxDBusuarioativo.Checked then
    AlertCard('O Usário ' +  'esta sendo desativado do sistema, para ativar novamente só será possivél com' +
    ' um usuário MASTER! ', 'Atenção!');

end;

procedure TForm_Cadastro_usuario.DBGrid1DblClick(Sender: TObject);
begin
  inherited;
  cxPageControl1.ActivePage := tbCadastro;
end;

procedure TForm_Cadastro_usuario.DBGrid1KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  inherited;
   if key = 13 then
    cxPageControl1.ActivePage := tbCadastro;
end;

procedure TForm_Cadastro_usuario.DBRadioGroup2Change(Sender: TObject);
begin
  inherited;
   with  Form_Principal do
  begin
    case DBRadioGroup2.ItemIndex of
    0:
      begin
        //azul
        SV.Color                     := $00A47D07;
        pnlToolbar.Color             := $00A47D07;
        catMenuItems.HotButtonColor  := $00A47D07;
        dxDBColorEdit1.ColorValue    := $00A47D07;
        btn_lateral.Repaint;
       // Form_Principal.Color         := ClWhite;
      end;
    1:
      begin
        //roxo escuro
        SV.Color                     := $005B1B4D;
        pnlToolbar.Color             := $005B1B4D;
        catMenuItems.HotButtonColor  := $005B1B4D;
        dxDBColorEdit1.ColorValue    := $005B1B4D;
        // Form_Principal.Color         := ClWhite;
        btn_lateral.Repaint;
      end;
    2:
      begin
        //Azul claro
        SV.Color                     := $00DCAA04;
        pnlToolbar.Color             := $00DCAA04;
        catMenuItems.HotButtonColor  := $00DCAA04;
        dxDBColorEdit1.ColorValue    := $00DCAA04;
        // Form_Principal.Color         := ClWhite;
         btn_lateral.Repaint;
      end;
    3:
      begin
        //Azul escuro
        SV.Color                     := $00A64707;
        pnlToolbar.Color             := $00A64707;
        catMenuItems.HotButtonColor  := $00A64707;
        dxDBColorEdit1.ColorValue    := $00A64707;
       // Form_Principal.Color         := ClWhite;
         btn_lateral.Repaint;
      end;
    4:
      begin
        //verde
        SV.Color                     := $00889600;
        pnlToolbar.Color             := $00889600;
        catMenuItems.HotButtonColor  := $00889600;
        dxDBColorEdit1.ColorValue    := $00889600;
        // Form_Principal.Color         := ClWhite;
        btn_lateral.Repaint;
      end;
    5:
      begin
        //Preto
        SV.Color                     := $00191919;
        pnlToolbar.Color             := $00191919;
        catMenuItems.HotButtonColor  := $00191919;
        dxDBColorEdit1.ColorValue    := $00191919;
        // Form_Principal.Color         := ClWhite;
        btn_lateral.Repaint;
      end;
    6:
      begin
        // Verde Whatsappp
        SV.Color                     := $00A5BE1E;
        pnlToolbar.Color             := $00A5BE1E;
        catMenuItems.HotButtonColor  := $00A5BE1E;
        dxDBColorEdit1.ColorValue    := $00A5BE1E;
       // Form_Principal.Color         := ClWhite;
        btn_lateral.Repaint;
      end;
    7:
      begin
        // Cor beni Azul Original escuro
        SV.Color                     := $00DCAA04;
        pnlToolbar.Color             := $00DCAA04;
        catMenuItems.HotButtonColor  := $00DCAA04;
        dxDBColorEdit1.ColorValue    := $00DCAA04;
        // Form_Principal.Color         := ClWhite;
        btn_lateral.Repaint;
      end;
    8:
      begin
       // Cor beni Azul Original mais claro
        SV.Color                     := $00E0B10D;
        pnlToolbar.Color             := $00E0B10D;
        catMenuItems.HotButtonColor  := $00E0B10D;
        dxDBColorEdit1.ColorValue    := $00E0B10D;
        // Form_Principal.Color         := ClWhite;
        btn_lateral.Repaint;
      end;
    9:
      begin
         // Cor beni Roxo Original mais claro
        SV.Color                     := $00DB9587;
        pnlToolbar.Color             := $00DB9587;
        catMenuItems.HotButtonColor  := $00DB9587;
        dxDBColorEdit1.ColorValue    := $00DB9587;
       // Form_Principal.Color         := ClWhite;
      end;
    10:
      begin
         // Cor beni Laranja Original mais escuro
        SV.Color                     := $0028A5F3;
        pnlToolbar.Color             := $0028A5F3;
        catMenuItems.HotButtonColor  := $0028A5F3;
        dxDBColorEdit1.ColorValue    := $0028A5F3;
       // Form_Principal.Color         := ClWhite;
        btn_lateral.Repaint;
      end;
    11:
      begin
          // Cor beni Vermelho Original mais escuro
        SV.Color                    := $005353CC;
        pnlToolbar.Color            := $005353CC;
        catMenuItems.HotButtonColor := $005353CC;
        dxDBColorEdit1.ColorValue   := $005353CC;
       // Form_Principal.Color         := ClWhite;
        btn_lateral.Repaint;
      end;
    12:
      begin
        // Cor Beni Original
        SV.Color                    := $00EBC100;
        pnlToolbar.Color            := $00EBC100;
        catMenuItems.HotButtonColor := $00EBC100;
        dxDBColorEdit1.ColorValue   := $00EBC100;
       // Form_Principal.Color         := ClWhite;
        btn_lateral.Repaint;
       end;
    end;
  end;
end;

procedure TForm_Cadastro_usuario.FDQ_usuariosAfterEdit(DataSet: TDataSet);
begin
  inherited;
  cxDBTextEdit2.text := f_dcrypdbf(cxDBTextEdit2.Text);
end;

procedure TForm_Cadastro_usuario.FormCreate(Sender: TObject);
begin
  inherited;
  FDQ_usuarios.Active := False;
end;

end.
