inherited Form_Cadastro_Produtos: TForm_Cadastro_Produtos
  Caption = 'Cadastro de Produtos'
  ClientHeight = 659
  ClientWidth = 1359
  OnShow = FormShow
  ExplicitWidth = 1375
  ExplicitHeight = 698
  PixelsPerInch = 96
  TextHeight = 13
  inherited cxPageControl1: TcxPageControl
    Top = 192
    Width = 1359
    Height = 455
    ExplicitTop = 192
    ExplicitWidth = 1359
    ExplicitHeight = 455
    ClientRectBottom = 453
    ClientRectRight = 1357
    inherited tbPesquisa: TcxTabSheet
      ExplicitWidth = 1355
      ExplicitHeight = 408
      inherited Panel1: TPanel
        Width = 1355
        ExplicitWidth = 1355
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
          Left = 1258
          Top = 0
          Width = 97
          Height = 41
          Align = alRight
          Caption = 'Mostra Filtros'
          TabOrder = 6
          OnClick = chk_mostrafiltrogridClick
        end
      end
      inherited pnl_esq: TPanel
        Width = 46
        Height = 367
        TabOrder = 2
        ExplicitWidth = 46
        ExplicitHeight = 367
      end
      object cxVisualiza: TcxGrid [2]
        AlignWithMargins = True
        Left = 49
        Top = 44
        Width = 1254
        Height = 361
        Align = alClient
        TabOrder = 1
        LockedStateImageOptions.Text = 'Aguarde!'
        LookAndFeel.Kind = lfStandard
        LookAndFeel.NativeStyle = False
        LookAndFeel.SkinName = 'Metropolis'
        RootLevelOptions.DetailFrameColor = clNone
        object cxVisualizaDBTableView1: TcxGridDBTableView
          OnDblClick = cxVisualizaDBTableView1DblClick
          OnKeyDown = cxVisualizaDBTableView1KeyDown
          Navigator.Buttons.CustomButtons = <>
          Navigator.Visible = True
          FindPanel.InfoText = 'Digite e pressione Enter para Buscar Produtos.'
          DataController.DataSource = dsPrincipal
          DataController.Filter.Active = True
          DataController.Filter.AutoDataSetFilter = True
          DataController.Summary.DefaultGroupSummaryItems = <>
          DataController.Summary.FooterSummaryItems = <>
          DataController.Summary.SummaryGroups = <>
          FilterRow.InfoText = 'Clique para Definir o FIltro.'
          OptionsCustomize.ColumnHiding = True
          OptionsCustomize.ColumnsQuickCustomization = True
          OptionsData.CancelOnExit = False
          OptionsData.Deleting = False
          OptionsData.DeletingConfirmation = False
          OptionsView.NoDataToDisplayInfoText = 'N'#227'o h'#225' Dados para mostrar.'
          object cxVisualizaDBTableView1PRO_ID: TcxGridDBColumn
            DataBinding.FieldName = 'PRO_ID'
          end
          object cxVisualizaDBTableView1PRO_COD_BARRA: TcxGridDBColumn
            DataBinding.FieldName = 'PRO_COD_BARRA'
          end
          object cxVisualizaDBTableView1PRO_DESCRICAO_CUPOM: TcxGridDBColumn
            DataBinding.FieldName = 'PRO_DESCRICAO_CUPOM'
          end
          object cxVisualizaDBTableView1PRO_DESCRICAO_PDV: TcxGridDBColumn
            DataBinding.FieldName = 'PRO_DESCRICAO_PDV'
          end
          object cxVisualizaDBTableView1PRO_TIPO_PRODUTO: TcxGridDBColumn
            DataBinding.FieldName = 'PRO_TIPO_PRODUTO'
            Width = 80
          end
          object cxVisualizaDBTableView1PRO_CONTROLA_ESTOQUE_PRO: TcxGridDBColumn
            DataBinding.FieldName = 'PRO_CONTROLA_ESTOQUE_PRO'
            Width = 103
          end
          object cxVisualizaDBTableView1PRO_ESTOQUE_MINIMO: TcxGridDBColumn
            DataBinding.FieldName = 'PRO_ESTOQUE_MINIMO'
          end
          object cxVisualizaDBTableView1PRO_SALDO_ESTOQUE: TcxGridDBColumn
            DataBinding.FieldName = 'PRO_SALDO_ESTOQUE'
          end
          object cxVisualizaDBTableView1PRO_VLR_CUSTO: TcxGridDBColumn
            DataBinding.FieldName = 'PRO_VLR_CUSTO'
          end
          object cxVisualizaDBTableView1PRO_PRECO_V_ATACADO: TcxGridDBColumn
            DataBinding.FieldName = 'PRO_PRECO_V_ATACADO'
            Width = 85
          end
          object cxVisualizaDBTableView1PRO_VLR_PADRAO: TcxGridDBColumn
            DataBinding.FieldName = 'PRO_VLR_PADRAO'
            Width = 112
          end
          object cxVisualizaDBTableView1PRO_VLR_PROMOC: TcxGridDBColumn
            DataBinding.FieldName = 'PRO_VLR_PROMOC'
            Width = 106
          end
          object cxVisualizaDBTableView1PRO_VLR_PRECO2: TcxGridDBColumn
            DataBinding.FieldName = 'PRO_VLR_PRECO2'
            Width = 97
          end
          object cxVisualizaDBTableView1PRO_VLR_PRECO3: TcxGridDBColumn
            DataBinding.FieldName = 'PRO_VLR_PRECO3'
            Width = 80
          end
          object cxVisualizaDBTableView1PRO_VLR_PRECO4: TcxGridDBColumn
            DataBinding.FieldName = 'PRO_VLR_PRECO4'
            Width = 92
          end
          object cxVisualizaDBTableView1PRO_QTD_MIN_VLR_ATACADO: TcxGridDBColumn
            DataBinding.FieldName = 'PRO_QTD_MIN_VLR_ATACADO'
            Width = 187
          end
          object cxVisualizaDBTableView1PRO_QTD_MIN_VLR_PROMOC: TcxGridDBColumn
            DataBinding.FieldName = 'PRO_QTD_MIN_VLR_PROMOC'
            Width = 196
          end
          object cxVisualizaDBTableView1PRO_CEST: TcxGridDBColumn
            DataBinding.FieldName = 'PRO_CEST'
            Width = 112
          end
          object cxVisualizaDBTableView1PRO_CFOP: TcxGridDBColumn
            DataBinding.FieldName = 'PRO_CFOP'
            Width = 76
          end
          object cxVisualizaDBTableView1PRO_NCM: TcxGridDBColumn
            DataBinding.FieldName = 'PRO_NCM'
          end
          object cxVisualizaDBTableView1PRO_CHAVE_IBPT: TcxGridDBColumn
            DataBinding.FieldName = 'PRO_CHAVE_IBPT'
            Width = 129
          end
          object cxVisualizaDBTableView1PRO_DT_ATUALIZACAO_CADASTRO: TcxGridDBColumn
            DataBinding.FieldName = 'PRO_DT_ATUALIZACAO_CADASTRO'
            Width = 152
          end
          object cxVisualizaDBTableView1PRO_HR__ATUALIZACAO_CADASTRO: TcxGridDBColumn
            DataBinding.FieldName = 'PRO_HR__ATUALIZACAO_CADASTRO'
            Width = 162
          end
        end
        object cxNCMs: TcxGridDBTableView
          Navigator.Buttons.CustomButtons = <>
          DataController.KeyFieldNames = 'NCM'
          DataController.Summary.DefaultGroupSummaryItems = <>
          DataController.Summary.FooterSummaryItems = <>
          DataController.Summary.SummaryGroups = <>
          OptionsData.CancelOnExit = False
          OptionsData.Deleting = False
          OptionsData.DeletingConfirmation = False
          OptionsData.Inserting = False
          OptionsView.ColumnAutoWidth = True
          object cxNCMsNCM: TcxGridDBColumn
            DataBinding.FieldName = 'NCM'
            Width = 100
          end
          object cxNCMsEX: TcxGridDBColumn
            Caption = 'Ex.'
            DataBinding.FieldName = 'EX'
          end
          object cxNCMsDESC_NCM: TcxGridDBColumn
            Caption = 'Descri'#231#227'o do NCM'
            DataBinding.FieldName = 'DESC_NCM'
            Width = 200
          end
          object cxNCMsDESCRICAO: TcxGridDBColumn
            Caption = 'Descri'#231#227'o do Perfil'
            DataBinding.FieldName = 'DESCRICAO'
            Width = 300
          end
        end
        object cxCEST: TcxGridDBTableView
          Navigator.Buttons.CustomButtons = <>
          DataController.KeyFieldNames = 'CEST'
          DataController.Summary.DefaultGroupSummaryItems = <>
          DataController.Summary.FooterSummaryItems = <>
          DataController.Summary.SummaryGroups = <>
          OptionsData.CancelOnExit = False
          OptionsData.Deleting = False
          OptionsData.DeletingConfirmation = False
          OptionsData.Editing = False
          OptionsData.Inserting = False
          OptionsView.ColumnAutoWidth = True
          OptionsView.GroupByBox = False
          object cxCESTCEST: TcxGridDBColumn
            DataBinding.FieldName = 'CEST'
            Width = 100
          end
          object cxCESTDescricao: TcxGridDBColumn
            Caption = 'Descri'#231#227'o'
            DataBinding.FieldName = 'DESCRICAO'
          end
        end
        object cxVisualizaLevel1: TcxGridLevel
          GridView = cxVisualizaDBTableView1
        end
      end
      inherited pnl_dire: TPanel
        Left = 1306
        Height = 367
        TabOrder = 3
        ExplicitLeft = 1306
        ExplicitHeight = 367
      end
    end
    inherited tbCadastro: TcxTabSheet
      ExplicitWidth = 1355
      ExplicitHeight = 408
      inherited Shape3: TShape
        Top = 400
        Width = 1355
        ExplicitTop = 582
        ExplicitWidth = 1267
      end
      object cxPaginas2: TcxPageControl
        Left = 0
        Top = 0
        Width = 1355
        Height = 397
        Align = alClient
        TabOrder = 0
        Properties.ActivePage = cxDadosProduto
        Properties.CustomButtons.Buttons = <>
        ClientRectBottom = 393
        ClientRectLeft = 4
        ClientRectRight = 1351
        ClientRectTop = 24
        object cxDadosProduto: TcxTabSheet
          Caption = 'Dados do produto'
          ImageIndex = 0
          ExplicitLeft = 2
          ExplicitTop = 28
          ExplicitWidth = 1351
          ExplicitHeight = 367
          object grp_produto: TGroupBox
            Left = 0
            Top = 0
            Width = 1347
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
            ExplicitWidth = 1351
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
          ExplicitLeft = 2
          ExplicitTop = 28
          ExplicitWidth = 1351
          ExplicitHeight = 367
        end
        object cxObs: TcxTabSheet
          Caption = 'Observa'#231#245'es'
          ImageIndex = 2
          ExplicitLeft = 2
          ExplicitTop = 28
          ExplicitWidth = 1351
          ExplicitHeight = 367
          object dbmmoOBS: TDBMemo
            Left = 0
            Top = 0
            Width = 1347
            Height = 369
            Align = alClient
            BorderStyle = bsNone
            DataField = 'PRO_OBS'
            DataSource = dsPrincipal
            TabOrder = 0
            ExplicitWidth = 1351
            ExplicitHeight = 367
          end
        end
        object cxCompra: TcxTabSheet
          Caption = 'Compras / Venda'
          ImageIndex = 4
          ExplicitLeft = 2
          ExplicitTop = 28
          ExplicitWidth = 1351
          ExplicitHeight = 367
          object Panel17: TPanel
            Left = 0
            Top = 217
            Width = 1347
            Height = 152
            Align = alClient
            BevelOuter = bvNone
            Color = clWhite
            ParentBackground = False
            TabOrder = 0
            ExplicitWidth = 1351
            ExplicitHeight = 150
            object shp2: TShape
              AlignWithMargins = True
              Left = 0
              Top = 20
              Width = 1347
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
              Width = 1341
              Height = 120
              Align = alClient
              TabOrder = 0
              ExplicitWidth = 1345
              ExplicitHeight = 118
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
              ExplicitWidth = 1351
              AnchorX = 674
              AnchorY = 9
            end
          end
          object Panel18: TPanel
            Left = 0
            Top = 0
            Width = 1347
            Height = 217
            Align = alTop
            BevelOuter = bvNone
            Color = clWhite
            ParentBackground = False
            TabOrder = 1
            ExplicitWidth = 1351
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
          ExplicitLeft = 2
          ExplicitTop = 28
          ExplicitWidth = 1351
          ExplicitHeight = 367
          object cxFornecedores: TcxGrid
            Left = 0
            Top = 0
            Width = 1347
            Height = 328
            Align = alClient
            TabOrder = 0
            ExplicitWidth = 1351
            ExplicitHeight = 326
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
            Top = 328
            Width = 1347
            Height = 41
            Align = alBottom
            BevelOuter = bvNone
            Color = 4718629
            ParentBackground = False
            TabOrder = 1
            ExplicitTop = 326
            ExplicitWidth = 1351
          end
        end
        object tabComposicao: TcxTabSheet
          Caption = 'Composi'#231#227'o'
          ImageIndex = 6
          ExplicitLeft = 2
          ExplicitTop = 28
          ExplicitWidth = 1351
          ExplicitHeight = 367
          object cxComposicao: TcxGrid
            Left = 0
            Top = 0
            Width = 1347
            Height = 328
            Align = alClient
            TabOrder = 0
            ExplicitWidth = 1351
            ExplicitHeight = 326
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
            Top = 328
            Width = 1347
            Height = 41
            Align = alBottom
            BevelOuter = bvNone
            Color = 4718629
            ParentBackground = False
            TabOrder = 1
            ExplicitTop = 326
            ExplicitWidth = 1351
          end
        end
        object cxTabSheet1: TcxTabSheet
          Caption = 'Par'#226'metros'
          ImageIndex = 6
          ExplicitLeft = 2
          ExplicitTop = 28
          ExplicitWidth = 1351
          ExplicitHeight = 367
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
          ExplicitLeft = 2
          ExplicitTop = 28
          ExplicitWidth = 1351
          ExplicitHeight = 367
          object GroupBox4: TGroupBox
            Left = 0
            Top = 0
            Width = 1347
            Height = 225
            Align = alTop
            Caption = 'Fiscal'
            TabOrder = 0
            ExplicitWidth = 1351
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
            Width = 1347
            Height = 344
            Align = alTop
            Caption = 'ePDV'
            TabOrder = 1
            ExplicitWidth = 1351
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
    Width = 1359
    Height = 29
    ExplicitTop = 59
    ExplicitWidth = 1359
    ExplicitHeight = 29
    inherited pbl_de_cima: TPanel
      Top = 0
      Width = 1359
      ExplicitTop = 0
      ExplicitWidth = 1359
      inherited shape_cima: TShape
        Width = 1199
        Brush.Color = clWhite
        Brush.Style = bsClear
        ExplicitWidth = 1209
      end
      inherited pnl_info_direita: TPanel
        Left = 1077
        ExplicitLeft = 1077
        inherited lblregistros: TLabel
          ExplicitLeft = 167
        end
      end
    end
  end
  inherited pnl_baixo: TPanel
    Top = 647
    Width = 1359
    ExplicitTop = 647
    ExplicitWidth = 1359
  end
  inherited ToolBar1: TToolBar
    Width = 1353
    Height = 53
    ExplicitWidth = 1353
    ExplicitHeight = 53
  end
  object GBDadosProduto: TGroupBox [4]
    Left = 0
    Top = 88
    Width = 1359
    Height = 104
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
      Width = 63
      Height = 16
      Caption = 'C'#243'digo PLU:'
      Font.Charset = ANSI_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'Trebuchet MS'
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
      Style.Color = 12582911
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
      DisplayLabel = 'Valor Pre'#245' 4:'
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
  object cxGridImg: TcxImageList [9]
    DrawingStyle = dsTransparent
    FormatVersion = 1
    DesignInfo = 1008
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
      end>
  end
  object FDQuxiliar: TFDQuery [10]
    Connection = DtmBcoErp.FDBcoERP
    SQL.Strings = (
      'SELECT * FROM TB_PRODUTOS')
    Left = 961
    Top = 151
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
  object ACBrEnterTab: TACBrEnterTab [11]
    EnterAsTab = True
    Left = 1224
    Top = 120
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
    Left = 896
    Top = 144
  end
end
