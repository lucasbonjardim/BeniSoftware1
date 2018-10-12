unit UdtmBcoErp;

interface

uses
  System.SysUtils, System.Classes, FireDAC.Stan.Intf, FireDAC.Stan.Option,
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
    procedure DataModuleCreate(Sender: TObject);
    procedure DataModuleDestroy(Sender: TObject);
  private
    procedure p_conexao;
    function Grava_MovEstoque(fIDProduto: Integer; fQuant: Double): Boolean;
    
    { Private declarations }
  public
  procedure btn_AcessoExecute(Sender: TObject);
  end;

var
  DtmBcoErp: TDtmBcoErp;

implementation

uses
Unit_Variaveis_Globais,Unit_Rotinas, Unit_F_mensagem_Dialog, Unit_Acesso,
  Unit_Principal, ParamControleTerminalPDV, ParamControleLicenca,
  ParamControleTerminalECF, UdtmACBR, UdtmImagens, Unit_Baixa_Tabela_IBPT,
  Unit_Cadastro_ICMS, Unit_Cadastro_Modelo, Unit_Cadastro_Produtos,
  Unit_exibeefeitoespera, Unit_Relatorios, unit_utilfuncs, Unit_Alerta;

{%CLASSGROUP 'Vcl.Controls.TControl'}

{$R *.dfm}



procedure TDtmBcoErp.DataModuleCreate(Sender: TObject);
begin
  p_conexao;
  if FDBcoERP.Connected then
  btn_AcessoExecute(Self)
  else
  begin
   ShowMessage('Não foi possivel fazer conexão com o banco.');
  end;
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

procedure TDtmBcoErp.btn_AcessoExecute(Sender: TObject);
var
  vSql: TStringList;
begin
  try
    with fdq_auxiliar do
    begin
      close;
      vSql := TStringList.Create;
      vSql.Add('select * from TB_USUARIO');
      sql := vSql;
      Open;
      if not IsEmpty then
      begin
        try
         FAcesso := TFAcesso.Create(Application);
         FAcesso.cxte_Usuario.Clear;
         FAcesso.cxte_Senha.Clear;
         FAcesso.ShowModal;
        finally
          FAcesso.Free;
        end;
      end else
      begin
        AlertCard('Parabéns por Adquirar o Software Beni E.R.P '+
        sLineBreak+ 'Vamos Cadastrar o Primeiro usuário do Sistema.','Parabéns!!');
      end;

    end;

  finally
    vSql.Free;
  end;

end;


end.
