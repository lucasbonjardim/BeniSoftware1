unit Unit_exibeefeitoespera;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.WinXCtrls, Vcl.ExtCtrls;

type
  Tform_exibeefeitoespera = class(TForm)
    Panel1: TPanel;
    ActivityIndicator1: TActivityIndicator;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  form_exibeefeitoespera: Tform_exibeefeitoespera;

implementation

{$R *.dfm}

procedure Tform_exibeefeitoespera.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  Action := Cafree;
end;

end.
