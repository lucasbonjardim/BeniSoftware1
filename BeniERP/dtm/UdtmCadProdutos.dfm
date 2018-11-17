object dtm_cad_Produtos: Tdtm_cad_Produtos
  OldCreateOrder = False
  OnCreate = DataModuleCreate
  Height = 857
  Width = 1380
  object dxmem_cod_tributacao_Pro: TdxMemData
    Active = True
    Indexes = <>
    SortOptions = []
    AfterOpen = dxmem_cod_tributacao_ProAfterOpen
    Left = 56
    Top = 16
    object dxmem_cod_tributacao_ProID: TStringField
      FieldName = 'ID'
      Size = 2
    end
    object dxmem_cod_tributacao_ProDescricao: TStringField
      FieldName = 'Descricao'
      Size = 100
    end
    object dxmem_cod_tributacao_ProAliquota: TStringField
      FieldName = 'ICMS'
      Size = 100
    end
  end
  object dsmam_cod_trib_pro: TDataSource
    DataSet = dxmem_cod_tributacao_Pro
    Left = 56
    Top = 64
  end
  object dxmem_UNReferencia: TdxMemData
    Active = True
    Indexes = <>
    SortOptions = []
    AfterOpen = dxmem_UNReferenciaAfterOpen
    Left = 56
    Top = 142
    object dxmem_UNReferenciaID: TIntegerField
      FieldName = 'ID'
    end
    object StringField34: TStringField
      FieldName = 'Nome'
      Size = 100
    end
  end
  object dsUNReferencia: TDataSource
    DataSet = dxmem_UNReferencia
    Left = 56
    Top = 193
  end
  object dxmem_tpo_produto: TdxMemData
    Active = True
    Indexes = <>
    SortOptions = []
    AfterOpen = dxmem_tpo_produtoAfterOpen
    Left = 56
    Top = 248
    object StringField1: TStringField
      FieldName = 'ID'
      Size = 2
    end
    object StringField2: TStringField
      DisplayLabel = 'Tipo'
      FieldName = 'Descricao'
      Size = 100
    end
  end
  object ds_tpo_produto: TDataSource
    DataSet = dxmem_tpo_produto
    Left = 56
    Top = 304
  end
end
