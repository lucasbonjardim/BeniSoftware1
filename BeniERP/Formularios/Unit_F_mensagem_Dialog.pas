unit Unit_F_mensagem_Dialog;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, cxGraphics, cxLookAndFeels,
  cxLookAndFeelPainters, Vcl.Menus, dxSkinsCore, dxSkinBlack, dxSkinBlue,
  dxSkinBlueprint, dxSkinCaramel, dxSkinCoffee, dxSkinDarkRoom, dxSkinDarkSide,
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
  dxSkinXmas2008Blue, cxControls, cxContainer, cxEdit, cxLabel, Vcl.ExtCtrls,
  Vcl.StdCtrls, cxButtons, System.ImageList, Vcl.ImgList,System.StrUtils;

type
  TfrmDialogTipo = ( tdtPergunta, tdtErro, tdtInfo );
  TfrmDialog = class(TForm)
    il1: TImageList;
    Panel1: TPanel;
    Panel2: TPanel;
    btnConfirmar: TcxButton;
    btnCancelar: TcxButton;
    Panel3: TPanel;
    imgIco: TImage;
    pnlMessage: TPanel;
    lblMen: TcxLabel;
    procedure btnCancelarClick(Sender: TObject);
    procedure btnConfirmarClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure FormShow(Sender: TObject);
  private
    FXMin: Integer;
    FYMin: Integer;
    FXLMin: Integer;
    FYLMin: Integer;
  public
     ICONE: TfrmDialogTipo;
  end;
  function KDialog( Texto: String; const Titulo: String = ''; const Icone: TfrmDialogTipo = tdtInfo ): Boolean;

var
  frmDialog: TfrmDialog;

implementation

{$R *.dfm}

function KDialog( Texto: String; const Titulo: String = ''; const Icone: TfrmDialogTipo = tdtInfo ): Boolean;
var
   Icone2, Titulo2: String;
   frmDialog: TfrmDialog;
begin
   Titulo2 := Titulo;
   frmDialog := TfrmDialog.Create( nil );
   try
       frmDialog.lblMen.Caption := Texto;
       frmDialog.Caption := Titulo2;
       frmDialog.ICONE := Icone;
       Result := frmDialog.ShowModal = mrYes;
   finally
        frmDialog.Free;
   end;
end;

procedure TfrmDialog.btnCancelarClick(Sender: TObject);
begin
   ModalResult := mrCancel;
end;

procedure TfrmDialog.btnConfirmarClick(Sender: TObject);
begin
    ModalResult := mrYes;
end;

procedure TfrmDialog.FormCreate(Sender: TObject);
begin
   FXMin := Width;
   FYMin := Height;
   FXLMin := lblMen.Width;
   FYLMin := lblMen.Height;
end;

procedure TfrmDialog.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
   case Key of
       VK_RETURN: ModalResult := mrYes;
       VK_ESCAPE: ModalResult := mrCancel;
   end;
end;

procedure TfrmDialog.FormShow(Sender: TObject);
begin
   if FXLMin < lblMen.Width then
      Width := FXMin + ( lblMen.Width - FXLMin );
   if FYLMin < lblMen.Height then
      Height := FYMin + ( lblMen.Height - FYLMin );
   il1.Draw( imgIco.Canvas, 0, 0, Ord( ICONE ), TDrawingStyle.dsTransparent, TImageType.itImage, True );
   btnCancelar.Visible := ICONE in [ tdtPergunta ];
   btnConfirmar.Caption := '(Enter)' + sLineBreak + IfThen( ICONE in [tdtErro, tdtInfo ],
    'Sair', 'Confirmar' );
end;

end.
