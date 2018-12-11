unit ufrmDtmAcbr;

interface

uses
  System.SysUtils, System.Classes, ACBrGAV, ACBrUtil, ACBrRFD, ACBrExtenso, ACBrCHQ,
  ACBrMail, ACBrNFeDANFeRLClass, ACBrDANFCeFortesFr, ACBrNFeDANFEClass,
  ACBrNFeDANFeESCPOS, ACBrSATExtratoReportClass, ACBrSATExtratoFortesFr,
  ACBrSATExtratoClass, ACBrSATExtratoESCPOS, ACBrECFVirtualSAT, ACBrIntegrador,
  ACBrTEFD, ACBrBAL, ACBrLCB, Vcl.Dialogs, ACBrECFVirtualNFCe, ACBrEAD, ACBrAAC,
  ACBrECFVirtual, ACBrECFVirtualBuffer, ACBrECFVirtualPrinter, System.math,
  ACBrECFVirtualNaoFiscal, ACBrECF, ACBrPosPrinter, ACBrBase, ACBrSAT,
  ACBrBlocoX, ACBrDFe, ACBrSATWS, ACBrTER, ACBrDIS, ACBrCalculadora, ACBrFala,
  ACBrValidador, ACBrTroco, ACBrCMC7;

type
  TDtmAcbr = class(TDataModule)
    ACBrSAT: TACBrSAT;
    ACBrPosPrinter: TACBrPosPrinter;
    ACBrECF: TACBrECF;
    ACBrECFVirtualNaoFiscal: TACBrECFVirtualNaoFiscal;
    ACBrAAC: TACBrAAC;
    ACBrEAD: TACBrEAD;
    ACBrECFVirtualNFCe: TACBrECFVirtualNFCe;
    PrintDialog1: TPrintDialog;
    OpenDialog1: TOpenDialog;
    SaveDialog1: TSaveDialog;
    ACBrLCB: TACBrLCB;
    ACBrBAL: TACBrBAL;
    ACBrTEFD: TACBrTEFD;
    ACBrIntegrador1: TACBrIntegrador;
    ACBrECFVirtualSAT: TACBrECFVirtualSAT;
    ACBrSATExtratoESCPOS: TACBrSATExtratoESCPOS;
    ACBrSATExtratoFortes: TACBrSATExtratoFortes;
    ACBrNFeDANFeESCPOS: TACBrNFeDANFeESCPOS;
    ACBrNFeDANFCeFortes: TACBrNFeDANFCeFortes;
    ACBrNFeDANFeRL: TACBrNFeDANFeRL;
    ACBrMail: TACBrMail;
    ACBrCHQ: TACBrCHQ;
    ACBrExtenso: TACBrExtenso;
    ACBrRFD: TACBrRFD;
    ACBrGAV: TACBrGAV;
    ACBrCMC71: TACBrCMC7;
    ACBrTroco1: TACBrTroco;
    ACBrValidador1: TACBrValidador;
    ACBrFala1: TACBrFala;
    ACBrCalculadora1: TACBrCalculadora;
    ACBrEAD1: TACBrEAD;
    XKeyBoardAcbr: TACBrDIS;
    ACBrTER1: TACBrTER;
    ACBrSATWS1: TACBrSATWS;
    ACBrBlocoX1: TACBrBlocoX;
    procedure DataModuleCreate(Sender: TObject);
    procedure ACBrECFAntesAbreCupom(const CPF_CNPJ, Nome, Endereco: string);
    procedure ACBrECFDepoisAbreCupom(const CPF_CNPJ, Nome, Endereco: string);
    procedure ACBrECFDepoisVendeItem(const Codigo, Descricao,
      AliquotaICMS: string; const Qtd, ValorUnitario,
      ValorDescontoAcrescimo: Double; const Unidade, TipoDescontoAcrescimo,
      DescontoAcrescimo: string);
    procedure ACBrECFAntesFechaCupom(const Observacao: AnsiString;
      const IndiceBMP: Integer);
    procedure ACBrECFDepoisFechaCupom(const Observacao: AnsiString;
      const IndiceBMP: Integer);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  DtmAcbr: TDtmAcbr;

implementation

{%CLASSGROUP 'Vcl.Controls.TControl'}

uses ufrmPrincipal, udtmBcoPdv, UVariaveisGlobais, ufunctions;

{$R *.dfm}

procedure TDtmAcbr.ACBrECFAntesAbreCupom(const CPF_CNPJ, Nome,
  Endereco: string);
begin
  with formPrincipal, dtmBcoPdv do
  begin
    douImpostosFederal   :=0;
    douImpostosEstadual  :=0;
    douImpostosMunicipal :=0;
    MemobobinaRegistro.Clear;


   // MemobobinaRegistro.Lines.Add(FormatDateTime('dddd "," dd " de " mmmm " de " yyyy' , Now)+'  '+  Timetostr (Time));
    if ACBrECF.ECFVirtual = ACBrECFVirtualSAT  then
    begin
     // lbl_msg_aguarde.Caption := 'Aguarde! Abrindo Cupom Fiscal SAT';
    end
    else
    if ACBrECF.ECFVirtual = ACBrECFVirtualNFCe  then
    begin
    // lbl_msg_aguarde.Caption := 'Aguarde! Abrindo Cupom Fiscal Nfce';
    end
    else
    begin
    // lbl_msg_aguarde.Caption := 'Aguarde! Abrindo Cupom';
    end;
    ACBrECF.Estado;
  end;

end;

procedure TDtmAcbr.ACBrECFAntesFechaCupom(const Observacao: AnsiString;
  const IndiceBMP: Integer);
begin
  with formPrincipal do
  begin
   // EdtTotalCupom.Caption := '0,00';
   // EdtPreco.Caption      := '0,00';
    //EdtQuant.Caption      := '0,00';
    StrCpfConsumidrNFP    := '';
  end;

end;

procedure TDtmAcbr.ACBrECFDepoisAbreCupom(const CPF_CNPJ, Nome,
  Endereco: string);
begin
  with formPrincipal do
  begin
    StrRespt01 := PadSpace(FormatDateTime('dd/mm/yyyy hh:nn:ss', ACBrECF.DataHora)+ '|COO:' + IntToStrZero(StrToInt(ACBrECF.NumCupom),6), 41, '|');
   // StrRespt01 := StrRespt01 + sLineBreak + stringreplace('-', 44);
   // lbl_infomemocupom.Caption  := StrRespt01;
   // lbl_infomemocupom.Visible  := True;
    BolVendaAberta             := True;
    MemobobinaRegistro.Visible := True;
    douImpostosFederal         := 0;
    douImpostosEstadual        := 0;
    douImpostosMunicipal       := 0;
    strChaveCupomIBPT          := '';
  end;
end;


procedure TDtmAcbr.ACBrECFDepoisFechaCupom(const Observacao: AnsiString;
  const IndiceBMP: Integer);
begin
  BolVendaAberta := False;
end;

procedure TDtmAcbr.ACBrECFDepoisVendeItem(const Codigo, Descricao,
  AliquotaICMS: string; const Qtd, ValorUnitario,
  ValorDescontoAcrescimo: Double; const Unidade, TipoDescontoAcrescimo,
  DescontoAcrescimo: string);
begin
  with dtmBcoPdv, formPrincipal, fdqbuscaproduto do
  begin
    douImpostosFederal    := douImpostosFederal + RoundTo(TruncFix((douTotalItem-douDescontoItem) *
                           fdqbuscaproduto.FieldByName('PRO_PERC_IMPOSTOS_F').AsFloat) / 100, -2);

    douImpostosEstadual   := douImpostosEstadual + RoundTo(TruncFix((douTotalItem-douDescontoItem) *
                          fdqbuscaproduto.FieldByName('PRO_PERC_IMPOSTOS_E').AsFloat) / 100, -2);

    douImpostosMunicipal  := douImpostosMunicipal + RoundTo(TruncFix((douTotalItem-douDescontoItem) *
                           fdqbuscaproduto.FieldByName('PRO_PERC_IMPOSTOS_M').AsFloat) / 100, -2);

    lblStatusPDV.Caption     := fdqbuscaproduto.FieldByName('PRO_DESCRICAO_PDV').AsString;
    lblDescricaoItem.Caption :=  fdqbuscaproduto.FieldByName('PRO_DESCRICAO_PDV').AsString;
    lblvlrItemUN.Caption     :=FormatFloat('#,##0.00 ',douvlrUnitItem  );
    lblqdtItem.Caption       :=FormatFloat('#,##0.00 ', douqtdeItem );
    lblTotalItem.Caption     :=FormatFloat('#,##0.00 ', douTotalItem );
   // lblSubtotalCupom.Caption := FormatFloat('#,##0.00 ', douWSubTotalCupom );
    lblSubtotalCupom.Caption := FormatFloat('#,##0.00 ', ACBrECF.Subtotal );
  end;


end;

procedure TDtmAcbr.DataModuleCreate(Sender: TObject);
begin
  with dtmBcoPdv, DtmAcbr do
  begin
   
  end;
end;

end.
