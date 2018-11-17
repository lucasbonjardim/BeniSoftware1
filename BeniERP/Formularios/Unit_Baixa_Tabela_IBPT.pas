unit Unit_Baixa_Tabela_IBPT;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, FireDAC.Stan.Intf, FireDAC.Stan.Param,
  FireDAC.Phys.Intf, FireDAC.Stan.Option, FireDAC.Stan.Error, FireDAC.DatS,
  FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt, Data.DB,
  FireDAC.Comp.DataSet, FireDAC.Comp.Client, ACBrBase, ACBrSocket, ACBrIBPTax,
  Vcl.ExtCtrls, Vcl.StdCtrls, Vcl.ComCtrls, Vcl.Buttons, Datasnap.DBClient,
  Vcl.DBCtrls, Vcl.Grids, Vcl.DBGrids;

type
  Tform_baixa_ibpt = class(TForm)
    pb1: TProgressBar;
    lbl1: TLabel;
    BaixaTabela: TACBrIBPTax;
    Fdq_TB_NCM: TFDQuery;
    OpenDialog1: TOpenDialog;
    GroupBox1: TGroupBox;
    Label2: TLabel;
    lVersao: TLabel;
    Label4: TLabel;
    lbVigencia: TLabel;
    lblChave: TLabel;
    lblFonte: TLabel;
    edt_local_arquivo: TEdit;
    BitBtn1: TBitBtn;
    PageControl1: TPageControl;
    TabSheet1: TTabSheet;
    DBGrid1: TDBGrid;
    TabSheet2: TTabSheet;
    Memo1: TMemo;
    TabSheet3: TTabSheet;
    Label1: TLabel;
    Label5: TLabel;
    btnAPIConsultarProduto: TButton;
    edtCNPJ: TEdit;
    edtToken: TEdit;
    Memo2: TMemo;
    GroupBox2: TGroupBox;
    Label3: TLabel;
    edNCM: TEdit;
    btnPesquisar: TBitBtn;
    ckbBuscaNCMParcial: TCheckBox;
    rgTipoExportacao: TRadioGroup;
    Panel1: TPanel;
    DBNavigator1: TDBNavigator;
    btExportar: TBitBtn;
    btSair: TBitBtn;
    btProxy: TBitBtn;
    dtsCadastro: TDataSource;
    SaveDialog1: TSaveDialog;
    Fdq_TB_NCMCOD_EMP: TIntegerField;
    Fdq_TB_NCMNCM: TIntegerField;
    Fdq_TB_NCMEX: TIntegerField;
    Fdq_TB_NCMTIPO: TIntegerField;
    Fdq_TB_NCMDESCRICAO: TStringField;
    Fdq_TB_NCMALI_NACIONAL_FEDERAL: TBCDField;
    Fdq_TB_NCMALI_IMPORTADO_FEDERAL: TBCDField;
    Fdq_TB_NCMALI_ESTADUAL: TBCDField;
    Fdq_TB_NCMALI_MUNICIPAL: TBCDField;
    Fdq_TB_NCMVIGENCIA_DT_INI: TDateField;
    Fdq_TB_NCMVIGENCIA_DT_FIM: TDateField;
    Fdq_TB_NCMCHAVE: TStringField;
    Fdq_TB_NCMVERSAO: TStringField;
    Fdq_TB_NCMFONTE_DADOS: TStringField;
    lbl_info: TLabel;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure BitBtn1Click(Sender: TObject);
    procedure btnPesquisarClick(Sender: TObject);
    procedure btExportarClick(Sender: TObject);
    procedure BaixaTabelaErroImportacao(const ALinha, AErro: string);
    procedure btnAPIConsultarProdutoClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure btProxyClick(Sender: TObject);
    procedure btSairClick(Sender: TObject);
  private
    private
    StrNCM: string;
    StrUF: string;
    StrEX_TIPI: String;
    StrCodInterno: string;
    StrDescricao: string;
    StrUnidade: string;
    StrValor: string;
    StrGTIN: string;

    { Private declarations }
  public
    { Public declarations }
  end;

var
  form_baixa_ibpt: Tform_baixa_ibpt;

implementation

{$R *.dfm}

uses UdtmBcoErp, Unit_F_mensagem_Dialog, Unit_Variaveis_Globais, Unit_Alerta,
ACBrUtil, unit_ProxyConfigIBPT_NCM, UdtmCadProdutos;


procedure Tform_baixa_ibpt.BaixaTabelaErroImportacao(const ALinha,
  AErro: string);
begin
  Memo1.Lines.Add(Alinha);
  Memo1.Lines.Add(AErro);
  Memo1.Lines.Add('');
end;

procedure Tform_baixa_ibpt.BitBtn1Click(Sender: TObject);
var
  ex, Decricao: String;
  LCHAVE, LDescricaoNCM, LCodigoNCM : string;
  I, tabela: Integer;
  aliqNac, aliqImp, AliqEst, AliqMun: Double;
begin
  Memo1.Clear;
  OpenDialog1.Title      := 'Importar Tabela IBPT CSV';
  OpenDialog1.DefaultExt := '.csv';
  OpenDialog1.Filter     := 'Arquivos CSV|*.csv';
  If OpenDialog1.Execute then
  begin

    edt_local_arquivo.Text  := OpenDialog1.FileName;

    if not FileExists(edt_local_arquivo.Text) then
    begin
      if KDialog( 'Não encontrado Arquivo IBPT Deseja atualizar Online?', 'Atenção!', tdtPergunta ) then
      begin
        BaixaTabela.DownloadTabela;
        BaixaTabela.Arquivo.SaveToFile( ExtractFilePath( Application.ExeName ) + 'tabela.csv' );
      end;
    end
    else
    begin
       Memo1.Lines.BeginUpdate;
      try
        if KDialog( 'Deseja Realmente Importar para o Banco de Dados Todos os NCM do Arquivo?', 'Atenção!', tdtPergunta ) then
        begin
          if BaixaTabela.AbrirTabela(edt_local_arquivo.Text) then
          begin
            lVersao.Caption     := 'Versão: ' + BaixaTabela.VersaoArquivo;
            lbVigencia.Caption  := 'Vigência: ' + Format('%s a %s', [DateToStr(BaixaTabela.VigenciaInicio), DateToStr(BaixaTabela.VigenciaFim)]);
            lblChave.Caption    := 'Chave: ' + BaixaTabela.ChaveArquivo;
            lblFonte.Caption    := 'Fonte: ' + BaixaTabela.Fonte;

            Fdq_TB_NCM.Close;
            Fdq_TB_NCM.Open;
            Fdq_TB_NCM.DisableControls;

            pb1.Max := BaixaTabela.Itens.Count;
            pb1.Position := 0;

            begin
              try
                for I := 0 to BaixaTabela.Itens.Count - 1 do
                begin
                  Fdq_TB_NCM.Append;
                  Fdq_TB_NCM.FieldByName('COD_EMP').AsInteger              := COD_EMP;
                  Fdq_TB_NCM.FieldByName('NCM').AsString                   := BaixaTabela.Itens[I].NCM;
                  Fdq_TB_NCM.FieldByName('EX').AsInteger                   := StrToIntDef(BaixaTabela.Itens[I].Excecao,0);
                  Fdq_TB_NCM.FieldByName('TIPO').AsInteger                 := Integer(BaixaTabela.Itens[I].Tabela);
                  Fdq_TB_NCM.FieldByName('DESCRICAO').AsString             := BaixaTabela.Itens[I].Descricao;
                  Fdq_TB_NCM.FieldByName('ALI_NACIONAL_FEDERAL').AsFloat   := BaixaTabela.Itens[I].FederalImportado;
                  Fdq_TB_NCM.FieldByName('ALI_ESTADUAL').AsFloat           := BaixaTabela.Itens[I].Estadual;
                  Fdq_TB_NCM.FieldByName('ALI_MUNICIPAL').AsFloat          := BaixaTabela.Itens[I].Municipal;
                  Fdq_TB_NCM.FieldByName('VIGENCIA_DT_INI').AsDateTime     := BaixaTabela.VigenciaInicio;
                  Fdq_TB_NCM.FieldByName('VIGENCIA_DT_FIM').AsDateTime     := BaixaTabela.VigenciaFim;
                  Fdq_TB_NCM.FieldByName('CHAVE').AsString                 := BaixaTabela.ChaveArquivo;
                  Fdq_TB_NCM.FieldByName('VERSAO').AsString                := BaixaTabela.VersaoArquivo;
                  Fdq_TB_NCM.FieldByName('FONTE_DADOS').AsString           := BaixaTabela.Fonte;
                  Fdq_TB_NCM.Post;
                  pb1.Position := pb1.Position + 1;
                  Application.ProcessMessages;
                end;
              finally
                Fdq_TB_NCM.First;
                Fdq_TB_NCM.EnableControls;
                Label4.Caption := 'Quantidade de itens: ' + IntToStr(Fdq_TB_NCM.RecordCount);
                lbl_info.Font.Color :=clGreen;
                lbl_info.Caption :='Importação concluida! ' +  IntToStr(Fdq_TB_NCM.RecordCount) + ' Registros.';
                Memo1.Lines.EndUpdate;
                AlertCard('Primeira Etapa da importação concluido com sucesso!','Atenção');

                // Atualiza DxmemNCM para nao ter que reinicar exe para carregar novos NCMS...
                with DtmBcoErp do
                begin
                  pb1.Position := 0;
                  pb1.Max := BaixaTabela.Itens.Count;
                  FDQ_NCM.Close;
                  FDQ_NCM.Open;

                  if not FDQ_NCM.IsEmpty then
                  begin
                    FDQ_NCM.First;
                    while not FDQ_NCM.Eof do
                    begin
                      LCHAVE         := FDQ_NCM.FieldByName('CHAVE').AsString;
                      LDescricaoNCM  := FDQ_NCM.FieldByName('DESCRICAO').AsString;
                      LCodigoNCM     := FDQ_NCM.FieldByName('NCM').AsString;

                      with dtm_cad_Produtos.ds_NCM do
                      begin
                        DataSet.Insert;
                        DataSet.FieldByName('CHAVE').AsString      := LCHAVE;
                        DataSet.FieldByName('Descricao').AsString  := LDescricaoNCM;
                        DataSet.FieldByName('CodigoNCM').AsString  := LCodigoNCM;
                        DataSet.Post;
                        end;
                      pb1.Position := pb1.Position + 1;
                      FDQ_NCM.Next;
                    end;
                  end;
                end;
                 AlertCard('Importação Concluida com sucesso! ' + IntToStr(Fdq_TB_NCM.RecordCount) + ' Registros importados.','Atenção');
              end;
            end;
          end
         else
          begin
            AlertCard('Erro Ao abrir Tabela I.B.P.T','Erro');
          end;
        end
        else
        AlertCard('Operação Cancelada pelo úsuario.','Erro');
      except on E: exception do
        begin
          Fdq_TB_NCM.close;
          Fdq_TB_NCM.Open;
          DtmBcoErp.f_Auditoria('Tform_baixa_ibpt.BitBtn1Click',E.Message);
          lbl_info.Caption :='';
          pb1.Position := 0;
          AlertCard('Ocorreu um erro ao importar! Verifique o log contate Suporte.','Erro');
          Memo1.Lines.EndUpdate;
          Memo1.Lines.Add(e.Message);
          PageControl1.ActivePageIndex := 1;
        end;
      end;
    end;
  end;
end;

procedure Tform_baixa_ibpt.btExportarClick(Sender: TObject);
begin
   case rgTipoExportacao.ItemIndex of
    0:
      begin
        SaveDialog1.Title      := 'Exportar arquivo CSV';
        SaveDialog1.FileName   := 'IBPTax.csv';
        SaveDialog1.DefaultExt := '.csv';
        SaveDialog1.Filter     := 'Arquivos CSV|*.csv';

        if SaveDialog1.Execute then
          BaixaTabela.Exportar(SaveDialog1.FileName, exCSV);
      end;

    1:
      begin
        SaveDialog1.Title      := 'Exportar arquivo DSV';
        SaveDialog1.FileName   := 'IBPTax.dsv';
        SaveDialog1.DefaultExt := '.dsv';
        SaveDialog1.Filter     := 'Arquivos DSV|*.dsv';

        if SaveDialog1.Execute then
          BaixaTabela.Exportar(SaveDialog1.FileName, exDSV);
      end;

    2:
      begin
        SaveDialog1.Title      := 'Exportar arquivo XML';
        SaveDialog1.FileName   := 'IBPTax.xml';
        SaveDialog1.DefaultExt := '.xml';
        SaveDialog1.Filter     := 'Arquivos XML|*.xml';

        if SaveDialog1.Execute then
          BaixaTabela.Exportar(SaveDialog1.FileName, exXML);
      end;

    3:
      begin
        SaveDialog1.Title      := 'Exportar arquivo HTML';
        SaveDialog1.FileName   := 'IBPTax.html';
        SaveDialog1.DefaultExt := '.html';
        SaveDialog1.Filter     := 'Arquivos HTML|*.html';

        if SaveDialog1.Execute then
          BaixaTabela.Exportar(SaveDialog1.FileName, exHTML);
      end;

    4:
      begin
        SaveDialog1.Title      := 'Exportar arquivo TXT';
        SaveDialog1.FileName   := 'IBPTaxTexto.txt';
        SaveDialog1.DefaultExt := '.txt';
        SaveDialog1.Filter     := 'Arquivos TXT|*.txt';

        if SaveDialog1.Execute then
          BaixaTabela.Exportar(SaveDialog1.FileName, exTXT);
      end;

    5:
      begin
        SaveDialog1.Title      := 'Exportar arquivo delimitado';
        SaveDialog1.FileName   := 'IBPTax.txt';
        SaveDialog1.DefaultExt := '.txt';
        SaveDialog1.Filter     := 'Arquivos TXT|*.txt';

        if SaveDialog1.Execute then
          BaixaTabela.Exportar(SaveDialog1.FileName, '|', False);
      end;
  end;

  MessageDlg(
    Format('Tabela exportada com sucesso em "%s"'+ sLineBreak, [SaveDialog1.FileName]),
    mtInformation,
    [mbOK],
    0
  );
end;

procedure Tform_baixa_ibpt.btnAPIConsultarProdutoClick(Sender: TObject);
var
  Retorno: TACBrIBPTaxProdutoDTO;
begin
  BaixaTabela.CNPJEmpresa := edtCNPJ.Text;
  BaixaTabela.Token       := edtToken.Text;

  StrNCM := InputBox('NCM', 'Informe o NCM (8 dígitos):', StrNCM);
  StrUF := InputBox('UF', 'Informe a UF (Sigla):', StrUF);
  StrEX_TIPI := InputBox('Exceção', 'Informe a exceção da TIPI (0 para nenhuma)', StrEX_TIPI);
  StrCodInterno := InputBox('Código interno', 'Informe o código interno (opcional)', StrCodInterno);
  StrDescricao := InputBox('Descrição', 'Informe a descrição do item:', StrDescricao);
  StrUnidade := InputBox('Unidade de medida', 'Informe a unidade de medida', StrUnidade);
  StrValor := InputBox('Valor', 'Informe o valor', StrValor);
  StrGTIN := InputBox('GTIN', 'Informe o GTIN', 'SEM GTIN');

  Retorno := BaixaTabela.API_ConsultarProduto(StrNCM
    , StrUF
    , StrToInt(StrEX_TIPI)
    , StrCodInterno
    , StrDescricao
    , StrUnidade
    , StringToFloatDef(StrValor, 0)
    , StrGTIN
    );

  Memo2.Clear;
  Memo2.Lines.Add('Codigo : ' + Retorno.Codigo);
  Memo2.Lines.Add('UF : ' + Retorno.UF);
  Memo2.Lines.Add('EX : ' + IntToStr(Retorno.EX));
  Memo2.Lines.Add('Descricao : ' + Retorno.Descricao);
  Memo2.Lines.Add('Aliq. Nacional : ' + FloatToStr(Retorno.Nacional));
  Memo2.Lines.Add('Aliq. Estadual : ' + FloatToStr(Retorno.Estadual));
  Memo2.Lines.Add('Aliq. Municipal: ' + FloatToStr(Retorno.Municipal));
  Memo2.Lines.Add('Aliq. Importado : ' + FloatToStr(Retorno.Importado));
  Memo2.Lines.Add('Início Vigência: ' + DateToStr(Retorno.VigenciaInicio));
  Memo2.Lines.Add('Fim Vigência: ' + DateToStr(Retorno.VigenciaFim));
  Memo2.Lines.Add('Versão: ' + Retorno.Versao);
  Memo2.Lines.Add('Chave: ' + Retorno.Chave);
  Memo2.Lines.Add('Fonte: ' + Retorno.Fonte);
  Memo2.Lines.Add('Valor : ' + FloatToStr(Retorno.Valor));
  Memo2.Lines.Add('Valor Tributo Nacional : ' + FloatToStr(Retorno.ValorTributoNacional));
  Memo2.Lines.Add('Valor Tributo Estadual : ' + FloatToStr(Retorno.ValorTributoEstadual));
  Memo2.Lines.Add('Valor Tributo Municipal: ' + FloatToStr(Retorno.ValorTributoMunicipal));
  Memo2.Lines.Add('Valor Tributo Importado : ' + FloatToStr(Retorno.ValorTributoImportado));
  Memo2.Lines.Add('JSON : ' + Retorno.JSON);
end;

procedure Tform_baixa_ibpt.btnPesquisarClick(Sender: TObject);
var
  ex, descricao: String;
  tabela: Integer;
  aliqFedNac, aliqFedImp, aliqEst, aliqMun: Double;
begin
  if BaixaTabela.Procurar(edNCM.Text, ex, descricao, tabela, aliqFedNac, aliqFedImp, aliqEst, aliqMun, ckbBuscaNCMParcial.Checked) then
  begin
    ShowMessage(
      'Código: '    + edNCM.Text  + sLineBreak +
      'Exceção: '   + ex + sLineBreak +
      'Descrição: ' + descricao + sLineBreak +
      'Tabela: '    + IntToStr(tabela) + sLineBreak +
      'Aliq Federal Nacional: '  + FloatToStr(aliqFedNac) + sLineBreak +
      'Aliq Federal Importado: '  + FloatToStr(aliqFedImp) + sLineBreak +
      'Aliq Estadual: '  + FloatToStr(aliqEst) + sLineBreak +
      'Aliq Municipal: '  + FloatToStr(aliqMun)
    );
  end
  else
    showmessage('Código não encontrado!');
end;

procedure Tform_baixa_ibpt.btProxyClick(Sender: TObject);
var
  frProxyConfig: TfrProxyConfig;
begin
  frProxyConfig := TfrProxyConfig.Create(self);
  try
    frProxyConfig.edServidor.Text := BaixaTabela.ProxyHost;
    frProxyConfig.edPorta.Text    := BaixaTabela.ProxyPort;
    frProxyConfig.edUser.Text     := BaixaTabela.ProxyUser;
    frProxyConfig.edSenha.Text    := BaixaTabela.ProxyPass;

    if frProxyConfig.ShowModal = mrOK then
    begin
      BaixaTabela.ProxyHost := frProxyConfig.edServidor.Text;
      BaixaTabela.ProxyPort := frProxyConfig.edPorta.Text;
      BaixaTabela.ProxyUser := frProxyConfig.edUser.Text;
      BaixaTabela.ProxyPass := frProxyConfig.edSenha.Text;
    end;
  finally
    frProxyConfig.Free;
  end;
end;
procedure Tform_baixa_ibpt.btSairClick(Sender: TObject);
begin
  close;
end;

procedure Tform_baixa_ibpt.FormClose(Sender: TObject; var Action: TCloseAction);
begin
   Action := caFree;
end;

procedure Tform_baixa_ibpt.FormCreate(Sender: TObject);
begin
   PageControl1.ActivePageIndex := 0;
   lbl_info.Caption :='';
end;

end.
