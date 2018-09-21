program BeniErp;

uses
  Vcl.Forms,
  Unit_Principal in 'Formularios\Unit_Principal.pas' {Form_Principal},
  Unit_Rotinas in 'Rotinas\Unit_Rotinas.pas',
  UdtmBcoErp in 'dtm\UdtmBcoErp.pas' {DtmBcoErp: TDataModule},
  Unit_Variaveis_Globais in 'Rotinas\Unit_Variaveis_Globais.pas',
  ParamControleLicenca in 'Controle\ParamControleLicenca.pas',
  ParamControleTerminalPDV in 'Controle\ParamControleTerminalPDV.pas',
  ParamControleTerminalECF in 'Controle\ParamControleTerminalECF.pas',
  Unit_Relatorios in 'Rotinas\Unit_Relatorios.pas',
  unit_utilfuncs in 'Rotinas\unit_utilfuncs.pas',
  Vcl.Themes,
  Vcl.Styles,
  UdtmACBR in 'dtm\UdtmACBR.pas' {dtmACBR},
  Unit_Cadastro_Modelo in 'Formularios\Unit_Cadastro_Modelo.pas' {Form_Cadastro_Modelo};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TForm_Principal, Form_Principal);
  Application.CreateForm(TForm_Cadastro_Modelo, Form_Cadastro_Modelo);
  Application.Run;
end.
