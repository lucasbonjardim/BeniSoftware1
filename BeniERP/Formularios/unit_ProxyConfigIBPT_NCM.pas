unit unit_ProxyConfigIBPT_NCM;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.Buttons, Vcl.ExtCtrls;

type
  TfrProxyConfig = class(TForm)
    cbAutenticacao: TCheckBox;
    edPorta: TEdit;
    edSenha: TEdit;
    edServidor: TEdit;
    edUser: TEdit;
    lSenha: TLabel;
    lSenha1: TLabel;
    lUser: TLabel;
    lUser1: TLabel;
    Panel2: TPanel;
    bOk: TBitBtn;
    bCancelar: TBitBtn;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frProxyConfig: TfrProxyConfig;

implementation

{$R *.dfm}

end.
