unit Unit_Splach;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.ExtCtrls, Vcl.ComCtrls,
  Vcl.StdCtrls, Vcl.Imaging.jpeg;

type
  Tfrm_splach = class(TForm)
    Timer1: TTimer;
    Panel1: TPanel;
    img_logo: TImage;
    Label1: TLabel;
    ProgressBar1: TProgressBar;
    procedure Timer1Timer(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frm_splach: Tfrm_splach;

implementation

{$R *.dfm}

procedure Tfrm_splach.Timer1Timer(Sender: TObject);
begin
  if ProgressBar1.Position <= 100 then
  begin
    ProgressBar1.Position := ProgressBar1.Position + 1;
    case ProgressBar1.Position of
      10 : Label1.Caption := 'Carregando as dll...';
      25 : Label1.Caption := 'Carregando as tabelas...';
      45 : Label1.Caption := 'Carregando as configurações...';
      75 : Label1.Caption := 'Iniciando o sistema...';
    end;

    if ProgressBar1.Position = 100 then
      Close;
  end;
end;

end.
