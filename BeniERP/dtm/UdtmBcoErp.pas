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

  public
  procedure AcessoExecute;
  procedure p_conexao;
  procedure Ajusta_Cadastro_Empresa;
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



procedure TDtmBcoErp.Ajusta_Cadastro_Empresa;
var
FdqCadastro_empresa : TFDQuery;
LSql : String;
begin
  FdqCadastro_empresa := nil;

  try
    FdqCadastro_empresa := TFDQuery.Create(nil);
    FdqCadastro_empresa.Active := False;
    FdqCadastro_empresa.Connection := ConexaoDados;
    LSql := 'Select * from tb_empresa';
    FdqCadastro_empresa.SQL.Add(LSql);
    FdqCadastro_empresa.open;

    if not FdqCadastro_empresa.IsEmpty then
    begin
      if (FdqCadastro_empresa.FieldByName('PERMITE_FECHA_ERP_JANELA_ABERTA').AsString = 'S') then
        BolBloqueiaFechaERPJaberta := False
      else
        BolBloqueiaFechaERPJaberta := True;
    end;

  finally
    FreeAndNil(FdqCadastro_empresa);
  end;

end;

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
        AlertCard('Parabéns por Adquirir o Software Beni E.R.P '+
        sLineBreak+ 'Vamos Cadastrar o Primeiro usuário do Sistema.','Parabéns!');
      end;
    end;
  finally
    FreeAndNil(lSql);
    FreeAndNil(FAcesso);
  end;
end;



end.
