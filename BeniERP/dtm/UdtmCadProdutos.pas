unit UdtmCadProdutos;

interface

uses
  System.SysUtils, System.Classes, Data.DB, dxmdaset;

type
  Tdtm_cad_Produtos = class(TDataModule)
    dxmem_cod_tributacao_Pro: TdxMemData;
    dxmem_cod_tributacao_ProID: TStringField;
    dxmem_cod_tributacao_ProDescricao: TStringField;
    dxmem_cod_tributacao_ProAliquota: TStringField;
    dsmam_cod_trib_pro: TDataSource;
    dxmem_UNReferencia: TdxMemData;
    dxmem_UNReferenciaID: TIntegerField;
    StringField34: TStringField;
    dsUNReferencia: TDataSource;
    dxmem_tpo_produto: TdxMemData;
    StringField1: TStringField;
    StringField2: TStringField;
    ds_tpo_produto: TDataSource;
    dxMemNCM: TdxMemData;
    StringField3: TStringField;
    StringField4: TStringField;
    ds_NCM: TDataSource;
    dxMemNCMCodigoNCM: TStringField;
    procedure dxmem_cod_tributacao_ProAfterOpen(DataSet: TDataSet);
    procedure dxmem_UNReferenciaAfterOpen(DataSet: TDataSet);
    procedure DataModuleCreate(Sender: TObject);
    procedure dxmem_tpo_produtoAfterOpen(DataSet: TDataSet);
    procedure dxMemNCMAfterOpen(DataSet: TDataSet);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

   const
  CONST_UN_REFERENCIA: array[0..13] of string = ( 'UN',
                                                'PC',
                                                'KG',
                                                'MT',
                                                'LT',
                                                'CX',
                                                'FD',
                                                'SC',
                                                'PT',
                                                'GR',
                                                'HG',
                                                'NG',
                                                'MG',
                                                'DR' );


 CONST_TPO_PRODUTO: array[0..1] of string = ('0 - Produto',
                                             '1 - Servi�o');

var
  dtm_cad_Produtos: Tdtm_cad_Produtos;

implementation

{%CLASSGROUP 'Vcl.Controls.TControl'}

uses UdtmBcoErp, Unit_Alerta;

{$R *.dfm}

procedure Tdtm_cad_Produtos.DataModuleCreate(Sender: TObject);
begin

  try
    if not dxmem_cod_tributacao_Pro.Active then
      dxmem_cod_tributacao_Pro.Active := True;

    if not dxmem_UNReferencia.Active then
      dxmem_UNReferencia.Active := True;

    if not dxMemNCM.Active then
      dxMemNCM.Active := True;
  except on e:exception do
    begin
      AlertCard(e.Message,'Erro');
    end;
  end;
end;

procedure Tdtm_cad_Produtos.dxMemNCMAfterOpen(DataSet: TDataSet);
var
  LCHAVE, LDescricaoNCM, LCodigoNCM : string;
begin
  with DtmBcoErp do
  begin
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

        with ds_NCM do
        begin
          DataSet.Insert;
          DataSet.FieldByName('CHAVE').AsString      := LCHAVE;
          DataSet.FieldByName('Descricao').AsString  := LDescricaoNCM;
          DataSet.FieldByName('CodigoNCM').AsString  := LCodigoNCM;
          DataSet.Post;
          end;
        FDQ_NCM.Next;
      end;
    end;
  end;
end;

procedure Tdtm_cad_Produtos.dxmem_cod_tributacao_ProAfterOpen(
  DataSet: TDataSet);
var
  LID, LDescricaoAliq, LStringAlq : string;
begin
  inherited;
  try

    with DtmBcoErp do
    begin
      Fdq_TB_TRIBUTACAO_ICMS.Close;
      Fdq_TB_TRIBUTACAO_ICMS.Open;

      if not Fdq_TB_TRIBUTACAO_ICMS.IsEmpty then
      begin
        Fdq_TB_TRIBUTACAO_ICMS.First;

        while not Fdq_TB_TRIBUTACAO_ICMS.Eof do
        begin
          LID            := Fdq_TB_TRIBUTACAO_ICMS.FieldByName('COD_ICMS').AsString;
          LDescricaoAliq := Fdq_TB_TRIBUTACAO_ICMS.FieldByName('DESCRICAO').AsString;
          LStringAlq     := Fdq_TB_TRIBUTACAO_ICMS.FieldByName('ICMS').AsString;

          with dsmam_cod_trib_pro do
          begin
            DataSet.Insert;
            DataSet.FieldByName('ID').AsString         := LID;
            DataSet.FieldByName('Descricao').AsString  := LDescricaoAliq;
            DataSet.FieldByName('ICMS').AsString   := LStringAlq;
            DataSet.Post;
          end;
          Fdq_TB_TRIBUTACAO_ICMS.Next;
        end;
      end;
    end;

  except on e: exception do
    begin
      AlertCard(e.Message,'Erro');
    end;
  end;
end;

procedure Tdtm_cad_Produtos.dxmem_tpo_produtoAfterOpen(DataSet: TDataSet);
var
i : Integer;
begin
  try
   with ds_tpo_produto do
    begin
      for i := 0 to 1 do
      begin
        DataSet.Insert;
        DataSet.FieldByName('ID').AsInteger := i;
        DataSet.FieldByName('descricao').AsString := CONST_TPO_PRODUTO[i];
        DataSet.Post;
      end;
    end;
  except on E: exception do
    begin
      AlertCard(e.Message,'Erro');
    end;
  end;
end;

procedure Tdtm_cad_Produtos.dxmem_UNReferenciaAfterOpen(DataSet: TDataSet);
var
i : Integer;
begin
  with dsUNReferencia do
  begin
    for i := 0 to 13 do
    begin
      DataSet.Insert;
      DataSet.FieldByName('ID').AsInteger := i;
      DataSet.FieldByName('Nome').AsString := CONST_UN_REFERENCIA[i];
      DataSet.Post;
    end;
  end;
end;

end.
