unit ufrmPrincipal;

interface

uses
   { Componentes Delphi }
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.ExtCtrls, Vcl.ComCtrls, Vcl.Menus,
  Vcl.StdCtrls, Vcl.Imaging.jpeg, Data.DB, Datasnap.DBClient, System.Actions,
  Vcl.ActnList, dxGDIPlusClasses, ACBrEnterTab, Vcl.Mask,  System.Math,
  Vcl.DBCtrls, System.IniFiles, System.DateUtils, System.Contnrs, System.TypInfo, System.MaskUtils,
  {Firedac}
  FireDAC.Stan.Param,
  {Componentes ACBR }
  ACBrPosPrinter,ACBrExtenso, ACBrCHQ, ACBrMail, ACBrNFeDANFeRLClass, ACBrTEFDCliSiTef, ACBrConsts,
  ACBrDANFCeFortesFr, ACBrNFeDANFEClass, ACBrNFeDANFeESCPOS, ACBrECFVirtualNFCe,
  ACBrDFe, ACBrNFe, ACBrSATExtratoFortesFr, ACBrTEFDClass,
  ACBrSATExtratoClass, ACBrSATExtratoESCPOS, ACBrECFVirtualSAT, ACBrSAT, ACBrECFClass,
  ACBrPAF, ACBrEAD, ACBrAAC, ACBrCMC7, ACBrTroco, ACBrGAV, ACBrValidador, pcnCFe,
  ACBrTEFD, ACBrBAL, ACBrLCB, ACBrRFD, ACBrDFeSSL,  ACBrECFVirtual,
  ACBrECFVirtualBuffer, ACBrECFVirtualPrinter, ACBrECFVirtualNaoFiscal,
  ACBrECF, ACBrUtil, ACBrSATClass, ACBrDevice, pcnNFe, ACBrPAFClass, ACBrCHQPerto,
  ACBrSintegra, ACBrSpedFiscal, ACBrBlocoX, ACBrPAFRegistros, Vcl.Grids,
  Vcl.DBGrids, Vcl.AppEvnts,ACBrSATExtratoReportClass, ACBrBase, UVariaveisGlobais,
  Vcl.WinXPanels, Vcl.Imaging.pngimage;


type
  TformPrincipal = class(TForm)
    ACBrEnterTab1: TACBrEnterTab;
    Notebook1: TNotebook;
    imgFundoSistemaPDV: TImage;
    imgFudoPDVSombra: TImage;
    pnlBaixoimg: TPanel;
    Image6: TImage;
    pnlBaixo: TPanel;
    Image5: TImage;
    lblMenu: TLabel;
    Image9: TImage;
    lblOperadorCaixa: TLabel;
    lbl_ope: TLabel;
    pnlTopo: TPanel;
    ImageParalogoCLi: TImage;
    imgpanltopDireito: TImage;
    imgLogoCli: TImage;
    lblHora: TLabel;
    lblData: TLabel;
    lblCidade: TLabel;
    lblStatusPDV: TLabel;
    memoRelGerencial: TMemo;
    pnlEspancivoEsquerdo: TPanel;
    CardPnlEsquerdoResponsivel: TCardPanel;
    CardpnlEsquerdo: TCard;
    pnlDadosItemTotal: TPanel;
    lblDesValItem: TLabel;
    lblTotalItem: TLabel;
    Label13: TLabel;
    pnlImagemItem: TPanel;
    imgProdutoVenda: TImage;
    pnlDadosItem: TPanel;
    lblqdtItem: TLabel;
    lblDescricaoQDT: TLabel;
    lblDescricaoItem: TLabel;
    lblDesValrun: TLabel;
    lblvlrItemUN: TLabel;
    Label10: TLabel;
    pnlExpancivoDireito: TPanel;
    CardpnlDireitoResponcivel: TCardPanel;
    CardpnlmemoRegistro: TCard;
    pnlAzul: TPanel;
    lblTotalPagar: TLabel;
    Label15: TLabel;
    lblSubtotalCupom: TLabel;
    Panel11: TPanel;
    MemobobinaRegistro: TMemo;
    pnl_aguardeCarrePDV: TPanel;
    tmrActivePDV: TTimer;
    tmrAcessoRede: TTimer;
    procedure FormCreate(Sender: TObject);

    procedure FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure edtcodbarraKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure edtcodbarraKeyPress(Sender: TObject; var Key: Char);
    procedure FormDestroy(Sender: TObject);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure FormShow(Sender: TObject);
    procedure FormResize(Sender: TObject);
    procedure Notebook1PageChanged(Sender: TObject);
    procedure tmrActivePDVTimer(Sender: TObject);
    procedure tmrAcessoRedeTimer(Sender: TObject);
  private
    procedure p_AjustaACBrECF;
    procedure p_AjustaACBrPosPrinter;
    procedure p_AjustaACBrECFVirtualNaoFiscal;
    procedure p_LimpaCodigoBarra;
    procedure p_AjustaACBrSAT;
    procedure MostraMSGAguarde(Mensagem: string);

    { Private declarations }
  public
    { Public declarations }
    procedure p_CaixaAberto;
    procedure p_CaixaPagamentos;
    procedure p_vendeItem(ProID: String ) ;
    function  f_BuscaProduto(ProID: String ) : Boolean;
    function  f_RegistraDadosAcbr(CMDECF: TypeComandoAcbrECF;
  Legenda: String): Boolean;

  end;

var
  formPrincipal: TformPrincipal;

implementation

{$R *.dfm}

uses ufrmDtmAcbr, udtmBcoPdv,  ufunctions, uPdvecf;


procedure TformPrincipal.edtcodbarraKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  //FormKeyDown(Sender,Key,Shift);

end;

procedure TformPrincipal.edtcodbarraKeyPress(Sender: TObject; var Key: Char);
begin
  if not (key in ['0'..'9',#13,#8]) then {Não permite digitatar nada <> de numeros backspace e enter.}
   key :=#0;     // elimina o som irritante

  if Key = #13 then  {#13 = ENTER}
  begin

  end;
end;


procedure TformPrincipal.FormCreate(Sender: TObject);
begin
  Notebook1.PageIndex := 0;
  memoRelGerencial.Visible := False;
  IniPDVconfig  := TIniFile.Create(ExtractFilePath(Application.ExeName)+ 'PdvConfig.ini');

  try

  finally
    dtmBcoPdv := TdtmBcoPdv.create(nil);
    DtmAcbr   := TDtmAcbr.Create(nil);
    fsStreamMemo  := TMemoryStream.Create;
  end;

  with  dtmBcoPdv, DtmAcbr do
  begin
    PDVTECF := TPdvECF.create;
    //lbl_redeIp.Caption := 'IP: ' + getiplocalhost;
    XKeyBoardAcbr.Ativo := True;
    p_conexao;

  end;
  ShowCursor(True);
end;

procedure TformPrincipal.FormDestroy(Sender: TObject);
var
HTaskbar: HWND;
OldVal: LongInt;
begin
  try
   with dtmBcoPdv, DtmAcbr do
    begin
      ACBrSAT.DesInicializar;
       HTaskBar := FindWindow('Shell_TrayWnd', nil);
      //habilita novamente a 'taskbar
      EnableWindow(HTaskBar, True);
      //Exibe novamente a taskbar
      ShowWindow(HTaskbar, SW_SHOW);
      ShowCursor(True);
      if Assigned(dtmBcopdv) then
        FreeAndNil(dtmBcopdv);

      if Assigned(DtmAcbr) then
        FreeAndNil(DtmAcbr);

      if Assigned(IniPDVconfig) then
        FreeAndNil(IniPDVconfig);

       if Assigned(fsStreamMemo) then
      FreeAndNil(fsStreamMemo);
    end;
  except on E : exception do
    begin
      Showmessage(e.Message);
    end;
  end;
end;

procedure TformPrincipal.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  try
    case Notebook1.PageIndex of
      0:
      begin // Tela Carrega cfg


      end;



      1:   // Cx Aberto
      begin
        if key = 32 then
        begin
          p_CaixaPagamentos;
        end;

        if key = 13 then
        begin
          p_vendeItem(strCodBarra);
        end;

         if key = 192 then
        begin
          Application.Terminate;
        end;

        if key = 27 then // limpa
        begin
          p_CaixaAberto;
        end;
      end;

      2:  // Cx Fechado
      begin
        if key = 32 then
        begin
          p_CaixaPagamentos;
        end;

        if key = 13 then
        begin
          p_vendeItem(strCodBarra);
        end;

         if key = 192 then
        begin
          Application.Terminate;
        end;


      end;

      3: // CX Pagamento
      begin
        if key = 27 then // limpa
        begin
          p_CaixaAberto;
        end;
      end;

      4: // CX consulta
      begin


      end;

    end;
  except on E: Exception do
    begin
      ShowMessage(E.Message);
    end;
  end;
end;

procedure TformPrincipal.FormKeyPress(Sender: TObject; var Key: Char);
begin
  try
    strCodBarra := f_Tecla(strCodBarra, Key, 14, 2, 'n');
    if (pos('.', strCodBarra) = 0) and (pos(',', strCodBarra) = 0) then
    begin
        //lbl_codbar.Caption := f_trans(f_valr(strCodBarra) / 100, '000,000.00');
      //  lbl_codbar.Caption := strCodBarra;
       { if XKeyBoard.FModel = 'GB' then
        begin
          XKeyBoard.LCDLimpaDisplay;
          XKeyBoard.LCDAbilitaCursor(1);
          XKeyBoard.LCDPrintXY(1, 1, 'Total Cupom: R$ ' + FormatFloat('#,##0.00', douWSubTotalCupom - douWTotDescontoCupom + douWTotAcrescimoCupom));
          XKeyBoard.LCDPrintXY(1, 2, 'Recebido   : R$ ' + FormatFloat('#,##0.00', douTotalPago));
          XKeyBoard.LCDPrintXY(1, 4, 'Valor Pago : R$ ' + FormatFloat('0.00', f_valr(strCodBarra) / 100));
        end
        else
        begin
          XKeyBoard.LCDPrintXY(13, 2, FormatFloat('0.00', f_valr(strCodBar) / 100));
        end;  }

    end
    else
    begin
     // lbl_codbar.Caption := strCodBarra;
        //lbl_codbar.Caption := f_trans(f_valr(strCodBar), '000,000.00');
        //XKeyBoard.LCDPrintXY(13, 2, FormatFloat('0.00', f_valr(strCodBar)));
    end;
  except on E: Exception do
    begin
      ShowMessage(E.Message);
    end;
  end;
end;


procedure TformPrincipal.FormResize(Sender: TObject);
begin
{  Application.ProcessMessages;
  imgFudoPDVSombra.Repaint;
   imgFudoPDVSombra.Refresh;
  imgFundoSistemaPDV.Repaint;
  imgFundoSistemaPDV.Refresh;
  CardpnlDireitoResponcivel.Repaint;
  CardpnlDireitoResponcivel.Refresh;
  CardPnlEsquerdoResponsivel.Repaint;
  CardPnlEsquerdoResponsivel.Refresh;
  pnlExpancivoDireito.Repaint;
  pnlExpancivoDireito.Refresh;
  pnlEspancivoEsquerdo.Repaint;
  pnlEspancivoEsquerdo.Refresh;
  CardpnlmemoRegistro.Repaint;
  CardpnlmemoRegistro.Refresh;
  Panel11.Repaint;
  Panel11.Refresh;
  pnlTopo.Repaint;
  pnlTopo.Refresh;
  imgpanltopDireito.Repaint;
  imgpanltopDireito.Refresh;
  ImageParalogoCLi.Repaint;
  ImageParalogoCLi.Refresh;
  pnlBaixo.Repaint;
  pnlBaixo.Refresh;
  Notebook1.Repaint;
  Notebook1.Refresh;
  Application.ProcessMessages; }
 // imgcxfundo.Repaint;
end;

procedure TformPrincipal.FormShow(Sender: TObject);
begin
  lblHora.Caption := formatdatetime('hh:mm', now);
  lblData.Caption := formatdatetime('dd/mm/yy', now);
  tmrActivePDV.Enabled := True;
end;

function TformPrincipal.f_BuscaProduto(ProID: String): Boolean;
begin
  try
    with dtmBcoPdv, fdqbuscaproduto do
    begin
      close;
      sql.clear;
      sql.add ('select * from tb_produtos t where  t.pro_cod_barra = :codbarra ');
      Parambyname ('codbarra').Value := strCodBarra;
      Open;

      if RecordCount =0 then
      begin
       Result := False;
       p_LimpaCodigoBarra;
       exit
      end;
     // Label11.Caption := 'Código Barra:';
      Result := True;
    end;
  except on E: Exception do
    begin
      ShowMessage(E.Message);
    end;
  end;
end;

procedure TformPrincipal.p_CaixaAberto;
begin
  p_LimpaCodigoBarra;
  Notebook1.PageIndex := 1;
end;

procedure TformPrincipal.p_CaixaPagamentos;
begin
   p_LimpaCodigoBarra;
   Notebook1.PageIndex := 2 ;
end;

procedure TformPrincipal.p_vendeItem(ProID: String ) ;
begin
  if ProID <> EmptyStr then
  begin
    if f_BuscaProduto(ProID) then
    begin
      try
        with  dtmBcoPdv, DtmAcbr, ACBrECF do
        begin
          if not  ACBrECF.ativo then
            ACBrECF.Ativar;

          if not BolVendaAberta then
            AbreCupom(strCpfConsumidrNFP,'','');

          douvlrUnitItem  := 1.99;
          douqtdeItem     := 1;
          douTotalItem    := douvlrUnitItem  * douqtdeItem;


          if not f_RegistraDadosAcbr(TypeVendeItem, 'VENDEITEM') then
          begin
            p_LimpaCodigoBarra;
            douqtdeItem := 1;
            strQtdePeso := '';
            bolMultiplicacaoItem := False;
          end
          else
          begin
            douWSubTotalCupom := douWSubTotalCupom + douTotalItem;
            BolVendaAberta := True;
            p_LimpaCodigoBarra;
          end;
        end;

      except on E: Exception do
        begin
          p_LimpaCodigoBarra;
          ShowMessage(E.Message);
        end;
      end;
    end
    else
    begin
      showmessage ('Produto não Cadastrado  Pressione [ENTER]');
      p_LimpaCodigoBarra;
    end;
  end;
end;

procedure TformPrincipal.tmrAcessoRedeTimer(Sender: TObject);
begin
  try
    tmrAcessoRede.Enabled := False;
    lblHora.Caption := formatdatetime('hh:mm', now);
    lblData.Caption := formatdatetime('dd/mm/yy', now);
  finally
   tmrAcessoRede.Enabled := True;
  end;

end;

procedure TformPrincipal.tmrActivePDVTimer(Sender: TObject);
begin
  try
    tmrActivePDV.Enabled := False;
    Notebook1.PageIndex := 0;
    MostraMSGAguarde('Aguarde! Verificando Status PDV');


    with  dtmBcoPdv, DtmAcbr do
    begin
      p_LimpaCodigoBarra;
      p_AjustaACBrECF;
      ACBrECF.Ativo := True;

      if ACBrECF.Modelo in [ecfNenhum, ecfNaoFiscal] then
      begin
        MostraMSGAguarde('Descrição Erro: ECF não parametrizada. "O Sistema será Encerrado...');
        Application.Terminate;
        Exit;
      end;

      if ACBrECF.Estado in [estVenda, estPagamento] then
      begin
        MostraMSGAguarde('Aguarde! Recuperando Venda...');
        BolVendaAberta := True;
      end;


      pnl_aguardeCarrePDV.Repaint;
      Notebook1.PageIndex := 1;
    end;

    tmrAcessoRede.Enabled := True;

  except on E: Exception do
    begin
      MostraMSGAguarde(E.Message);
      Application.Terminate;
    end;
  end;
end;

procedure TformPrincipal.p_AjustaACBrECF;
begin
  with dtmBcoPdv, DtmAcbr do
  begin
    ACBrECF.Desativar;
    ACBrECF.ECFVirtual := ACBrECFVirtualSAT;
    ACBrECF.MemoParams.Values['HTML'] := '0';
    ACBrECF.MemoParams.Values['HTML'] := '0';
    ACBrECF.MemoLeParams;
    ACBrECF.Modelo := ecfECFVirtual ;
    ACBrECFVirtualSAT.ACBrSAT := ACBrSAT;

    with IniPDVconfig do
    begin
     if TACBrECFModelo(ReadInteger('ECF','Modelo',Integer(ACBrECF.Modelo))) = ecfECFVirtual then
      begin
        p_AjustaACBrPosPrinter;

        case ReadInteger('ECF','ModeloECFVirtual',0) of
          0: p_AjustaACBrECFVirtualNaoFiscal;
          1: p_AjustaACBrSAT;
          2: //p_AjustaACBrNFe;
        end;
      end;
    end;
  end;
end;

procedure TformPrincipal.p_AjustaACBrPosPrinter;
begin
  try
    with  dtmBcoPdv, DtmAcbr, IniPDVconfig do
    begin
      ACBrPosPrinter.Desativar ;
      ACBrPosPrinter.Modelo                     := TACBrPosPrinterModelo( ReadInteger('PosPrinter','Modelo', Integer(ACBrPosPrinter.Modelo)) );
      ACBrPosPrinter.Porta                      := ReadString('PosPrinter','Porta',ACBrPosPrinter.Porta);
      ACBrPosPrinter.Device.ParamsString        := ReadString('PosPrinter','ParamsString',ACBrPosPrinter.Device.ParamsString);
      ACBrPosPrinter.ArqLOG                     := ReadString('PosPrinter','ArqLog',ACBrPosPrinter.ArqLOG);
      ACBrPosPrinter.LinhasBuffer               := ReadInteger('PosPrinter','LinhasBuffer',ACBrPosPrinter.LinhasBuffer);
      ACBrPosPrinter.LinhasEntreCupons          := ReadInteger('PosPrinter','LinhasPular',ACBrPosPrinter.LinhasEntreCupons);
      ACBrPosPrinter.EspacoEntreLinhas          := ReadInteger('PosPrinter','EspacoEntreLinhas',ACBrPosPrinter.EspacoEntreLinhas);
      ACBrPosPrinter.ColunasFonteNormal         := ReadInteger('PosPrinter','Colunas',ACBrPosPrinter.ColunasFonteNormal);
      ACBrPosPrinter.CortaPapel                 := ReadBool('PosPrinter','CortaPapel',ACBrPosPrinter.CortaPapel);
      ACBrPosPrinter.ControlePorta              := ReadBool('PosPrinter','ControlePorta',ACBrPosPrinter.ControlePorta);
      ACBrPosPrinter.TraduzirTags               := ReadBool('PosPrinter','TraduzirTags',ACBrPosPrinter.TraduzirTags);
      ACBrPosPrinter.IgnorarTags                := ReadBool('PosPrinter','IgnorarTags',ACBrPosPrinter.IgnorarTags);
      ACBrPosPrinter.PaginaDeCodigo             := TACBrPosPaginaCodigo( ReadInteger('PosPrinter','PaginaDeCodigo',Integer(ACBrPosPrinter.PaginaDeCodigo)) );
      ACBrPosPrinter.ConfigBarras.MostrarCodigo := ReadBool('Barras','HRI',ACBrPosPrinter.ConfigBarras.MostrarCodigo);
      ACBrPosPrinter.ConfigBarras.LarguraLinha  := ReadInteger('Barras','Largura',ACBrPosPrinter.ConfigBarras.LarguraLinha);
      ACBrPosPrinter.ConfigBarras.Altura        := ReadInteger('Barras','Altura',ACBrPosPrinter.ConfigBarras.Altura);
      ACBrPosPrinter.ConfigQRCode.Tipo          := ReadInteger('QRCode','Tipo',ACBrPosPrinter.ConfigQRCode.Tipo);
      ACBrPosPrinter.ConfigQRCode.LarguraModulo := ReadInteger('QRCode','LarguraModulo',ACBrPosPrinter.ConfigQRCode.LarguraModulo);
      ACBrPosPrinter.ConfigQRCode.ErrorLevel    := ReadInteger('QRCode','ErrorLevel',ACBrPosPrinter.ConfigQRCode.ErrorLevel);
      ACBrPosPrinter.ConfigLogo.KeyCode1        := ReadInteger('Logo','KC1',ACBrPosPrinter.ConfigLogo.KeyCode1);
      ACBrPosPrinter.ConfigLogo.KeyCode2        := ReadInteger('Logo','KC2',ACBrPosPrinter.ConfigLogo.KeyCode2);
      ACBrPosPrinter.ConfigLogo.FatorX          := ReadInteger('Logo','FatorX',ACBrPosPrinter.ConfigLogo.FatorX);
      ACBrPosPrinter.ConfigLogo.FatorY          := ReadInteger('Logo','FatorY',ACBrPosPrinter.ConfigLogo.FatorY);
      ACBrPosPrinter.ConfigGaveta.SinalInvertido:= ReadBool('Gaveta','SinalInvertido',ACBrPosPrinter.ConfigGaveta.SinalInvertido);
      ACBrPosPrinter.ConfigGaveta.TempoOFF      := ReadInteger('Gaveta','TempoOFF',ACBrPosPrinter.ConfigGaveta.TempoOFF);
      ACBrPosPrinter.ConfigGaveta.TempoON       := ReadInteger('Gaveta','TempoON',ACBrPosPrinter.ConfigGaveta.TempoON);
    end;

  except on E: exception do
    begin
      Showmessage(E.Message);
    end;

  end;

end;


procedure TformPrincipal.p_AjustaACBrECFVirtualNaoFiscal;
begin
  try
    with  dtmBcoPdv, DtmAcbr, IniPDVconfig do
    begin
      ACBrECFVirtualNaoFiscal.CNPJ            := ReadString('VirtualNaoFiscal','CNPJ',ACBrECFVirtualNaoFiscal.CNPJ);
      ACBrECFVirtualNaoFiscal.IE              := ReadString('VirtualNaoFiscal','IE',ACBrECFVirtualNaoFiscal.IE);
      ACBrECFVirtualNaoFiscal.IM              := ReadString('VirtualNaoFiscal','IM',ACBrECFVirtualNaoFiscal.IM);
      ACBrECFVirtualNaoFiscal.NomeArqINI      := ReadString('VirtualNaoFiscal','NomeArqINI',ACBrECFVirtualNaoFiscal.NomeArqINI);
      ACBrECFVirtualNaoFiscal.NumSerie        := ReadString('VirtualNaoFiscal','NumeroSerie',ACBrECFVirtualNaoFiscal.NumSerie);
      ACBrECFVirtualNaoFiscal.Colunas         := ReadInteger('VirtualNaoFiscal','Colunas',ACBrECFVirtualNaoFiscal.Colunas);
      ACBrECFVirtualNaoFiscal.NumCRO          := ReadInteger('VirtualNaoFiscal','NumeroCRO',ACBrECFVirtualNaoFiscal.NumCRO);
      ACBrECFVirtualNaoFiscal.NumECF          := ReadInteger('VirtualNaoFiscal','NumeroECF',ACBrECFVirtualNaoFiscal.NumECF);
      ACBrECFVirtualNaoFiscal.ExibeAvisoLegal := ReadBool('VirtualNaoFiscal','ExibeAvisoLegal',ACBrECFVirtualNaoFiscal.ExibeAvisoLegal);
      fsStreamMemo.Clear; memoRelGerencial.Clear;
      ReadBinaryStream('VirtualNaoFiscal','Cabecalho',fsStreamMemo) ;
      memoRelGerencial.Lines.LoadFromStream(fsStreamMemo);
      ACBrECFVirtualNaoFiscal.Cabecalho       := memoRelGerencial.Lines;
      fsStreamMemo.Clear; memoRelGerencial.Clear;
      ReadBinaryStream('VirtualNaoFiscal','CabecalhoItem',fsStreamMemo) ;
      memoRelGerencial.Lines.LoadFromStream(fsStreamMemo);
      ACBrECFVirtualNaoFiscal.CabecalhoItem   := memoRelGerencial.Lines;
      fsStreamMemo.Clear; memoRelGerencial.Clear;
      ReadBinaryStream('VirtualNaoFiscal','MascaraItem',fsStreamMemo) ;
      memoRelGerencial.Lines.LoadFromStream(fsStreamMemo);
      ACBrECFVirtualNaoFiscal.MascaraItem     := StringReplace(memoRelGerencial.Text,'|',sLineBreak,[rfReplaceAll]);

      ACBrECF.ECFVirtual                 := ACBrECFVirtualNaoFiscal;
      ACBrECFVirtualNaoFiscal.PosPrinter := ACBrPosPrinter;
    end;

  except on E: Exception do
    begin
     
    end;
  end;
end;

procedure TformPrincipal.p_AjustaACBrSAT;
var
  i: Integer;
begin
  try
    with  dtmBcoPdv, DtmAcbr, IniPDVconfig do
    begin
       ACBrSAT.Inicializado := False;
      ACBrSAT.Extrato      := nil;
      ACBrSAT.Modelo  := TACBrSATModelo( ReadInteger('SAT','Modelo',Integer(ACBrSAT.Modelo)) ) ;
      ACBrSAT.ArqLOG  := ReadString('SAT','ArqLog',ACBrSAT.ArqLOG);
      ACBrSAT.NomeDLL := ReadString('SAT','NomeDLL',ACBrSAT.NomeDLL);

      ACBrSAT.Config.EhUTF8                       := ReadBool('SAT','EhUTF8', ACBrSAT.Config.EhUTF8);
      ACBrSAT.Config.emit_CNPJ                    := ReadString('SATEmit','CNPJ',ACBrSAT.Config.emit_CNPJ);
     // ACBrSAT.Config.emit_cRegTrib                := TpcnRegTrib( ReadInteger('SATEmit','RegTributario',Integer(ACBrSAT.Config.emit_cRegTrib)) ) ;
    //  ACBrSAT.Config.emit_cRegTribISSQN           := TpcnRegTribISSQN( ReadInteger('SATEmit','RegTribISSQN',Integer(ACBrSAT.Config.emit_cRegTribISSQN)) ) ;
      ACBrSAT.Config.emit_IE                      := ReadString('SATEmit','IE',ACBrSAT.Config.emit_IE);
      ACBrSAT.Config.emit_IM                      := ReadString('SATEmit','IM',ACBrSAT.Config.emit_IM);
     // ACBrSAT.Config.emit_indRatISSQN             := TpcnindRatISSQN( ReadInteger('SATEmit','IndRatISSQN',Integer(ACBrSAT.Config.emit_indRatISSQN)) ) ;
      ACBrSAT.Config.ide_CNPJ                     := ReadString('SATSwH','CNPJ',ACBrSAT.Config.ide_CNPJ);
      ACBrSAT.Config.ide_numeroCaixa              := ReadInteger('SAT','NumeroCaixa',ACBrSAT.Config.ide_numeroCaixa);
     // ACBrSAT.Config.ide_tpAmb                    := TpcnTipoAmbiente( ReadInteger('SAT','Ambiente',Integer(ACBrSAT.Config.ide_tpAmb)) );
      ACBrSAT.Config.infCFe_versaoDadosEnt        := ReadFloat('SAT','versaoDadosEnt', cversaoDadosEnt);
      ACBrSAT.Config.PaginaDeCodigo               := ReadInteger('SAT','PaginaDeCodigo',ACBrSAT.Config.PaginaDeCodigo);


      ACBrSAT.ConfigArquivos.SalvarCFe            := ReadBool('SAT','SalvarCFe', ACBrSAT.ConfigArquivos.SalvarCFe);

      if ReadBool('Parametros','EnviaSatDescompactado', ACBrSAT.ConfigArquivos.SalvarCFe) then
       // ACBrSAT.ConfigArquivos.PastaCFeVenda      := PathWithDelim(ReadString('SAT','PastaCfeVenda', ''))+'Vendas\'+ FormatDateTime('mmm', now) +' ' +FormatDateTime('yyyy', now)+ ' '+'PDV ' + PdvParametrosVO.NumCaixa
      else
      //  ACBrSAT.ConfigArquivos.PastaCFeVenda      := PathWithDelim(ReadString('SAT','PastaCfeVenda', ''))+'Vendas\'+ FormatDateTime('mmm', now) +' ' +FormatDateTime('yyyy', now)+ ' '+'PDV ' + PdvParametrosVO.NumCaixa;
      //ACBrSAT.ConfigArquivos.PastaCFeVenda      := PathWithDelim(ReadString('SAT','PastaCfeVenda', ''))+'Vendas\'+'ECF '+intToStr(ReadInteger('VirtualNaoFiscal','NumeroECF',ACBrECFVirtualSAT.NumECF))+'\'+FormatDateTime('yyyy', now)+'\'+FormatDateTime('mm', now)+'\'+FormatDateTime('dd', now);
      ACBrSAT.ConfigArquivos.SalvarCFeCanc        := ReadBool('SAT','SalvarCFeCanc', ACBrSAT.ConfigArquivos.SalvarCFeCanc);
      //ACBrSAT.ConfigArquivos.PastaCFeCancelamento := PathWithDelim(ReadString('SAT','PastaCfeVenda', ''))+'Cancelamentos\' + FormatDateTime('mmm', now) +' ' +FormatDateTime('yyyy', now)+ ' '+'PDV ' + PdvParametrosVO.NumCaixa;
      //ACBrSAT.ConfigArquivos.PastaCFeCancelamento := PathWithDelim(ReadString('SAT','PastaCfeVenda', ''))+'Cancelamentos\'+'ECF '+intToStr(ReadInteger('VirtualNaoFiscal','NumeroECF',ACBrECFVirtualSAT.NumECF))+'\'+FormatDateTime('yyyy', now)+'\'+FormatDateTime('mm', now)+'\'+FormatDateTime('dd', now);
      ACBrSAT.ConfigArquivos.SalvarEnvio          := ReadBool('SAT','SalvarEnvio', ACBrSAT.ConfigArquivos.SalvarEnvio);
      //ACBrSAT.ConfigArquivos.PastaEnvio         := PathWithDelim(ReadString('SAT','PastaCfeVenda', ''))+'Enviados\'+'ECF '+intToStr(ReadInteger('VirtualNaoFiscal','NumeroECF',ACBrECFVirtualSAT.NumECF))+'\'+FormatDateTime('yyyy', now)+'\'+FormatDateTime('mm', now)+'\'+FormatDateTime('dd', now);
      ACBrSAT.ConfigArquivos.PastaEnvio           := PathWithDelim(ReadString('SAT','PastaCfeVenda', ''))+'Enviados\';
      ACBrSAT.ConfigArquivos.SepararPorCNPJ       := ReadBool('SAT','SepararPorCNPJ', ACBrSAT.ConfigArquivos.SepararPorCNPJ);
      ACBrSAT.ConfigArquivos.SepararPorMes        := ReadBool('SAT','SepararPorMES', ACBrSAT.ConfigArquivos.SepararPorMes);

     // ACBrSAT.Rede.tipoInter                      := TTipoInterface( ReadInteger('SATRede','tipoInter',Integer(ACBrSAT.Rede.tipoInter)) );
      ACBrSAT.Rede.SSID                           := ReadString('SATRede','SSID',ACBrSAT.Rede.SSID);
    //  ACBrSAT.Rede.seg                            := TSegSemFio( ReadInteger('SATRede','seg',Integer(ACBrSAT.Rede.seg)) ) ;
      ACBrSAT.Rede.codigo                         := ReadString('SATRede','codigo',ACBrSAT.Rede.codigo);
    //  ACBrSAT.Rede.tipoLan                        := TTipoLan( ReadInteger('SATRede','tipoLan',Integer(ACBrSAT.Rede.tipoLan)) ) ;
      ACBrSAT.Rede.lanIP                          := ReadString('SATRede','lanIP',ACBrSAT.Rede.lanIP);
      ACBrSAT.Rede.lanMask                        := ReadString('SATRede','lanMask',ACBrSAT.Rede.lanMask);
      ACBrSAT.Rede.lanGW                          := ReadString('SATRede','lanGW',ACBrSAT.Rede.lanGW);
      ACBrSAT.Rede.lanDNS1                        := ReadString('SATRede','lanDNS1',ACBrSAT.Rede.lanDNS1);
      ACBrSAT.Rede.lanDNS2                        := ReadString('SATRede','lanDNS2',ACBrSAT.Rede.lanDNS2);
      ACBrSAT.Rede.usuario                        := ReadString('SATRede','usuario',ACBrSAT.Rede.usuario);
      ACBrSAT.Rede.senha                          := ReadString('SATRede','senha',ACBrSAT.Rede.senha);
      ACBrSAT.Rede.proxy                          := ReadInteger('SATRede','proxy',ACBrSAT.Rede.proxy);
      ACBrSAT.Rede.proxy_ip                       := ReadString('SATRede','proxy_ip',ACBrSAT.Rede.proxy_ip);
      ACBrSAT.Rede.proxy_porta                    := ReadInteger('SATRede','proxy_porta',ACBrSAT.Rede.proxy_porta);
      ACBrSAT.Rede.proxy_user                     := ReadString('SATRede','proxy_user',ACBrSAT.Rede.proxy_user);
      ACBrSAT.Rede.proxy_senha                    := ReadString('SATRede','proxy_senha',ACBrSAT.Rede.proxy_senha);

      { Configuração - ACBrSATExtratoESCPOS }
      ACBrSATExtratoESCPOS.PosPrinter.Device.ParamsString := ReadString('SATExtrato','ParamsString',ACBrSATExtratoESCPOS.PosPrinter.Device.ParamsString);
      ACBrSATExtratoESCPOS.ImprimeEmUmaLinha              := ReadBool('SATExtrato', 'ImprimeEmUmaLinha', ACBrSATExtratoESCPOS.ImprimeEmUmaLinha);
      ACBrSATExtratoESCPOS.ImprimeDescAcrescItem          := ReadBool('SATExtrato', 'ImprimeDescAcrescItem', ACBrSATExtratoESCPOS.ImprimeDescAcrescItem);
      ACBrSATExtratoESCPOS.ImprimeQRCode                  := ReadBool('SATExtrato', 'ImprimeQRCode', ACBrSATExtratoESCPOS.ImprimeQRCode);
      ACBrSATExtratoESCPOS.UsaCodigoEanImpressao          := ReadBool('SATExtrato', 'UsaCodigoEanImpressao', ACBrSATExtratoESCPOS.UsaCodigoEanImpressao);

      { Configuração - ACBrSATExtratoFortes }
      ACBrSATExtratoFortes.LarguraBobina                  := ReadInteger('SATFortes','Largura',ACBrSATExtratoFortes.LarguraBobina);
      ACBrSATExtratoFortes.Margens.Topo                   := ReadInteger('SATFortes','MargemTopo',ACBrSATExtratoFortes.Margens.Topo);
      ACBrSATExtratoFortes.Margens.Fundo                  := ReadInteger('SATFortes','MargemFundo',ACBrSATExtratoFortes.Margens.Fundo);
      ACBrSATExtratoFortes.Margens.Esquerda               := ReadInteger('SATFortes','MargemEsquerda',ACBrSATExtratoFortes.Margens.Esquerda);
      ACBrSATExtratoFortes.Margens.Direita                := ReadInteger('Fortes','MargemDireita',ACBrSATExtratoFortes.Margens.Direita);
      ACBrSATExtratoFortes.MostrarPreview                 := ReadBool('SATFortes','Preview',ACBrSATExtratoFortes.MostrarPreview);
      if ReadString('SATPrinter','Name','') <> '' then
        ACBrSATExtratoFortes.PrinterName := ReadString('SATPrinter','Name','');

      case ReadBool('SATFortes','UsarFortes', True) of
        True :ACBrSAT.Extrato := ACBrSATExtratoFortes;
        False:ACBrSAT.Extrato := ACBrSATExtratoESCPOS;
      end;

      ACBrECFVirtualSAT.NumSerie := ReadString('VirtualNaoFiscal','NumeroSerie',ACBrECFVirtualSAT.NumSerie);

      ACBrECFVirtualSAT.NumECF   := ReadInteger('VirtualNaoFiscal','NumeroECF',ACBrECFVirtualSAT.NumECF);
      ACBrECFVirtualSAT.NumCRO   := ReadInteger('VirtualNaoFiscal','NumeroCRO',ACBrECFVirtualSAT.NumECF);
      ACBrECFVirtualSAT.CNPJ     := ReadString('VirtualNaoFiscal','CNPJ',ACBrECFVirtualSAT.CNPJ);
      ACBrECFVirtualSAT.IE       := ReadString('VirtualNaoFiscal','IE',ACBrECFVirtualSAT.IE);
      ACBrECFVirtualSAT.IM       := ReadString('VirtualNaoFiscal','IM',ACBrECFVirtualSAT.IM);

      fsStreamMemo.Clear;
       memoRelGerencial.Clear;
      ReadBinaryStream('VirtualNaoFiscal','Cabecalho',fsStreamMemo) ;
      memoRelGerencial.Lines.LoadFromStream(fsStreamMemo);
      ACBrECFVirtualSAT.Cabecalho.Clear;
      ACBrECFVirtualSAT.Cabecalho :=  memoRelGerencial.Lines;

      fsStreamMemo.Clear;
       memoRelGerencial.Clear;
      ReadBinaryStream('VirtualNaoFiscal','CabecalhoItem',fsStreamMemo) ;
      memoRelGerencial.Lines.LoadFromStream(fsStreamMemo);
      ACBrECFVirtualSAT.CabecalhoItem.Clear;
      ACBrECFVirtualSAT.CabecalhoItem := memoRelGerencial.Lines;

      fsStreamMemo.Clear; memoRelGerencial.Clear;
      ReadBinaryStream('VirtualNaoFiscal','MascaraItem',fsStreamMemo) ;
      memoRelGerencial.Lines.LoadFromStream(fsStreamMemo);
      ACBrECFVirtualSAT.MascaraItem := StringReplace(memoRelGerencial.Text,'|',sLineBreak,[rfReplaceAll]);

      ACBrECF.ECFVirtual           := ACBrECFVirtualSAT;
      ACBrECFVirtualSAT.PosPrinter := ACBrPosPrinter;

      try
        if ACBrSAT.Modelo = satNenhum then
          raise Exception.Create(ACBrStr('Erro. - SAT não parametrizado.'))
        else

        ACBrSAT.Inicializar;
      except on E: Exception do
      //raise Exception.Create(ACBrStr(E.Message));
      end;
    end;

  except on E: Exception do
    begin
     
    end;
  end;
end;

procedure TformPrincipal.p_LimpaCodigoBarra;
begin
  try
   // lbl_codbar.Caption := EmptyStr;
    strCodBarra := EmptyStr;

  except on E: Exception do
    begin
      showmessage(e.Message);
    end;
  end;
end;

function TformPrincipal.f_RegistraDadosAcbr(CMDECF: TypeComandoAcbrECF;
Legenda: String): Boolean;
var
 vl_EMessage        : String;
 I, IntRetornoCMD   : Integer   ;
 Vl_TentarNovamente : Boolean;
begin
  try
    IntRetornoCMD  := 0;
    with dtmBcoPdv, DtmAcbr, ACBrECF do
    begin
      case CMDECF of
        TypeVendeItem:
        begin
          try
            strUnidadeRefProduto := fdqbuscaproduto.FieldByName('PRO_UN_REFERENCIA').AsString ;
            ACBrECF.VendeItem((PadLeft(fdqbuscaproduto.FieldByName('PRO_COD_BARRA').AsString, 13, '0')),
            PadRight(fdqbuscaproduto.FieldByName('PRO_DESCRICAO_PDV').AsString,24),
            (fdqbuscaproduto.FieldByName('PRO_ALIQ_ICMS').AsString),
            douqtdeItem,douvlrUnitItem, douDescontoItem, strUnidadeRefProduto,  '$' )

          Except on E: Exception do
            begin
              IntRetornoCMD  := 1;
              vl_EMessage := E.Message;
              ShowMessage('Erro Ao Registrar ITEM no ACBR '+ E.Message);
            end;

          end;
        end;

        TypeCancelaItemVendido:
        begin

        end;

        TypeCancelaCupom:
        begin

        end;
        TypeDescontoAcrescimoItemAnterior:
        begin

        end;

        TypeFechaVinculado:
        begin

        end;

        TypeDescontoTotalCupom:
        begin

        end;

        TypeLeituraX:
        begin

        end;

        TypeAcrescimoTotalCupom:
        begin

        end;

        TypeEfetuaPagamento:
        begin

        end;

        TypeReducaoZ:
        begin

        end;

        TypeImprimePagamentos:
        begin

        end;

        TypeRegistraItemNaoFiscal:
        begin

        end;

        TypeSubTotalizaCupom:
        begin


        end;

        TypeAbreCupomVinculado:
        begin

        end;

        TypePulaLinhas:
        begin

        end;

        TypeFechaGerencial:
        begin

        end;

        TypeAbreGerencial:
        begin

        end;
        TypeAbreCupom:
        begin

        end;

        TypeFechaCupom:
        begin

        end;
      end;
    end;

  except on E: Exception do
    begin
      ShowMessage('Erro Ao Registrar dados no ACBR '+ E.Message);
    end;
  end;
end;

procedure TformPrincipal.Notebook1PageChanged(Sender: TObject);
begin
  Notebook1.Repaint;
end;

procedure TformPrincipal.MostraMSGAguarde(Mensagem: string);
begin
  pnl_aguardeCarrePDV.Caption := Mensagem;
  pnl_aguardeCarrePDV.Repaint;
  Sleep(2000);
end;

end.
