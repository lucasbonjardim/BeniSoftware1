unit udtmBcoPdv;

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
  TdtmBcoPdv = class(TDataModule)
    FDBcoPDV: TFDConnection;
    FDPhysFBDriverLink1: TFDPhysFBDriverLink;
    fdqbuscaproduto: TFDQuery;
  private
    { Private declarations }
  public
    { Public declarations }
  procedure p_conexao;
  procedure CriaArqIni;
  function Criptografa(Texto: string; chave: Byte): String;
  end;

var
  dtmBcoPdv: TdtmBcoPdv;
   ArqIni: TIniFile;

implementation

{%CLASSGROUP 'Vcl.Controls.TControl'}

uses UVariaveisGlobais, ufunctions, ufrmPrincipal;

{$R *.dfm}

{ TdtmBcoPdv }

function TdtmBcoPdv.Criptografa(Texto: string; chave: Byte): String;
var
  buffer: array of Byte;
  i: Integer;
  resultado: String;
begin
  resultado := '';
  SetLength(buffer, Length(Texto));
  for i := 1 to Length(Texto) do
  begin
    buffer[i - 1] := ord(Texto[i]);
    buffer[i - 1] := buffer[i - 1] xor chave;
    resultado := resultado + chr(buffer[i - 1]);
  end;
  Result := resultado;
end;

procedure TdtmBcoPdv.p_conexao;
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
      FDBcoPDV.Connected := false;
      FDBcoPDV.Params.Clear;
      FDBcoPDV.Params.Values['CharacterSet'] :='WIN1252';
      FDBcoPDV.Params.Values['DriverID']     := 'FB';
      FDBcoPDV.Params.Values['database']     := INI.ReadString('LOGIN','Banco'      ,'127.0.0.1C:\BeniSoftware\BeniERP\DataBase\BENIGESTAO.FDB');
      FDBcoPDV.Params.Values['user_name']    := INI.ReadString('LOGIN','USUARIO'    ,'SYSDBA');
      FDBcoPDV.Params.Values['password']     := INI.ReadString('LOGIN','SENHA'      ,'masterkey');
      FDBcoPDV.Connected   := true;

    except on e:exception do
      begin
        ShowMessage(e.Message);
      end
    end;

  finally
    INI.Free ;
  end ;
end;

procedure TdtmBcoPdv.CriaArqIni;
var
  AuxChave: String;
begin
  AuxChave := Criptografa('198208', 23);
  ArqIni   := TIniFile.Create(ExtractFilePath(Application.ExeName) + 'Benicfg.ini');
  ArqIni.WriteString('LOGIN'      , 'Banco'             , 'localhost:C:\BeniSoftware\BeniERP\DataBase\Gestao.FDB');
  ArqIni.WriteString('LOGIN'      , 'Backup'            , 'localhost:C:\BeniSoftware\BeniERP\DataBase\bkp\Gestao.FBK');
  ArqIni.WriteString('LOGIN'      , 'USUARIO'           , 'SYSDBA');
  ArqIni.WriteString('LOGIN'      , 'SENHA'             , 'masterkey');
  ArqIni.WriteString('LOGIN'      , 'LocalAtualizacao'  , '\\127.0.0.1\BeniSoftware\BeniERP\Atualizacao\');
  ArqIni.WriteString('LOGIN'      , 'IPServidor'        , '127.0.0.1');
  ArqIni.WriteString('LOGIN'      , 'PORTA'             , '3050');
  ArqIni.WriteString('PARAMETROS' , 'Licenca'           , '1');
  ArqIni.Free;
end;


end.
