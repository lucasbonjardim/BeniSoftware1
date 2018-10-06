unit Unit_Alerta;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, cxGraphics, cxControls, cxLookAndFeels,
  cxLookAndFeelPainters, cxContainer, cxEdit, dxSkinsCore, dxSkinBlack,
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
  dxSkinXmas2008Blue, Vcl.Menus, Vcl.StdCtrls, cxButtons, cxLabel, Vcl.ExtCtrls;

type
  TForm_Alerta = class(TForm)
    Panel1: TPanel;
    pnlMessage: TPanel;
    lblMen: TcxLabel;
    Panel3: TPanel;
    btnConfirmar: TcxButton;
    Panel2: TPanel;
    Panel4: TPanel;
    procedure FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure btnConfirmarClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure FormShow(Sender: TObject);
  private
    FXMin: Integer;
    FYMin: Integer;
    FXLMin: Integer;
    FYLMin: Integer;
    { Private declarations }
  public

  end;

  function AlertCard( Texto: String;  Texto1: String ): Boolean;

var
  Form_Alerta: TForm_Alerta;

implementation

{$R *.dfm}

procedure TForm_Alerta.btnConfirmarClick(Sender: TObject);
begin
   ModalResult := mrYes;
end;

procedure TForm_Alerta.FormCreate(Sender: TObject);
begin
  FXMin := 412;
  FYMin := 148;
  FXLMin := lblMen.Width;
  FYLMin := lblMen.Height;
  Form_Alerta.Width := lblMen.Width + 15;
end;

procedure TForm_Alerta.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
    case Key of
     VK_RETURN: ModalResult := mrYes;
     VK_ESCAPE: ModalResult := mrCancel;
   end;
end;

procedure TForm_Alerta.FormShow(Sender: TObject);
begin
  if FXLMin < lblMen.Width then
    Form_Alerta.Width := FXMin + ( lblMen.Width + 15 );
  if FYLMin < lblMen.Height then
    Form_Alerta.Height := FYMin + ( lblMen.Height + 3 );
end;

function AlertCard( Texto: String;  Texto1: String ): Boolean;
var
   Form_Alerta: TForm_Alerta;
begin
  Form_Alerta := TForm_Alerta.Create( nil );
  try
    Form_Alerta.lblMen.Caption := Texto;
    Form_Alerta.Caption := Texto1;
    Result := Form_Alerta.ShowModal = mrYes;
   finally
    Form_Alerta.Free;
   end;
end;

end.
