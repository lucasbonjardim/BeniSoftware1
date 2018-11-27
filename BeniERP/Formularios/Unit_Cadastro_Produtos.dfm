inherited Form_Cadastro_Produtos: TForm_Cadastro_Produtos
  Caption = 'Cadastro de Produtos'
  ClientHeight = 797
  ClientWidth = 1279
  OnShow = FormShow
  ExplicitWidth = 1295
  ExplicitHeight = 836
  PixelsPerInch = 96
  TextHeight = 13
  inherited cxPageControl1: TcxPageControl
    Top = 195
    Width = 1279
    Height = 590
    ExplicitTop = 195
    ExplicitWidth = 1279
    ExplicitHeight = 590
    ClientRectBottom = 584
    ClientRectRight = 1273
    inherited tbPesquisa: TcxTabSheet
      ExplicitLeft = 2
      ExplicitTop = 45
      ExplicitWidth = 1285
      ExplicitHeight = 329
      inherited Panel1: TPanel
        Width = 1280
        ExplicitWidth = 1285
        inherited lblPesquisa: TcxLabel
          Style.IsFontAssigned = True
          AnchorX = 34
          AnchorY = 21
        end
        inherited Panel2: TPanel
          inherited edtMask: TMaskEdit
            Text = ''
            Visible = True
            OnKeyDown = edtMaskKeyDown
          end
        end
        inherited cxButton1: TcxButton
          Hint = 'F3 Pesquisar'
          ParentShowHint = False
          OnClick = cxButton1Click
        end
        inherited rgOptionGrid: TRadioGroup
          Left = 895
          Width = 339
          Items.Strings = (
            'Todos'
            'Ativos'
            'Inativos')
          OnClick = rgOptionGridClick
          ExplicitLeft = 895
          ExplicitWidth = 339
        end
        object rdg_tpo_pesquisa: TRadioGroup
          AlignWithMargins = True
          Left = 710
          Top = 3
          Width = 179
          Height = 35
          Align = alLeft
          Caption = 'Busca'
          Columns = 2
          Items.Strings = (
            'C'#243'digo'
            'Descri'#231#227'o')
          TabOrder = 5
        end
        object chk_mostrafiltrogrid: TCheckBox
          Left = 1173
          Top = 0
          Width = 97
          Height = 41
          Align = alRight
          Caption = 'Mostra Filtros'
          TabOrder = 6
          OnClick = chk_mostrafiltrogridClick
          ExplicitLeft = 1188
        end
      end
      inherited pnl_esq: TPanel
        Width = 25
        Height = 498
        ExplicitWidth = 25
        ExplicitHeight = 256
      end
      inherited pnl_dire: TPanel
        Left = 1247
        Width = 23
        Height = 498
        ExplicitLeft = 1262
        ExplicitWidth = 23
        ExplicitHeight = 256
      end
      object cxgrid: TcxGrid
        Left = 25
        Top = 41
        Width = 1222
        Height = 498
        Align = alClient
        BevelOuter = bvNone
        BevelKind = bkTile
        TabOrder = 3
        LockedStateImageOptions.AssignedValues = [lsiavColor]
        LockedStateImageOptions.Color = clMenu
        LockedStateImageOptions.Text = 'Aguarde Por favor...'
        ExplicitWidth = 1237
        ExplicitHeight = 256
        object cxVisualizaDBTableView1: TcxGridDBTableView
          Navigator.Buttons.ConfirmDelete = True
          Navigator.Buttons.CustomButtons = <>
          Navigator.InfoPanel.Visible = True
          DataController.DataSource = dsPrincipal
          DataController.Summary.DefaultGroupSummaryItems = <>
          DataController.Summary.FooterSummaryItems = <>
          DataController.Summary.SummaryGroups = <>
          OptionsView.NoDataToDisplayInfoText = 'Sem dados...'
          OptionsView.GridLineColor = clGray
          OptionsView.Indicator = True
          object cxVisualizaDBTableView1PRO_ATIVO: TcxGridDBColumn
            DataBinding.FieldName = 'PRO_ATIVO'
            PropertiesClassName = 'TcxImageComboBoxProperties'
            Properties.DefaultImageIndex = 0
            Properties.Images = cxGridImg
            Properties.Items = <
              item
                ImageIndex = 0
              end
              item
                ImageIndex = 1
                Value = 'S'
              end
              item
                ImageIndex = 2
                Value = 'N'
              end>
            Width = 38
          end
          object cxVisualizaDBTableView1PRO_ID: TcxGridDBColumn
            DataBinding.FieldName = 'PRO_ID'
            HeaderGlyph.Data = {
              36040000424D3604000000000000360000002800000010000000100000000100
              2000000000000004000000000000000000000000000000000000000000000000
              00000000000000000001000000060000000A0000000B0000000C0000000C0000
              000D0000000D0000000D0000000E0000000D0000000900000002000000000000
              000000000000000000068B685BBDC1907FFFC08F7EFFC08F7CFFC08D7CFFBF8C
              7BFFBF8C7AFFBE8B7AFFBE8A78FFBD8978FF886355C000000009000000000000
              00000000000000000008C49483FFFDFAF8FFFDF9F7FFFCF8F7FFFCF8F6FFFBF7
              F5FFFBF7F4FFFBF6F3FFFBF5F2FFFAF4F1FFC08D7CFF0000000C000000020000
              00080000000C00000016C79887FFFDFBFAFFFAF2EEFFF9F2EEFFF9F1EDFFF9F1
              EDFFF8F1ECFFF8F1ECFFF9F0EBFFFBF6F3FFC3907FFF0000000D000000078661
              54BFBB8775FFD7BEB5FFCA9B8AFFFEFCFAFFFAF4F0FFFAF3F0FFFAF3F0FFF9F2
              EFFFF9F2EEFFF9F2EDFFF9F1EEFFFCF7F5FFC59584FF0000000C0000000ABE8A
              79FFFBF6F3FFF7F4F2FFCC9F8EFFFEFCFCFFFAF5F2FFFBF5F2FFFBF4F2FFFAF4
              F0FFFAF4F0FFFAF4F0FFFAF4EFFFFCF9F7FFC89988FF0000000B0000000AC08F
              7EFFFCF7F5FFF6F2EFFFCDA292FFFEFDFDFFFCF6F4FFFBF6F4FFFBF6F3FFFBF6
              F3FFFAF5F2FFFAF5F2FFFAF4F1FFFDFAF8FFCA9D8BFF0000000A00000009C493
              80FFFCF9F7FFF7F3F1FFCFA494FFFEFEFDFFFCF8F6FFFBF8F5FFFBF8F5FFFBF7
              F4FFFBF6F4FFFBF6F4FFFBF6F3FFFDFBFAFFCB9F8FFF0000000900000009C696
              86FFFCF9F8FFF9F5F3FFD1A797FFFFFEFEFFFFFEFDFFFEFEFDFFFEFDFDFFFEFD
              FCFFFEFDFCFFFEFDFCFFFDFCFBFFFDFCFBFFCDA292FF0000000800000008C99B
              8AFFFDFBF9FFFBF8F6FFDABBAFFFD2A998FFD2A898FFD2A898FFD1A897FFD1A8
              97FFD1A797FFD0A696FFD0A696FFD0A695FF9A7A6EC20000000500000007C99E
              8DFFFEFBFAFFFCF9F8FFFBF8F6FFFAF7F5FFF9F6F4FFF8F5F3FFF9F7F5FFE0C8
              C0FF00000010000000060000000600000006000000040000000100000006CEA1
              90FFFEFCFBFFFBF5F3FFFBF5F2FFFAF6F2FFFAF5F2FFFAF4F1FFFCF9F7FFCA9D
              8BFF0000000A000000000000000000000000000000000000000000000006CEA3
              93FFFEFDFCFFFBF7F5FFFBF6F4FFFBF6F3FFFBF6F3FFFBF5F2FFFCFAF8FFCB9F
              8FFF00000009000000000000000000000000000000000000000000000005D0A6
              96FFFEFDFDFFFEFDFCFFFEFCFCFFFEFCFBFFFEFCFBFFFDFBFAFFFEFBFAFFCDA2
              92FF000000080000000000000000000000000000000000000000000000039C7C
              71C0D2A898FFD1A897FFD1A897FFD1A797FFD0A696FFD0A696FFD0A695FF9A7A
              6EC2000000050000000000000000000000000000000000000000000000010000
              0003000000040000000500000005000000050000000600000006000000060000
              0004000000010000000000000000000000000000000000000000}
            Width = 137
          end
          object cxVisualizaDBTableView1PRO_COD_BARRA: TcxGridDBColumn
            DataBinding.FieldName = 'PRO_COD_BARRA'
            Width = 170
          end
          object cxVisualizaDBTableView1PRO_DESCRICAO_CUPOM: TcxGridDBColumn
            DataBinding.FieldName = 'PRO_DESCRICAO_CUPOM'
            Width = 252
          end
          object cxVisualizaDBTableView1PRO_DESCRICAO_PDV: TcxGridDBColumn
            DataBinding.FieldName = 'PRO_DESCRICAO_PDV'
            Width = 239
          end
          object cxVisualizaDBTableView1PRO_VLR_CUSTO: TcxGridDBColumn
            DataBinding.FieldName = 'PRO_VLR_CUSTO'
            Width = 73
          end
          object cxVisualizaDBTableView1PRO_VLR_PADRAO: TcxGridDBColumn
            DataBinding.FieldName = 'PRO_VLR_PADRAO'
            HeaderGlyph.Data = {
              36040000424D3604000000000000360000002800000010000000100000000100
              2000000000000004000000000000000000000000000000000000000000090000
              000D0000000F0000000F0000000F0000000F0000000F0000000F0000000F0000
              000F0000000F00000010000000100000000F0000000A000000021D5A42C0287D
              5AFF277D5AFF277C5AFF277C59FF277B59FF277B58FF277A58FF267A58FF2678
              57FF267A56FF267856FF267755FF257756FF1B563DC1000000092B825FFF53C8
              A2FF51C7A0FF50C7A0FF4EC69FFF4DC59DFF4CC59DFF4AC49BFF49C39BFF47C3
              99FF45C298FF45C198FF43C096FF42C095FF277B59FF0000000D2C8664FF5DCC
              AAFF43C398FF42C299FF42C298FF43C298FF65CFADFF74D5B6FF4CC59DFF40C0
              95FF3EC095FF3EBF94FF3DBF94FF4BC49CFF297F5CFF0000000E2F8B68FF67D1
              B0FF48C69EFF48C59CFF47C59CFF5FCDABFF25825DFF00673BFF51BA96FF44C3
              9AFF43C399FF43C298FF42C298FF54C9A4FF2B8360FF0000000D31906DFF71D5
              B8FF4DC9A3FF4DC9A1FF60CFADFF3B9372FF87AF9DFFB1CFC1FF26875FFF53CA
              A5FF48C69EFF47C59DFF47C59DFF5DCEABFF2D8865FF0000000C339671FF7ADA
              BFFF52CCA7FF60D1AFFF4BA183FF699782FFF8F1EEFFF9F3EEFF357F5DFF5CBD
              9DFF4EC9A2FF4CC9A2FF4CC8A1FF67D2B2FF2F8C69FF0000000B359A76FF83DE
              C6FF59D0ADFF5AB094FF4F826AFFF0E9E6FFC0C3B5FFEFE3DDFFCEDDD4FF1C74
              4FFF69D5B4FF53CDA7FF52CCA6FF72D7B9FF32926EFF0000000B39A07CFF8CE2
              CBFF5FD4B3FF0D6742FFD2D2CBFF6A8F77FF136A43FF73967EFFF1E8E3FF72A2
              8BFF4CA384FF6AD9BAFF5AD2AFFF7BDBC0FF339773FF0000000A3AA681FF97E9
              D5FF69DEBFFF52BC9DFF0B6942FF389B79FF66DABAFF349773FF73967EFFF0EA
              E7FF4F886CFF60B89BFF67DABAFF87E2CAFF359C78FF000000093FAD88FF9FEC
              DAFF6DE1C3FF6DE1C3FF6DE0C2FF6CDFC1FF6BE0C1FF6BDFC0FF2C8966FF698E
              76FFE6E1DCFF176B47FF5FD1B2FF90E7D1FF3CA481FF0000000842B28DFFA5EE
              DDFF70E4C7FF70E4C6FF70E3C6FF6FE3C5FF6FE2C5FF6EE2C4FF6EE2C4FF3C9E
              7DFF1F6D4AFF2D8965FF6CE0C2FF97EAD6FF3DAA86FF0000000744B691FFAAEF
              E0FF73E6C9FF73E6C9FF72E5C9FF72E5C8FF71E5C8FF71E5C8FF71E4C7FF71E4
              C7FF64D3B5FF6DDFC2FF6FE3C6FF9EECDAFF41AF8BFF0000000746B994FFAEF1
              E2FF74E8CBFF74E7CBFF74E7CBFF74E7CAFF74E6CAFF73E6CAFF73E6CAFF73E6
              C9FF73E5C9FF72E5C9FF72E5C8FFA4EEDDFF42B38EFF0000000647BC97FFC5F4
              EBFFC5F4EBFFC5F4EBFFC5F4EBFFC5F4EBFFC5F4EBFFC5F4EBFFC5F4EBFFC5F4
              EBFFC5F4EBFFC5F4EBFFC5F4EBFFC5F4EBFF44B792FF00000005348B70BF47BC
              97FF47BC97FF47BC97FF47BC97FF47BC97FF47BC97FF47BC97FF47BB97FF47BB
              97FF47BB96FF46BB96FF47BA95FF45BA94FF338A6EC000000003}
            Width = 123
          end
          object cxVisualizaDBTableView1PRO_VLR_PROMOC: TcxGridDBColumn
            DataBinding.FieldName = 'PRO_VLR_PROMOC'
            Width = 99
          end
          object cxVisualizaDBTableView1PRO_CONTROLA_ESTOQUE_PRO: TcxGridDBColumn
            DataBinding.FieldName = 'PRO_CONTROLA_ESTOQUE_PRO'
            PropertiesClassName = 'TcxImageComboBoxProperties'
            Properties.Images = cxGridImg
            Properties.Items = <
              item
              end
              item
                ImageIndex = 3
                Value = 'S'
              end
              item
                Value = 'N'
              end>
            Width = 98
          end
          object cxVisualizaDBTableView1PRO_ESTOQUE_MINIMO: TcxGridDBColumn
            DataBinding.FieldName = 'PRO_ESTOQUE_MINIMO'
          end
          object cxVisualizaDBTableView1PRO_SALDO_ESTOQUE: TcxGridDBColumn
            DataBinding.FieldName = 'PRO_SALDO_ESTOQUE'
          end
          object cxVisualizaDBTableView1PRO_DATA_VALIDADE: TcxGridDBColumn
            DataBinding.FieldName = 'PRO_DATA_VALIDADE'
            Width = 83
          end
          object cxVisualizaDBTableView1PRO_UN_REFERENCIA: TcxGridDBColumn
            DataBinding.FieldName = 'PRO_UN_REFERENCIA'
            Width = 93
          end
          object cxVisualizaDBTableView1PRO_PRECO_V_ATACADO: TcxGridDBColumn
            DataBinding.FieldName = 'PRO_PRECO_V_ATACADO'
            Width = 95
          end
          object cxVisualizaDBTableView1PRO_VLR_PRECO2: TcxGridDBColumn
            DataBinding.FieldName = 'PRO_VLR_PRECO2'
            Width = 80
          end
          object cxVisualizaDBTableView1PRO_VLR_PRECO3: TcxGridDBColumn
            DataBinding.FieldName = 'PRO_VLR_PRECO3'
            Width = 74
          end
          object cxVisualizaDBTableView1PRO_VLR_PRECO4: TcxGridDBColumn
            DataBinding.FieldName = 'PRO_VLR_PRECO4'
            Width = 76
          end
          object cxVisualizaDBTableView1PRO_QTD_MIN_VLR_ATACADO: TcxGridDBColumn
            DataBinding.FieldName = 'PRO_QTD_MIN_VLR_ATACADO'
            Width = 179
          end
          object cxVisualizaDBTableView1PRO_QTD_MIN_VLR_PROMOC: TcxGridDBColumn
            DataBinding.FieldName = 'PRO_QTD_MIN_VLR_PROMOC'
            Width = 195
          end
          object cxVisualizaDBTableView1PRO_DIAS_VALIDADE: TcxGridDBColumn
            DataBinding.FieldName = 'PRO_DIAS_VALIDADE'
            Width = 97
          end
          object cxVisualizaDBTableView1PRO_PERMITE_FRAC: TcxGridDBColumn
            DataBinding.FieldName = 'PRO_PERMITE_FRAC'
            Width = 107
          end
          object cxVisualizaDBTableView1PRO_ALCOOLICO: TcxGridDBColumn
            DataBinding.FieldName = 'PRO_ALCOOLICO'
            PropertiesClassName = 'TcxCheckBoxProperties'
            Properties.DisplayChecked = 'S'
            Properties.DisplayUnchecked = 'N'
            Width = 60
          end
          object cxVisualizaDBTableView1PRO_COD_VASILHAME: TcxGridDBColumn
            DataBinding.FieldName = 'PRO_COD_VASILHAME'
          end
          object cxVisualizaDBTableView1PRO_PEDE_LIBERACAO_FSC: TcxGridDBColumn
            DataBinding.FieldName = 'PRO_PEDE_LIBERACAO_FSC'
          end
          object cxVisualizaDBTableView1PRO_QUANT_UNIDADE_ENTRADA: TcxGridDBColumn
            DataBinding.FieldName = 'PRO_QUANT_UNIDADE_ENTRADA'
          end
          object cxVisualizaDBTableView1PRO_QTD_MAXIMA_COMPRA: TcxGridDBColumn
            DataBinding.FieldName = 'PRO_QTD_MAXIMA_COMPRA'
          end
          object cxVisualizaDBTableView1PRO_QTD_MAX_VARIAVEL: TcxGridDBColumn
            DataBinding.FieldName = 'PRO_QTD_MAX_VARIAVEL'
          end
          object cxVisualizaDBTableView1PRO_PER_ALTERA_PRECO_PDV: TcxGridDBColumn
            DataBinding.FieldName = 'PRO_PER_ALTERA_PRECO_PDV'
          end
          object cxVisualizaDBTableView1PRO_BLOQQUEIA_MULTIPLICACAO: TcxGridDBColumn
            DataBinding.FieldName = 'PRO_BLOQQUEIA_MULTIPLICACAO'
          end
          object cxVisualizaDBTableView1PRO_LEVEX_PAGUEY: TcxGridDBColumn
            DataBinding.FieldName = 'PRO_LEVEX_PAGUEY'
          end
          object cxVisualizaDBTableView1PRO_COR: TcxGridDBColumn
            DataBinding.FieldName = 'PRO_COR'
          end
          object cxVisualizaDBTableView1PRO_LOCALIZACAO: TcxGridDBColumn
            DataBinding.FieldName = 'PRO_LOCALIZACAO'
          end
          object cxVisualizaDBTableView1PRO_OBS: TcxGridDBColumn
            DataBinding.FieldName = 'PRO_OBS'
          end
          object cxVisualizaDBTableView1PRO_COD_ALIQUOTA: TcxGridDBColumn
            DataBinding.FieldName = 'PRO_COD_ALIQUOTA'
          end
          object cxVisualizaDBTableView1PRO_COMISSAO: TcxGridDBColumn
            DataBinding.FieldName = 'PRO_COMISSAO'
          end
          object cxVisualizaDBTableView1PRO_ALIQUOTA_OUTRAS: TcxGridDBColumn
            DataBinding.FieldName = 'PRO_ALIQUOTA_OUTRAS'
          end
          object cxVisualizaDBTableView1PRO_ISENTO_PIS_COFINS_PRO: TcxGridDBColumn
            DataBinding.FieldName = 'PRO_ISENTO_PIS_COFINS_PRO'
          end
          object cxVisualizaDBTableView1PRO_CREDITO_ICMS: TcxGridDBColumn
            DataBinding.FieldName = 'PRO_CREDITO_ICMS'
          end
          object cxVisualizaDBTableView1PRO_TIPO_PRODUCAO: TcxGridDBColumn
            DataBinding.FieldName = 'PRO_TIPO_PRODUCAO'
          end
          object cxVisualizaDBTableView1PRO_COD_GRUPO: TcxGridDBColumn
            DataBinding.FieldName = 'PRO_COD_GRUPO'
          end
          object cxVisualizaDBTableView1PRO_SUB_GRUPO: TcxGridDBColumn
            DataBinding.FieldName = 'PRO_SUB_GRUPO'
          end
          object cxVisualizaDBTableView1PRO_SIT_TRIBUTARIA: TcxGridDBColumn
            DataBinding.FieldName = 'PRO_SIT_TRIBUTARIA'
          end
          object cxVisualizaDBTableView1PRO_CEST: TcxGridDBColumn
            DataBinding.FieldName = 'PRO_CEST'
          end
          object cxVisualizaDBTableView1PRO_CFOP: TcxGridDBColumn
            DataBinding.FieldName = 'PRO_CFOP'
          end
          object cxVisualizaDBTableView1PRO_NCM: TcxGridDBColumn
            DataBinding.FieldName = 'PRO_NCM'
          end
          object cxVisualizaDBTableView1PRO_CHAVE_IBPT: TcxGridDBColumn
            DataBinding.FieldName = 'PRO_CHAVE_IBPT'
          end
          object cxVisualizaDBTableView1PRO_CST_ICMS: TcxGridDBColumn
            DataBinding.FieldName = 'PRO_CST_ICMS'
          end
          object cxVisualizaDBTableView1PRO_CST_PIS: TcxGridDBColumn
            DataBinding.FieldName = 'PRO_CST_PIS'
          end
          object cxVisualizaDBTableView1PRO_CST_COFINS: TcxGridDBColumn
            DataBinding.FieldName = 'PRO_CST_COFINS'
          end
          object cxVisualizaDBTableView1PRO_ALIQ_ICMS: TcxGridDBColumn
            DataBinding.FieldName = 'PRO_ALIQ_ICMS'
          end
          object cxVisualizaDBTableView1PRO_ALIQ_PIS: TcxGridDBColumn
            DataBinding.FieldName = 'PRO_ALIQ_PIS'
          end
          object cxVisualizaDBTableView1PRO_ALIQ_COFINS: TcxGridDBColumn
            DataBinding.FieldName = 'PRO_ALIQ_COFINS'
          end
          object cxVisualizaDBTableView1PRO_PERC_IMPOSTOS: TcxGridDBColumn
            DataBinding.FieldName = 'PRO_PERC_IMPOSTOS'
          end
          object cxVisualizaDBTableView1PRO_PERC_IMPOSTOS_E: TcxGridDBColumn
            DataBinding.FieldName = 'PRO_PERC_IMPOSTOS_E'
          end
          object cxVisualizaDBTableView1PRO_PERC_IMPOSTOS_M: TcxGridDBColumn
            DataBinding.FieldName = 'PRO_PERC_IMPOSTOS_M'
          end
          object cxVisualizaDBTableView1PRO_ULTIMO_USUARIO_ALTERACAO: TcxGridDBColumn
            DataBinding.FieldName = 'PRO_ULTIMO_USUARIO_ALTERACAO'
          end
          object cxVisualizaDBTableView1PRO_PERMITE_PARCELAMENTO_PDV: TcxGridDBColumn
            DataBinding.FieldName = 'PRO_PERMITE_PARCELAMENTO_PDV'
          end
          object cxVisualizaDBTableView1PRO_ORIGEM_MERCA: TcxGridDBColumn
            DataBinding.FieldName = 'PRO_ORIGEM_MERCA'
          end
          object cxVisualizaDBTableView1PRO_IMP_VALE_GAS: TcxGridDBColumn
            DataBinding.FieldName = 'PRO_IMP_VALE_GAS'
          end
          object cxVisualizaDBTableView1PRO_IMP_VALE_AGUA: TcxGridDBColumn
            DataBinding.FieldName = 'PRO_IMP_VALE_AGUA'
          end
          object cxVisualizaDBTableView1PRO_ALERTA_COZINHA: TcxGridDBColumn
            DataBinding.FieldName = 'PRO_ALERTA_COZINHA'
          end
          object cxVisualizaDBTableView1PRO_ANDROID_VISUALIZA: TcxGridDBColumn
            DataBinding.FieldName = 'PRO_ANDROID_VISUALIZA'
          end
          object cxVisualizaDBTableView1PRO_NUMERO_LOTE: TcxGridDBColumn
            DataBinding.FieldName = 'PRO_NUMERO_LOTE'
          end
          object cxVisualizaDBTableView1PRO_TEMPO_PREPARO: TcxGridDBColumn
            DataBinding.FieldName = 'PRO_TEMPO_PREPARO'
          end
          object cxVisualizaDBTableView1PRO_DT_ATUALIZACAO_CADASTRO: TcxGridDBColumn
            DataBinding.FieldName = 'PRO_DT_ATUALIZACAO_CADASTRO'
          end
          object cxVisualizaDBTableView1PRO_HR__ATUALIZACAO_CADASTRO: TcxGridDBColumn
            DataBinding.FieldName = 'PRO_HR__ATUALIZACAO_CADASTRO'
          end
          object cxVisualizaDBTableView1PRO_COD_SEC: TcxGridDBColumn
            DataBinding.FieldName = 'PRO_COD_SEC'
          end
        end
        object cxgridLevel1: TcxGridLevel
          GridView = cxVisualizaDBTableView1
        end
      end
      object Panel3: TPanel
        Left = 0
        Top = 539
        Width = 1270
        Height = 19
        Align = alBottom
        Caption = 'Cadastro de Produtos'
        TabOrder = 4
        ExplicitTop = 535
        ExplicitWidth = 1285
      end
    end
    inherited tbCadastro: TcxTabSheet
      ExplicitLeft = 3
      ExplicitTop = 26
      ExplicitWidth = 1270
      ExplicitHeight = 558
      object cxPaginas2: TcxPageControl
        Left = 0
        Top = 0
        Width = 1270
        Height = 558
        Align = alClient
        TabOrder = 0
        Properties.ActivePage = cxDadosProduto
        Properties.CustomButtons.Buttons = <>
        ClientRectBottom = 552
        ClientRectLeft = 3
        ClientRectRight = 1264
        ClientRectTop = 26
        object cxDadosProduto: TcxTabSheet
          Caption = 'Dados do produto'
          ImageIndex = 0
          object grp_produto: TGroupBox
            Left = 0
            Top = 0
            Width = 1261
            Height = 417
            Align = alTop
            Caption = 'Base'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -11
            Font.Name = 'Trebuchet MS'
            Font.Style = [fsBold]
            ParentFont = False
            TabOrder = 0
            object Label104: TLabel
              Left = 8
              Top = 18
              Width = 76
              Height = 16
              Caption = 'Descri'#231#227'o PDV:'
              Font.Charset = ANSI_CHARSET
              Font.Color = clBlack
              Font.Height = -11
              Font.Name = 'Trebuchet MS'
              Font.Style = []
              ParentFont = False
            end
            object Label30: TLabel
              Left = 274
              Top = 72
              Width = 103
              Height = 16
              Caption = 'Tempo de Preparo:'
              FocusControl = cxDBTimeEdit1
            end
            object Label40: TLabel
              Left = 274
              Top = 116
              Width = 23
              Height = 16
              Caption = 'Cor:'
            end
            object Label46: TLabel
              Left = 8
              Top = 72
              Width = 65
              Height = 16
              Caption = 'Valor Custo:'
              FocusControl = cxDBCalcEdit5
            end
            object Label47: TLabel
              Left = 142
              Top = 72
              Width = 83
              Height = 16
              Caption = 'Pre'#231'o Atacado:'
              FocusControl = cxDBCurrencyEdit5
            end
            object Label48: TLabel
              Left = 10
              Top = 116
              Width = 75
              Height = 16
              Caption = 'Pre'#231'o Padr'#227'o:'
              FocusControl = cxDBCurrencyEdit8
            end
            object Label49: TLabel
              Left = 142
              Top = 116
              Width = 93
              Height = 16
              Caption = 'Pre'#231'o Promo'#231#227'o:'
              FocusControl = cxDBCurrencyEdit9
            end
            object Label50: TLabel
              Left = 10
              Top = 160
              Width = 45
              Height = 16
              Caption = 'Pre'#231'o 2:'
              FocusControl = cxDBCurrencyEdit10
            end
            object Label51: TLabel
              Left = 142
              Top = 160
              Width = 45
              Height = 16
              Caption = 'Pre'#231'o 3:'
              FocusControl = cxDBCurrencyEdit11
            end
            object Label52: TLabel
              Left = 274
              Top = 160
              Width = 45
              Height = 16
              Caption = 'Pre'#231'o 4:'
              FocusControl = cxDBCurrencyEdit12
            end
            object edt_descr_pdv: TcxDBTextEdit
              Left = 8
              Top = 38
              DataBinding.DataField = 'PRO_DESCRICAO_PDV'
              DataBinding.DataSource = dsPrincipal
              TabOrder = 0
              Width = 386
            end
            object cxDBTimeEdit1: TcxDBTimeEdit
              Left = 274
              Top = 88
              DataBinding.DataField = 'PRO_TEMPO_PREPARO'
              DataBinding.DataSource = dsPrincipal
              TabOrder = 1
              Width = 121
            end
            object cxDBCalcEdit5: TcxDBCalcEdit
              Left = 8
              Top = 88
              DataBinding.DataField = 'PRO_VLR_CUSTO'
              DataBinding.DataSource = dsPrincipal
              TabOrder = 2
              Width = 121
            end
            object cxDBCurrencyEdit5: TcxDBCurrencyEdit
              Left = 142
              Top = 88
              DataBinding.DataField = 'PRO_PRECO_V_ATACADO'
              DataBinding.DataSource = dsPrincipal
              TabOrder = 3
              Width = 121
            end
            object cxDBCurrencyEdit8: TcxDBCurrencyEdit
              Left = 10
              Top = 132
              DataBinding.DataField = 'PRO_VLR_PADRAO'
              DataBinding.DataSource = dsPrincipal
              TabOrder = 4
              Width = 121
            end
            object cxDBCurrencyEdit9: TcxDBCurrencyEdit
              Left = 142
              Top = 132
              DataBinding.DataField = 'PRO_VLR_PROMOC'
              DataBinding.DataSource = dsPrincipal
              TabOrder = 5
              Width = 121
            end
            object cxDBCurrencyEdit10: TcxDBCurrencyEdit
              Left = 10
              Top = 176
              DataBinding.DataField = 'PRO_VLR_PRECO2'
              DataBinding.DataSource = dsPrincipal
              TabOrder = 6
              Width = 121
            end
            object cxDBCurrencyEdit11: TcxDBCurrencyEdit
              Left = 142
              Top = 176
              DataBinding.DataField = 'PRO_VLR_PRECO3'
              DataBinding.DataSource = dsPrincipal
              TabOrder = 7
              Width = 121
            end
            object cxDBCurrencyEdit12: TcxDBCurrencyEdit
              Left = 274
              Top = 176
              DataBinding.DataField = 'PRO_VLR_PRECO4'
              DataBinding.DataSource = dsPrincipal
              TabOrder = 8
              Width = 121
            end
            object DBComboBox1: TDBComboBox
              Left = 274
              Top = 130
              Width = 121
              Height = 24
              DataField = 'PRO_COR'
              DataSource = dsPrincipal
              Items.Strings = (
                'Azul.'
                'Verde.'
                'Amarelo.'
                'Roxo.'
                'Rosa.'
                'Vermelho.'
                'Laranja.'
                'Marrom')
              TabOrder = 9
            end
          end
        end
        object cxBalanca: TcxTabSheet
          Caption = 'Balan'#231'a   '
          ImageIndex = 1
          ExplicitLeft = 0
          ExplicitTop = 0
          ExplicitWidth = 0
          ExplicitHeight = 288
        end
        object cxObs: TcxTabSheet
          Caption = 'Observa'#231#245'es'
          ImageIndex = 2
          ExplicitLeft = 0
          ExplicitTop = 0
          ExplicitWidth = 0
          ExplicitHeight = 288
          object dbmmoOBS: TDBMemo
            Left = 0
            Top = 0
            Width = 1281
            Height = 512
            Align = alClient
            BorderStyle = bsNone
            DataField = 'PRO_OBS'
            DataSource = dsPrincipal
            TabOrder = 0
            ExplicitHeight = 288
          end
        end
        object cxCompra: TcxTabSheet
          Caption = 'Compras / Venda'
          ImageIndex = 4
          ExplicitLeft = 2
          ExplicitTop = 28
          ExplicitWidth = 1281
          ExplicitHeight = 512
          object Panel17: TPanel
            Left = 0
            Top = 217
            Width = 1271
            Height = 319
            Align = alClient
            BevelOuter = bvNone
            Color = clWhite
            ParentBackground = False
            TabOrder = 0
            ExplicitWidth = 1281
            ExplicitHeight = 295
            object shp2: TShape
              AlignWithMargins = True
              Left = 0
              Top = 20
              Width = 1271
              Height = 3
              Margins.Left = 0
              Margins.Right = 0
              Align = alTop
              Brush.Color = 16755285
              Pen.Style = psClear
              ExplicitLeft = -190
              ExplicitTop = 27
              ExplicitWidth = 884
            end
            object cxCompras: TcxGrid
              AlignWithMargins = True
              Left = 3
              Top = 29
              Width = 1265
              Height = 287
              Align = alClient
              TabOrder = 0
              ExplicitWidth = 1275
              ExplicitHeight = 39
              object cxComprasDBTableView1: TcxGridDBTableView
                Navigator.Buttons.CustomButtons = <>
                DataController.Summary.DefaultGroupSummaryItems = <>
                DataController.Summary.FooterSummaryItems = <>
                DataController.Summary.SummaryGroups = <>
                OptionsCustomize.ColumnsQuickCustomization = True
                OptionsData.CancelOnExit = False
                OptionsData.Deleting = False
                OptionsData.DeletingConfirmation = False
                OptionsData.Editing = False
                OptionsData.Inserting = False
                OptionsView.ColumnAutoWidth = True
                object cxComprasDBTableView1RAZAO_EMP: TcxGridDBColumn
                  Caption = 'Empresa'
                  DataBinding.FieldName = 'RAZAO_EMP'
                end
                object cxComprasDBTableView1DATAEMI_ENT: TcxGridDBColumn
                  Caption = 'Data Emiss'#227'o'
                  DataBinding.FieldName = 'DATAEMI_ENT'
                end
                object cxComprasDBTableView1DATAENT_ENT: TcxGridDBColumn
                  Caption = 'Data Entrada'
                  DataBinding.FieldName = 'DATAENT_ENT'
                end
                object cxComprasDBTableView1RAZAO_FOR: TcxGridDBColumn
                  Caption = 'Fornecedor'
                  DataBinding.FieldName = 'RAZAO_FOR'
                end
                object cxComprasDBTableView1NUMNF_ENT: TcxGridDBColumn
                  Caption = 'Num. Nota'
                  DataBinding.FieldName = 'NUMNF_ENT'
                end
                object cxComprasDBTableView1QTD_PRO: TcxGridDBColumn
                  Caption = 'Qaunt.'
                  DataBinding.FieldName = 'QTD_PRO'
                end
                object cxComprasDBTableView1VALOR_UNIT_PRO: TcxGridDBColumn
                  Caption = 'Vl. Unid.'
                  DataBinding.FieldName = 'VALOR_UNIT_PRO'
                end
                object cxComprasDBTableView1FRETE_ENT: TcxGridDBColumn
                  Caption = 'Frete'
                  DataBinding.FieldName = 'FRETE_ENT'
                end
                object cxComprasDBTableView1VALOR_DESCONTO: TcxGridDBColumn
                  Caption = 'Desconto'
                  DataBinding.FieldName = 'VALOR_DESCONTO'
                end
                object cxComprasDBTableView1VALOR_ACRESCIMO: TcxGridDBColumn
                  Caption = 'Acr'#233'scimo'
                  DataBinding.FieldName = 'VALOR_ACRESCIMO'
                end
                object cxComprasDBTableView1CUSTO: TcxGridDBColumn
                  Caption = 'Custo'
                  DataBinding.FieldName = 'CUSTO'
                end
                object cxComprasDBTableView1VALOR_ICMS_SUB: TcxGridDBColumn
                  Caption = 'Vl. Sub. ICMS'
                  DataBinding.FieldName = 'VALOR_ICMS_SUB'
                end
                object cxComprasDBTableView1VALOR_ICMS: TcxGridDBColumn
                  Caption = 'ICMS'
                  DataBinding.FieldName = 'VALOR_ICMS'
                end
                object cxComprasDBTableView1VL_IPI: TcxGridDBColumn
                  Caption = 'IPI'
                  DataBinding.FieldName = 'VL_IPI'
                end
              end
              object cxComprasLevel1: TcxGridLevel
                GridView = cxComprasDBTableView1
              end
            end
            object cxLabel30: TcxLabel
              Left = 0
              Top = 0
              Align = alTop
              Caption = 'Vendas do Produto'
              Style.TextColor = 16744448
              Style.TextStyle = [fsBold, fsItalic]
              Properties.Alignment.Horz = taCenter
              Properties.Alignment.Vert = taVCenter
              ExplicitWidth = 1281
              AnchorX = 636
              AnchorY = 9
            end
          end
          object Panel18: TPanel
            Left = 0
            Top = 0
            Width = 1261
            Height = 217
            Align = alTop
            BevelOuter = bvNone
            Color = clWhite
            ParentBackground = False
            TabOrder = 1
            ExplicitWidth = 1281
            object GroupBox3: TGroupBox
              AlignWithMargins = True
              Left = 3
              Top = 3
              Width = 392
              Height = 211
              Align = alLeft
              Caption = 'Compras'
              TabOrder = 0
              object Label14: TLabel
                Left = 8
                Top = 37
                Width = 73
                Height = 13
                Alignment = taRightJustify
                AutoSize = False
                Caption = 'Data Emiss'#227'o:'
              end
              object Label15: TLabel
                Left = 8
                Top = 64
                Width = 73
                Height = 13
                Alignment = taRightJustify
                AutoSize = False
                Caption = 'Fornecedor:'
              end
              object Label16: TLabel
                Left = 8
                Top = 78
                Width = 73
                Height = 13
                Alignment = taRightJustify
                AutoSize = False
                Caption = 'Nota Fiscal:'
              end
              object Label17: TLabel
                Left = 8
                Top = 90
                Width = 73
                Height = 13
                Alignment = taRightJustify
                AutoSize = False
                Caption = 'Qaunt.:'
              end
              object Label18: TLabel
                Left = 8
                Top = 102
                Width = 73
                Height = 13
                Alignment = taRightJustify
                AutoSize = False
                Caption = 'Valor Unit'#225'rio:'
              end
              object Label19: TLabel
                Left = 8
                Top = 114
                Width = 73
                Height = 13
                Alignment = taRightJustify
                AutoSize = False
                Caption = 'Frete:'
              end
              object Label20: TLabel
                Left = 8
                Top = 164
                Width = 73
                Height = 13
                Alignment = taRightJustify
                AutoSize = False
                Caption = 'ICMS:'
              end
              object Label21: TLabel
                Left = 8
                Top = 177
                Width = 73
                Height = 13
                Alignment = taRightJustify
                AutoSize = False
                Caption = 'IPI:'
              end
              object Label22: TLabel
                Left = 8
                Top = 126
                Width = 73
                Height = 13
                Alignment = taRightJustify
                AutoSize = False
                Caption = 'Vl.Desconto:'
              end
              object Label23: TLabel
                Left = 8
                Top = 139
                Width = 73
                Height = 13
                Alignment = taRightJustify
                AutoSize = False
                Caption = 'Vl.Acr'#233'scimo:'
              end
              object Label24: TLabel
                Left = 8
                Top = 51
                Width = 73
                Height = 13
                Alignment = taRightJustify
                AutoSize = False
                Caption = 'Data Entrada:'
              end
              object Label25: TLabel
                Left = 8
                Top = 151
                Width = 73
                Height = 13
                Alignment = taRightJustify
                AutoSize = False
                Caption = 'Vl.Sub.Trib.:'
              end
              object Label26: TLabel
                Left = 8
                Top = 24
                Width = 73
                Height = 13
                Alignment = taRightJustify
                AutoSize = False
                Caption = 'Empresa:'
              end
              object cxDBLabel1: TcxDBLabel
                Left = 89
                Top = 22
                DataBinding.DataField = 'RAZAO_EMP'
                Style.TextColor = 16744448
                Style.TextStyle = [fsBold]
                Height = 19
                Width = 294
              end
              object cxDBLabel2: TcxDBLabel
                Left = 89
                Top = 35
                DataBinding.DataField = 'DATAEMI_ENT'
                Style.TextColor = 16744448
                Style.TextStyle = [fsBold]
                Height = 19
                Width = 121
              end
              object cxDBLabel3: TcxDBLabel
                Left = 89
                Top = 49
                DataBinding.DataField = 'DATAENT_ENT'
                Style.TextColor = 16744448
                Style.TextStyle = [fsBold]
                Height = 19
                Width = 121
              end
              object cxDBLabel4: TcxDBLabel
                Left = 89
                Top = 62
                DataBinding.DataField = 'RAZAO_FOR'
                Style.TextColor = 16744448
                Style.TextStyle = [fsBold]
                Height = 19
                Width = 294
              end
              object cxDBLabel5: TcxDBLabel
                Left = 89
                Top = 76
                DataBinding.DataField = 'NUMNF_ENT'
                Style.TextColor = 16744448
                Style.TextStyle = [fsBold]
                Height = 19
                Width = 294
              end
              object cxDBLabel6: TcxDBLabel
                Left = 89
                Top = 88
                DataBinding.DataField = 'QTD_PRO'
                Style.TextColor = 16744448
                Style.TextStyle = [fsBold]
                Height = 19
                Width = 294
              end
              object cxDBLabel7: TcxDBLabel
                Left = 89
                Top = 100
                DataBinding.DataField = 'VALOR_UNIT_PRO'
                Style.TextColor = 16744448
                Style.TextStyle = [fsBold]
                Height = 19
                Width = 294
              end
              object cxDBLabel8: TcxDBLabel
                Left = 89
                Top = 112
                DataBinding.DataField = 'FRETE_ENT'
                Style.TextColor = 16744448
                Style.TextStyle = [fsBold]
                Height = 19
                Width = 294
              end
              object cxDBLabel9: TcxDBLabel
                Left = 89
                Top = 124
                DataBinding.DataField = 'DESC_ENT'
                Style.TextColor = 16744448
                Style.TextStyle = [fsBold]
                Height = 19
                Width = 294
              end
              object cxDBLabel10: TcxDBLabel
                Left = 89
                Top = 137
                DataBinding.DataField = 'ACRES_ENT'
                Style.TextColor = 16744448
                Style.TextStyle = [fsBold]
                Height = 19
                Width = 294
              end
              object cxDBLabel11: TcxDBLabel
                Left = 89
                Top = 149
                DataBinding.DataField = 'VALOR_SUB_TRIBUTARIA'
                Style.TextColor = 16744448
                Style.TextStyle = [fsBold]
                Height = 19
                Width = 294
              end
              object cxDBLabel12: TcxDBLabel
                Left = 89
                Top = 162
                DataBinding.DataField = 'VALOR_ICMS'
                Style.TextColor = 16744448
                Style.TextStyle = [fsBold]
                Height = 19
                Width = 294
              end
              object cxDBLabel13: TcxDBLabel
                Left = 89
                Top = 175
                DataBinding.DataField = 'VALOR_IPI'
                Style.TextColor = 16744448
                Style.TextStyle = [fsBold]
                Height = 19
                Width = 294
              end
            end
            object GroupBox2: TGroupBox
              AlignWithMargins = True
              Left = 401
              Top = 3
              Width = 297
              Height = 211
              Align = alLeft
              Caption = #218'ltima Venda'
              TabOrder = 1
              object Label1: TLabel
                Left = 8
                Top = 24
                Width = 81
                Height = 13
                Alignment = taRightJustify
                AutoSize = False
                Caption = 'Data:'
              end
              object Label2: TLabel
                Left = 8
                Top = 40
                Width = 81
                Height = 13
                Alignment = taRightJustify
                AutoSize = False
                Caption = 'Cliente:'
              end
              object Label3: TLabel
                Left = 8
                Top = 56
                Width = 81
                Height = 13
                Alignment = taRightJustify
                AutoSize = False
              end
              object Label4: TLabel
                Left = 8
                Top = 88
                Width = 81
                Height = 13
                Alignment = taRightJustify
                AutoSize = False
                Caption = 'Quant.:'
              end
              object Label5: TLabel
                Left = 8
                Top = 104
                Width = 81
                Height = 13
                Alignment = taRightJustify
                AutoSize = False
                Caption = 'Valor Unit'#225'rio:'
              end
              object Label6: TLabel
                Left = 8
                Top = 56
                Width = 81
                Height = 13
                Alignment = taRightJustify
                AutoSize = False
                Caption = 'Cupom Fiscal:'
              end
              object Label7: TLabel
                Left = 8
                Top = 72
                Width = 81
                Height = 13
                Alignment = taRightJustify
                AutoSize = False
                Caption = 'Nota Fiscal:'
              end
              object cxDBLabel14: TcxDBLabel
                Left = 95
                Top = 22
                DataBinding.DataField = 'DATA_VEN'
                Style.TextColor = 16744448
                Style.TextStyle = [fsBold]
                Height = 19
                Width = 193
              end
              object cxDBLabel15: TcxDBLabel
                Left = 95
                Top = 38
                DataBinding.DataField = 'NOME_CLI'
                Style.TextColor = 16744448
                Style.TextStyle = [fsBold]
                Height = 19
                Width = 193
              end
              object cxDBLabel16: TcxDBLabel
                Left = 95
                Top = 54
                DataBinding.DataField = 'CUPOM_FISCAL_VEN'
                Style.TextColor = 16744448
                Style.TextStyle = [fsBold]
                Height = 19
                Width = 193
              end
              object cxDBLabel17: TcxDBLabel
                Left = 95
                Top = 70
                DataBinding.DataField = 'NUMERO_NOTA_FISCAL'
                Style.TextColor = 16744448
                Style.TextStyle = [fsBold]
                Height = 19
                Width = 193
              end
              object cxDBLabel18: TcxDBLabel
                Left = 95
                Top = 86
                DataBinding.DataField = 'QUANT'
                Style.TextColor = 16744448
                Style.TextStyle = [fsBold]
                Height = 19
                Width = 193
              end
              object cxDBLabel19: TcxDBLabel
                Left = 95
                Top = 102
                DataBinding.DataField = 'VALOR'
                Style.TextColor = 16744448
                Style.TextStyle = [fsBold]
                Height = 19
                Width = 193
              end
            end
          end
        end
        object tabFornecedores: TcxTabSheet
          Caption = 'Fornecedores'
          ImageIndex = 5
          ExplicitLeft = 0
          ExplicitTop = 0
          ExplicitWidth = 0
          ExplicitHeight = 288
          object cxFornecedores: TcxGrid
            Left = 0
            Top = 0
            Width = 1281
            Height = 471
            Align = alClient
            TabOrder = 0
            ExplicitHeight = 247
            object cxFornecedoresDBTableView1: TcxGridDBTableView
              Navigator.Buttons.CustomButtons = <>
              DataController.Summary.DefaultGroupSummaryItems = <>
              DataController.Summary.FooterSummaryItems = <>
              DataController.Summary.SummaryGroups = <>
              OptionsData.CancelOnExit = False
              OptionsData.Deleting = False
              OptionsData.DeletingConfirmation = False
              OptionsData.Inserting = False
              OptionsView.ColumnAutoWidth = True
              OptionsView.GroupByBox = False
              object cxFornecedoresDBTableView1COD_FOR: TcxGridDBColumn
                Caption = 'C'#243'd For.'
                DataBinding.FieldName = 'COD_FOR'
                Options.Editing = False
              end
              object cxFornecedoresDBTableView1RAZAO_FOR: TcxGridDBColumn
                Caption = 'Nome do Fornecedor'
                DataBinding.FieldName = 'RAZAO_FOR'
                Options.Editing = False
              end
              object cxFornecedoresDBTableView1REFERENCIA: TcxGridDBColumn
                Caption = 'Refer'#234'ncia'
                DataBinding.FieldName = 'REFERENCIA'
              end
            end
            object cxFornecedoresLevel1: TcxGridLevel
              GridView = cxFornecedoresDBTableView1
            end
          end
          object pnl3: TPanel
            Left = 0
            Top = 471
            Width = 1281
            Height = 41
            Align = alBottom
            BevelOuter = bvNone
            Color = 4718629
            ParentBackground = False
            TabOrder = 1
            ExplicitTop = 247
          end
        end
        object tabComposicao: TcxTabSheet
          Caption = 'Composi'#231#227'o'
          ImageIndex = 6
          ExplicitLeft = 0
          ExplicitTop = 0
          ExplicitWidth = 0
          ExplicitHeight = 288
          object cxComposicao: TcxGrid
            Left = 0
            Top = 0
            Width = 1281
            Height = 471
            Align = alClient
            TabOrder = 0
            ExplicitHeight = 247
            object cxGridDBTableView1: TcxGridDBTableView
              Navigator.Buttons.CustomButtons = <>
              DataController.Summary.DefaultGroupSummaryItems = <>
              DataController.Summary.FooterSummaryItems = <>
              DataController.Summary.SummaryGroups = <>
              OptionsData.CancelOnExit = False
              OptionsData.Deleting = False
              OptionsData.DeletingConfirmation = False
              OptionsData.Inserting = False
              OptionsView.ColumnAutoWidth = True
              OptionsView.GroupByBox = False
            end
            object cxComposicaoDBTableView1: TcxGridDBTableView
              Navigator.Buttons.CustomButtons = <>
              DataController.Summary.DefaultGroupSummaryItems = <>
              DataController.Summary.FooterSummaryItems = <>
              DataController.Summary.SummaryGroups = <>
              OptionsData.CancelOnExit = False
              OptionsData.Deleting = False
              OptionsData.DeletingConfirmation = False
              OptionsData.Inserting = False
              OptionsView.ColumnAutoWidth = True
              OptionsView.GroupByBox = False
              object cxComposicaoDBTableView1COD_PRO_COMPOSICAO: TcxGridDBColumn
                Caption = 'C'#243'd. Prod.'
                DataBinding.FieldName = 'COD_PRO_COMPOSICAO'
                Options.Editing = False
              end
              object cxComposicaoDBTableView1NOME_PRO: TcxGridDBColumn
                Caption = 'Descri'#231#227'o do produto'
                DataBinding.FieldName = 'NOME_PRO'
                Options.Editing = False
                Width = 300
              end
              object cxComposicaoDBTableView1QUANT: TcxGridDBColumn
                Caption = 'Quantidade'
                DataBinding.FieldName = 'QUANT'
              end
              object cxComposicaoDBTableView1ESTOQUE: TcxGridDBColumn
                Caption = 'Estoque Atual'
                DataBinding.FieldName = 'ESTOQUE'
              end
            end
            object cxComposicaoLevel1: TcxGridLevel
              GridView = cxComposicaoDBTableView1
            end
          end
          object Panel19: TPanel
            Left = 0
            Top = 471
            Width = 1281
            Height = 41
            Align = alBottom
            BevelOuter = bvNone
            Color = 4718629
            ParentBackground = False
            TabOrder = 1
            ExplicitTop = 247
          end
        end
        object cxTabSheet1: TcxTabSheet
          Caption = 'Par'#226'metros'
          ImageIndex = 6
          ExplicitLeft = 0
          ExplicitTop = 0
          ExplicitWidth = 0
          ExplicitHeight = 288
          object DBCheckBox1: TDBCheckBox
            Left = 8
            Top = 3
            Width = 169
            Height = 17
            Caption = 'Permite Venda Fracionada'
            DataField = 'PRO_PERMITE_FRAC'
            DataSource = dsPrincipal
            TabOrder = 0
            ValueChecked = '1'
            ValueUnchecked = '0'
          end
          object DBCheckBox2: TDBCheckBox
            Left = 8
            Top = 26
            Width = 121
            Height = 17
            Caption = 'Controla Estoque'
            DataField = 'PRO_PERMITE_FRAC'
            DataSource = dsPrincipal
            TabOrder = 1
            ValueChecked = '1'
            ValueUnchecked = '0'
          end
          object DBCheckBox3: TDBCheckBox
            Left = 8
            Top = 49
            Width = 121
            Height = 17
            Caption = 'Produto Alc'#243'olico'
            DataField = 'PRO_ALCOOLICO'
            DataSource = dsPrincipal
            TabOrder = 2
            ValueChecked = '1'
            ValueUnchecked = '0'
          end
          object DBCheckBox4: TDBCheckBox
            Left = 8
            Top = 72
            Width = 185
            Height = 17
            Caption = 'Chama Fiscal de caixa na Venda'
            DataField = 'PRO_PEDE_LIBERACAO_FSC'
            DataSource = dsPrincipal
            TabOrder = 3
            ValueChecked = '1'
            ValueUnchecked = '0'
          end
          object DBCheckBox5: TDBCheckBox
            Left = 8
            Top = 95
            Width = 185
            Height = 17
            Caption = 'Imprime Vale G'#225's PDV'
            DataField = 'PRO_IMP_VALE_GAS'
            DataSource = dsPrincipal
            TabOrder = 4
            ValueChecked = '1'
            ValueUnchecked = '0'
          end
          object DBCheckBox6: TDBCheckBox
            Left = 8
            Top = 118
            Width = 185
            Height = 17
            Caption = 'Imprime Vale '#193'gua PDV'
            DataField = 'PRO_IMP_VALE_AGUA'
            DataSource = dsPrincipal
            TabOrder = 5
            ValueChecked = '1'
            ValueUnchecked = '0'
          end
          object DBCheckBox7: TDBCheckBox
            Left = 8
            Top = 141
            Width = 185
            Height = 17
            Caption = 'Android Visualiza'
            DataField = 'PRO_ANDROID_VISUALIZA'
            DataSource = dsPrincipal
            TabOrder = 6
            ValueChecked = '1'
            ValueUnchecked = '0'
          end
          object DBCheckBox8: TDBCheckBox
            Left = 205
            Top = 31
            Width = 185
            Height = 17
            Caption = 'Bloquia Multiplica'#231#227'o PDV'
            DataField = 'PRO_BLOQQUEIA_MULTIPLICACAO'
            DataSource = dsPrincipal
            TabOrder = 7
            ValueChecked = '1'
            ValueUnchecked = '0'
          end
          object DBCheckBox9: TDBCheckBox
            Left = 205
            Top = 3
            Width = 185
            Height = 22
            Caption = 'Permite Parcelamento PDV'
            DataField = 'PRO_PERMITE_PARCELAMENTO_PDV'
            DataSource = dsPrincipal
            TabOrder = 8
            ValueChecked = '1'
            ValueUnchecked = '0'
          end
          object DBCheckBox11: TDBCheckBox
            Left = 205
            Top = 54
            Width = 185
            Height = 17
            Caption = 'Permite alterar pre'#231'o PDV'
            DataField = 'PRO_PER_ALTERA_PRECO_PDV'
            DataSource = dsPrincipal
            TabOrder = 9
            ValueChecked = '1'
            ValueUnchecked = '0'
          end
        end
        object cxTabSheet2: TcxTabSheet
          Caption = 'Fiscal'
          ImageIndex = 7
          ExplicitLeft = 0
          ExplicitTop = 0
          ExplicitWidth = 0
          ExplicitHeight = 288
          object GroupBox4: TGroupBox
            Left = 0
            Top = 0
            Width = 1281
            Height = 225
            Align = alTop
            Caption = 'Fiscal'
            TabOrder = 0
            object Label37: TLabel
              Left = 401
              Top = 106
              Width = 47
              Height = 13
              Caption = 'CST ICMS'
              FocusControl = cxDBTextEdit8
            end
            object Label38: TLabel
              Left = 269
              Top = 112
              Width = 38
              Height = 13
              Caption = 'CST PIS'
              FocusControl = cxDBTextEdit9
            end
            object Label41: TLabel
              Left = 16
              Top = 107
              Width = 58
              Height = 13
              Caption = 'Aliquota PIS'
              FocusControl = cxDBCurrencyEdit6
            end
            object Label42: TLabel
              Left = 390
              Top = 17
              Width = 76
              Height = 13
              Caption = 'Aliquota Cofins:'
              FocusControl = cxDBCurrencyEdit7
            end
            object Label10: TLabel
              Left = 15
              Top = 16
              Width = 71
              Height = 16
              Caption = 'Aliquota ICMS:'
              Font.Charset = ANSI_CHARSET
              Font.Color = clBlack
              Font.Height = -11
              Font.Name = 'Trebuchet MS'
              Font.Style = []
              ParentFont = False
            end
            object Label39: TLabel
              Left = 142
              Top = 107
              Width = 60
              Height = 13
              Caption = 'CST COFINS'
              FocusControl = cxDBTextEdit10
            end
            object Label35: TLabel
              Left = 15
              Top = 64
              Width = 26
              Height = 13
              Caption = 'NCM:'
            end
            object cxDBTextEdit8: TcxDBTextEdit
              Left = 403
              Top = 125
              DataBinding.DataField = 'PRO_CST_ICMS'
              DataBinding.DataSource = dsPrincipal
              TabOrder = 0
              Width = 121
            end
            object cxDBTextEdit9: TcxDBTextEdit
              Left = 269
              Top = 126
              DataBinding.DataField = 'PRO_CST_PIS'
              DataBinding.DataSource = dsPrincipal
              TabOrder = 1
              Width = 121
            end
            object cxDBCurrencyEdit6: TcxDBCurrencyEdit
              Left = 15
              Top = 126
              DataBinding.DataField = 'PRO_ALIQ_PIS'
              DataBinding.DataSource = dsPrincipal
              TabOrder = 2
              Width = 121
            end
            object cxDBCurrencyEdit7: TcxDBCurrencyEdit
              Left = 392
              Top = 35
              DataBinding.DataField = 'PRO_ALIQ_COFINS'
              DataBinding.DataSource = dsPrincipal
              TabOrder = 3
              Width = 132
            end
            object cxDBLookupComboBox9: TcxDBLookupComboBox
              Left = 16
              Top = 33
              DataBinding.DataField = 'PRO_ALIQ_ICMS'
              DataBinding.DataSource = dsPrincipal
              ParentFont = False
              ParentShowHint = False
              Properties.Alignment.Horz = taRightJustify
              Properties.DropDownListStyle = lsFixedList
              Properties.KeyFieldNames = 'ICMS'
              Properties.ListColumns = <
                item
                  FieldName = 'ID'
                end
                item
                  FieldName = 'Descricao'
                end
                item
                  FieldName = 'ICMS'
                end>
              Properties.ListFieldIndex = 1
              Properties.ListSource = dtm_cad_Produtos.dsmam_cod_trib_pro
              Properties.MaxLength = 2
              Properties.PostPopupValueOnTab = True
              ShowHint = True
              Style.Font.Charset = ANSI_CHARSET
              Style.Font.Color = clBlack
              Style.Font.Height = -11
              Style.Font.Name = 'Trebuchet MS'
              Style.Font.Style = []
              Style.IsFontAssigned = True
              TabOrder = 4
              Width = 370
            end
            object cxDBTextEdit10: TcxDBTextEdit
              Left = 142
              Top = 126
              DataBinding.DataField = 'PRO_CST_COFINS'
              DataBinding.DataSource = dsPrincipal
              TabOrder = 5
              Width = 121
            end
            object DBCheckBox10: TDBCheckBox
              Left = 16
              Top = 153
              Width = 185
              Height = 22
              Caption = 'Produto Isento PIS/COFINS?'
              DataField = 'PRO_ISENTO_PIS_COFINS_PRO'
              DataSource = dsPrincipal
              TabOrder = 6
              ValueChecked = '1'
              ValueUnchecked = '0'
            end
            object cxDBLookupComboBox2: TcxDBLookupComboBox
              Left = 16
              Top = 77
              DataBinding.DataField = 'PRO_NCM'
              DataBinding.DataSource = dsPrincipal
              ParentFont = False
              ParentShowHint = False
              Properties.Alignment.Horz = taRightJustify
              Properties.DropDownListStyle = lsFixedList
              Properties.GridMode = True
              Properties.KeyFieldNames = 'CodigoNCM'
              Properties.ListColumns = <
                item
                  FieldName = 'CHAVE'
                end
                item
                  FieldName = 'Descricao'
                end
                item
                  FieldName = 'CodigoNCM'
                end>
              Properties.ListFieldIndex = 1
              Properties.ListSource = dtm_cad_Produtos.ds_NCM
              Properties.MaxLength = 2
              Properties.PostPopupValueOnTab = True
              ShowHint = True
              Style.Font.Charset = ANSI_CHARSET
              Style.Font.Color = clBlack
              Style.Font.Height = -11
              Style.Font.Name = 'Trebuchet MS'
              Style.Font.Style = []
              Style.IsFontAssigned = True
              TabOrder = 7
              Width = 913
            end
          end
          object GroupBox5: TGroupBox
            Left = 0
            Top = 225
            Width = 1281
            Height = 344
            Align = alTop
            Caption = 'ePDV'
            TabOrder = 1
            object Label33: TLabel
              Left = 14
              Top = 14
              Width = 25
              Height = 13
              Caption = 'CEST'
              FocusControl = cxDBTextEdit5
            end
            object Label29: TLabel
              Left = 12
              Top = 57
              Width = 80
              Height = 13
              Caption = 'Outras Aliquotas'
              FocusControl = cxDBCurrencyEdit3
            end
            object Label31: TLabel
              Left = 141
              Top = 57
              Width = 63
              Height = 13
              Caption = 'Cr'#233'dito ICMS'
              FocusControl = cxDBCurrencyEdit4
            end
            object Label36: TLabel
              Left = 395
              Top = 11
              Width = 56
              Height = 13
              Caption = 'Chave IBPT'
              FocusControl = cxDBTextEdit7
            end
            object Label43: TLabel
              Left = 13
              Top = 99
              Width = 113
              Height = 13
              Caption = 'Percentual de Impostos'
              FocusControl = cxDBCalcEdit2
            end
            object Label44: TLabel
              Left = 141
              Top = 100
              Width = 122
              Height = 13
              Caption = 'Percentual de Impostos E'
              FocusControl = cxDBCalcEdit3
            end
            object Label45: TLabel
              Left = 269
              Top = 99
              Width = 124
              Height = 13
              Caption = 'Percentual de Impostos M'
              FocusControl = cxDBCalcEdit4
            end
            object Label34: TLabel
              Left = 274
              Top = 14
              Width = 27
              Height = 13
              Caption = 'CFOP'
              FocusControl = cxDBTextEdit6
            end
            object Label32: TLabel
              Left = 269
              Top = 56
              Width = 90
              Height = 13
              Caption = 'Situa'#231#227'o Tribut'#225'ria'
              FocusControl = cxDBTextEdit4
            end
            object cxDBTextEdit5: TcxDBTextEdit
              Left = 14
              Top = 30
              DataBinding.DataField = 'PRO_CEST'
              DataBinding.DataSource = dsPrincipal
              TabOrder = 0
              Width = 121
            end
            object cxDBCurrencyEdit3: TcxDBCurrencyEdit
              Left = 12
              Top = 73
              DataBinding.DataField = 'PRO_ALIQUOTA_OUTRAS'
              DataBinding.DataSource = dsPrincipal
              TabOrder = 1
              Width = 121
            end
            object cxDBCurrencyEdit4: TcxDBCurrencyEdit
              Left = 141
              Top = 73
              DataBinding.DataField = 'PRO_CREDITO_ICMS'
              DataBinding.DataSource = dsPrincipal
              TabOrder = 2
              Width = 121
            end
            object cxDBTextEdit7: TcxDBTextEdit
              Left = 396
              Top = 30
              DataBinding.DataField = 'PRO_CHAVE_IBPT'
              DataBinding.DataSource = dsPrincipal
              TabOrder = 3
              Width = 121
            end
            object cxDBCalcEdit2: TcxDBCalcEdit
              Left = 13
              Top = 115
              DataBinding.DataField = 'PRO_PERC_IMPOSTOS'
              DataBinding.DataSource = dsPrincipal
              TabOrder = 4
              Width = 121
            end
            object cxDBCalcEdit3: TcxDBCalcEdit
              Left = 141
              Top = 117
              DataBinding.DataField = 'PRO_PERC_IMPOSTOS_E'
              DataBinding.DataSource = dsPrincipal
              TabOrder = 5
              Width = 121
            end
            object cxDBCalcEdit4: TcxDBCalcEdit
              Left = 269
              Top = 117
              DataBinding.DataField = 'PRO_PERC_IMPOSTOS_M'
              DataBinding.DataSource = dsPrincipal
              TabOrder = 6
              Width = 121
            end
            object cxDBTextEdit6: TcxDBTextEdit
              Left = 269
              Top = 30
              DataBinding.DataField = 'PRO_CFOP'
              DataBinding.DataSource = dsPrincipal
              TabOrder = 7
              Width = 121
            end
            object cxDBTextEdit4: TcxDBTextEdit
              Left = 269
              Top = 72
              DataBinding.DataField = 'PRO_SIT_TRIBUTARIA'
              DataBinding.DataSource = dsPrincipal
              TabOrder = 8
              Width = 121
            end
          end
        end
      end
    end
  end
  inherited pnl_top: TPanel
    Top = 59
    Width = 1279
    Height = 29
    ExplicitTop = 59
    ExplicitWidth = 1279
    ExplicitHeight = 29
    inherited pbl_de_cima: TPanel
      Top = 0
      Width = 1279
      ExplicitTop = 0
      ExplicitWidth = 1279
      DesignSize = (
        1279
        29)
      inherited shape_cima: TShape
        Width = 1119
        Brush.Color = clWhite
        Brush.Style = bsClear
        ExplicitWidth = 1209
      end
      inherited pnl_info_direita: TPanel
        Left = 997
        ExplicitLeft = 997
      end
    end
  end
  inherited pnl_baixo: TPanel
    Top = 785
    Width = 1279
    ExplicitTop = 785
    ExplicitWidth = 1279
  end
  inherited ToolBar1: TToolBar
    Width = 1273
    Height = 53
    ExplicitWidth = 1273
    ExplicitHeight = 53
  end
  object GBDadosProduto: TGroupBox [4]
    Left = 0
    Top = 88
    Width = 1279
    Height = 107
    Align = alTop
    Caption = 'Dados produtos'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clBlack
    Font.Height = -11
    Font.Name = 'Trebuchet MS'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 4
    object Label105: TLabel
      Left = 271
      Top = 18
      Width = 74
      Height = 16
      Caption = 'Un Refer'#234'ncia:'
      Font.Charset = ANSI_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'Trebuchet MS'
      Font.Style = []
      ParentFont = False
    end
    object Label133: TLabel
      Left = 365
      Top = 18
      Width = 71
      Height = 16
      Caption = 'Estoque Atual:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'Trebuchet MS'
      Font.Style = []
      ParentFont = False
    end
    object Label9: TLabel
      Left = 12
      Top = 57
      Width = 90
      Height = 16
      Caption = 'Descri'#231#227'o Cupom:'
      Font.Charset = ANSI_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'Trebuchet MS'
      Font.Style = []
      ParentFont = False
    end
    object Label8: TLabel
      Left = 12
      Top = 18
      Width = 65
      Height = 13
      Caption = 'C'#243'digo PLU:'
      Font.Charset = ANSI_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label11: TLabel
      Left = 118
      Top = 18
      Width = 95
      Height = 16
      Caption = 'C'#243'digo de Barras:'
      Font.Charset = ANSI_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'Trebuchet MS'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label12: TLabel
      Left = 455
      Top = 16
      Width = 74
      Height = 16
      Caption = 'Tipo Produto:'
    end
    object Label13: TLabel
      Left = 600
      Top = 16
      Width = 76
      Height = 16
      Caption = 'Data Validade:'
      FocusControl = cxDBDateEdit1
    end
    object Label53: TLabel
      Left = 726
      Top = 16
      Width = 157
      Height = 16
      Caption = 'C'#243'digo Vasilhame Engradado:'
      FocusControl = cxDBSpinEdit1
    end
    object combodb_un_referencia: TcxDBLookupComboBox
      Left = 271
      Top = 32
      DataBinding.DataField = 'PRO_UN_REFERENCIA'
      DataBinding.DataSource = dsPrincipal
      ParentFont = False
      Properties.CharCase = ecUpperCase
      Properties.DropDownListStyle = lsFixedList
      Properties.GridMode = True
      Properties.KeyFieldNames = 'Nome'
      Properties.ListColumns = <
        item
          Caption = 'Nome'
          Fixed = True
          SortOrder = soAscending
          FieldName = 'Nome'
        end>
      Properties.ListOptions.ShowHeader = False
      Properties.ListSource = dtm_cad_Produtos.dsUNReferencia
      Properties.PostPopupValueOnTab = True
      Style.Font.Charset = ANSI_CHARSET
      Style.Font.Color = clBlack
      Style.Font.Height = -11
      Style.Font.Name = 'Trebuchet MS'
      Style.Font.Style = []
      Style.IsFontAssigned = True
      TabOrder = 0
      Width = 88
    end
    object cxDBTextEdit1: TcxDBTextEdit
      Left = 12
      Top = 74
      DataBinding.DataField = 'PRO_DESCRICAO_CUPOM'
      DataBinding.DataSource = dsPrincipal
      TabOrder = 1
      Width = 835
    end
    object cxDBMEsqlCadProdutosPRO_ID: TcxDBMaskEdit
      Left = 12
      Top = 32
      DataBinding.DataField = 'PRO_ID'
      DataBinding.DataSource = dsPrincipal
      ParentFont = False
      Properties.Alignment.Horz = taRightJustify
      Properties.BeepOnError = True
      Properties.MaxLength = 14
      Style.Color = 12582911
      Style.Font.Charset = ANSI_CHARSET
      Style.Font.Color = clBlack
      Style.Font.Height = -11
      Style.Font.Name = 'Trebuchet MS'
      Style.Font.Style = []
      Style.IsFontAssigned = True
      TabOrder = 2
      Width = 100
    end
    object cxDBMaskEdit1: TcxDBMaskEdit
      Left = 118
      Top = 32
      DataBinding.DataField = 'PRO_COD_BARRA'
      DataBinding.DataSource = dsPrincipal
      ParentFont = False
      Properties.Alignment.Horz = taRightJustify
      Properties.BeepOnError = True
      Properties.MaxLength = 14
      Style.Color = 12582911
      Style.Font.Charset = ANSI_CHARSET
      Style.Font.Color = clBlack
      Style.Font.Height = -11
      Style.Font.Name = 'Trebuchet MS'
      Style.Font.Style = []
      Style.IsFontAssigned = True
      TabOrder = 3
      Width = 147
    end
    object cxDBCurrencyEdit1: TcxDBCurrencyEdit
      Left = 365
      Top = 32
      DataBinding.DataField = 'PRO_SALDO_ESTOQUE'
      DataBinding.DataSource = dsPrincipal
      Properties.DisplayFormat = 'QTD ,0.00;-QTD ,0.00'
      Style.BorderStyle = ebsSingle
      Style.Color = clMoneyGreen
      Style.Shadow = True
      TabOrder = 4
      Width = 84
    end
    object cxDBLookupComboBox1: TcxDBLookupComboBox
      Left = 455
      Top = 32
      DataBinding.DataField = 'PRO_TIPO_PRODUTO'
      DataBinding.DataSource = dsPrincipal
      ParentFont = False
      Properties.CharCase = ecUpperCase
      Properties.DropDownListStyle = lsFixedList
      Properties.GridMode = True
      Properties.KeyFieldNames = 'ID'
      Properties.ListColumns = <
        item
          Caption = 'ID'
          Fixed = True
          SortOrder = soAscending
          FieldName = 'ID'
        end
        item
          Caption = 'Descricao'
          FieldName = 'Descricao'
        end>
      Properties.ListOptions.ShowHeader = False
      Properties.ListSource = dtm_cad_Produtos.ds_tpo_produto
      Properties.PostPopupValueOnTab = True
      Style.Font.Charset = ANSI_CHARSET
      Style.Font.Color = clBlack
      Style.Font.Height = -11
      Style.Font.Name = 'Trebuchet MS'
      Style.Font.Style = []
      Style.IsFontAssigned = True
      TabOrder = 5
      Width = 138
    end
    object cxDBDateEdit1: TcxDBDateEdit
      Left = 599
      Top = 32
      DataBinding.DataField = 'PRO_DATA_VALIDADE'
      DataBinding.DataSource = dsPrincipal
      TabOrder = 6
      Width = 121
    end
    object cxDBSpinEdit1: TcxDBSpinEdit
      Left = 726
      Top = 32
      DataBinding.DataField = 'PRO_COD_VASILHAME'
      DataBinding.DataSource = dsPrincipal
      TabOrder = 7
      Width = 121
    end
  end
  inherited dsPrincipal: TDataSource
    DataSet = FdqProdutos
    Left = 1086
    Top = 67
  end
  inherited cxLookAndFeelController1: TcxLookAndFeelController
    Left = 1096
    Top = 0
  end
  inherited BarraMenu: TcxImageList
    FormatVersion = 1
    DesignInfo = 7537736
  end
  object FdqProdutos: TFDQuery [8]
    Connection = DtmBcoErp.FDBcoERP
    SQL.Strings = (
      'SELECT * FROM TB_PRODUTOS')
    Left = 1027
    Top = 67
    object FdqProdutosPRO_ID: TLargeintField
      DisplayLabel = 'Pro ID:'
      FieldName = 'PRO_ID'
      Origin = 'PRO_ID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object FdqProdutosPRO_COD_BARRA: TLargeintField
      DisplayLabel = 'C'#243'digo de Barras:'
      FieldName = 'PRO_COD_BARRA'
      Origin = 'PRO_COD_BARRA'
      Required = True
    end
    object FdqProdutosPRO_DESCRICAO_CUPOM: TStringField
      DisplayLabel = 'Descri'#231#227'o Produto:'
      FieldName = 'PRO_DESCRICAO_CUPOM'
      Origin = 'PRO_DESCRICAO_CUPOM'
      Size = 40
    end
    object FdqProdutosPRO_DESCRICAO_PDV: TStringField
      DisplayLabel = 'Descri'#231#227'o PDV:'
      FieldName = 'PRO_DESCRICAO_PDV'
      Origin = 'PRO_DESCRICAO_PDV'
      Size = 24
    end
    object FdqProdutosPRO_ATIVO: TStringField
      DisplayLabel = 'Ativo:'
      FieldName = 'PRO_ATIVO'
      Origin = 'PRO_ATIVO'
      Required = True
      FixedChar = True
      Size = 1
    end
    object FdqProdutosPRO_TIPO_PRODUTO: TStringField
      DisplayLabel = 'Tipo Produto:'
      FieldName = 'PRO_TIPO_PRODUTO'
      Origin = 'PRO_TIPO_PRODUTO'
      Required = True
      FixedChar = True
      Size = 1
    end
    object FdqProdutosPRO_CONTROLA_ESTOQUE_PRO: TStringField
      DisplayLabel = 'Controla Estoque:'
      FieldName = 'PRO_CONTROLA_ESTOQUE_PRO'
      Origin = 'PRO_CONTROLA_ESTOQUE_PRO'
      Required = True
      FixedChar = True
      Size = 1
    end
    object FdqProdutosPRO_ESTOQUE_MINIMO: TBCDField
      DisplayLabel = 'Estoque Minimo:'
      FieldName = 'PRO_ESTOQUE_MINIMO'
      Origin = 'PRO_ESTOQUE_MINIMO'
      Precision = 18
      Size = 2
    end
    object FdqProdutosPRO_SALDO_ESTOQUE: TBCDField
      DisplayLabel = 'Saldo Estoque:'
      FieldName = 'PRO_SALDO_ESTOQUE'
      Origin = 'PRO_SALDO_ESTOQUE'
      Precision = 18
      Size = 3
    end
    object FdqProdutosPRO_DATA_VALIDADE: TDateField
      DisplayLabel = 'Data Validade:'
      FieldName = 'PRO_DATA_VALIDADE'
      Origin = 'PRO_DATA_VALIDADE'
    end
    object FdqProdutosPRO_FORMULA: TStringField
      DisplayLabel = 'Formula:'
      FieldName = 'PRO_FORMULA'
      Origin = 'PRO_FORMULA'
      FixedChar = True
      Size = 1
    end
    object FdqProdutosPRO_UN_REFERENCIA: TStringField
      DisplayLabel = 'Un Refer'#234'ncia:'
      FieldName = 'PRO_UN_REFERENCIA'
      Origin = 'PRO_UN_REFERENCIA'
      FixedChar = True
      Size = 2
    end
    object FdqProdutosPRO_VLR_CUSTO: TFloatField
      DisplayLabel = 'Valor Custo:'
      FieldName = 'PRO_VLR_CUSTO'
      Origin = 'PRO_VLR_CUSTO'
    end
    object FdqProdutosPRO_PRECO_V_ATACADO: TCurrencyField
      DisplayLabel = 'Pre'#231'o Atacado:'
      FieldName = 'PRO_PRECO_V_ATACADO'
      Origin = 'PRO_PRECO_V_ATACADO'
    end
    object FdqProdutosPRO_VLR_PADRAO: TCurrencyField
      DisplayLabel = 'Valor Venda Pad'#227'o:'
      FieldName = 'PRO_VLR_PADRAO'
      Origin = 'PRO_VLR_PADRAO'
    end
    object FdqProdutosPRO_VLR_PROMOC: TCurrencyField
      DisplayLabel = 'Valor Promo'#231#227'o:'
      FieldName = 'PRO_VLR_PROMOC'
      Origin = 'PRO_VLR_PROMOC'
    end
    object FdqProdutosPRO_VLR_PRECO2: TCurrencyField
      DisplayLabel = 'Valor Pre'#231'o 2:'
      FieldName = 'PRO_VLR_PRECO2'
      Origin = 'PRO_VLR_PRECO2'
    end
    object FdqProdutosPRO_VLR_PRECO3: TCurrencyField
      DisplayLabel = 'Valor Preco 3:'
      FieldName = 'PRO_VLR_PRECO3'
      Origin = 'PRO_VLR_PRECO3'
    end
    object FdqProdutosPRO_VLR_PRECO4: TCurrencyField
      DisplayLabel = 'Valor Pre'#231'o 4:'
      FieldName = 'PRO_VLR_PRECO4'
      Origin = 'PRO_VLR_PRECO4'
    end
    object FdqProdutosPRO_QTD_MIN_VLR_ATACADO: TBCDField
      DisplayLabel = 'Quantidade Minima Venda Atacado:'
      FieldName = 'PRO_QTD_MIN_VLR_ATACADO'
      Origin = 'PRO_QTD_MIN_VLR_ATACADO'
      Precision = 18
      Size = 3
    end
    object FdqProdutosPRO_QTD_MIN_VLR_PROMOC: TBCDField
      DisplayLabel = 'Quantidade Minima Valor Promo'#231#227'o:'
      FieldName = 'PRO_QTD_MIN_VLR_PROMOC'
      Origin = 'PRO_QTD_MIN_VLR_PROMOC'
      Precision = 18
      Size = 3
    end
    object FdqProdutosPRO_DIAS_VALIDADE: TIntegerField
      DisplayLabel = 'Dias de Validade:'
      FieldName = 'PRO_DIAS_VALIDADE'
      Origin = 'PRO_DIAS_VALIDADE'
    end
    object FdqProdutosPRO_PERMITE_FRAC: TIntegerField
      DisplayLabel = 'Permite Fracionar?'
      FieldName = 'PRO_PERMITE_FRAC'
      Origin = 'PRO_PERMITE_FRAC'
    end
    object FdqProdutosPRO_ALCOOLICO: TStringField
      DisplayLabel = 'Alc'#243'olico:'
      FieldName = 'PRO_ALCOOLICO'
      Origin = 'PRO_ALCOOLICO'
      Required = True
      FixedChar = True
      Size = 1
    end
    object FdqProdutosPRO_COD_VASILHAME: TLargeintField
      DisplayLabel = 'C'#243'digo Vasilhame:'
      FieldName = 'PRO_COD_VASILHAME'
      Origin = 'PRO_COD_VASILHAME'
    end
    object FdqProdutosPRO_PEDE_LIBERACAO_FSC: TIntegerField
      DisplayLabel = 'Pede Fiscal:'
      FieldName = 'PRO_PEDE_LIBERACAO_FSC'
      Origin = 'PRO_PEDE_LIBERACAO_FSC'
    end
    object FdqProdutosPRO_QUANT_UNIDADE_ENTRADA: TBCDField
      FieldName = 'PRO_QUANT_UNIDADE_ENTRADA'
      Origin = 'PRO_QUANT_UNIDADE_ENTRADA'
      Precision = 18
      Size = 2
    end
    object FdqProdutosPRO_QTD_MAXIMA_COMPRA: TIntegerField
      FieldName = 'PRO_QTD_MAXIMA_COMPRA'
      Origin = 'PRO_QTD_MAXIMA_COMPRA'
    end
    object FdqProdutosPRO_QTD_MAX_VARIAVEL: TStringField
      FieldName = 'PRO_QTD_MAX_VARIAVEL'
      Origin = 'PRO_QTD_MAX_VARIAVEL'
      FixedChar = True
      Size = 1
    end
    object FdqProdutosPRO_PER_ALTERA_PRECO_PDV: TStringField
      FieldName = 'PRO_PER_ALTERA_PRECO_PDV'
      Origin = 'PRO_PER_ALTERA_PRECO_PDV'
      FixedChar = True
      Size = 1
    end
    object FdqProdutosPRO_BLOQQUEIA_MULTIPLICACAO: TStringField
      FieldName = 'PRO_BLOQQUEIA_MULTIPLICACAO'
      Origin = 'PRO_BLOQQUEIA_MULTIPLICACAO'
      FixedChar = True
      Size = 1
    end
    object FdqProdutosPRO_LEVEX_PAGUEY: TStringField
      FieldName = 'PRO_LEVEX_PAGUEY'
      Origin = 'PRO_LEVEX_PAGUEY'
      Size = 6
    end
    object FdqProdutosPRO_COR: TStringField
      FieldName = 'PRO_COR'
      Origin = 'PRO_COR'
      Size = 40
    end
    object FdqProdutosPRO_LOCALIZACAO: TStringField
      FieldName = 'PRO_LOCALIZACAO'
      Origin = 'PRO_LOCALIZACAO'
      Size = 30
    end
    object FdqProdutosPRO_OBS: TMemoField
      FieldName = 'PRO_OBS'
      Origin = 'PRO_OBS'
      BlobType = ftMemo
    end
    object FdqProdutosPRO_COD_ALIQUOTA: TIntegerField
      FieldName = 'PRO_COD_ALIQUOTA'
      Origin = 'PRO_COD_ALIQUOTA'
    end
    object FdqProdutosPRO_COMISSAO: TBCDField
      FieldName = 'PRO_COMISSAO'
      Origin = 'PRO_COMISSAO'
      Precision = 18
      Size = 2
    end
    object FdqProdutosPRO_ALIQUOTA_OUTRAS: TBCDField
      FieldName = 'PRO_ALIQUOTA_OUTRAS'
      Origin = 'PRO_ALIQUOTA_OUTRAS'
      Precision = 18
      Size = 2
    end
    object FdqProdutosPRO_ISENTO_PIS_COFINS_PRO: TStringField
      FieldName = 'PRO_ISENTO_PIS_COFINS_PRO'
      Origin = 'PRO_ISENTO_PIS_COFINS_PRO'
      Required = True
      FixedChar = True
      Size = 1
    end
    object FdqProdutosPRO_CREDITO_ICMS: TBCDField
      FieldName = 'PRO_CREDITO_ICMS'
      Origin = 'PRO_CREDITO_ICMS'
      Precision = 18
    end
    object FdqProdutosPRO_TIPO_PRODUCAO: TStringField
      FieldName = 'PRO_TIPO_PRODUCAO'
      Origin = 'PRO_TIPO_PRODUCAO'
      Required = True
      FixedChar = True
      Size = 1
    end
    object FdqProdutosPRO_COD_GRUPO: TIntegerField
      FieldName = 'PRO_COD_GRUPO'
      Origin = 'PRO_COD_GRUPO'
    end
    object FdqProdutosPRO_SUB_GRUPO: TIntegerField
      FieldName = 'PRO_SUB_GRUPO'
      Origin = 'PRO_SUB_GRUPO'
    end
    object FdqProdutosPRO_SIT_TRIBUTARIA: TStringField
      DisplayLabel = 'Situa'#231#227'o Trib:'
      FieldName = 'PRO_SIT_TRIBUTARIA'
      Origin = 'PRO_SIT_TRIBUTARIA'
      FixedChar = True
      Size = 3
    end
    object FdqProdutosPRO_CEST: TStringField
      DisplayLabel = 'Cest:'
      FieldName = 'PRO_CEST'
      Origin = 'PRO_CEST'
      Size = 7
    end
    object FdqProdutosPRO_CFOP: TStringField
      DisplayLabel = 'CFOP:'
      FieldName = 'PRO_CFOP'
      Origin = 'PRO_CFOP'
      FixedChar = True
      Size = 4
    end
    object FdqProdutosPRO_NCM: TFloatField
      DisplayLabel = 'NCM:'
      FieldName = 'PRO_NCM'
      Origin = 'PRO_NCM'
    end
    object FdqProdutosPRO_CHAVE_IBPT: TStringField
      DisplayLabel = 'Chave IBPT:'
      FieldName = 'PRO_CHAVE_IBPT'
      Origin = 'PRO_CHAVE_IBPT'
      Size = 50
    end
    object FdqProdutosPRO_CST_ICMS: TStringField
      FieldName = 'PRO_CST_ICMS'
      Origin = 'PRO_CST_ICMS'
      FixedChar = True
      Size = 2
    end
    object FdqProdutosPRO_CST_PIS: TStringField
      FieldName = 'PRO_CST_PIS'
      Origin = 'PRO_CST_PIS'
      FixedChar = True
      Size = 2
    end
    object FdqProdutosPRO_CST_COFINS: TStringField
      FieldName = 'PRO_CST_COFINS'
      Origin = 'PRO_CST_COFINS'
      FixedChar = True
      Size = 2
    end
    object FdqProdutosPRO_ALIQ_ICMS: TBCDField
      FieldName = 'PRO_ALIQ_ICMS'
      Origin = 'PRO_ALIQ_ICMS'
      Precision = 18
      Size = 2
    end
    object FdqProdutosPRO_ALIQ_PIS: TBCDField
      FieldName = 'PRO_ALIQ_PIS'
      Origin = 'PRO_ALIQ_PIS'
      Precision = 18
      Size = 2
    end
    object FdqProdutosPRO_ALIQ_COFINS: TBCDField
      FieldName = 'PRO_ALIQ_COFINS'
      Origin = 'PRO_ALIQ_COFINS'
      Precision = 18
      Size = 2
    end
    object FdqProdutosPRO_PERC_IMPOSTOS: TFloatField
      FieldName = 'PRO_PERC_IMPOSTOS'
      Origin = 'PRO_PERC_IMPOSTOS'
    end
    object FdqProdutosPRO_PERC_IMPOSTOS_E: TFloatField
      FieldName = 'PRO_PERC_IMPOSTOS_E'
      Origin = 'PRO_PERC_IMPOSTOS_E'
    end
    object FdqProdutosPRO_PERC_IMPOSTOS_M: TFloatField
      FieldName = 'PRO_PERC_IMPOSTOS_M'
      Origin = 'PRO_PERC_IMPOSTOS_M'
    end
    object FdqProdutosPRO_ULTIMO_USUARIO_ALTERACAO: TStringField
      FieldName = 'PRO_ULTIMO_USUARIO_ALTERACAO'
      Origin = 'PRO_ULTIMO_USUARIO_ALTERACAO'
    end
    object FdqProdutosPRO_PERMITE_PARCELAMENTO_PDV: TIntegerField
      FieldName = 'PRO_PERMITE_PARCELAMENTO_PDV'
      Origin = 'PRO_PERMITE_PARCELAMENTO_PDV'
    end
    object FdqProdutosPRO_ORIGEM_MERCA: TIntegerField
      FieldName = 'PRO_ORIGEM_MERCA'
      Origin = 'PRO_ORIGEM_MERCA'
    end
    object FdqProdutosPRO_IMP_VALE_GAS: TIntegerField
      FieldName = 'PRO_IMP_VALE_GAS'
      Origin = 'PRO_IMP_VALE_GAS'
    end
    object FdqProdutosPRO_IMP_VALE_AGUA: TIntegerField
      FieldName = 'PRO_IMP_VALE_AGUA'
      Origin = 'PRO_IMP_VALE_AGUA'
    end
    object FdqProdutosPRO_ALERTA_COZINHA: TStringField
      FieldName = 'PRO_ALERTA_COZINHA'
      Origin = 'PRO_ALERTA_COZINHA'
      FixedChar = True
      Size = 1
    end
    object FdqProdutosPRO_ANDROID_VISUALIZA: TStringField
      FieldName = 'PRO_ANDROID_VISUALIZA'
      Origin = 'PRO_ANDROID_VISUALIZA'
      FixedChar = True
      Size = 1
    end
    object FdqProdutosPRO_NUMERO_LOTE: TStringField
      FieldName = 'PRO_NUMERO_LOTE'
      Origin = 'PRO_NUMERO_LOTE'
      FixedChar = True
      Size = 15
    end
    object FdqProdutosPRO_TEMPO_PREPARO: TTimeField
      FieldName = 'PRO_TEMPO_PREPARO'
      Origin = 'PRO_TEMPO_PREPARO'
    end
    object FdqProdutosPRO_DT_ATUALIZACAO_CADASTRO: TDateField
      DisplayLabel = 'Data Atualiza'#231#227'o Cadastro:'
      FieldName = 'PRO_DT_ATUALIZACAO_CADASTRO'
      Origin = 'PRO_DT_ATUALIZACAO_CADASTRO'
    end
    object FdqProdutosPRO_HR__ATUALIZACAO_CADASTRO: TTimeField
      DisplayLabel = 'Hora Atualiza'#231#227'o:'
      FieldName = 'PRO_HR__ATUALIZACAO_CADASTRO'
      Origin = 'PRO_HR__ATUALIZACAO_CADASTRO'
    end
    object FdqProdutosPRO_COD_SEC: TIntegerField
      FieldName = 'PRO_COD_SEC'
      Origin = 'PRO_COD_SEC'
    end
  end
  object FDQuxiliar: TFDQuery [9]
    Connection = DtmBcoErp.FDBcoERP
    SQL.Strings = (
      'SELECT * FROM TB_PRODUTOS')
    Left = 1065
    Top = 167
    object FDQuxiliarPRO_ID: TLargeintField
      FieldName = 'PRO_ID'
      Origin = 'PRO_ID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object FDQuxiliarPRO_COD_BARRA: TLargeintField
      FieldName = 'PRO_COD_BARRA'
      Origin = 'PRO_COD_BARRA'
      Required = True
    end
    object FDQuxiliarPRO_DESCRICAO_CUPOM: TWideStringField
      FieldName = 'PRO_DESCRICAO_CUPOM'
      Origin = 'PRO_DESCRICAO_CUPOM'
      Size = 40
    end
    object FDQuxiliarPRO_DESCRICAO_PDV: TWideStringField
      FieldName = 'PRO_DESCRICAO_PDV'
      Origin = 'PRO_DESCRICAO_PDV'
      Size = 24
    end
    object FDQuxiliarPRO_ATIVO: TWideStringField
      FieldName = 'PRO_ATIVO'
      Origin = 'PRO_ATIVO'
      Required = True
      FixedChar = True
      Size = 1
    end
    object FDQuxiliarPRO_TIPO_PRODUTO: TWideStringField
      FieldName = 'PRO_TIPO_PRODUTO'
      Origin = 'PRO_TIPO_PRODUTO'
      Required = True
      FixedChar = True
      Size = 1
    end
    object FDQuxiliarPRO_CONTROLA_ESTOQUE_PRO: TWideStringField
      FieldName = 'PRO_CONTROLA_ESTOQUE_PRO'
      Origin = 'PRO_CONTROLA_ESTOQUE_PRO'
      Required = True
      FixedChar = True
      Size = 1
    end
    object FDQuxiliarPRO_ESTOQUE_MINIMO: TBCDField
      FieldName = 'PRO_ESTOQUE_MINIMO'
      Origin = 'PRO_ESTOQUE_MINIMO'
      Precision = 18
      Size = 2
    end
    object FDQuxiliarPRO_SALDO_ESTOQUE: TBCDField
      FieldName = 'PRO_SALDO_ESTOQUE'
      Origin = 'PRO_SALDO_ESTOQUE'
      Precision = 18
      Size = 3
    end
    object FDQuxiliarPRO_DATA_VALIDADE: TDateField
      FieldName = 'PRO_DATA_VALIDADE'
      Origin = 'PRO_DATA_VALIDADE'
    end
    object FDQuxiliarPRO_FORMULA: TWideStringField
      FieldName = 'PRO_FORMULA'
      Origin = 'PRO_FORMULA'
      FixedChar = True
      Size = 1
    end
    object FDQuxiliarPRO_UN_REFERENCIA: TWideStringField
      FieldName = 'PRO_UN_REFERENCIA'
      Origin = 'PRO_UN_REFERENCIA'
      FixedChar = True
      Size = 2
    end
    object FDQuxiliarPRO_VLR_CUSTO: TFloatField
      FieldName = 'PRO_VLR_CUSTO'
      Origin = 'PRO_VLR_CUSTO'
    end
    object FDQuxiliarPRO_PRECO_V_ATACADO: TCurrencyField
      FieldName = 'PRO_PRECO_V_ATACADO'
      Origin = 'PRO_PRECO_V_ATACADO'
    end
    object FDQuxiliarPRO_VLR_PADRAO: TCurrencyField
      FieldName = 'PRO_VLR_PADRAO'
      Origin = 'PRO_VLR_PADRAO'
    end
    object FDQuxiliarPRO_VLR_PROMOC: TCurrencyField
      FieldName = 'PRO_VLR_PROMOC'
      Origin = 'PRO_VLR_PROMOC'
    end
    object FDQuxiliarPRO_VLR_PRECO2: TCurrencyField
      FieldName = 'PRO_VLR_PRECO2'
      Origin = 'PRO_VLR_PRECO2'
    end
    object FDQuxiliarPRO_VLR_PRECO3: TCurrencyField
      FieldName = 'PRO_VLR_PRECO3'
      Origin = 'PRO_VLR_PRECO3'
    end
    object FDQuxiliarPRO_VLR_PRECO4: TCurrencyField
      FieldName = 'PRO_VLR_PRECO4'
      Origin = 'PRO_VLR_PRECO4'
    end
    object FDQuxiliarPRO_QTD_MIN_VLR_ATACADO: TBCDField
      FieldName = 'PRO_QTD_MIN_VLR_ATACADO'
      Origin = 'PRO_QTD_MIN_VLR_ATACADO'
      Precision = 18
      Size = 3
    end
    object FDQuxiliarPRO_QTD_MIN_VLR_PROMOC: TBCDField
      FieldName = 'PRO_QTD_MIN_VLR_PROMOC'
      Origin = 'PRO_QTD_MIN_VLR_PROMOC'
      Precision = 18
      Size = 3
    end
    object FDQuxiliarPRO_DIAS_VALIDADE: TIntegerField
      FieldName = 'PRO_DIAS_VALIDADE'
      Origin = 'PRO_DIAS_VALIDADE'
    end
    object FDQuxiliarPRO_PERMITE_FRAC: TIntegerField
      FieldName = 'PRO_PERMITE_FRAC'
      Origin = 'PRO_PERMITE_FRAC'
    end
    object FDQuxiliarPRO_ALCOOLICO: TWideStringField
      FieldName = 'PRO_ALCOOLICO'
      Origin = 'PRO_ALCOOLICO'
      Required = True
      FixedChar = True
      Size = 1
    end
    object FDQuxiliarPRO_COD_VASILHAME: TLargeintField
      FieldName = 'PRO_COD_VASILHAME'
      Origin = 'PRO_COD_VASILHAME'
    end
    object FDQuxiliarPRO_PEDE_LIBERACAO_FSC: TIntegerField
      FieldName = 'PRO_PEDE_LIBERACAO_FSC'
      Origin = 'PRO_PEDE_LIBERACAO_FSC'
    end
    object FDQuxiliarPRO_QUANT_UNIDADE_ENTRADA: TBCDField
      FieldName = 'PRO_QUANT_UNIDADE_ENTRADA'
      Origin = 'PRO_QUANT_UNIDADE_ENTRADA'
      Precision = 18
      Size = 2
    end
    object FDQuxiliarPRO_QTD_MAXIMA_COMPRA: TIntegerField
      FieldName = 'PRO_QTD_MAXIMA_COMPRA'
      Origin = 'PRO_QTD_MAXIMA_COMPRA'
    end
    object FDQuxiliarPRO_QTD_MAX_VARIAVEL: TWideStringField
      FieldName = 'PRO_QTD_MAX_VARIAVEL'
      Origin = 'PRO_QTD_MAX_VARIAVEL'
      FixedChar = True
      Size = 1
    end
    object FDQuxiliarPRO_PER_ALTERA_PRECO_PDV: TWideStringField
      FieldName = 'PRO_PER_ALTERA_PRECO_PDV'
      Origin = 'PRO_PER_ALTERA_PRECO_PDV'
      FixedChar = True
      Size = 1
    end
    object FDQuxiliarPRO_BLOQQUEIA_MULTIPLICACAO: TWideStringField
      FieldName = 'PRO_BLOQQUEIA_MULTIPLICACAO'
      Origin = 'PRO_BLOQQUEIA_MULTIPLICACAO'
      FixedChar = True
      Size = 1
    end
    object FDQuxiliarPRO_LEVEX_PAGUEY: TWideStringField
      FieldName = 'PRO_LEVEX_PAGUEY'
      Origin = 'PRO_LEVEX_PAGUEY'
      Size = 6
    end
    object FDQuxiliarPRO_COR: TWideStringField
      FieldName = 'PRO_COR'
      Origin = 'PRO_COR'
      Size = 40
    end
    object FDQuxiliarPRO_LOCALIZACAO: TWideStringField
      FieldName = 'PRO_LOCALIZACAO'
      Origin = 'PRO_LOCALIZACAO'
      Size = 30
    end
    object FDQuxiliarPRO_OBS: TMemoField
      FieldName = 'PRO_OBS'
      Origin = 'PRO_OBS'
      BlobType = ftMemo
    end
    object FDQuxiliarPRO_CLASSIFICACAO_FISCAL: TWideStringField
      FieldName = 'PRO_CLASSIFICACAO_FISCAL'
      Origin = 'PRO_CLASSIFICACAO_FISCAL'
      FixedChar = True
      Size = 1
    end
    object FDQuxiliarPRO_COD_ALIQUOTA: TIntegerField
      FieldName = 'PRO_COD_ALIQUOTA'
      Origin = 'PRO_COD_ALIQUOTA'
    end
    object FDQuxiliarPRO_COMISSAO: TBCDField
      FieldName = 'PRO_COMISSAO'
      Origin = 'PRO_COMISSAO'
      Precision = 18
      Size = 2
    end
    object FDQuxiliarPRO_ALIQUOTA_CSLL: TBCDField
      FieldName = 'PRO_ALIQUOTA_CSLL'
      Origin = 'PRO_ALIQUOTA_CSLL'
      Precision = 18
      Size = 2
    end
    object FDQuxiliarPRO_ALIQUOTA_OUTRAS: TBCDField
      FieldName = 'PRO_ALIQUOTA_OUTRAS'
      Origin = 'PRO_ALIQUOTA_OUTRAS'
      Precision = 18
      Size = 2
    end
    object FDQuxiliarPRO_ISENTO_PIS_COFINS_PRO: TWideStringField
      FieldName = 'PRO_ISENTO_PIS_COFINS_PRO'
      Origin = 'PRO_ISENTO_PIS_COFINS_PRO'
      Required = True
      FixedChar = True
      Size = 1
    end
    object FDQuxiliarPRO_CREDITO_ICMS: TBCDField
      FieldName = 'PRO_CREDITO_ICMS'
      Origin = 'PRO_CREDITO_ICMS'
      Precision = 18
    end
    object FDQuxiliarPRO_TIPO_PRODUCAO: TWideStringField
      FieldName = 'PRO_TIPO_PRODUCAO'
      Origin = 'PRO_TIPO_PRODUCAO'
      Required = True
      FixedChar = True
      Size = 1
    end
    object FDQuxiliarPRO_COD_GRUPO: TIntegerField
      FieldName = 'PRO_COD_GRUPO'
      Origin = 'PRO_COD_GRUPO'
    end
    object FDQuxiliarPRO_SUB_GRUPO: TIntegerField
      FieldName = 'PRO_SUB_GRUPO'
      Origin = 'PRO_SUB_GRUPO'
    end
    object FDQuxiliarPRO_SIT_TRIBUTARIA: TWideStringField
      FieldName = 'PRO_SIT_TRIBUTARIA'
      Origin = 'PRO_SIT_TRIBUTARIA'
      FixedChar = True
      Size = 3
    end
    object FDQuxiliarPRO_CEST: TWideStringField
      FieldName = 'PRO_CEST'
      Origin = 'PRO_CEST'
      Size = 7
    end
    object FDQuxiliarPRO_CFOP: TWideStringField
      FieldName = 'PRO_CFOP'
      Origin = 'PRO_CFOP'
      FixedChar = True
      Size = 4
    end
    object FDQuxiliarPRO_NCM: TFloatField
      FieldName = 'PRO_NCM'
      Origin = 'PRO_NCM'
    end
    object FDQuxiliarPRO_CHAVE_IBPT: TWideStringField
      FieldName = 'PRO_CHAVE_IBPT'
      Origin = 'PRO_CHAVE_IBPT'
      Size = 50
    end
    object FDQuxiliarPRO_CST_ICMS: TWideStringField
      FieldName = 'PRO_CST_ICMS'
      Origin = 'PRO_CST_ICMS'
      FixedChar = True
      Size = 2
    end
    object FDQuxiliarPRO_CST_PIS: TWideStringField
      FieldName = 'PRO_CST_PIS'
      Origin = 'PRO_CST_PIS'
      FixedChar = True
      Size = 2
    end
    object FDQuxiliarPRO_CST_COFINS: TWideStringField
      FieldName = 'PRO_CST_COFINS'
      Origin = 'PRO_CST_COFINS'
      FixedChar = True
      Size = 2
    end
    object FDQuxiliarPRO_ALIQ_ICMS: TBCDField
      FieldName = 'PRO_ALIQ_ICMS'
      Origin = 'PRO_ALIQ_ICMS'
      Precision = 18
      Size = 2
    end
    object FDQuxiliarPRO_ALIQ_PIS: TBCDField
      FieldName = 'PRO_ALIQ_PIS'
      Origin = 'PRO_ALIQ_PIS'
      Precision = 18
      Size = 2
    end
    object FDQuxiliarPRO_ALIQ_COFINS: TBCDField
      FieldName = 'PRO_ALIQ_COFINS'
      Origin = 'PRO_ALIQ_COFINS'
      Precision = 18
      Size = 2
    end
    object FDQuxiliarPRO_PERC_IMPOSTOS: TFloatField
      FieldName = 'PRO_PERC_IMPOSTOS'
      Origin = 'PRO_PERC_IMPOSTOS'
    end
    object FDQuxiliarPRO_PERC_IMPOSTOS_E: TFloatField
      FieldName = 'PRO_PERC_IMPOSTOS_E'
      Origin = 'PRO_PERC_IMPOSTOS_E'
    end
    object FDQuxiliarPRO_PERC_IMPOSTOS_M: TFloatField
      FieldName = 'PRO_PERC_IMPOSTOS_M'
      Origin = 'PRO_PERC_IMPOSTOS_M'
    end
    object FDQuxiliarPRO_ULTIMO_USUARIO_ALTERACAO: TWideStringField
      FieldName = 'PRO_ULTIMO_USUARIO_ALTERACAO'
      Origin = 'PRO_ULTIMO_USUARIO_ALTERACAO'
    end
    object FDQuxiliarPRO_PERMITE_PARCELAMENTO_PDV: TIntegerField
      FieldName = 'PRO_PERMITE_PARCELAMENTO_PDV'
      Origin = 'PRO_PERMITE_PARCELAMENTO_PDV'
    end
    object FDQuxiliarPRO_ORIGEM_MERCA: TIntegerField
      FieldName = 'PRO_ORIGEM_MERCA'
      Origin = 'PRO_ORIGEM_MERCA'
    end
    object FDQuxiliarPRO_IMP_VALE_GAS: TIntegerField
      FieldName = 'PRO_IMP_VALE_GAS'
      Origin = 'PRO_IMP_VALE_GAS'
    end
    object FDQuxiliarPRO_IMP_VALE_AGUA: TIntegerField
      FieldName = 'PRO_IMP_VALE_AGUA'
      Origin = 'PRO_IMP_VALE_AGUA'
    end
    object FDQuxiliarPRO_ALERTA_COZINHA: TWideStringField
      FieldName = 'PRO_ALERTA_COZINHA'
      Origin = 'PRO_ALERTA_COZINHA'
      FixedChar = True
      Size = 1
    end
    object FDQuxiliarPRO_ANDROID_VISUALIZA: TWideStringField
      FieldName = 'PRO_ANDROID_VISUALIZA'
      Origin = 'PRO_ANDROID_VISUALIZA'
      FixedChar = True
      Size = 1
    end
    object FDQuxiliarPRO_NUMERO_LOTE: TWideStringField
      FieldName = 'PRO_NUMERO_LOTE'
      Origin = 'PRO_NUMERO_LOTE'
      FixedChar = True
      Size = 15
    end
    object FDQuxiliarPRO_TEMPO_PREPARO: TTimeField
      FieldName = 'PRO_TEMPO_PREPARO'
      Origin = 'PRO_TEMPO_PREPARO'
    end
    object FDQuxiliarPRO_DT_ATUALIZACAO_CADASTRO: TDateField
      FieldName = 'PRO_DT_ATUALIZACAO_CADASTRO'
      Origin = 'PRO_DT_ATUALIZACAO_CADASTRO'
    end
    object FDQuxiliarPRO_HR__ATUALIZACAO_CADASTRO: TTimeField
      FieldName = 'PRO_HR__ATUALIZACAO_CADASTRO'
      Origin = 'PRO_HR__ATUALIZACAO_CADASTRO'
    end
    object FDQuxiliarPRO_COD_SEC: TIntegerField
      FieldName = 'PRO_COD_SEC'
      Origin = 'PRO_COD_SEC'
    end
  end
  inherited ACBrEnterTab1: TACBrEnterTab
    Left = 1160
    Top = 118
  end
  inherited cxHintStyleController1: TcxHintStyleController
    Left = 952
    Top = 70
  end
  object DataSource1: TDataSource
    DataSet = FDQuxiliar
    Left = 1024
    Top = 160
  end
  object cxGridImg: TcxImageList
    DrawingStyle = dsTransparent
    FormatVersion = 1
    DesignInfo = 525232
    ImageInfo = <
      item
        Image.Data = {
          36040000424D3604000000000000360000002800000010000000100000000100
          2000000000000004000000000000000000000000000000000000010101010101
          0101010101010101010101010101010101010101010104040407030303070101
          0101010101010101010101010101010101010101010101010101010101010101
          0101010101010101010101010101030303052626266F3B3B3BAE3B3B3BB22121
          2160010101020101010101010101010101010101010101010101010101010101
          0101010101010101010118181843464646D3535353FF3F3F3FBE414141C65353
          53FF404040C00F0F0F2A01010101010101010101010101010101010101010101
          010101010101292929742C2C2C7F4B4B4BE5535353FF3F3F3FBE414141C65353
          53FF4D4D4DE93333339522222262010101010101010101010101010101010101
          01010404040A2F2F2F8A505050F72F2F2F87454545D53F3F3FBE414141C64646
          46D5383838A4505050F62C2C2C81030303070101010101010101010101011717
          1740484848DA535353FF535353FF535353FF3636369F2D2D2D822F2F2F863B3B
          3BB2535353FF535353FF535353FF464646D31515153A010101013030308C5353
          53FE535353FF535353FF535353FF535353FF4D4D4DED141414391B1B1B4C4F4F
          4FF4535353FF535353FF535353FF535353FF525252FD2B2B2B7C1010102D4A4A
          4AE0535353FF535353FF535353FF383838AB0A0A0A1901010101010101010C0C
          0C213C3C3CB7535353FF535353FF535353FF434343CF0A0A0A1B010101010909
          0919424242C94A4A4AE41C1C1C50010101010101010101010101010101010101
          0101010101011F1F1F5A4C4C4CE83C3C3CB50606060D01010101010101010101
          0101080808140C0C0C2001010101010101010101010101010101010101010101
          010101010101010101010E0E0E26040404090101010101010101010101010909
          0917424242C84B4B4BE71E1E1E56010101010101010101010101010101010101
          010101010102222222614D4D4DED3C3C3CB70606060F010101010F0F0F294949
          49DD535353FF535353FF535353FF3C3C3CB30C0C0C1F01010101010101010D0D
          0D233E3E3EBB535353FF535353FF535353FF454545D20C0C0C202F2F2F885252
          52FD535353FF535353FF535353FF535353FF4F4F4FF3171717401B1B1B4D5050
          50F5535353FF535353FF535353FF535353FF525252FB28282874010101011616
          163D464646D6535353FF535353FF535353FF3030308D02020203040404093636
          36A5535353FF535353FF535353FF444444CD1212123201010101010101010101
          0101040404082B2B2B7F4F4F4FF42525256B0101010101010101010101010101
          01022C2C2C80505050F528282877030303050101010101010101010101010101
          010101010101010101010606060E010101010101010101010101010101010101
          0101010101010707071101010101010101010101010101010101}
      end
      item
        Image.Data = {
          36040000424D3604000000000000360000002800000010000000100000000100
          2000000000000004000000000000000000000000000000000000010101010101
          0101010101010101010101010101010101010101010103060207030602070101
          0101010101010101010101010101010101010101010101010101010101010101
          0101010101010101010101010101020401052058036F308803AE338C03B21C4C
          0360010201020101010101010101010101010101010101010101010101010101
          01010101010101010101143603433AA602D345C900FF359601BE369B02C645C9
          00FF359702C00D22022A01010101010101010101010101010101010101010101
          010101010101235C04742564047F3FB401E545C900FF359601BE369B02C645C9
          00FF40B801E92C7505951D4E0462010101010101010101010101010101010101
          01010408020A276D038A43C201F7286B04873AA602D5359601BE369B02C63AA8
          02D52F8204A443C201F626660481030502070101010101010101010101011333
          03403CAC02DA45C900FF45C900FF44C800FF2E7D049F27670582286A0586338C
          03B245C900FF45C900FF45C900FF3AA602D3122E033A01010101286F038C44C7
          00FE45C900FF45C900FF45C900FF45C900FF40BB01ED112D0339173D034C41BF
          01F445C900FF45C900FF45C900FF45C900FF43C600FD2462037C0E24022D3DB0
          01E045C900FF45C900FF45C900FF308703AB0814021901010101010101010B1B
          0221339001B744C800FF45C900FF45C900FF39A202CF0916021B010101010814
          0219369E02C93EB401E418400350010101010101010101010101010101010101
          0101010101011B47035A3FB701E8328F01B5050B020D01010101010101010101
          0101071002140B1A032001010101010101010101010101010101010101010101
          010101010101010101010C1E0326040702090101010101010101010101010812
          0217379D02C83FB401E719440356010101010101010101010101010101010101
          0101010201021C4D036140BB01ED339001B7050C020F010101010D2002293DAD
          02DD45C900FF45C900FF45C900FF328E03B30A19021F01010101010101010B1C
          0223339301BB45C900FF45C900FF45C900FF3AA602D20A190220286C048844C7
          00FD44C800FF44C800FF45C900FF45C900FF42C001F314330340173D034D42C0
          01F545C900FF45C900FF45C900FF45C900FF44C500FB225B0374010101011231
          023D3BA802D644C800FF45C900FF45C900FF286F038D02030103040702092E81
          03A545C900FF45C900FF45C900FF38A202CD0F28023201010101010101010101
          0101030602082464037F43BF01F41F55036B0101010101010101010101010102
          01022565038042C001F5225E0377020401050101010101010101010101010101
          01010101010101010101050B020E010101010101010101010101010101010101
          010101010101060E021101010101010101010101010101010101}
      end
      item
        Image.Data = {
          36040000424D3604000000000000360000002800000010000000100000000100
          2000000000000004000000000000000000000000000000000000010101010101
          0101010101010101010101010101010101010101010102020607020206070101
          0101010101010101010101010101010101010101010101010101010101010101
          0101010101010101010101010101020204050603586F090388AE08038CB20503
          4C60010102020101010101010101010101010101010101010101010101010101
          01010101010101010101050335430702A6D30700C9FF070394BE08029BC60700
          C9FF080297C00303212A01010101010101010101010101010101010101010101
          01010101010108055C740704647F0701B4E50700C9FF070394BE08029BC60700
          C9FF0701B8E90905759506044E62010101010101010101010101010101010101
          01010202080A06036D8A0801C2F708056B870802A6D5070394BE08029BC60802
          A8D5080481A40801C2F607046581020205070101010101010101010101010403
          33400802ABDA0700C9FF0700C9FF0700C8FF07047D9F0805668209056A860803
          8CB20700C9FF0700C9FF0700C9FF0702A5D304032E3A0101010107046E8C0800
          C7FE0700C9FF0700C9FF0700C9FF0700C9FF0701BBED04032D3905033C4C0801
          BFF40700C9FF0700C9FF0700C9FF0700C9FF0800C6FD0704627C0402242D0801
          B0E00700C9FF0700C9FF0700C9FF070387AB0302141901010101010101010303
          1A21080190B70800C8FF0700C9FF0700C9FF0702A2CF0302161B010101010302
          131906029EC90701B4E405033F50010101010101010101010101010101010101
          0101010101010503475A0701B7E808018FB502020B0D01010101010101010101
          0101030210140403192001010101010101010101010101010101010101010101
          0101010101010101010104031E26020207090101010101010101010101010302
          121706029DC80701B4E705034456010101010101010101010101010101010101
          01010101010206034D610701BBED060190B702020C0F01010101030220290802
          ADDD0700C9FF0700C9FF0700C9FF08038CB30302191F01010101010101010302
          1C23070193BB0700C9FF0700C9FF0700C9FF0702A6D20302192007046C880700
          C7FD0800C8FF0800C8FF0700C9FF0700C9FF0801C0F30503324005033D4D0801
          C0F50700C9FF0700C9FF0700C9FF0700C9FF0800C5FB06045B74010101010403
          313D0802A8D60800C8FF0700C9FF0700C9FF07036F8D01010303020207090603
          81A50700C9FF0700C9FF0700C9FF0702A2CD0403273201010101010101010101
          0101020206080603647F0801BFF40603556B0101010101010101010101010101
          0202060365800801C0F506035E77020104050101010101010101010101010101
          0101010101010101010102020B0E010101010101010101010101010101010101
          01010101010103020E1101010101010101010101010101010101}
      end
      item
        Image.Data = {
          36040000424D3604000000000000360000002800000010000000100000000100
          20000000000000040000000000000000000000000000000000000098FFFF0098
          FFFF0098FFFF0098FFFF0098FFFF0098FFFF0098FFFF0098FFFF0098FFFF0098
          FFFF0098FFFF0098FFFF0098FFFF0098FFFF0098FFFF0098FFFF0098FFFF0098
          FFFF0098FFFF0098FFFF0098FFFF0098FFFF0098FFFF0098FFFF0098FFFF0098
          FFFF0098FFFF0098FFFF0098FFFF0098FFFF0098FFFF0098FFFF0098FFFF0098
          FFFF0098FFFF0098FFFF0098FFFF0098FFFF0098FFFF0098FFFF0098FFFF0098
          FFFF0098FFFF0098FFFF0098FFFF0098FFFF0098FFFF0098FFFF0098FFFF0098
          FFFF0098FFFF0098FFFF0098FFFF0098FFFF0098FFFF0098FFFF0098FFFF0098
          FFFF0098FFFF0098FFFF0098FFFF0098FFFF0098FFFF0098FFFF0098FFFF0098
          FFFF0098FFFF0098FFFF0098FFFF0098FFFF0098FFFF0098FFFF0098FFFF0098
          FFFF0098FFFF0098FFFF0098FFFF0098FFFF0098FFFF0098FFFF002CDDFF002C
          DDFF002CDDFF002CDDFF002CDDFF002CDDFF002CDDFF002CDDFF002CDDFF002C
          DDFF002CDDFF002CDDFF002CDDFF002CDDFF002CDDFF002CDDFF002CDDFF002C
          DDFF002CDDFF002CDDFF002CDDFF002CDDFF002CDDFF002CDDFF002CDDFF002C
          DDFF002CDDFF002CDDFF002CDDFF002CDDFF002CDDFF002CDDFF002CDDFF002C
          DDFF002CDDFF002CDDFF002CDDFF002CDDFF002CDDFF002CDDFF002CDDFF002C
          DDFF002CDDFF002CDDFF002CDDFF002CDDFF002CDDFF002CDDFF002CDDFF002C
          DDFF002CDDFF002CDDFF002CDDFF002CDDFF002CDDFF002CDDFF002CDDFF002C
          DDFF002CDDFF002CDDFF002CDDFF002CDDFF002CDDFF002CDDFF0098FFFF0098
          FFFF0098FFFF0098FFFF0098FFFF0098FFFF0098FFFF0098FFFF0098FFFF0098
          FFFF0098FFFF0098FFFF0098FFFF0098FFFF0098FFFF0098FFFF0098FFFF0098
          FFFF0098FFFF0098FFFF0098FFFF0098FFFF0098FFFF0098FFFF0098FFFF0098
          FFFF0098FFFF0098FFFF0098FFFF0098FFFF0098FFFF0098FFFF0098FFFF0098
          FFFF0098FFFF0098FFFF0098FFFF0098FFFF0098FFFF0098FFFF0098FFFF0098
          FFFF0098FFFF0098FFFF0098FFFF0098FFFF0098FFFF0098FFFF0098FFFF0098
          FFFF0098FFFF0098FFFF0098FFFF0098FFFF0098FFFF0098FFFF0098FFFF0098
          FFFF0098FFFF0098FFFF0098FFFF0098FFFF0098FFFF0098FFFF0098FFFF0098
          FFFF0098FFFF0098FFFF0098FFFF0098FFFF0098FFFF0098FFFF0098FFFF0098
          FFFF0098FFFF0098FFFF0098FFFF0098FFFF0098FFFF0098FFFF0098FFFF0098
          FFFF0098FFFF0098FFFF0098FFFF0098FFFF0098FFFF0098FFFF0098FFFF0098
          FFFF0098FFFF0098FFFF0098FFFF0098FFFF0098FFFF0098FFFF0098FFFF0098
          FFFF0098FFFF0098FFFF0098FFFF0098FFFF0098FFFF0098FFFF0098FFFF0098
          FFFF0098FFFF0098FFFF0098FFFF0098FFFF0098FFFF0098FFFF}
      end>
  end
end
