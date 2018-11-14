unit UdtmBcoErp;

interface

uses
  System.SysUtils, Vcl.Controls, System.Classes, FireDAC.Stan.Intf, FireDAC.Stan.Option,
  FireDAC.Stan.Error, FireDAC.UI.Intf, FireDAC.Phys.Intf, FireDAC.Stan.Def,
  FireDAC.Stan.Pool, FireDAC.Stan.Async, FireDAC.Phys, FireDAC.Phys.FB,
  FireDAC.Phys.FBDef, FireDAC.VCLUI.Wait, Data.DB, FireDAC.Comp.Client,
  System.IniFiles, ACBRUtil, Vcl.Forms,  Vcl.Dialogs, FireDAC.Phys.IBBase,
  FireDAC.Stan.Param, FireDAC.DatS, FireDAC.DApt.Intf, FireDAC.DApt,
  FireDAC.Comp.DataSet;

type
  TDtmBcoErp = class(TDataModule)
    FDBcoERP: TFDConnection;
    FDPhysFBDriverLink1: TFDPhysFBDriverLink;
    fdq_auxiliar: TFDQuery;
    Fdq_usuario: TFDQuery;
    Fdq_Empresa: TFDQuery;
    procedure DataModuleDestroy(Sender: TObject);
  private
    function  Grava_MovEstoque(fIDProduto: Integer; fQuant: Double): Boolean;
    
    { Private declarations }
  public
  procedure AcessoExecute;
  procedure p_conexao;
  end;

var
  DtmBcoErp: TDtmBcoErp;

implementation

uses
Unit_Variaveis_Globais,Unit_Rotinas, Unit_F_mensagem_Dialog, Unit_Acesso,
  Unit_Principal, ParamControleLicenca,
   UdtmACBR, UdtmImagens, Unit_Baixa_Tabela_IBPT,
  Unit_Cadastro_ICMS, Unit_Cadastro_Modelo, Unit_Cadastro_Produtos,
  Unit_exibeefeitoespera, Unit_Relatorios, unit_utilfuncs, Unit_Alerta;

{%CLASSGROUP 'Vcl.Controls.TControl'}

{$R *.dfm}



procedure TDtmBcoErp.DataModuleDestroy(Sender: TObject);
begin
   FDBcoERP.Connected := false;
end;

procedure TDtmBcoErp.p_conexao;
var
aux : String ;
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
      FDBcoERP.Params.Values['database']  := INI.ReadString('LOGIN','Banco'      ,'127.0.0.1C:\BeniSoftware\BeniERP\DataBase\BENIGESTAO.FDB');
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

procedure TDtmBcoErp.AcessoExecute;
var
  lSql: TStringList;

begin
  lSql :=nil;
  try
    with fdq_auxiliar do
    begin
      close;
      lSql := TStringList.Create;
      lSql.Add('select * from TB_USUARIO');
      sql := lSql;
      Open;
      if not IsEmpty then
      begin
        Application.CreateForm(TFAcesso, FAcesso);
         if FAcesso.ShowModal = mrOk then
          Form_Principal.Show;
      end
      else
      begin
        AlertCard('Parab�ns por Adquirir o Software Beni E.R.P '+
        sLineBreak+ 'Vamos Cadastrar o Primeiro usu�rio do Sistema.','Parab�ns!');
      end;
    end;
  finally
    FreeAndNil(lSql);
    FreeAndNil(FAcesso);
  end;
end;



end.
