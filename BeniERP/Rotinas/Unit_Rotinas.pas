unit Unit_Rotinas;

interface

uses
  System.SysUtils, System.Classes, FireDAC.Stan.Intf, FireDAC.Stan.Option,
  FireDAC.Stan.Error, FireDAC.UI.Intf, FireDAC.Phys.Intf, FireDAC.Stan.Def,
  FireDAC.Stan.Pool, FireDAC.Stan.Async, FireDAC.Phys, FireDAC.Phys.FB,
  FireDAC.Phys.FBDef, FireDAC.VCLUI.Wait, Data.DB, FireDAC.Comp.Client,
  System.IniFiles, ACBRUtil, Vcl.Forms, Vcl.ComCtrls, Vcl.Dialogs, FireDAC.Phys.IBBase;

    procedure CriaArqIni;
    procedure p_LeParametros(pConnName: String);
    procedure AbreForm(aClasseForm: TComponentClass; aForm: TForm);
    function Criptografa(Texto: string; chave: Byte): String;
    function FormEstaCriado(AClass: TClass): Boolean;
  
   var
    ArqIni: TIniFile;

implementation
  uses
  UdtmBcoErp,Unit_Principal, Unit_exibeefeitoespera;


procedure CriaArqIni;
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

function Criptografa(Texto: string; chave: Byte): String;
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

procedure p_LeParametros(pConnName: String);
begin

end;

 procedure AbreForm(aClasseForm: TComponentClass; aForm: TForm);
begin
  if not FormEstaCriado(aClasseForm) then
  begin
    if (aForm = nil) then
    begin
      Application.CreateForm(aClasseForm, aForm);
      aForm.Show;
    end
    else
    begin
      aForm.WindowState := WsNormal;
      aForm.BringToFront;
      aForm.Focused;
    end;
  end;

end;

function FormEstaCriado(AClass: TClass): Boolean;
var
  I: Integer;
begin
  Result := False;
  for I := 0 to Screen.FormCount -1 do begin
    if Screen.Forms[I] is AClass then begin
      Result := True;
      Break;
    end;
  end;
end;



end.
