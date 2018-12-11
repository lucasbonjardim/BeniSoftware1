program ePDV;

uses
  Vcl.Forms,
  ufrmPrincipal in 'ufrmPrincipal.pas' {formPrincipal},
  Vcl.Themes,
  Vcl.Styles,
  ufrmDtmAcbr in 'Formularios\ufrmDtmAcbr.pas' {DtmAcbr: TDataModule},
  udtmBcoPdv in 'Formularios\udtmBcoPdv.pas' {dtmBcoPdv: TDataModule},
  ufunctions in 'Rotinas\ufunctions.pas',
  UVariaveisGlobais in 'Rotinas\UVariaveisGlobais.pas',
  uPdvecf in 'Rotinas\uPdvecf.pas',
  uFromMsgErro in 'Formularios\uFromMsgErro.pas' {FormMsgErro};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TformPrincipal, formPrincipal);
  Application.Run;
end.
