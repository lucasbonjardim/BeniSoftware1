inherited Form_Cadastro_Produtos: TForm_Cadastro_Produtos
  Caption = 'Cadastro de Produtos'
  ClientHeight = 577
  ClientWidth = 1344
  OnShow = FormShow
  ExplicitWidth = 1360
  ExplicitHeight = 616
  PixelsPerInch = 96
  TextHeight = 13
  inherited Shape1: TShape
    Top = 37
    Width = 1344
    ExplicitTop = 62
    ExplicitWidth = 1307
  end
  inherited ToolBar1: TToolBar
    Width = 1344
    Height = 34
    ExplicitWidth = 1344
    ExplicitHeight = 34
  end
  inherited cxPageControl1: TcxPageControl
    Top = 71
    Width = 1344
    Height = 506
    ExplicitTop = 90
    ExplicitWidth = 1344
    ExplicitHeight = 487
    ClientRectBottom = 502
    ClientRectRight = 1340
    inherited tbPesquisa: TcxTabSheet
      ExplicitLeft = 4
      ExplicitTop = 24
      ExplicitWidth = 1336
      ExplicitHeight = 459
      inherited Panel1: TPanel
        Width = 1336
        ExplicitWidth = 1336
        inherited lblPesquisa: TcxLabel
          Style.IsFontAssigned = True
          AnchorX = 34
          AnchorY = 21
        end
        inherited Panel2: TPanel
          inherited edtCurr: TcxCurrencyEdit
            ExplicitHeight = 23
          end
          inherited edtMask: TMaskEdit
            Text = ''
            Visible = True
            OnKeyDown = edtMaskKeyDown
          end
        end
        inherited cxButton1: TcxButton
          Hint = 'F3 Pesquisar'
          ParentShowHint = False
          ShowHint = True
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
          Left = 1239
          Top = 0
          Width = 97
          Height = 41
          Align = alRight
          Caption = 'Mostra Filtros'
          TabOrder = 6
          OnClick = chk_mostrafiltrogridClick
        end
      end
      object cxVisualiza: TcxGrid [1]
        AlignWithMargins = True
        Left = 3
        Top = 44
        Width = 1330
        Height = 391
        Align = alClient
        TabOrder = 1
        LockedStateImageOptions.Text = 'Aguarde!'
        LookAndFeel.Kind = lfStandard
        LookAndFeel.NativeStyle = False
        LookAndFeel.SkinName = 'Metropolis'
        RootLevelOptions.DetailFrameColor = clNone
        ExplicitHeight = 372
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
          object cxVisualizaDBTableView1PRO_ATIVO: TcxGridDBColumn
            DataBinding.FieldName = 'PRO_ATIVO'
          end
          object cxVisualizaDBTableView1PRO_TIPO_PRODUTO: TcxGridDBColumn
            DataBinding.FieldName = 'PRO_TIPO_PRODUTO'
          end
          object cxVisualizaDBTableView1PRO_CONTROLA_ESTOQUE_PRO: TcxGridDBColumn
            DataBinding.FieldName = 'PRO_CONTROLA_ESTOQUE_PRO'
          end
          object cxVisualizaDBTableView1PRO_ESTOQUE_MINIMO: TcxGridDBColumn
            DataBinding.FieldName = 'PRO_ESTOQUE_MINIMO'
          end
          object cxVisualizaDBTableView1PRO_SALDO_ESTOQUE: TcxGridDBColumn
            DataBinding.FieldName = 'PRO_SALDO_ESTOQUE'
          end
          object cxVisualizaDBTableView1PRO_DATA_VALIDADE: TcxGridDBColumn
            DataBinding.FieldName = 'PRO_DATA_VALIDADE'
          end
          object cxVisualizaDBTableView1PRO_FORMULA: TcxGridDBColumn
            DataBinding.FieldName = 'PRO_FORMULA'
          end
          object cxVisualizaDBTableView1PRO_UN_REFERENCIA: TcxGridDBColumn
            DataBinding.FieldName = 'PRO_UN_REFERENCIA'
          end
          object cxVisualizaDBTableView1PRO_VLR_CUSTO: TcxGridDBColumn
            DataBinding.FieldName = 'PRO_VLR_CUSTO'
          end
          object cxVisualizaDBTableView1PRO_PRECO_V_ATACADO: TcxGridDBColumn
            DataBinding.FieldName = 'PRO_PRECO_V_ATACADO'
          end
          object cxVisualizaDBTableView1PRO_VLR_PADRAO: TcxGridDBColumn
            DataBinding.FieldName = 'PRO_VLR_PADRAO'
          end
          object cxVisualizaDBTableView1PRO_VLR_PROMOC: TcxGridDBColumn
            DataBinding.FieldName = 'PRO_VLR_PROMOC'
          end
          object cxVisualizaDBTableView1PRO_VLR_PRECO2: TcxGridDBColumn
            DataBinding.FieldName = 'PRO_VLR_PRECO2'
          end
          object cxVisualizaDBTableView1PRO_VLR_PRECO3: TcxGridDBColumn
            DataBinding.FieldName = 'PRO_VLR_PRECO3'
          end
          object cxVisualizaDBTableView1PRO_VLR_PRECO4: TcxGridDBColumn
            DataBinding.FieldName = 'PRO_VLR_PRECO4'
          end
          object cxVisualizaDBTableView1PRO_QTD_MIN_VLR_ATACADO: TcxGridDBColumn
            DataBinding.FieldName = 'PRO_QTD_MIN_VLR_ATACADO'
          end
          object cxVisualizaDBTableView1PRO_QTD_MIN_VLR_PROMOC: TcxGridDBColumn
            DataBinding.FieldName = 'PRO_QTD_MIN_VLR_PROMOC'
          end
          object cxVisualizaDBTableView1PRO_DIAS_VALIDADE: TcxGridDBColumn
            DataBinding.FieldName = 'PRO_DIAS_VALIDADE'
          end
          object cxVisualizaDBTableView1PRO_PERMITE_FRAC: TcxGridDBColumn
            DataBinding.FieldName = 'PRO_PERMITE_FRAC'
          end
          object cxVisualizaDBTableView1PRO_ALCOOLICO: TcxGridDBColumn
            DataBinding.FieldName = 'PRO_ALCOOLICO'
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
          object cxVisualizaDBTableView1PRO_CLASSIFICACAO_FISCAL: TcxGridDBColumn
            DataBinding.FieldName = 'PRO_CLASSIFICACAO_FISCAL'
          end
          object cxVisualizaDBTableView1PRO_COD_ALIQUOTA: TcxGridDBColumn
            DataBinding.FieldName = 'PRO_COD_ALIQUOTA'
          end
          object cxVisualizaDBTableView1PRO_COMISSAO: TcxGridDBColumn
            DataBinding.FieldName = 'PRO_COMISSAO'
          end
          object cxVisualizaDBTableView1PRO_ALIQUOTA_CSLL: TcxGridDBColumn
            DataBinding.FieldName = 'PRO_ALIQUOTA_CSLL'
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
      inherited Panel22: TPanel
        Top = 461
        Width = 1336
        TabOrder = 2
        ExplicitTop = 442
        ExplicitWidth = 1336
      end
      inherited Panel23: TPanel
        Top = 438
        Width = 1336
        TabOrder = 3
        ExplicitTop = 419
        ExplicitWidth = 1336
      end
    end
    inherited tbCadastro: TcxTabSheet
      ExplicitLeft = 4
      ExplicitTop = 24
      ExplicitWidth = 1336
      ExplicitHeight = 459
      inherited Shape3: TShape
        Top = 453
        Width = 1336
        ExplicitTop = 464
        ExplicitWidth = 1366
      end
      object cxPaginas2: TcxPageControl [1]
        Left = 0
        Top = 0
        Width = 1336
        Height = 450
        Align = alClient
        TabOrder = 0
        Properties.ActivePage = cxDadosProduto
        Properties.CustomButtons.Buttons = <>
        ExplicitHeight = 431
        ClientRectBottom = 446
        ClientRectLeft = 4
        ClientRectRight = 1332
        ClientRectTop = 24
        object cxDadosProduto: TcxTabSheet
          Caption = 'Dados do produto'
          ImageIndex = 0
          ExplicitHeight = 403
          object pnlLateral1: TPanel
            Left = 1020
            Top = 0
            Width = 308
            Height = 422
            Align = alRight
            BevelOuter = bvNone
            TabOrder = 1
            ExplicitHeight = 403
            object Panel11: TPanel
              Left = 0
              Top = 0
              Width = 308
              Height = 47
              Align = alTop
              BevelOuter = bvNone
              Color = clWhite
              ParentBackground = False
              TabOrder = 0
            end
          end
          object pnlCentral1: TPanel
            Left = 0
            Top = 0
            Width = 849
            Height = 422
            Align = alLeft
            BevelOuter = bvNone
            TabOrder = 0
            ExplicitHeight = 403
          end
        end
        object cxBalanca: TcxTabSheet
          Caption = 'Balan'#231'a'
          ImageIndex = 1
          ExplicitHeight = 403
        end
        object cxObs: TcxTabSheet
          Caption = 'Observa'#231#245'es'
          ImageIndex = 2
          ExplicitHeight = 403
          object dbmmoOBS: TDBMemo
            Left = 0
            Top = 0
            Width = 1328
            Height = 422
            Align = alClient
            BorderStyle = bsNone
            DataField = 'PRO_OBS'
            DataSource = dsPrincipal
            TabOrder = 0
            ExplicitHeight = 403
          end
        end
        object cxFoto: TcxTabSheet
          Caption = 'Foto'
          ImageIndex = 3
          ExplicitHeight = 403
        end
        object cxCompra: TcxTabSheet
          Caption = 'Compras / Venda'
          ImageIndex = 4
          ExplicitHeight = 403
          object Panel17: TPanel
            Left = 0
            Top = 217
            Width = 1328
            Height = 205
            Align = alClient
            BevelOuter = bvNone
            Color = clWhite
            ParentBackground = False
            TabOrder = 0
            ExplicitHeight = 186
            object shp2: TShape
              AlignWithMargins = True
              Left = 0
              Top = 29
              Width = 1328
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
            object Shape2: TShape
              AlignWithMargins = True
              Left = 0
              Top = 3
              Width = 1328
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
              Top = 38
              Width = 1322
              Height = 164
              Align = alClient
              TabOrder = 0
              ExplicitHeight = 145
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
              Top = 9
              Align = alTop
              Caption = 'Vendas do Produto'
              Style.TextColor = 16744448
              Style.TextStyle = [fsBold, fsItalic]
              Properties.Alignment.Horz = taCenter
              Properties.Alignment.Vert = taVCenter
              AnchorX = 664
              AnchorY = 18
            end
          end
          object Panel18: TPanel
            Left = 0
            Top = 0
            Width = 1328
            Height = 217
            Align = alTop
            BevelOuter = bvNone
            Color = clWhite
            ParentBackground = False
            TabOrder = 1
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
          ExplicitHeight = 403
          object cxFornecedores: TcxGrid
            Left = 0
            Top = 0
            Width = 1328
            Height = 381
            Align = alClient
            TabOrder = 0
            ExplicitHeight = 362
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
            Top = 381
            Width = 1328
            Height = 41
            Align = alBottom
            BevelOuter = bvNone
            Color = 4718629
            ParentBackground = False
            TabOrder = 1
            ExplicitTop = 362
          end
        end
        object tabComposicao: TcxTabSheet
          Caption = 'Composi'#231#227'o'
          ImageIndex = 6
          ExplicitHeight = 403
          object cxComposicao: TcxGrid
            Left = 0
            Top = 0
            Width = 1328
            Height = 381
            Align = alClient
            TabOrder = 0
            ExplicitHeight = 362
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
            Top = 381
            Width = 1328
            Height = 41
            Align = alBottom
            BevelOuter = bvNone
            Color = 4718629
            ParentBackground = False
            TabOrder = 1
            ExplicitTop = 362
          end
        end
        object cxTabSheet1: TcxTabSheet
          Caption = 'Cupom Fiscal'
          ImageIndex = 7
          ExplicitHeight = 403
        end
        object cxTabSheet2: TcxTabSheet
          Caption = 'Medicamento'
          ImageIndex = 8
          ExplicitHeight = 403
        end
      end
      inherited pnl_baixo: TPanel
        Top = 461
        Width = 1336
        TabOrder = 1
        ExplicitTop = 442
        ExplicitWidth = 1336
      end
    end
  end
  inherited pnl_top: TPanel
    Top = 43
    Width = 1344
    Height = 28
    Color = clWhite
    ParentBackground = False
    ExplicitTop = 62
    ExplicitWidth = 1344
    ExplicitHeight = 28
    object lbl_qnt_produtos: TLabel [0]
      Left = 1202
      Top = 0
      Width = 142
      Height = 28
      Align = alRight
      Caption = 'Qunatidade de Registros:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clRed
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
      Visible = False
      ExplicitLeft = 1212
      ExplicitHeight = 13
    end
    inherited BtnRegistroPosterior: TcxButton
      Left = 66
      ExplicitLeft = 66
    end
    inherited BtnPrimeiroRegistro: TcxButton
      Left = 2
      ExplicitLeft = 2
    end
    inherited BtnRegistroAnterior: TcxButton
      Left = 34
      ExplicitLeft = 34
    end
    inherited BtnUltimoRegistro: TcxButton
      Left = 98
      ExplicitLeft = 98
    end
  end
  inherited dsPrincipal: TDataSource
    DataSet = FdqProdutos
    Left = 206
    Top = 51
  end
  inherited cxLookAndFeelController1: TcxLookAndFeelController
    Left = 1160
    Top = 65528
  end
  inherited BarraMenu: TcxImageList
    FormatVersion = 1
    DesignInfo = 197360
  end
  object FdqProdutos: TFDQuery [7]
    Connection = DtmBcoErp.FDBcoERP
    SQL.Strings = (
      'SELECT * FROM TB_PRODUTOS')
    Left = 251
    Top = 51
    object FdqProdutosPRO_ID: TLargeintField
      FieldName = 'PRO_ID'
      Origin = 'PRO_ID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object FdqProdutosPRO_COD_BARRA: TLargeintField
      FieldName = 'PRO_COD_BARRA'
      Origin = 'PRO_COD_BARRA'
      Required = True
    end
    object FdqProdutosPRO_DESCRICAO_CUPOM: TWideStringField
      FieldName = 'PRO_DESCRICAO_CUPOM'
      Origin = 'PRO_DESCRICAO_CUPOM'
      Size = 40
    end
    object FdqProdutosPRO_DESCRICAO_PDV: TWideStringField
      FieldName = 'PRO_DESCRICAO_PDV'
      Origin = 'PRO_DESCRICAO_PDV'
      Size = 24
    end
    object FdqProdutosPRO_ATIVO: TWideStringField
      FieldName = 'PRO_ATIVO'
      Origin = 'PRO_ATIVO'
      Required = True
      FixedChar = True
      Size = 1
    end
    object FdqProdutosPRO_TIPO_PRODUTO: TWideStringField
      FieldName = 'PRO_TIPO_PRODUTO'
      Origin = 'PRO_TIPO_PRODUTO'
      Required = True
      FixedChar = True
      Size = 1
    end
    object FdqProdutosPRO_CONTROLA_ESTOQUE_PRO: TWideStringField
      FieldName = 'PRO_CONTROLA_ESTOQUE_PRO'
      Origin = 'PRO_CONTROLA_ESTOQUE_PRO'
      Required = True
      FixedChar = True
      Size = 1
    end
    object FdqProdutosPRO_ESTOQUE_MINIMO: TBCDField
      FieldName = 'PRO_ESTOQUE_MINIMO'
      Origin = 'PRO_ESTOQUE_MINIMO'
      Precision = 18
      Size = 2
    end
    object FdqProdutosPRO_SALDO_ESTOQUE: TBCDField
      FieldName = 'PRO_SALDO_ESTOQUE'
      Origin = 'PRO_SALDO_ESTOQUE'
      Precision = 18
      Size = 3
    end
    object FdqProdutosPRO_DATA_VALIDADE: TDateField
      FieldName = 'PRO_DATA_VALIDADE'
      Origin = 'PRO_DATA_VALIDADE'
    end
    object FdqProdutosPRO_FORMULA: TWideStringField
      FieldName = 'PRO_FORMULA'
      Origin = 'PRO_FORMULA'
      FixedChar = True
      Size = 1
    end
    object FdqProdutosPRO_UN_REFERENCIA: TWideStringField
      FieldName = 'PRO_UN_REFERENCIA'
      Origin = 'PRO_UN_REFERENCIA'
      FixedChar = True
      Size = 2
    end
    object FdqProdutosPRO_VLR_CUSTO: TFloatField
      FieldName = 'PRO_VLR_CUSTO'
      Origin = 'PRO_VLR_CUSTO'
    end
    object FdqProdutosPRO_PRECO_V_ATACADO: TCurrencyField
      FieldName = 'PRO_PRECO_V_ATACADO'
      Origin = 'PRO_PRECO_V_ATACADO'
    end
    object FdqProdutosPRO_VLR_PADRAO: TCurrencyField
      FieldName = 'PRO_VLR_PADRAO'
      Origin = 'PRO_VLR_PADRAO'
    end
    object FdqProdutosPRO_VLR_PROMOC: TCurrencyField
      FieldName = 'PRO_VLR_PROMOC'
      Origin = 'PRO_VLR_PROMOC'
    end
    object FdqProdutosPRO_VLR_PRECO2: TCurrencyField
      FieldName = 'PRO_VLR_PRECO2'
      Origin = 'PRO_VLR_PRECO2'
    end
    object FdqProdutosPRO_VLR_PRECO3: TCurrencyField
      FieldName = 'PRO_VLR_PRECO3'
      Origin = 'PRO_VLR_PRECO3'
    end
    object FdqProdutosPRO_VLR_PRECO4: TCurrencyField
      FieldName = 'PRO_VLR_PRECO4'
      Origin = 'PRO_VLR_PRECO4'
    end
    object FdqProdutosPRO_QTD_MIN_VLR_ATACADO: TBCDField
      FieldName = 'PRO_QTD_MIN_VLR_ATACADO'
      Origin = 'PRO_QTD_MIN_VLR_ATACADO'
      Precision = 18
      Size = 3
    end
    object FdqProdutosPRO_QTD_MIN_VLR_PROMOC: TBCDField
      FieldName = 'PRO_QTD_MIN_VLR_PROMOC'
      Origin = 'PRO_QTD_MIN_VLR_PROMOC'
      Precision = 18
      Size = 3
    end
    object FdqProdutosPRO_DIAS_VALIDADE: TIntegerField
      FieldName = 'PRO_DIAS_VALIDADE'
      Origin = 'PRO_DIAS_VALIDADE'
    end
    object FdqProdutosPRO_PERMITE_FRAC: TIntegerField
      FieldName = 'PRO_PERMITE_FRAC'
      Origin = 'PRO_PERMITE_FRAC'
    end
    object FdqProdutosPRO_ALCOOLICO: TWideStringField
      FieldName = 'PRO_ALCOOLICO'
      Origin = 'PRO_ALCOOLICO'
      Required = True
      FixedChar = True
      Size = 1
    end
    object FdqProdutosPRO_COD_VASILHAME: TLargeintField
      FieldName = 'PRO_COD_VASILHAME'
      Origin = 'PRO_COD_VASILHAME'
    end
    object FdqProdutosPRO_PEDE_LIBERACAO_FSC: TIntegerField
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
    object FdqProdutosPRO_QTD_MAX_VARIAVEL: TWideStringField
      FieldName = 'PRO_QTD_MAX_VARIAVEL'
      Origin = 'PRO_QTD_MAX_VARIAVEL'
      FixedChar = True
      Size = 1
    end
    object FdqProdutosPRO_PER_ALTERA_PRECO_PDV: TWideStringField
      FieldName = 'PRO_PER_ALTERA_PRECO_PDV'
      Origin = 'PRO_PER_ALTERA_PRECO_PDV'
      FixedChar = True
      Size = 1
    end
    object FdqProdutosPRO_BLOQQUEIA_MULTIPLICACAO: TWideStringField
      FieldName = 'PRO_BLOQQUEIA_MULTIPLICACAO'
      Origin = 'PRO_BLOQQUEIA_MULTIPLICACAO'
      FixedChar = True
      Size = 1
    end
    object FdqProdutosPRO_LEVEX_PAGUEY: TWideStringField
      FieldName = 'PRO_LEVEX_PAGUEY'
      Origin = 'PRO_LEVEX_PAGUEY'
      Size = 6
    end
    object FdqProdutosPRO_COR: TWideStringField
      FieldName = 'PRO_COR'
      Origin = 'PRO_COR'
      Size = 40
    end
    object FdqProdutosPRO_LOCALIZACAO: TWideStringField
      FieldName = 'PRO_LOCALIZACAO'
      Origin = 'PRO_LOCALIZACAO'
      Size = 30
    end
    object FdqProdutosPRO_OBS: TMemoField
      FieldName = 'PRO_OBS'
      Origin = 'PRO_OBS'
      BlobType = ftMemo
    end
    object FdqProdutosPRO_CLASSIFICACAO_FISCAL: TWideStringField
      FieldName = 'PRO_CLASSIFICACAO_FISCAL'
      Origin = 'PRO_CLASSIFICACAO_FISCAL'
      FixedChar = True
      Size = 1
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
    object FdqProdutosPRO_ALIQUOTA_CSLL: TBCDField
      FieldName = 'PRO_ALIQUOTA_CSLL'
      Origin = 'PRO_ALIQUOTA_CSLL'
      Precision = 18
      Size = 2
    end
    object FdqProdutosPRO_ALIQUOTA_OUTRAS: TBCDField
      FieldName = 'PRO_ALIQUOTA_OUTRAS'
      Origin = 'PRO_ALIQUOTA_OUTRAS'
      Precision = 18
      Size = 2
    end
    object FdqProdutosPRO_ISENTO_PIS_COFINS_PRO: TWideStringField
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
    object FdqProdutosPRO_TIPO_PRODUCAO: TWideStringField
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
    object FdqProdutosPRO_SIT_TRIBUTARIA: TWideStringField
      FieldName = 'PRO_SIT_TRIBUTARIA'
      Origin = 'PRO_SIT_TRIBUTARIA'
      FixedChar = True
      Size = 3
    end
    object FdqProdutosPRO_CEST: TWideStringField
      FieldName = 'PRO_CEST'
      Origin = 'PRO_CEST'
      Size = 7
    end
    object FdqProdutosPRO_CFOP: TWideStringField
      FieldName = 'PRO_CFOP'
      Origin = 'PRO_CFOP'
      FixedChar = True
      Size = 4
    end
    object FdqProdutosPRO_NCM: TFloatField
      FieldName = 'PRO_NCM'
      Origin = 'PRO_NCM'
    end
    object FdqProdutosPRO_CHAVE_IBPT: TWideStringField
      FieldName = 'PRO_CHAVE_IBPT'
      Origin = 'PRO_CHAVE_IBPT'
      Size = 50
    end
    object FdqProdutosPRO_CST_ICMS: TWideStringField
      FieldName = 'PRO_CST_ICMS'
      Origin = 'PRO_CST_ICMS'
      FixedChar = True
      Size = 2
    end
    object FdqProdutosPRO_CST_PIS: TWideStringField
      FieldName = 'PRO_CST_PIS'
      Origin = 'PRO_CST_PIS'
      FixedChar = True
      Size = 2
    end
    object FdqProdutosPRO_CST_COFINS: TWideStringField
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
    object FdqProdutosPRO_ULTIMO_USUARIO_ALTERACAO: TWideStringField
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
    object FdqProdutosPRO_ALERTA_COZINHA: TWideStringField
      FieldName = 'PRO_ALERTA_COZINHA'
      Origin = 'PRO_ALERTA_COZINHA'
      FixedChar = True
      Size = 1
    end
    object FdqProdutosPRO_ANDROID_VISUALIZA: TWideStringField
      FieldName = 'PRO_ANDROID_VISUALIZA'
      Origin = 'PRO_ANDROID_VISUALIZA'
      FixedChar = True
      Size = 1
    end
    object FdqProdutosPRO_NUMERO_LOTE: TWideStringField
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
      FieldName = 'PRO_DT_ATUALIZACAO_CADASTRO'
      Origin = 'PRO_DT_ATUALIZACAO_CADASTRO'
    end
    object FdqProdutosPRO_HR__ATUALIZACAO_CADASTRO: TTimeField
      FieldName = 'PRO_HR__ATUALIZACAO_CADASTRO'
      Origin = 'PRO_HR__ATUALIZACAO_CADASTRO'
    end
    object FdqProdutosPRO_COD_SEC: TIntegerField
      FieldName = 'PRO_COD_SEC'
      Origin = 'PRO_COD_SEC'
    end
  end
  object cxImgsGrid: TcxImageList [8]
    DrawingStyle = dsTransparent
    FormatVersion = 1
    DesignInfo = -523064
    ImageInfo = <
      item
        Image.Data = {
          36040000424D3604000000000000360000002800000010000000100000000100
          2000000000000004000000000000000000000000000000000000000000000000
          00000000000000000000131313264747478D686868CF797979F17A7A7AF36A6A
          6AD3494949911616162C00000000000000000000000000000000000000000000
          0000020202044646468B7E7E7EFB808080FF808080FF808080FF808080FF8080
          80FF808080FF7F7F7FFD4C4C4C97040404080000000000000000000000000202
          0204585858AF808080FF808080FF808080FF808080FF808080FF808080FF8080
          80FF808080FF808080FF808080FF5F5F5FBD0404040800000000000000004545
          4589808080FF808080FF808080FF808080FF808080FF808080FF808080FF8080
          80FF808080FF808080FF808080FF808080FF4D4D4D9900000000111111227E7E
          7EFB808080FF808080FF808080FF808080FF808080FF808080FF808080FF8080
          80FF808080FF808080FF808080FF808080FF7F7F7FFD18181830444444878080
          80FF808080FF808080FF808080FF808080FF808080FF808080FF808080FF8080
          80FF808080FF808080FF808080FF808080FF808080FF4C4C4C97656565C98080
          80FF808080FF808080FF808080FF808080FF808080FF808080FF808080FF8080
          80FF808080FF808080FF808080FF808080FF808080FF6D6D6DD9757575E98080
          80FF808080FF808080FF808080FF808080FF808080FF808080FF808080FF8080
          80FF808080FF808080FF808080FF808080FF808080FF7B7B7BF5757575E98080
          80FF808080FF808080FF808080FF808080FF808080FF808080FF808080FF8080
          80FF808080FF808080FF808080FF808080FF808080FF7B7B7BF5646464C78080
          80FF808080FF808080FF808080FF808080FF808080FF808080FF808080FF8080
          80FF808080FF808080FF808080FF808080FF808080FF6D6D6DD9444444878080
          80FF808080FF808080FF808080FF808080FF808080FF808080FF808080FF8080
          80FF808080FF808080FF808080FF808080FF808080FF4C4C4C97121212247E7E
          7EFB808080FF808080FF808080FF808080FF808080FF808080FF808080FF8080
          80FF808080FF808080FF808080FF808080FF7F7F7FFD1717172E000000004444
          4487808080FF808080FF808080FF808080FF808080FF808080FF808080FF8080
          80FF808080FF808080FF808080FF808080FF4D4D4D9900000000000000000202
          0204585858AF808080FF808080FF808080FF808080FF808080FF808080FF8080
          80FF808080FF808080FF808080FF5E5E5EBB0404040800000000000000000000
          000002020204454545897E7E7EFB808080FF808080FF808080FF808080FF8080
          80FF808080FF7F7F7FFD4B4B4B95040404080000000000000000000000000000
          00000000000000000000131313264646468B686868CF797979F1797979F16A6A
          6AD3494949911515152A00000000000000000000000000000000}
      end
      item
        Image.Data = {
          36040000424D3604000000000000360000002800000010000000100000000100
          2000000000000004000000000000000000000000000000000000000000000000
          00000000000000000000152415264C854C8D70C470CF82E482F184E684F372C7
          72D34E894E91182A182C00000000000000000000000000000000000000000000
          0000020402044B834B8B88ED88FB8AF18AFF8AF18AFF8AF18AFF8AF18AFF8AF1
          8AFF8AF18AFF89EF89FD528F5297040804080000000000000000000000000204
          02045FA55FAF8AF18AFF8AF18AFF8AF18AFF8AF18AFF8AF18AFF8AF18AFF8AF1
          8AFF8AF18AFF8AF18AFF8AF18AFF66B366BD0408040800000000000000004A81
          4A898AF18AFF8AF18AFF8AF18AFF8AF18AFF8AF18AFF8AF18AFF8AF18AFF8AF1
          8AFF8AF18AFF8AF18AFF8AF18AFF8AF18AFF53915399000000001220122288ED
          88FB8AF18AFF8AF18AFF8AF18AFF8AF18AFF8AF18AFF8AF18AFF8AF18AFF8AF1
          8AFF8AF18AFF8AF18AFF8AF18AFF8AF18AFF89EF89FD1A2D1A30498049878AF1
          8AFF8AF18AFF8AF18AFF8AF18AFF8AF18AFF8AF18AFF8AF18AFF8AF18AFF8AF1
          8AFF8AF18AFF8AF18AFF8AF18AFF8AF18AFF8AF18AFF528F52976DBE6DC98AF1
          8AFF8AF18AFF8AF18AFF8AF18AFF8AF18AFF8AF18AFF8AF18AFF8AF18AFF8AF1
          8AFF8AF18AFF8AF18AFF8AF18AFF8AF18AFF8AF18AFF75CD75D97EDC7EE98AF1
          8AFF8AF18AFF8AF18AFF8AF18AFF8AF18AFF8AF18AFF8AF18AFF8AF18AFF8AF1
          8AFF8AF18AFF8AF18AFF8AF18AFF8AF18AFF8AF18AFF85E885F57EDC7EE98AF1
          8AFF8AF18AFF8AF18AFF8AF18AFF8AF18AFF8AF18AFF8AF18AFF8AF18AFF8AF1
          8AFF8AF18AFF8AF18AFF8AF18AFF8AF18AFF8AF18AFF85E885F56CBC6CC78AF1
          8AFF8AF18AFF8AF18AFF8AF18AFF8AF18AFF8AF18AFF8AF18AFF8AF18AFF8AF1
          8AFF8AF18AFF8AF18AFF8AF18AFF8AF18AFF8AF18AFF75CD75D9498049878AF1
          8AFF8AF18AFF8AF18AFF8AF18AFF8AF18AFF8AF18AFF8AF18AFF8AF18AFF8AF1
          8AFF8AF18AFF8AF18AFF8AF18AFF8AF18AFF8AF18AFF528F52971322132488ED
          88FB8AF18AFF8AF18AFF8AF18AFF8AF18AFF8AF18AFF8AF18AFF8AF18AFF8AF1
          8AFF8AF18AFF8AF18AFF8AF18AFF8AF18AFF89EF89FD192B192E000000004980
          49878AF18AFF8AF18AFF8AF18AFF8AF18AFF8AF18AFF8AF18AFF8AF18AFF8AF1
          8AFF8AF18AFF8AF18AFF8AF18AFF8AF18AFF5391539900000000000000000204
          02045FA55FAF8AF18AFF8AF18AFF8AF18AFF8AF18AFF8AF18AFF8AF18AFF8AF1
          8AFF8AF18AFF8AF18AFF8AF18AFF65B165BB0408040800000000000000000000
          0000020402044A814A8988ED88FB8AF18AFF8AF18AFF8AF18AFF8AF18AFF8AF1
          8AFF8AF18AFF89EF89FD518D5195040804080000000000000000000000000000
          00000000000000000000152415264B834B8B70C470CF82E482F182E482F172C7
          72D34E894E911728172A00000000000000000000000000000000}
      end
      item
        Image.Data = {
          36040000424D3604000000000000360000002800000010000000100000000100
          2000000000000004000000000000000000000000000000000000000000000000
          00000000000000000000151524264C4C858D7070C4CF8282E4F18484E6F37272
          C7D34E4E899118182A2C00000000000000000000000000000000000000000000
          0000020204044B4B838B8888EDFB8A8AF1FF8A8AF1FF8A8AF1FF8A8AF1FF8A8A
          F1FF8A8AF1FF8989EFFD52528F97040408080000000000000000000000000202
          04045F5FA5AF8A8AF1FF8A8AF1FF8A8AF1FF8A8AF1FF8A8AF1FF8A8AF1FF8A8A
          F1FF8A8AF1FF8A8AF1FF8A8AF1FF6666B3BD0404080800000000000000004A4A
          81898A8AF1FF8A8AF1FF8A8AF1FF8A8AF1FF8A8AF1FF8A8AF1FF8A8AF1FF8A8A
          F1FF8A8AF1FF8A8AF1FF8A8AF1FF8A8AF1FF5353919900000000121220228888
          EDFB8A8AF1FF8A8AF1FF8A8AF1FF8A8AF1FF8A8AF1FF8A8AF1FF8A8AF1FF8A8A
          F1FF8A8AF1FF8A8AF1FF8A8AF1FF8A8AF1FF8989EFFD1A1A2D30494980878A8A
          F1FF8A8AF1FF8A8AF1FF8A8AF1FF8A8AF1FF8A8AF1FF8A8AF1FF8A8AF1FF8A8A
          F1FF8A8AF1FF8A8AF1FF8A8AF1FF8A8AF1FF8A8AF1FF52528F976D6DBEC98A8A
          F1FF8A8AF1FF8A8AF1FF8A8AF1FF8A8AF1FF8A8AF1FF8A8AF1FF8A8AF1FF8A8A
          F1FF8A8AF1FF8A8AF1FF8A8AF1FF8A8AF1FF8A8AF1FF7575CDD97E7EDCE98A8A
          F1FF8A8AF1FF8A8AF1FF8A8AF1FF8A8AF1FF8A8AF1FF8A8AF1FF8A8AF1FF8A8A
          F1FF8A8AF1FF8A8AF1FF8A8AF1FF8A8AF1FF8A8AF1FF8585E8F57E7EDCE98A8A
          F1FF8A8AF1FF8A8AF1FF8A8AF1FF8A8AF1FF8A8AF1FF8A8AF1FF8A8AF1FF8A8A
          F1FF8A8AF1FF8A8AF1FF8A8AF1FF8A8AF1FF8A8AF1FF8585E8F56C6CBCC78A8A
          F1FF8A8AF1FF8A8AF1FF8A8AF1FF8A8AF1FF8A8AF1FF8A8AF1FF8A8AF1FF8A8A
          F1FF8A8AF1FF8A8AF1FF8A8AF1FF8A8AF1FF8A8AF1FF7575CDD9494980878A8A
          F1FF8A8AF1FF8A8AF1FF8A8AF1FF8A8AF1FF8A8AF1FF8A8AF1FF8A8AF1FF8A8A
          F1FF8A8AF1FF8A8AF1FF8A8AF1FF8A8AF1FF8A8AF1FF52528F97131322248888
          EDFB8A8AF1FF8A8AF1FF8A8AF1FF8A8AF1FF8A8AF1FF8A8AF1FF8A8AF1FF8A8A
          F1FF8A8AF1FF8A8AF1FF8A8AF1FF8A8AF1FF8989EFFD19192B2E000000004949
          80878A8AF1FF8A8AF1FF8A8AF1FF8A8AF1FF8A8AF1FF8A8AF1FF8A8AF1FF8A8A
          F1FF8A8AF1FF8A8AF1FF8A8AF1FF8A8AF1FF5353919900000000000000000202
          04045F5FA5AF8A8AF1FF8A8AF1FF8A8AF1FF8A8AF1FF8A8AF1FF8A8AF1FF8A8A
          F1FF8A8AF1FF8A8AF1FF8A8AF1FF6565B1BB0404080800000000000000000000
          0000020204044A4A81898888EDFB8A8AF1FF8A8AF1FF8A8AF1FF8A8AF1FF8A8A
          F1FF8A8AF1FF8989EFFD51518D95040408080000000000000000000000000000
          00000000000000000000151524264B4B838B7070C4CF8282E4F18282E4F17272
          C7D34E4E89911717282A00000000000000000000000000000000}
      end>
  end
  object cxGridImg: TcxImageList [9]
    DrawingStyle = dsTransparent
    FormatVersion = 1
    DesignInfo = -522992
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
    Left = 313
    Top = 55
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
    Left = 1096
  end
  inherited ACBrEnterTab1: TACBrEnterTab
    Left = 1048
    Top = 65534
  end
  inherited cxHintStyleController1: TcxHintStyleController
    Left = 552
  end
end
