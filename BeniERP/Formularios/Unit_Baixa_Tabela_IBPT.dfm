object form_baixa_ibpt: Tform_baixa_ibpt
  Left = 0
  Top = 0
  BorderStyle = bsDialog
  Caption = 'Atualizar IBPT'
  ClientHeight = 645
  ClientWidth = 825
  Color = clWhite
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poScreenCenter
  OnClose = FormClose
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object lbl1: TLabel
    Left = 8
    Top = 589
    Width = 182
    Height = 13
    Caption = 'Atualizando Produtos Tabela IBPT :'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Segoe UI'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object pb1: TProgressBar
    Left = 0
    Top = 625
    Width = 825
    Height = 20
    Align = alBottom
    BarColor = clHighlight
    TabOrder = 0
  end
  object GroupBox1: TGroupBox
    Left = 0
    Top = 0
    Width = 825
    Height = 113
    Align = alTop
    Caption = 'IBPT'
    TabOrder = 1
    object Label2: TLabel
      Left = 12
      Top = 24
      Width = 97
      Height = 13
      Caption = 'Selecione o arquivo:'
      Color = clBtnFace
      ParentColor = False
    end
    object lVersao: TLabel
      Left = 12
      Top = 67
      Width = 37
      Height = 13
      Caption = 'Vers'#227'o:'
    end
    object Label4: TLabel
      Left = 145
      Top = 67
      Width = 104
      Height = 13
      Caption = 'Quantidade de itens: '
    end
    object lbVigencia: TLabel
      Left = 330
      Top = 67
      Width = 46
      Height = 13
      Caption = 'Vig'#234'ncia: '
    end
    object lblChave: TLabel
      Left = 547
      Top = 67
      Width = 38
      Height = 13
      Caption = 'Chave: '
    end
    object lblFonte: TLabel
      Left = 655
      Top = 67
      Width = 146
      Height = 13
      Caption = 'Fonte:'
    end
    object lbl_info: TLabel
      Left = 12
      Top = 88
      Width = 93
      Height = 13
      Caption = 'NCM IMPORTADO: '
    end
    object edt_local_arquivo: TEdit
      Left = 8
      Top = 40
      Width = 761
      Height = 21
      TabOrder = 0
    end
    object BitBtn1: TBitBtn
      Left = 775
      Top = 38
      Width = 33
      Height = 25
      Caption = '...'
      TabOrder = 1
      OnClick = BitBtn1Click
    end
  end
  object PageControl1: TPageControl
    Left = 0
    Top = 113
    Width = 825
    Height = 512
    ActivePage = TabSheet2
    Align = alClient
    TabOrder = 2
    object TabSheet1: TTabSheet
      Caption = 'Dados importados'
      object DBGrid1: TDBGrid
        Left = 0
        Top = 0
        Width = 817
        Height = 328
        Align = alClient
        DataSource = dtsCadastro
        ReadOnly = True
        TabOrder = 0
        TitleFont.Charset = DEFAULT_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -11
        TitleFont.Name = 'Tahoma'
        TitleFont.Style = []
      end
      object GroupBox2: TGroupBox
        Left = 0
        Top = 328
        Width = 817
        Height = 83
        Align = alBottom
        Caption = 'Pesquisar NCM'
        TabOrder = 1
        object Label3: TLabel
          Left = 12
          Top = 19
          Width = 62
          Height = 13
          Caption = 'C'#243'digo NCM:'
          Color = clBtnFace
          ParentColor = False
        end
        object edNCM: TEdit
          Left = 12
          Top = 35
          Width = 174
          Height = 21
          TabOrder = 0
        end
        object btnPesquisar: TBitBtn
          Left = 192
          Top = 35
          Width = 66
          Height = 21
          Caption = 'Pesquisar'
          TabOrder = 1
          OnClick = btnPesquisarClick
        end
        object ckbBuscaNCMParcial: TCheckBox
          Left = 12
          Top = 60
          Width = 97
          Height = 17
          Caption = 'Busca parcial'
          TabOrder = 2
        end
      end
      object rgTipoExportacao: TRadioGroup
        Left = 0
        Top = 411
        Width = 817
        Height = 39
        Align = alBottom
        Caption = 'Tipo de exporta'#231#227'o'
        Columns = 6
        ItemIndex = 0
        Items.Strings = (
          'Formato CSV'
          'Formato DSV'
          'Formato XML'
          'Formato HTML'
          'Formato TXT'
          'Demilitado')
        TabOrder = 2
      end
      object Panel1: TPanel
        Left = 0
        Top = 450
        Width = 817
        Height = 34
        Align = alBottom
        BevelOuter = bvNone
        TabOrder = 3
        DesignSize = (
          817
          34)
        object DBNavigator1: TDBNavigator
          Left = 0
          Top = 0
          Width = 160
          Height = 34
          DataSource = dtsCadastro
          VisibleButtons = [nbFirst, nbPrior, nbNext, nbLast, nbRefresh]
          Align = alLeft
          TabOrder = 0
        end
        object btExportar: TBitBtn
          Left = 638
          Top = 4
          Width = 80
          Height = 28
          Anchors = [akTop, akRight]
          Caption = 'Exportar'
          Glyph.Data = {
            36040000424D3604000000000000360000002800000010000000100000000100
            2000000000000004000000000000000000000000000000000000FF00FF00FF00
            FF00FF00FF00FF00FF00FF00FF00008800FFFF00FF00FF00FF00FF00FF00FF00
            FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
            FF00FF00FF00FF00FF00008800FF09C724FF008800FFE9DBD3FFFF00FF00FF00
            FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF000088
            00FF008800FF008800FF008800FF09C724FF09C724FF008800FFFF00FF00FF00
            FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00008800FFCCFF
            FFFF09C724FF09C724FF09C724FF09C724FF09C724FF09C724FF008800FFDC69
            30FFDC6930FFDC6930FFDC6930FFDC6930FFDC6930FFD3CFCEFF008800FFCCFF
            FFFF14D651FF15D651FF15D652FF15D651FF14D651FF14D651FF15D651FF0088
            00FFEFD6D0FFEED4CDFFEBD1CAFFE9D0CAFFEFC3B7FFDC6930FF008800FFCCFF
            FFFF25EB8FFF25EB8FFF24EB90FF24EB90FF25EB90FF24EB90FF24EB90FF0088
            00FFFFFFFFFFFFFFFFFFFAFFFFFFF6FCFEFFF9F0EDFFDC6930FF008800FFCCFF
            FFFFCCFFFFFFCCFFFFFFCCFFFFFF30FABDFF30FABDFF30FABDFF008800FFFFE1
            D5FFFFE0D5FFFFDED5FFFDDBD3FFF4CCC4FFF3B6A9FFDC6930FFA38B84FF0088
            00FF008800FF008800FF008800FF30FABDFF30FABDFF008800FFFE9963FFFF99
            64FFFF9565FFFF9065FFFF8F6AFFEB6F47FFE75B36FFDC6930FFA38B84FFFFFF
            FFFFDC6930FFFDDEC9FF008800FF30FABDFF008800FFFD9E69FFFD9B64FFFE9A
            64FFFF9A66FFFF9666FFFF966BFFEB6F47FFE75B36FFDC6930FFA38B84FFFFFF
            FFFFDC6930FFFDE4D0FFFBB98BFF008800FFFCAA78FFFDA36FFFFD9B65FFFD9B
            64FFFE9A65FFFF9966FFFF9B6BFFEA7547FFE76236FFDC6930FFA38B84FFFFFF
            FFFFDC6930FFFDE3D1FFFCDCC7FFFCD9C3FFFCD6C0FFFCD7C1FFFEB992FFFD9E
            69FFFD9A62FFFF9963FFFF9D69FFEA7844FFE86838FFDC6930FFA38B84FFFFFF
            FFFFECEBECFFDC6930FFDC6930FFDC6930FFDC6930FFDC6930FFFADBCAFFFFDE
            CBFFFED2B9FFFED2B9FFFFD3BBFFF7C5ACFFF6BA9FFFDC6930FFA38B84FFFFFF
            FFFFECEBECFFEEEEF1FFF0F1F4FFF2F4F7FFF3F7FAFFF6F7F9FFDC6930FFDC69
            30FFDC6930FFDC6930FFDC6930FFDC6930FFDC6930FFC5B9B4FFA38B84FFFFFF
            FFFFEBE4E2FFEDE6E5FFEFE9E7FFF0EBEAFFF3EEEDFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFAD9187FFE8E8E8FFFF00FF00A38B84FFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFEFAF8FFA38B84FFA38B84FFA38B
            84FFA38B84FFA38B84FFA38B84FFD7D6D5FFFF00FF00FF00FF00C3BEBCFFA38B
            84FFA38B84FFA38B84FFA38B84FFA38B84FFA38B84FFC5C2C1FFFF00FF00FF00
            FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00}
          TabOrder = 2
          OnClick = btExportarClick
        end
        object btSair: TBitBtn
          Left = 724
          Top = 4
          Width = 80
          Height = 28
          Anchors = [akTop, akRight]
          Caption = 'Sair'
          Glyph.Data = {
            36030000424D3603000000000000360000002800000010000000100000000100
            18000000000000030000120B0000120B000000000000000000003F00007F0000
            7F3F007F3F007F3F007F3F007F3F007F3F007F3F000000003F00007F00007F00
            007F00007F00003F00007F0000FF0000FF3F00FF7F00FF7F00FF7F00FF7F00FF
            7F00FF7F007F7F009F9F00BF0000FF0000FF0000FF00007F00007F0000FF0000
            FF0000FF3F00FF7F00FF7F00FF7F00FF7F00FF7F007F7F00BFBF00606000BF00
            00FF0000FF00007F00003F00007F00007F00007F00007F3F007F3F00FFBF00FF
            BF00FFBF007F7F00BFBF008080006060007F00007F00003F0000FFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFF000000FFFF00FFFF00FFFF007F7F00BFBF008080008080
            00404040FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF01010100000040404040
            40404040407F7F00BFBF00808000808000404040FFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFF2020000000008080808080808080807F7F00BFBF008080008080
            00404040FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF5F5F0060600060606080
            80808080807F7F009F9F00202020808000404040FFFFFFFFFFFF000000000000
            0000000000007F7F00DFDF006060006060608080807F7F009F9F003F3F3F8080
            00404040FFFFFFFFFFFF5F5F00BFBF00BFBF00BFBF00DFDF00FFFF00DFDF0060
            60006060607F7F00BFBF00808000808000404040FFFFFFFFFFFF7F7F00FFFF3F
            FFFF7FFFFF7FFFFF7FFFFFBFFFFF3F7F7F006060607F7F00BFBF008080008080
            00404040FFFFFFFFFFFF0000000000000000000000007F7F00FFFF3F7F7F0060
            60608080807F7F00BFBF00808000808000404040FFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFF7F7F007F7F006060608080808080807F7F3FBFBF008080008080
            00404040FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF20200000000080808080
            8080808080606060BFBF7F9F9F00808000404040FFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFF000000808080808080808080808080606060BFBF7F9F9F
            00404040FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF00000040404040
            40404040404040404040402020207F7F3F2B2B2BFFFFFFFFFFFF}
          TabOrder = 3
          OnClick = btSairClick
        end
        object btProxy: TBitBtn
          Left = 552
          Top = 4
          Width = 80
          Height = 28
          Anchors = [akTop, akRight]
          Caption = 'Proxy'
          Glyph.Data = {
            36040000424D3604000000000000360000002800000010000000100000000100
            2000000000000004000064000000640000000000000000000000000000000000
            0000000000000000000000000008000000121207011A180C021F0F0700230401
            001A000000090000000000000000000000000000000000000000000000000000
            00000000000000000033030200644B280C797C49209A8B582EAB7F4D23AA582D
            09970F0100770000005B2828285C5F5F5F5E0000000000000000000000000000
            0000000000000000004F61300BD1AE672EFF82512BFF5C3E25FF826D5CFFACA1
            99FFC4C1BDFEF0F0F0FFF9F9F9FFDEDEDEE50000000000000000000000000000
            000078360716904109E78B3E08FF7A2E00FFB8A496FFFFFFFFFFFCFDF6FFEDEE
            EDFFD8D8D8FFD5D5D5FFD2D2D2FFEBEBEBFF5050500300000000000000000000
            000062561EE75B4E17FF743A07FF772A00FFAC8B6FFF99A3E8FF414FCCFFCECE
            DDFFDBDBD9FFD9D9D9FFD6D6D6FFF0F0F0FF7E7E7E370000000000000000863C
            03892B7234FF635520FF5F5D26FF8B3500FF814C2DFFE1E9FEFFE7E7E6FFB7B9
            ECFFE1E1DEFFDADADAFFD9D9D9FFE9E9E9FFB6B6B66C00000000000000006E59
            22F92D6F31FF546F38FFA3460AFF9C480DFF772C00FFF8FCFDFFE4E5E4FFE9E9
            E6FFE7E7E7FFDBDBDBFFDBDBDBFFE4E4E4FFD7D7D7A1000000006227022C6B65
            2DFF3F7A42FF557740FFB7500CFFAB5314FFA54704FFDBD2CDFFEBECE8FFF7F7
            F1FFF1F1F1FFE4E4E4FFDDDDDDFFDFDFDFFFE9E9E9D700000000783104485773
            39FF377B3DFF3E8043FF6A7639FFCE6518FFBE5D0EFFD5B192FF9BA5EFFF6E78
            D0FFEBEAEAFFEFEFEEFFE2E2E2FFDBDBDBFFF3F4F4FF000000005A3C153E4D86
            4EFF367F3EFF409658FF509962FFD26719FFD76B19FFD99057FFD8DFFCFFE1E2
            F0FFC5C5F3FFFAF6F7FFFFFFFFFFFFFFFFFFFEF9F6FF7E7F7F1A284E2A0D4088
            48FF3A8645FF47A36BFF67A560FF21C986FFC87B29FFA57F37FFE8FAF1FFBBD7
            BEFF95BA95FF6C9C6FFF636B3DFF7D3200FF9A4605AF00000000000000004591
            4FC8398A48FF51A669FF55C585FF6EB36BFF35C680FF3ABB77FF359952FF2E84
            3FFF206E27FF246B27FF3B6C31FF873300FF9A4B0F510000000000000000438E
            50344C9E61FFA08D4AFF61BE80FF58DC9AFF4DDA94FF41B56EFF40A560FF398F
            4CFF227128FF327938FF5B5421FF784C14D70000000000000000000000000000
            00006EA3607887894EFF5AB778FF74C181FF88B275FF5BC285FF4BAA6AFF3D93
            51FF24732CFF33793BFF4B6126F67C3A06180000000000000000000000000000
            000000000000A48D446060B071FE53C486FF59C287FF5BBA80FF61B17BFF61A8
            75FF488F55FF4A773AD257542117000000000000000000000000000000000000
            00000000000000000000814E1C08A77F3E70969259B6BB9569D3B9A47ECBAD88
            5C9E767542450000000000000000000000000000000000000000}
          TabOrder = 1
          OnClick = btProxyClick
        end
      end
    end
    object TabSheet2: TTabSheet
      Caption = 'Erros'
      ImageIndex = 1
      object Memo1: TMemo
        Left = 0
        Top = 0
        Width = 817
        Height = 484
        Align = alClient
        Lines.Strings = (
          'Memo1')
        ScrollBars = ssBoth
        TabOrder = 0
      end
    end
    object TabSheet3: TTabSheet
      Caption = 'API Consulta produto'
      ImageIndex = 2
      object Label1: TLabel
        Left = 25
        Top = 9
        Width = 84
        Height = 13
        Caption = 'CNPJ da Empresa'
      end
      object Label5: TLabel
        Left = 153
        Top = 6
        Width = 73
        Height = 13
        Caption = 'Token Empresa'
      end
      object btnAPIConsultarProduto: TButton
        Left = 495
        Top = 23
        Width = 141
        Height = 25
        Caption = 'Consultar'
        TabOrder = 0
        OnClick = btnAPIConsultarProdutoClick
      end
      object edtCNPJ: TEdit
        Left = 25
        Top = 25
        Width = 104
        Height = 21
        TabOrder = 1
      end
      object edtToken: TEdit
        Left = 153
        Top = 25
        Width = 336
        Height = 21
        TabOrder = 2
      end
      object Memo2: TMemo
        Left = 25
        Top = 72
        Width = 611
        Height = 409
        ReadOnly = True
        TabOrder = 3
      end
    end
  end
  object BaixaTabela: TACBrIBPTax
    ProxyPort = '80'
    OnErroImportacao = BaixaTabelaErroImportacao
    URLDownload = 'http://www.kadoshiautomacao.com.br/ibpt/tabela.csv'
    Left = 656
  end
  object Fdq_TB_NCM: TFDQuery
    Connection = DtmBcoErp.FDBcoERP
    SQL.Strings = (
      'select * from TB_NCM')
    Left = 536
    Top = 65528
    object Fdq_TB_NCMCOD_EMP: TIntegerField
      FieldName = 'COD_EMP'
      Origin = 'COD_EMP'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object Fdq_TB_NCMNCM: TIntegerField
      FieldName = 'NCM'
      Origin = 'NCM'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object Fdq_TB_NCMEX: TIntegerField
      FieldName = 'EX'
      Origin = 'EX'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object Fdq_TB_NCMTIPO: TIntegerField
      FieldName = 'TIPO'
      Origin = 'TIPO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object Fdq_TB_NCMDESCRICAO: TStringField
      FieldName = 'DESCRICAO'
      Origin = 'DESCRICAO'
      Size = 250
    end
    object Fdq_TB_NCMALI_NACIONAL_FEDERAL: TBCDField
      FieldName = 'ALI_NACIONAL_FEDERAL'
      Origin = 'ALI_NACIONAL_FEDERAL'
      Precision = 18
      Size = 2
    end
    object Fdq_TB_NCMALI_IMPORTADO_FEDERAL: TBCDField
      FieldName = 'ALI_IMPORTADO_FEDERAL'
      Origin = 'ALI_IMPORTADO_FEDERAL'
      Precision = 18
      Size = 2
    end
    object Fdq_TB_NCMALI_ESTADUAL: TBCDField
      FieldName = 'ALI_ESTADUAL'
      Origin = 'ALI_ESTADUAL'
      Precision = 18
      Size = 2
    end
    object Fdq_TB_NCMALI_MUNICIPAL: TBCDField
      FieldName = 'ALI_MUNICIPAL'
      Origin = 'ALI_MUNICIPAL'
      Precision = 18
      Size = 2
    end
    object Fdq_TB_NCMVIGENCIA_DT_INI: TDateField
      FieldName = 'VIGENCIA_DT_INI'
      Origin = 'VIGENCIA_DT_INI'
    end
    object Fdq_TB_NCMVIGENCIA_DT_FIM: TDateField
      FieldName = 'VIGENCIA_DT_FIM'
      Origin = 'VIGENCIA_DT_FIM'
    end
    object Fdq_TB_NCMCHAVE: TStringField
      FieldName = 'CHAVE'
      Origin = 'CHAVE'
      Size = 15
    end
    object Fdq_TB_NCMVERSAO: TStringField
      FieldName = 'VERSAO'
      Origin = 'VERSAO'
      Size = 15
    end
    object Fdq_TB_NCMFONTE_DADOS: TStringField
      FieldName = 'FONTE_DADOS'
      Origin = 'FONTE_DADOS'
      Size = 50
    end
  end
  object OpenDialog1: TOpenDialog
    DefaultExt = 'csv'
    Filter = 'csv'
    Left = 592
    Top = 65528
  end
  object dtsCadastro: TDataSource
    DataSet = Fdq_TB_NCM
    Left = 585
    Top = 242
  end
  object SaveDialog1: TSaveDialog
    Options = [ofHideReadOnly, ofNoChangeDir, ofEnableSizing]
    Left = 577
    Top = 191
  end
end
