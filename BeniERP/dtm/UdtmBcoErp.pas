unit UdtmBcoErp;

interface

uses
  System.SysUtils, System.Classes, FireDAC.Stan.Intf, FireDAC.Stan.Option,
  FireDAC.Stan.Error, FireDAC.UI.Intf, FireDAC.Phys.Intf, FireDAC.Stan.Def,
  FireDAC.Stan.Pool, FireDAC.Stan.Async, FireDAC.Phys, FireDAC.Phys.FB,
  FireDAC.Phys.FBDef, FireDAC.VCLUI.Wait, Data.DB, FireDAC.Comp.Client,
  System.IniFiles, ACBRUtil, Vcl.Forms,  Vcl.Dialogs, FireDAC.Phys.IBBase;

type
  TDtmBcoErp = class(TDataModule)
    FDBcoERP: TFDConnection;
    FDPhysFBDriverLink1: TFDPhysFBDriverLink;
    procedure DataModuleCreate(Sender: TObject);
    procedure DataModuleDestroy(Sender: TObject);
  private
    procedure p_conexao;
    function Grava_MovEstoque(fIDProduto: Integer; fQuant: Double): Boolean;
    
    { Private declarations }
  public
    { Public declarations }
  end;

var
  DtmBcoErp: TDtmBcoErp;

implementation

uses
Unit_Variaveis_Globais,Unit_Rotinas;

{%CLASSGROUP 'Vcl.Controls.TControl'}

{$R *.dfm}



procedure TDtmBcoErp.DataModuleCreate(Sender: TObject);
begin
  p_conexao;
end;

procedure TDtmBcoErp.DataModuleDestroy(Sender: TObject);
begin
   FDBcoERP.Connected := false;
end;

procedure TDtmBcoErp.p_conexao;
var
  ArqINI,PathApplication,aux : String ;
  INI : TIniFile ;
begin
  aux := ExtractFilePath(Application.ExeName) + 'Benicfg.ini';
    if not FileExists(aux) then
      CriaArqIni;
  INI := TIniFile.Create(aux);
  try
    try
      FDPhysFBDriverLink1.VendorHome := ExtractFilePath(Application.ExeName)+ 'DLLs\';
      FDPhysFBDriverLink1.VendorLib  := 'fbclient.dll';
      FDBcoERP.Connected := false;
      FDBcoERP.Params.Clear;
      FDBcoERP.Params.Values['DriverID']  := 'FB';
      FDBcoERP.Params.Values['database']  := INI.ReadString('LOGIN','Banco'      ,'127.0.0.1:c:\sotis\super\tabelas\bcosup.fdb');
      FDBcoERP.Params.Values['user_name'] := INI.ReadString('LOGIN','USUARIO'    ,'SYSDBA');
      FDBcoERP.Params.Values['password']  := INI.ReadString('LOGIN','SENHA'      ,'masterkey');
      FDBcoERP.Connected   := true;
      ConexaoDados         := DtmBcoErp.FDBcoERP;

    except on e:exception do
      begin
        ShowMessage(e.Message);
      end
    end;

  finally
    INI.Free ;
  end ;

end;

function TDtmBcoErp.Grava_MovEstoque(fIDProduto: Integer; fQuant: Double): Boolean;
var
  Q: TFdQuery;
begin
  Result := true;
  Q := TFdQuery.Create(nil);
  try
    Q.Connection := ConexaoDados;
    Q.Close;
    Q.Params.Clear;
    Q.SQL.Clear;
    Q.SQL.Add('update estoque set');
    Q.SQL.Add('estoque.quantidade = :pQuant');
    Q.SQL.Add('where estoque.idproduto = :pIDProd');
    Q.SQL.Add('and estoque.idempresa = :pIDempresa');
    Q.Params.ParamByName('pIDProd').AsInteger := fIDProduto;
    Q.Params.ParamByName('pIDEmpresa').AsInteger := 1;
    Q.Params.ParamByName('pQuant').AsFloat := fQuant;
    Q.ExecSQL;
  finally
    Q.Close;
    Q.Free;
  end;
end;


end.
