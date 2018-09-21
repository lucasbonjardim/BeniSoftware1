unit UdtmACBR;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.ExtCtrls, Vcl.StdCtrls, ACBrRFD,
  ACBrSMSClass, ACBrSMS, ACBrDIS, ACBrECFVirtualNaoFiscal, ACBrPosPrinter,
  ACBrBAL, ACBrTER, ACBrLCB, ACBrCHQ, ACBrGAV, ACBrECF, ACBrDFe, ACBrSATWS,
  ACBrSATExtratoESCPOS, ACBrECFVirtual, ACBrECFVirtualBuffer,
  ACBrECFVirtualPrinter, ACBrECFVirtualSAT, ACBrSATExtratoClass,
  ACBrSATExtratoReportClass, ACBrSATExtratoFortesFr, ACBrBase, ACBrSAT,
  ACBrTEFD, ACBrMail, ACBrConsultaCNPJ, ACBrSocket, ACBrConsultaCPF,
  ACBrCargaBal, ACBrEnterTab, ACBrFala, ACBrValidador, ACBrTroco, ACBrExtenso,
  ACBrCMC7, ACBrCalculadora;

type
  TdtmACBR = class(TForm)
    pnl1: TPanel;
    pnl2: TPanel;
    pnl3: TPanel;
    pnl4: TPanel;
    pnl5: TPanel;
    pnl6: TPanel;
    lbl1: TLabel;
    lbl2: TLabel;
    lbl3: TLabel;
    lbl4: TLabel;
    lbl5: TLabel;
    lbl6: TLabel;
    acbrst1: TACBrSAT;
    ACBrSATExtratoFortes1: TACBrSATExtratoFortes;
    ACBrECFVirtualSAT1: TACBrECFVirtualSAT;
    ACBrSATExtratoESCPOS1: TACBrSATExtratoESCPOS;
    ACBrSATWS1: TACBrSATWS;
    ACBrECF1: TACBrECF;
    ACBrGAV1: TACBrGAV;
    ACBrCHQ1: TACBrCHQ;
    ACBrLCB1: TACBrLCB;
    ACBrTER1: TACBrTER;
    ACBrBAL1: TACBrBAL;
    ACBrPosPrinter1: TACBrPosPrinter;
    ACBrECFVirtualNaoFiscal1: TACBrECFVirtualNaoFiscal;
    ACBrDIS1: TACBrDIS;
    ACBrSMS1: TACBrSMS;
    ACBrRFD1: TACBrRFD;
    ACBrCalculadora1: TACBrCalculadora;
    ACBrCMC71: TACBrCMC7;
    ACBrExtenso1: TACBrExtenso;
    ACBrTroco1: TACBrTroco;
    ACBrValidador1: TACBrValidador;
    ACBrFala1: TACBrFala;
    ACBrEnterTab1: TACBrEnterTab;
    ACBrCargaBal1: TACBrCargaBal;
    ACBrConsultaCPF1: TACBrConsultaCPF;
    ACBrConsultaCNPJ1: TACBrConsultaCNPJ;
    ACBrMail1: TACBrMail;
    ACBrTEFD1: TACBrTEFD;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  dtmACBR: TdtmACBR;

implementation

uses
Unit_Variaveis_Globais;

{$R *.dfm}

end.
