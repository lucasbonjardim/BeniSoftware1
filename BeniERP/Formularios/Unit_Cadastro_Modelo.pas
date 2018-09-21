unit Unit_Cadastro_Modelo;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Data.DB, Vcl.Grids, Vcl.DBGrids,
  Vcl.ComCtrls, Vcl.ExtCtrls, Vcl.StdCtrls, Vcl.Imaging.pngimage,
  System.ImageList, Vcl.ImgList;

type
  TForm_Cadastro_Modelo = class(TForm)
    mmlist: TImageList;
    Panel1: TPanel;
    pnl_cima: TPanel;
    btn_novo: TButton;
    BtnAlterar: TButton;
    BtnCancelar: TButton;
    Btn_gravar: TButton;
    Btn_Excluir: TButton;
    btn_sair: TButton;
    procedure btn_sairClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form_Cadastro_Modelo: TForm_Cadastro_Modelo;

implementation

{$R *.dfm}

procedure TForm_Cadastro_Modelo.btn_sairClick(Sender: TObject);
begin
  Close;
end;

end.
