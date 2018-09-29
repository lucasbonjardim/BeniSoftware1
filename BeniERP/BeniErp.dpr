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
  Unit_Cadastro_Modelo in 'Formularios\Unit_Cadastro_Modelo.pas' {Form_Cadastro_Modelo},
  UdtmImagens in 'dtm\UdtmImagens.pas' {dtmImagens: TDataModule},
  Unit_exibeefeitoespera in 'Formularios\Unit_exibeefeitoespera.pas' {form_exibeefeitoespera},
  Unit_Cadastro_Produtos in 'Formularios\Unit_Cadastro_Produtos.pas' {Form_Cadastro_Produtos},
  Unit_Baixa_Tabela_IBPT in 'Formularios\Unit_Baixa_Tabela_IBPT.pas' {form_baixa_ibpt},
  Unit_Cadastro_ICMS in 'Formularios\Unit_Cadastro_ICMS.pas' {Form_Cadastro_ICMS},
  Unit_F_mensagem_Dialog in 'Formularios\Unit_F_mensagem_Dialog.pas' {frmDialog},
  Unit_Acesso in 'Formularios\Unit_Acesso.pas' {FAcesso},
  Unit_Alerta in 'Formularios\Unit_Alerta.pas' {Form_Alerta};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TForm_Principal, Form_Principal);
  Application.CreateForm(TdtmImagens, dtmImagens);
  Application.CreateForm(TDtmBcoErp, DtmBcoErp);
  Application.CreateForm(TdtmACBR, dtmACBR);
  Application.CreateForm(TForm_Alerta, Form_Alerta);
  Application.Run;
end.
