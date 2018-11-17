program BeniErp;

uses
  Vcl.Forms,
  Unit_Principal in 'Formularios\Unit_Principal.pas' {Form_Principal},
  Unit_Rotinas in 'Rotinas\Unit_Rotinas.pas',
  UdtmBcoErp in 'dtm\UdtmBcoErp.pas' {DtmBcoErp: TDataModule},
  Unit_Variaveis_Globais in 'Rotinas\Unit_Variaveis_Globais.pas',
  ParamControleLicenca in 'Controle\ParamControleLicenca.pas',
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
  Unit_Alerta in 'Formularios\Unit_Alerta.pas' {Form_Alerta},
  Unit_Cadastro_Usuario in 'Formularios\Unit_Cadastro_Usuario.pas' {Form_Cadastro_usuario},
  Unit_Relatorio_Produtos_Alterados in 'Relatorios\Unit_Relatorio_Produtos_Alterados.pas' {Form_Rel_Produtos_Alterados},
  Unit_Cadastro_de_Empresa in 'Formularios\Unit_Cadastro_de_Empresa.pas' {Form_Cadastro_de_Empresa},
  Unit_Configurar_Pis_Cofins in 'Formularios\Unit_Configurar_Pis_Cofins.pas' {form_Configurar_Pis_Cofins},
  Unit_Cadastro_Aliquota_pdv in 'Formularios\Unit_Cadastro_Aliquota_pdv.pas' {Form_Cadastro_Aliquota_pdv},
  Unit_Cadastro_Terminais_Pdv in 'Formularios\Unit_Cadastro_Terminais_Pdv.pas' {Form_Cadastro_Terminais_PDV},
  Unit_Splach in 'Formularios\Unit_Splach.pas' {frm_splach},
  UdtmCadProdutos in 'dtm\UdtmCadProdutos.pas' {dtm_cad_Produtos: TDataModule};

{$R *.res}

begin
 // ReportMemoryLeaksOnShutdown := True;
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TForm_Principal, Form_Principal);
  Application.CreateForm(TdtmACBR, dtmACBR);
  Application.Run;
end.
