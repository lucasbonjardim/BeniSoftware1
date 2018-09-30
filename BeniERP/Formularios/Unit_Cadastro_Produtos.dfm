inherited Form_Cadastro_Produtos: TForm_Cadastro_Produtos
  Caption = 'Cadastro de Produtos'
  ClientHeight = 622
  ClientWidth = 1337
  ExplicitWidth = 1353
  ExplicitHeight = 661
  PixelsPerInch = 96
  TextHeight = 13
  inherited Shape1: TShape
    Width = 1337
    ExplicitWidth = 1170
  end
  inherited ToolBar1: TToolBar
    Width = 1337
    ExplicitWidth = 1337
  end
  inherited cxPageControl1: TcxPageControl
    Top = 84
    Width = 1337
    Height = 538
    ExplicitLeft = 0
    ExplicitTop = 84
    ExplicitWidth = 1337
    ExplicitHeight = 538
    ClientRectBottom = 534
    ClientRectRight = 1333
    inherited tbPesquisa: TcxTabSheet
      ExplicitWidth = 1329
      ExplicitHeight = 510
      inherited Panel1: TPanel
        Width = 1329
        ExplicitWidth = 1329
        inherited lblPesquisa: TcxLabel
          Style.IsFontAssigned = True
          AnchorX = 34
          AnchorY = 21
        end
        inherited Panel2: TPanel
          inherited edtMask: TMaskEdit
            Text = ''
            Visible = True
          end
        end
        inherited cxButton1: TcxButton
          OnClick = cxButton1Click
        end
        inherited rgOptionGrid: TRadioGroup
          Width = 339
          Items.Strings = (
            'Todos'
            'Ativos'
            'Inativos')
          ExplicitWidth = 339
        end
      end
      object cxVisualiza: TcxGrid
        AlignWithMargins = True
        Left = 3
        Top = 44
        Width = 1323
        Height = 463
        Align = alClient
        TabOrder = 1
        LookAndFeel.Kind = lfStandard
        LookAndFeel.NativeStyle = False
        LookAndFeel.SkinName = 'Metropolis'
        RootLevelOptions.DetailFrameColor = clNone
        object cxVisualizaDBTableView1: TcxGridDBTableView
          OnDblClick = cxVisualizaDBTableView1DblClick
          Navigator.Buttons.CustomButtons = <>
          DataController.DataSource = dsPrincipal
          DataController.Summary.DefaultGroupSummaryItems = <>
          DataController.Summary.FooterSummaryItems = <>
          DataController.Summary.SummaryGroups = <>
          OptionsCustomize.ColumnHiding = True
          OptionsCustomize.ColumnsQuickCustomization = True
          OptionsData.CancelOnExit = False
          OptionsData.Deleting = False
          OptionsData.DeletingConfirmation = False
          OptionsData.Editing = False
          OptionsData.Inserting = False
          object cxVisualizaDBTableView1STATUS: TcxGridDBColumn
            Caption = 'Status'
            DataBinding.FieldName = 'STATUS'
            Options.Moving = False
            VisibleForCustomization = False
            Width = 50
          end
          object cxVisualizaDBTableView1COD_PRO: TcxGridDBColumn
            Caption = 'C'#243'd'
            DataBinding.FieldName = 'COD_PRO'
          end
          object cxVisualizaDBTableView1CODIGO_BARRA_PRO: TcxGridDBColumn
            Caption = 'C'#243'd. de Barras'
            DataBinding.FieldName = 'CODIGO_BARRA_PRO'
          end
          object cxVisualizaDBTableView1NOME_PRO: TcxGridDBColumn
            Caption = 'Nome do Produto'
            DataBinding.FieldName = 'NOME_PRO'
            Width = 350
          end
          object cxVisualizaDBTableView1CODIGO_UNIDADE_SAIDA: TcxGridDBColumn
            Caption = 'Un. Saida'
            DataBinding.FieldName = 'UNID_SAI'
          end
          object cxVisualizaDBTableView1CODIGO_UNIDADE_ENTRADA: TcxGridDBColumn
            Caption = 'Un. Ent.'
            DataBinding.FieldName = 'UNID_ENT'
          end
          object cxVisualizaDBTableView1VALOR_PRO: TcxGridDBColumn
            Caption = 'Valor a V'#237'sta'
            DataBinding.FieldName = 'VALOR_PRO'
          end
          object cxVisualizaDBTableView1PRECO_PRAZO_PRO: TcxGridDBColumn
            Caption = 'Valor a Prazo'
            DataBinding.FieldName = 'PRECO_PRAZO_PRO'
          end
          object cxVisualizaDBTableView1PROMOCAO_PRO: TcxGridDBColumn
            Caption = 'Valor Promo'#231#227'o'
            DataBinding.FieldName = 'PROMOCAO_PRO'
          end
          object cxVisualizaDBTableView1ESTOQUE: TcxGridDBColumn
            Caption = 'Estoque'
            DataBinding.FieldName = 'ESTOQUE'
          end
          object cxVisualizaDBTableView1DESC_CUPOM: TcxGridDBColumn
            Caption = 'Descri'#231#227'o do Cupom'
            DataBinding.FieldName = 'DESC_CUPOM'
          end
          object cxVisualizaDBTableView1REFERENCIA_PRO: TcxGridDBColumn
            Caption = 'Refer'#234'ncia Interna'
            DataBinding.FieldName = 'REFERENCIA_PRO'
          end
          object cxVisualizaDBTableView1CODIGO_TIPO: TcxGridDBColumn
            Caption = 'Tipo Produto'
            DataBinding.FieldName = 'CODIGO_TIPO'
            Visible = False
            VisibleForCustomization = False
          end
          object cxVisualizaDBTableView1NOME_TIPO: TcxGridDBColumn
            Caption = 'Nome Tipo Produto'
            DataBinding.FieldName = 'NOME_TIPO'
          end
          object cxVisualizaDBTableView1TIPO_PRODUCAO: TcxGridDBColumn
            Caption = 'Tipo Produ'#231#227'o'
            DataBinding.FieldName = 'TIPO_PRODUCAO'
          end
          object cxVisualizaDBTableView1COD_SEC: TcxGridDBColumn
            Caption = 'Se'#231#227'o'
            DataBinding.FieldName = 'COD_SEC'
          end
          object cxVisualizaDBTableView1NOME_SEC: TcxGridDBColumn
            Caption = 'Nome Se'#231#227'o'
            DataBinding.FieldName = 'NOME_SEC'
            VisibleForEditForm = bFalse
          end
          object cxVisualizaDBTableView1COD_GRUPO: TcxGridDBColumn
            Caption = 'Grupo'
            DataBinding.FieldName = 'COD_GRUPO'
          end
          object cxVisualizaDBTableView1NOME_GRUPO: TcxGridDBColumn
            Caption = 'Nome Grupo'
            DataBinding.FieldName = 'NOME_GRUPO'
            VisibleForEditForm = bFalse
          end
          object cxVisualizaDBTableView1SUB_GRUPO: TcxGridDBColumn
            Caption = 'Subgrupo'
            DataBinding.FieldName = 'SUB_GRUPO'
          end
          object cxVisualizaDBTableView1NOME_SUBGRUPO: TcxGridDBColumn
            Caption = 'Nome Subgrupo'
            DataBinding.FieldName = 'NOME_SUBGRUPO'
            VisibleForEditForm = bFalse
          end
          object cxVisualizaDBTableView1COD_LAB: TcxGridDBColumn
            Caption = 'Fabricante'
            DataBinding.FieldName = 'COD_LAB'
          end
          object cxVisualizaDBTableView1NOME_LAB: TcxGridDBColumn
            DataBinding.FieldName = 'NOME_LAB'
            VisibleForEditForm = bFalse
          end
          object cxVisualizaDBTableView1CONTROLA_ESTOQUE_PRO: TcxGridDBColumn
            Caption = 'Controla Estoque'
            DataBinding.FieldName = 'CONTROLA_ESTOQUE_PRO'
          end
          object cxVisualizaDBTableView1COMISSAO_PRO: TcxGridDBColumn
            Caption = 'Comiss'#227'o Produto'
            DataBinding.FieldName = 'COMISSAO_PRO'
          end
          object cxVisualizaDBTableView1QUANT_UNIDADE_ENTRADA: TcxGridDBColumn
            Caption = 'Qt. Un. Ent'
            DataBinding.FieldName = 'QUANT_UNIDADE_ENTRADA'
            Width = 70
          end
          object cxVisualizaDBTableView1ESTOQUE_MINIMO_PRO: TcxGridDBColumn
            Caption = 'Estoque Min.'
            DataBinding.FieldName = 'ESTOQUE_MINIMO_PRO'
            Width = 70
          end
          object cxVisualizaDBTableView1ATIVO_PRO: TcxGridDBColumn
            Caption = 'Produto Ativo'
            DataBinding.FieldName = 'ATIVO_PRO'
          end
          object cxVisualizaDBTableView1MARGEM_LUCRO_PRO: TcxGridDBColumn
            Caption = 'Margem de Lucro'
            DataBinding.FieldName = 'MARGEM_LUCRO_PRO'
          end
          object cxVisualizaDBTableView1LOCALIZACAO_PRO: TcxGridDBColumn
            Caption = 'Localizacao do Produto'
            DataBinding.FieldName = 'LOCALIZACAO_PRO'
          end
          object cxVisualizaDBTableView1PRODUTO_PESADO_PRO: TcxGridDBColumn
            Caption = 'Produto Pesado'
            DataBinding.FieldName = 'PRODUTO_PESADO_PRO'
          end
          object cxVisualizaDBTableView1COD_SETOR: TcxGridDBColumn
            Caption = 'Setor de Balan'#231'a'
            DataBinding.FieldName = 'COD_SETOR'
          end
          object cxVisualizaDBTableView1NOME_SETOR_BAL: TcxGridDBColumn
            Caption = 'Nome Setor de Balan'#231'a'
            DataBinding.FieldName = 'NOME_SETOR_BAL'
            VisibleForEditForm = bFalse
          end
          object cxVisualizaDBTableView1TECLA_ATALHO_PRO: TcxGridDBColumn
            Caption = 'Tecla de Atalho'
            DataBinding.FieldName = 'TECLA_ATALHO_PRO'
          end
          object cxVisualizaDBTableView1INDICE_RECEITA_PRO: TcxGridDBColumn
            Caption = 'Receita'
            DataBinding.FieldName = 'INDICE_RECEITA_PRO'
          end
          object cxVisualizaDBTableView1DIAS_VALIDADE_PRO: TcxGridDBColumn
            Caption = 'Dias de Validade'
            DataBinding.FieldName = 'DIAS_VALIDADE_PRO'
          end
          object cxVisualizaDBTableView1COMPLEMENTO_PRO: TcxGridDBColumn
            Caption = 'Complemento no Produto'
            DataBinding.FieldName = 'COMPLEMENTO_PRO'
          end
          object cxVisualizaDBTableView1SAIR_TABELA_PRECO: TcxGridDBColumn
            Caption = 'Mostra Tabela pre'#231'o'
            DataBinding.FieldName = 'SAIR_TABELA_PRECO'
          end
          object cxVisualizaDBTableView1COD_NCM: TcxGridDBColumn
            Caption = 'C'#243'digo NCM'
            DataBinding.FieldName = 'COD_NCM'
          end
          object cxVisualizaDBTableView1COD_PRODUTO_ESTOQUE: TcxGridDBColumn
            Caption = 'Usa estoque Produto'
            DataBinding.FieldName = 'COD_PRODUTO_ESTOQUE'
          end
          object cxVisualizaDBTableView1NOME_PRO_ESTOQUE: TcxGridDBColumn
            Caption = 'Nome Produto Usando Estoque'
            DataBinding.FieldName = 'NOME_PRO_ESTOQUE'
            VisibleForEditForm = bFalse
          end
          object cxVisualizaDBTableView1PRECO_PROGRAMADO: TcxGridDBColumn
            Caption = 'Valor Programado'
            DataBinding.FieldName = 'PRECO_PROGRAMADO'
          end
          object cxVisualizaDBTableView1PRECO_CUSTO: TcxGridDBColumn
            Caption = 'Pre'#231'o de Custo'
            DataBinding.FieldName = 'PRECO_CUSTO'
          end
          object cxVisualizaDBTableView1PRECO_PROGRAMADO_PRAZO: TcxGridDBColumn
            Caption = 'Pre'#231'o Programado'
            DataBinding.FieldName = 'PRECO_PROGRAMADO_PRAZO'
          end
          object cxVisualizaDBTableView1DATA_VALIDADE: TcxGridDBColumn
            Caption = 'Validade'
            DataBinding.FieldName = 'DATA_VALIDADE'
          end
          object cxVisualizaDBTableView1CODIGO_SETOR_ESTOQUE: TcxGridDBColumn
            Caption = 'Setor Estoque'
            DataBinding.FieldName = 'CODIGO_SETOR_ESTOQUE'
          end
          object cxVisualizaDBTableView1NOME_SETOR_ESTOQUE: TcxGridDBColumn
            Caption = 'Nome Setor do Estoque'
            DataBinding.FieldName = 'NOME_SETOR_ESTOQUE'
            VisibleForEditForm = bFalse
          end
          object cxVisualizaDBTableView1TAMANHO: TcxGridDBColumn
            Caption = 'Tamanho'
            DataBinding.FieldName = 'TAMANHO'
          end
          object cxVisualizaDBTableView1COR: TcxGridDBColumn
            Caption = 'Cor'
            DataBinding.FieldName = 'COR'
          end
          object cxVisualizaDBTableView1OBS: TcxGridDBColumn
            Caption = 'Observa'#231#245'es'
            DataBinding.FieldName = 'OBS'
          end
          object cxVisualizaDBTableView1ULTIMA_ALTERACAO: TcxGridDBColumn
            Caption = 'Ultima Altera'#231#227'o'
            DataBinding.FieldName = 'ULTIMA_ALTERACAO'
          end
          object cxVisualizaDBTableView1VALOR_ATACADO: TcxGridDBColumn
            Caption = 'Valor Atacado'
            DataBinding.FieldName = 'VALOR_ATACADO'
          end
          object cxVisualizaDBTableView1ALERTA_COPA: TcxGridDBColumn
            Caption = 'Alerta Copa'
            DataBinding.FieldName = 'ALERTA_COPA'
          end
          object cxVisualizaDBTableView1ALERTA_COZINHA: TcxGridDBColumn
            Caption = 'Alerta Cozinha'
            DataBinding.FieldName = 'ALERTA_COZINHA'
          end
          object cxVisualizaDBTableView1ANDROID_VISUALIZA: TcxGridDBColumn
            Caption = 'Visualiza Mobile'
            DataBinding.FieldName = 'ANDROID_VISUALIZA'
          end
          object cxVisualizaDBTableView1TEMPO_PREPARO: TcxGridDBColumn
            Caption = 'Tempo de Preparo'
            DataBinding.FieldName = 'TEMPO_PREPARO'
          end
          object cxVisualizaDBTableView1NAO_PERMITE_FRAC: TcxGridDBColumn
            Caption = 'Vend. Frac.'
            DataBinding.FieldName = 'NAO_PERMITE_FRAC'
          end
          object cxVisualizaDBTableView1SABORES: TcxGridDBColumn
            Caption = 'Sabores'
            DataBinding.FieldName = 'SABORES'
          end
          object cxVisualizaDBTableView1UNID_ENT: TcxGridDBColumn
            DataBinding.FieldName = 'UNID_ENT'
            Visible = False
            VisibleForCustomization = False
            VisibleForEditForm = bFalse
          end
          object cxVisualizaDBTableView1UNID_SAI: TcxGridDBColumn
            DataBinding.FieldName = 'UNID_SAI'
            Visible = False
            VisibleForCustomization = False
            VisibleForEditForm = bFalse
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
    end
    inherited tbCadastro: TcxTabSheet
      ExplicitWidth = 1329
      ExplicitHeight = 510
      object cxPaginas2: TcxPageControl
        Left = 0
        Top = 0
        Width = 1329
        Height = 510
        Align = alClient
        TabOrder = 0
        Properties.ActivePage = cxDadosProduto
        Properties.CustomButtons.Buttons = <>
        ClientRectBottom = 506
        ClientRectLeft = 4
        ClientRectRight = 1325
        ClientRectTop = 24
        object cxDadosProduto: TcxTabSheet
          Caption = 'Dados do produto'
          ImageIndex = 0
          ExplicitLeft = -124
          ExplicitTop = 96
          object pnlLateral1: TPanel
            Left = 864
            Top = 0
            Width = 457
            Height = 482
            Align = alRight
            BevelOuter = bvNone
            TabOrder = 1
            object grpAtivoCont: TGroupBox
              AlignWithMargins = True
              Left = 3
              Top = 3
              Width = 451
              Height = 140
              Align = alTop
              Caption = ' Op'#231#245'es do Produto '
              TabOrder = 0
              ExplicitWidth = 198
              object dbchkATIVO_PRO: TDBCheckBox
                AlignWithMargins = True
                Left = 5
                Top = 18
                Width = 441
                Height = 17
                Align = alTop
                Caption = 'Ativo'
                DataField = 'ATIVO_PRO'
                DataSource = dsPrincipal
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clWindowText
                Font.Height = -12
                Font.Name = 'Segoe UI'
                Font.Style = []
                ParentFont = False
                TabOrder = 0
                ValueChecked = 'S'
                ValueUnchecked = 'N'
                ExplicitWidth = 188
              end
              object dbchkCOMPLEMENTO_PRO: TDBCheckBox
                AlignWithMargins = True
                Left = 5
                Top = 41
                Width = 441
                Height = 17
                Align = alTop
                Caption = 'Complemento na Descri'#231#227'o'
                DataField = 'COMPLEMENTO_PRO'
                DataSource = dsPrincipal
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clWindowText
                Font.Height = -12
                Font.Name = 'Segoe UI'
                Font.Style = []
                ParentFont = False
                TabOrder = 1
                ValueChecked = 'S'
                ValueUnchecked = 'N'
                ExplicitWidth = 188
              end
              object dbchkCONTROLA_ESTOQUE_PRO: TDBCheckBox
                AlignWithMargins = True
                Left = 5
                Top = 64
                Width = 441
                Height = 17
                Align = alTop
                Caption = 'Controla Estoque'
                DataField = 'CONTROLA_ESTOQUE_PRO'
                DataSource = dsPrincipal
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clWindowText
                Font.Height = -12
                Font.Name = 'Segoe UI'
                Font.Style = []
                ParentFont = False
                TabOrder = 2
                ValueChecked = 'S'
                ValueUnchecked = 'N'
                ExplicitWidth = 188
              end
              object dbchkSAIR_TABELA_PRECO: TDBCheckBox
                AlignWithMargins = True
                Left = 5
                Top = 87
                Width = 441
                Height = 17
                Align = alTop
                Caption = 'Sair na tabela de Pre'#231'o'
                DataField = 'SAIR_TABELA_PRECO'
                DataSource = dsPrincipal
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clWindowText
                Font.Height = -12
                Font.Name = 'Segoe UI'
                Font.Style = []
                ParentFont = False
                TabOrder = 3
                ValueChecked = 'S'
                ValueUnchecked = 'N'
                ExplicitWidth = 188
              end
              object DBCheckBox1: TDBCheckBox
                AlignWithMargins = True
                Left = 5
                Top = 110
                Width = 441
                Height = 17
                Align = alTop
                Caption = 'Visualiza Mobile'
                DataField = 'ANDROID_VISUALIZA'
                DataSource = dsPrincipal
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clWindowText
                Font.Height = -12
                Font.Name = 'Segoe UI'
                Font.Style = []
                ParentFont = False
                TabOrder = 4
                ValueChecked = 'S'
                ValueUnchecked = 'N'
                ExplicitWidth = 188
              end
            end
            object Panel11: TPanel
              Left = 0
              Top = 146
              Width = 457
              Height = 47
              Align = alTop
              BevelOuter = bvNone
              Color = clWhite
              ParentBackground = False
              TabOrder = 1
              ExplicitWidth = 204
              object cxLabel25: TcxLabel
                Left = 3
                Top = 0
                Caption = 'Data de Validade :'
                Transparent = True
              end
              object cxDBDATA_VALIDADE: TcxDBDateEdit
                Left = 3
                Top = 19
                DataBinding.DataField = 'DATA_VALIDADE'
                DataBinding.DataSource = dsPrincipal
                TabOrder = 1
                Width = 121
              end
            end
          end
          object pnlCentral1: TPanel
            Left = 0
            Top = 0
            Width = 849
            Height = 482
            Align = alLeft
            BevelOuter = bvNone
            TabOrder = 0
            object Panel3: TPanel
              Left = 0
              Top = 0
              Width = 849
              Height = 45
              Align = alTop
              BevelOuter = bvNone
              Color = clWhite
              ParentBackground = False
              TabOrder = 0
              object cxLabel1: TcxLabel
                Left = 3
                Top = -1
                Caption = 'C'#243'digo :'
                Transparent = True
              end
              object dbedtCOD_PRO: TDBEdit
                Left = 5
                Top = 19
                Width = 121
                Height = 23
                TabStop = False
                CharCase = ecUpperCase
                DataField = 'COD_PRO'
                DataSource = dsPrincipal
                Font.Charset = DEFAULT_CHARSET
                Font.Color = 16744448
                Font.Height = -12
                Font.Name = 'Segoe UI'
                Font.Style = [fsBold]
                ParentFont = False
                ReadOnly = True
                TabOrder = 1
              end
              object cxLabel3: TcxLabel
                Left = 134
                Top = 0
                Caption = 'C'#243'digo de Barras :'
                Transparent = True
              end
              object dbedtCODIGO_BARRA_PRO: TDBEdit
                Left = 134
                Top = 16
                Width = 121
                Height = 21
                CharCase = ecUpperCase
                DataField = 'CODIGO_BARRA_PRO'
                DataSource = dsPrincipal
                TabOrder = 3
              end
              object cxLabel4: TcxLabel
                Left = 261
                Top = 0
                Caption = 'Tipo produto :'
                Transparent = True
              end
              object cxDBLTipo: TcxDBLookupComboBox
                Left = 264
                Top = 19
                DataBinding.DataField = 'CODIGO_TIPO'
                DataBinding.DataSource = dsPrincipal
                Properties.DropDownAutoSize = True
                Properties.GridMode = True
                Properties.KeyFieldNames = 'CODIGO'
                Properties.ListColumns = <
                  item
                    Caption = 'C'#243'digo'
                    FieldName = 'CODIGO'
                  end
                  item
                    Caption = 'Descri'#231#227'o'
                    FieldName = 'DESCRICAO'
                  end>
                Properties.ListFieldIndex = 1
                TabOrder = 5
                Width = 145
              end
              object dbrgrpTIPO_PRODUCAO: TDBRadioGroup
                Left = 415
                Top = 3
                Width = 154
                Height = 39
                Caption = ' Tipo Produ'#231#227'o '
                Columns = 2
                DataField = 'TIPO_PRODUCAO'
                DataSource = dsPrincipal
                Items.Strings = (
                  'Terceiro'
                  'Pr'#243'pria')
                TabOrder = 6
                Values.Strings = (
                  'T'
                  'P')
              end
            end
            object Panel4: TPanel
              Left = 0
              Top = 90
              Width = 849
              Height = 45
              Align = alTop
              BevelOuter = bvNone
              Color = clWhite
              ParentBackground = False
              TabOrder = 2
              DesignSize = (
                849
                45)
              object cxLabel2: TcxLabel
                Left = 3
                Top = -2
                Caption = 'Descri'#231#227'o :'
                Transparent = True
              end
              object dbedtNOME_PRO: TDBEdit
                Left = 5
                Top = 18
                Width = 838
                Height = 21
                Anchors = [akLeft, akTop, akRight]
                CharCase = ecUpperCase
                DataField = 'NOME_PRO'
                DataSource = dsPrincipal
                TabOrder = 1
              end
            end
            object Panel5: TPanel
              Left = 0
              Top = 135
              Width = 849
              Height = 45
              Align = alTop
              BevelOuter = bvNone
              Color = clWhite
              ParentBackground = False
              TabOrder = 3
              DesignSize = (
                849
                45)
              object cxLabel5: TcxLabel
                Left = 3
                Top = -2
                Caption = 'Descri'#231#227'o do Cupom :'
                Transparent = True
              end
              object dbedtDESC_CUPOM: TDBEdit
                Left = 5
                Top = 18
                Width = 838
                Height = 21
                Anchors = [akLeft, akTop, akRight]
                CharCase = ecUpperCase
                DataField = 'DESC_CUPOM'
                DataSource = dsPrincipal
                TabOrder = 1
              end
            end
            object Panel6: TPanel
              Left = 0
              Top = 45
              Width = 849
              Height = 45
              Align = alTop
              BevelOuter = bvNone
              Color = clWhite
              ParentBackground = False
              TabOrder = 1
              object dbtxtEX: TDBText
                Left = 474
                Top = 20
                Width = 35
                Height = 17
                DataField = 'NCM_EX'
                DataSource = dsPrincipal
              end
              object cxLabel6: TcxLabel
                Left = 3
                Top = -2
                Caption = 'Est. Minimo:'
                Transparent = True
              end
              object dbedtESTOQUE_MINIMO_PRO: TDBEdit
                Left = 5
                Top = 18
                Width = 69
                Height = 21
                CharCase = ecUpperCase
                DataField = 'ESTOQUE_MINIMO_PRO'
                DataSource = dsPrincipal
                TabOrder = 1
              end
              object cxLabel7: TcxLabel
                Left = 80
                Top = -2
                Caption = 'Localiza'#231#227'o :'
                Transparent = True
              end
              object dbedtLOCALIZACAO_PRO: TDBEdit
                Left = 80
                Top = 18
                Width = 153
                Height = 21
                CharCase = ecUpperCase
                DataField = 'LOCALIZACAO_PRO'
                DataSource = dsPrincipal
                TabOrder = 3
              end
              object cxLabel8: TcxLabel
                Left = 239
                Top = -3
                Caption = 'Refer'#234'ncia Interna :'
                Transparent = True
              end
              object dbedtREFERENCIA_PRO: TDBEdit
                Left = 239
                Top = 18
                Width = 120
                Height = 21
                CharCase = ecUpperCase
                DataField = 'REFERENCIA_PRO'
                DataSource = dsPrincipal
                TabOrder = 5
              end
              object cxLabel9: TcxLabel
                Left = 366
                Top = -1
                Caption = 'NCM :'
                Transparent = True
              end
              object cxDBNCM: TcxDBExtLookupComboBox
                Left = 366
                Top = 18
                DataBinding.DataField = 'COD_NCM'
                DataBinding.DataSource = dsPrincipal
                Properties.DropDownListStyle = lsEditList
                Properties.DropDownRows = 15
                Properties.DropDownSizeable = True
                Properties.DropDownWidth = 600
                TabOrder = 7
                Width = 105
              end
              object cxLabel32: TcxLabel
                Left = 470
                Top = 0
                Caption = 'EX.:'
                Transparent = True
              end
              object cxLabel33: TcxLabel
                Left = 525
                Top = -1
                Caption = 'CEST :'
                Transparent = True
              end
              object cxDBExtCEST: TcxDBExtLookupComboBox
                Left = 525
                Top = 18
                DataBinding.DataField = 'CEST'
                DataBinding.DataSource = dsPrincipal
                Properties.DropDownListStyle = lsEditList
                Properties.DropDownRows = 15
                Properties.DropDownSizeable = True
                Properties.DropDownWidth = 600
                TabOrder = 10
                Width = 105
              end
            end
            object Panel7: TPanel
              Left = 0
              Top = 180
              Width = 849
              Height = 45
              Align = alTop
              BevelOuter = bvNone
              Color = clWhite
              ParentBackground = False
              TabOrder = 4
              object cxLabel10: TcxLabel
                Left = 387
                Top = -3
                Caption = 'Tamanho : '
                Transparent = True
              end
              object dbedtTAMANHO: TDBEdit
                Left = 389
                Top = 17
                Width = 127
                Height = 21
                CharCase = ecUpperCase
                DataField = 'TAMANHO'
                DataSource = dsPrincipal
                TabOrder = 3
              end
              object dbedtCOR: TDBEdit
                Left = 525
                Top = 17
                Width = 135
                Height = 21
                CharCase = ecUpperCase
                DataField = 'COR'
                DataSource = dsPrincipal
                TabOrder = 4
              end
              object cxLabel11: TcxLabel
                Left = 525
                Top = -3
                Caption = 'Cor :'
                Transparent = True
              end
              object cxDBCODIGO_UNIDADE_SAIDA: TcxDBLookupComboBox
                Left = 5
                Top = 17
                DataBinding.DataField = 'CODIGO_UNIDADE_SAIDA'
                DataBinding.DataSource = dsPrincipal
                Properties.DropDownAutoSize = True
                Properties.GridMode = True
                Properties.KeyFieldNames = 'CODIGO'
                Properties.ListColumns = <
                  item
                    Caption = 'C'#243'digo'
                    FieldName = 'CODIGO'
                  end
                  item
                    Caption = 'Unidade de Medida'
                    FieldName = 'DESCRICAO'
                  end>
                Properties.ListFieldIndex = 1
                TabOrder = 1
                Width = 176
              end
              object cxLabel12: TcxLabel
                Left = 2
                Top = -3
                Caption = 'Un. Medida Saidas :'
                Transparent = True
              end
              object cxDBCODIGO_UNIDADE_ENTRADA: TcxDBLookupComboBox
                Left = 189
                Top = 17
                DataBinding.DataField = 'CODIGO_UNIDADE_ENTRADA'
                DataBinding.DataSource = dsPrincipal
                Properties.DropDownAutoSize = True
                Properties.GridMode = True
                Properties.KeyFieldNames = 'CODIGO'
                Properties.ListColumns = <
                  item
                    Caption = 'C'#243'digo'
                    FieldName = 'CODIGO'
                  end
                  item
                    Caption = 'Unidade de Medida'
                    FieldName = 'DESCRICAO'
                  end>
                Properties.ListFieldIndex = 1
                TabOrder = 2
                Width = 176
              end
              object cxLabel13: TcxLabel
                Left = 189
                Top = -3
                Caption = 'Un. Medida Entradas :'
                Transparent = True
              end
            end
            object Panel8: TPanel
              Left = 0
              Top = 225
              Width = 849
              Height = 45
              Align = alTop
              BevelOuter = bvNone
              Color = clWhite
              ParentBackground = False
              TabOrder = 5
              object cxLabel14: TcxLabel
                Left = 3
                Top = -2
                Caption = 'Pre'#231'o a Vista'
                Transparent = True
              end
              object dbedtVALOR_PRO: TDBEdit
                Left = 5
                Top = 18
                Width = 119
                Height = 21
                CharCase = ecUpperCase
                DataField = 'VALOR_PRO'
                DataSource = dsPrincipal
                TabOrder = 1
              end
              object cxLabel15: TcxLabel
                Left = 131
                Top = -2
                Caption = 'Pre'#231'o a Prazo :'
                Transparent = True
              end
              object dbedtPRECO_PRAZO_PRO: TDBEdit
                Left = 133
                Top = 18
                Width = 119
                Height = 21
                CharCase = ecUpperCase
                DataField = 'PRECO_PRAZO_PRO'
                DataSource = dsPrincipal
                TabOrder = 3
              end
              object cxLabel16: TcxLabel
                Left = 261
                Top = -2
                Caption = 'Pre'#231'o Promo'#231#227'o :'
                Transparent = True
              end
              object dbedtPROMOCAO_PRO: TDBEdit
                Left = 261
                Top = 18
                Width = 119
                Height = 21
                CharCase = ecUpperCase
                DataField = 'PROMOCAO_PRO'
                DataSource = dsPrincipal
                TabOrder = 5
              end
              object cxLabel18: TcxLabel
                Left = 388
                Top = -2
                Caption = 'Margem de Lucro :'
                Transparent = True
              end
              object dbedtMARGEM_LUCRO_PRO: TDBEdit
                Left = 388
                Top = 18
                Width = 104
                Height = 21
                CharCase = ecUpperCase
                DataField = 'MARGEM_LUCRO_PRO'
                DataSource = dsPrincipal
                TabOrder = 7
              end
              object cxLabel19: TcxLabel
                Left = 499
                Top = -2
                Caption = 'Quant. Ent.:'
                Transparent = True
              end
              object dbedtQUANT_UNIDADE_ENTRADA: TDBEdit
                Left = 499
                Top = 18
                Width = 70
                Height = 21
                CharCase = ecUpperCase
                DataField = 'QUANT_UNIDADE_ENTRADA'
                DataSource = dsPrincipal
                TabOrder = 9
              end
              object cxLabel20: TcxLabel
                Left = 575
                Top = -2
                Caption = 'Comiss'#227'o :'
                Transparent = True
              end
              object dbedtCOMISSAO_PRO: TDBEdit
                Left = 575
                Top = 18
                Width = 85
                Height = 21
                CharCase = ecUpperCase
                DataField = 'COMISSAO_PRO'
                DataSource = dsPrincipal
                TabOrder = 11
              end
            end
            object Panel9: TPanel
              Left = 0
              Top = 270
              Width = 849
              Height = 45
              Align = alTop
              BevelOuter = bvNone
              Color = clWhite
              ParentBackground = False
              TabOrder = 6
              object cxLabel17: TcxLabel
                Left = 5
                Top = 0
                Caption = 'Fabricante :'
                Transparent = True
              end
              object cxDBCOD_LAB: TcxDBLookupComboBox
                Left = 5
                Top = 16
                DataBinding.DataField = 'COD_LAB'
                DataBinding.DataSource = dsPrincipal
                Properties.DropDownAutoSize = True
                Properties.GridMode = True
                Properties.KeyFieldNames = 'COD_LAB'
                Properties.ListColumns = <
                  item
                    Caption = 'C'#243'digo'
                    FieldName = 'COD_LAB'
                  end
                  item
                    Caption = 'Fabricante'
                    FieldName = 'NOME_LAB'
                  end>
                Properties.ListFieldIndex = 1
                TabOrder = 1
                Width = 228
              end
              object cxLabel21: TcxLabel
                Left = 297
                Top = 0
                Caption = 'Setor do Estoque :'
                Transparent = True
              end
              object cxDBCODIGO_SETOR_ESTOQUE: TcxDBLookupComboBox
                Left = 298
                Top = 16
                DataBinding.DataField = 'CODIGO_SETOR_ESTOQUE'
                DataBinding.DataSource = dsPrincipal
                Properties.DropDownAutoSize = True
                Properties.GridMode = True
                Properties.KeyFieldNames = 'CODIGO'
                Properties.ListColumns = <
                  item
                    Caption = 'C'#243'digo'
                    FieldName = 'CODIGO'
                  end
                  item
                    Caption = 'Descri'#231#227'o Setor'
                    FieldName = 'DESCRICAO'
                  end>
                Properties.ListFieldIndex = 1
                TabOrder = 3
                Width = 281
              end
            end
            object Panel10: TPanel
              Left = 0
              Top = 315
              Width = 849
              Height = 45
              Align = alTop
              BevelOuter = bvNone
              Color = clWhite
              ParentBackground = False
              TabOrder = 7
              object cxLabel22: TcxLabel
                Left = 5
                Top = 0
                Caption = 'Se'#231#227'o :'
                Transparent = True
              end
              object cxDBLookupComboBox1: TcxDBLookupComboBox
                Left = 5
                Top = 18
                DataBinding.DataField = 'COD_SEC'
                DataBinding.DataSource = dsPrincipal
                Properties.DropDownAutoSize = True
                Properties.GridMode = True
                Properties.KeyFieldNames = 'COD_SEC'
                Properties.ListColumns = <
                  item
                    Caption = 'C'#243'digo'
                    FieldName = 'COD_SEC'
                  end
                  item
                    Caption = 'Se'#231#227'o'
                    FieldName = 'NOME_SEC'
                  end>
                Properties.ListFieldIndex = 1
                Properties.ListOptions.SyncMode = True
                TabOrder = 1
                Width = 156
              end
              object cxLabel23: TcxLabel
                Left = 225
                Top = 0
                Caption = 'Grupo :'
                Transparent = True
              end
              object cxDBLookupComboBox2: TcxDBLookupComboBox
                Left = 225
                Top = 18
                DataBinding.DataField = 'COD_GRUPO'
                DataBinding.DataSource = dsPrincipal
                Properties.DropDownAutoSize = True
                Properties.GridMode = True
                Properties.KeyFieldNames = 'COD_GRUPO'
                Properties.ListColumns = <
                  item
                    Caption = 'C'#243'digo'
                    FieldName = 'COD_GRUPO'
                  end
                  item
                    Caption = 'Grupo'
                    FieldName = 'DESCRICAO'
                  end>
                Properties.ListFieldIndex = 1
                Properties.ListOptions.SyncMode = True
                TabOrder = 3
                Width = 215
              end
              object cxDBLookupComboBox3: TcxDBLookupComboBox
                Left = 446
                Top = 18
                DataBinding.DataField = 'SUB_GRUPO'
                DataBinding.DataSource = dsPrincipal
                Properties.DropDownAutoSize = True
                Properties.GridMode = True
                Properties.KeyFieldNames = 'COD_SUBGRUPO'
                Properties.ListColumns = <
                  item
                    Caption = 'C'#243'digo'
                    FieldName = 'COD_SUBGRUPO'
                  end
                  item
                    Caption = 'Subgrupo'
                    FieldName = 'DESCRICAO'
                  end>
                Properties.ListFieldIndex = 1
                Properties.ListOptions.SyncMode = True
                TabOrder = 4
                Width = 214
              end
              object cxLabel24: TcxLabel
                Left = 452
                Top = 0
                Caption = 'Subgrupo :'
                Transparent = True
              end
            end
            object Panel20: TPanel
              Left = 0
              Top = 360
              Width = 849
              Height = 45
              Align = alTop
              BevelOuter = bvNone
              Color = clWhite
              ParentBackground = False
              TabOrder = 8
              object cxLabel31: TcxLabel
                Left = 3
                Top = -2
                Caption = 'Pre'#231'o de Custo :'
                Transparent = True
              end
              object dbedtPRECO_CUSTO: TDBEdit
                Left = 5
                Top = 18
                Width = 119
                Height = 21
                CharCase = ecUpperCase
                DataField = 'PRECO_CUSTO'
                DataSource = dsPrincipal
                TabOrder = 1
              end
              object dbCodigo: TDBEdit
                Left = 144
                Top = 18
                Width = 174
                Height = 21
                CharCase = ecUpperCase
                DataField = 'CODIGO_SERVICO'
                DataSource = dsPrincipal
                TabOrder = 2
              end
              object lbCodigo: TcxLabel
                Left = 142
                Top = 0
                Caption = 'C'#243'digo :'
                Transparent = True
              end
              object dbServico: TDBEdit
                Left = 337
                Top = 18
                Width = 119
                Height = 21
                CharCase = ecUpperCase
                DataField = 'SERVICO_CODIGO'
                DataSource = dsPrincipal
                TabOrder = 4
              end
              object lbServico: TcxLabel
                Left = 338
                Top = 0
                Caption = 'Servi'#231'o :'
                Transparent = True
              end
            end
          end
        end
        object cxBalanca: TcxTabSheet
          Caption = 'Balan'#231'a'
          ImageIndex = 1
          object pnl1: TPanel
            Left = 0
            Top = 0
            Width = 1321
            Height = 47
            Align = alTop
            BevelOuter = bvNone
            Color = clWhite
            ParentBackground = False
            TabOrder = 0
            object dbrgrpPRODUTO_PESADO_PRO: TDBRadioGroup
              AlignWithMargins = True
              Left = 3
              Top = 3
              Width = 286
              Height = 41
              Align = alLeft
              Caption = ' Produto Pes'#225'vel '
              Columns = 3
              DataField = 'PRODUTO_PESADO_PRO'
              DataSource = dsPrincipal
              Items.Strings = (
                'N'#227'o Pes'#225'vel'
                'Por Peso'
                'Por Unidade')
              TabOrder = 0
              Values.Strings = (
                'N'
                'P'
                'U')
            end
            object pnl2: TPanel
              Left = 292
              Top = 0
              Width = 316
              Height = 47
              Align = alLeft
              BevelOuter = bvNone
              TabOrder = 1
              object cxLabel26: TcxLabel
                Left = 5
                Top = 0
                Caption = 'Setor da Balan'#231'a :'
                Transparent = True
              end
              object cxDBCOD_SETOR: TcxDBLookupComboBox
                Left = 5
                Top = 20
                DataBinding.DataField = 'COD_SETOR'
                DataBinding.DataSource = dsPrincipal
                Properties.DropDownAutoSize = True
                Properties.GridMode = True
                Properties.KeyFieldNames = 'COD_SET'
                Properties.ListColumns = <
                  item
                    Caption = 'C'#243'digo'
                    FieldName = 'COD_SET'
                  end
                  item
                    Caption = 'Setor Balan'#231'a'
                    FieldName = 'NOME_SET'
                  end>
                Properties.ListFieldIndex = 1
                TabOrder = 1
                Width = 300
              end
            end
          end
          object Panel12: TPanel
            Left = 0
            Top = 47
            Width = 1321
            Height = 47
            Align = alTop
            BevelOuter = bvNone
            Color = clWhite
            ParentBackground = False
            TabOrder = 1
            object Panel13: TPanel
              Left = 133
              Top = 0
              Width = 185
              Height = 47
              Align = alLeft
              BevelOuter = bvNone
              TabOrder = 1
              object cxLabel27: TcxLabel
                Left = 5
                Top = 0
                Caption = 'Receita :'
                Transparent = True
              end
              object cxDBINDICE_RECEITA_PRO: TcxDBLookupComboBox
                Left = 5
                Top = 20
                DataBinding.DataField = 'INDICE_RECEITA_PRO'
                DataBinding.DataSource = dsPrincipal
                Properties.DropDownAutoSize = True
                Properties.GridMode = True
                Properties.KeyFieldNames = 'COD_RECEITA'
                Properties.ListColumns = <
                  item
                    Caption = 'C'#243'digo'
                    FieldName = 'COD_RECEITA'
                  end
                  item
                    Caption = 'Ingredientes'
                    FieldName = 'INGREDIENTES'
                  end>
                TabOrder = 1
                Width = 174
              end
            end
            object Panel14: TPanel
              Left = 0
              Top = 0
              Width = 133
              Height = 47
              Align = alLeft
              BevelOuter = bvNone
              TabOrder = 0
              object cxLabel28: TcxLabel
                Left = 5
                Top = 0
                Caption = 'Dias de Validade :'
                Transparent = True
              end
              object dbedtDIAS_VALIDADE_PRO: TDBEdit
                Left = 5
                Top = 20
                Width = 121
                Height = 21
                CharCase = ecUpperCase
                DataField = 'DIAS_VALIDADE_PRO'
                DataSource = dsPrincipal
                TabOrder = 1
              end
            end
            object Panel15: TPanel
              Left = 318
              Top = 0
              Width = 133
              Height = 47
              Align = alLeft
              BevelOuter = bvNone
              TabOrder = 2
              object cxLabel29: TcxLabel
                Left = 5
                Top = 0
                Caption = 'Tecla de Atalho :'
                Transparent = True
              end
              object dbedtTECLA_ATALHO_PRO: TDBEdit
                Left = 6
                Top = 25
                Width = 121
                Height = 21
                CharCase = ecUpperCase
                DataField = 'TECLA_ATALHO_PRO'
                DataSource = dsPrincipal
                TabOrder = 1
              end
            end
          end
        end
        object cxObs: TcxTabSheet
          Caption = 'Observa'#231#245'es'
          ImageIndex = 2
          object dbmmoOBS: TDBMemo
            Left = 0
            Top = 0
            Width = 1321
            Height = 482
            Align = alClient
            BorderStyle = bsNone
            DataField = 'OBS'
            DataSource = dsPrincipal
            TabOrder = 0
          end
        end
        object cxFoto: TcxTabSheet
          Caption = 'Foto'
          ImageIndex = 3
          object GroupBox1: TGroupBox
            Left = 0
            Top = 0
            Width = 1321
            Height = 209
            Align = alTop
            Caption = 'Foto'
            TabOrder = 0
            object Panel16: TPanel
              Left = 8
              Top = 16
              Width = 225
              Height = 185
              BevelOuter = bvNone
              BevelWidth = 4
              TabOrder = 0
              object Image: TImage
                Left = 0
                Top = 0
                Width = 225
                Height = 185
                Align = alClient
                Stretch = True
                ExplicitLeft = 4
                ExplicitTop = 4
                ExplicitWidth = 217
                ExplicitHeight = 177
              end
            end
            object btnNovaFoto: TcxButton
              Left = 239
              Top = 16
              Width = 170
              Height = 25
              Caption = 'Nova Foto'
              TabOrder = 1
            end
            object btnLimparFoto: TcxButton
              Left = 239
              Top = 47
              Width = 170
              Height = 25
              Caption = 'Limpar'
              TabOrder = 2
            end
          end
        end
        object cxCompra: TcxTabSheet
          Caption = 'Compras / Venda'
          ImageIndex = 4
          object Panel17: TPanel
            Left = 0
            Top = 217
            Width = 1321
            Height = 265
            Align = alClient
            BevelOuter = bvNone
            Color = clWhite
            ParentBackground = False
            TabOrder = 0
            object shp2: TShape
              AlignWithMargins = True
              Left = 0
              Top = 29
              Width = 1321
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
              Width = 1321
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
              Width = 1315
              Height = 224
              Align = alClient
              TabOrder = 0
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
              AnchorX = 661
              AnchorY = 18
            end
          end
          object Panel18: TPanel
            Left = 0
            Top = 0
            Width = 1321
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
          object cxFornecedores: TcxGrid
            Left = 0
            Top = 0
            Width = 1321
            Height = 441
            Align = alClient
            TabOrder = 0
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
            Top = 441
            Width = 1321
            Height = 41
            Align = alBottom
            BevelOuter = bvNone
            Color = clWhite
            ParentBackground = False
            TabOrder = 1
          end
        end
        object tabComposicao: TcxTabSheet
          Caption = 'Composi'#231#227'o'
          ImageIndex = 6
          object cxComposicao: TcxGrid
            Left = 0
            Top = 0
            Width = 1321
            Height = 441
            Align = alClient
            TabOrder = 0
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
            Top = 441
            Width = 1321
            Height = 41
            Align = alBottom
            BevelOuter = bvNone
            Color = clWhite
            ParentBackground = False
            TabOrder = 1
          end
        end
        object cxTabSheet1: TcxTabSheet
          Caption = 'Cupom Fiscal'
          ImageIndex = 7
          object pnl4: TPanel
            Left = 0
            Top = 0
            Width = 1321
            Height = 46
            Align = alTop
            BevelOuter = bvNone
            TabOrder = 0
            object cxLabel34: TcxLabel
              Left = 9
              Top = 0
              Caption = 'ICMS CF Est.'
              Transparent = True
            end
            object cxDBLookupComboBox4: TcxDBLookupComboBox
              Left = 9
              Top = 18
              DataBinding.DataField = 'ICMS_CF_EST'
              DataBinding.DataSource = dsPrincipal
              Properties.DropDownAutoSize = True
              Properties.GridMode = True
              Properties.KeyFieldNames = 'COD_GRP'
              Properties.ListColumns = <
                item
                  FieldName = 'COD_GRP'
                end
                item
                  FieldName = 'NOME_GRP'
                end>
              Properties.ListFieldIndex = 1
              TabOrder = 1
              Width = 296
            end
            object cxLabel36: TcxLabel
              Left = 311
              Top = 0
              Caption = 'CST Est.:'
              Transparent = True
            end
            object dbedtCST_CF_EST: TDBEdit
              Left = 311
              Top = 18
              Width = 121
              Height = 21
              DataField = 'CST_CF_EST'
              DataSource = dsPrincipal
              TabOrder = 3
            end
          end
          object Panel21: TPanel
            Left = 0
            Top = 46
            Width = 1321
            Height = 41
            Align = alTop
            BevelOuter = bvNone
            TabOrder = 1
            object cxLabel35: TcxLabel
              Left = 9
              Top = 0
              Caption = 'ICMS CF Fora Est.'
              Transparent = True
            end
            object cxDBLookupComboBox5: TcxDBLookupComboBox
              Left = 9
              Top = 18
              DataBinding.DataField = 'ICMS_CF_FORA'
              DataBinding.DataSource = dsPrincipal
              Properties.DropDownAutoSize = True
              Properties.GridMode = True
              Properties.KeyFieldNames = 'COD_GRP'
              Properties.ListColumns = <
                item
                  FieldName = 'COD_GRP'
                end
                item
                  FieldName = 'NOME_GRP'
                end>
              Properties.ListFieldIndex = 1
              TabOrder = 1
              Width = 296
            end
            object cxLabel37: TcxLabel
              Left = 311
              Top = 0
              Caption = 'CST Est.:'
              Transparent = True
            end
            object dbedtCST_CF_FORA: TDBEdit
              Left = 311
              Top = 18
              Width = 121
              Height = 21
              DataField = 'CST_CF_FORA'
              DataSource = dsPrincipal
              TabOrder = 3
            end
          end
        end
        object cxTabSheet2: TcxTabSheet
          Caption = 'Medicamento'
          ImageIndex = 8
          object Label8: TLabel
            Left = 16
            Top = 16
            Width = 97
            Height = 13
            Caption = 'Classe Teurapeutica'
          end
          object Label9: TLabel
            Left = 16
            Top = 64
            Width = 106
            Height = 13
            Caption = 'Registro Medicamento'
            FocusControl = cxDBTextEdit2
          end
          object Label10: TLabel
            Left = 16
            Top = 112
            Width = 61
            Height = 13
            Caption = 'N'#250'mero Lote'
            FocusControl = cxDBTextEdit3
          end
          object Label11: TLabel
            Left = 16
            Top = 160
            Width = 105
            Height = 13
            Caption = 'Unidade Medicamento'
          end
          object Label12: TLabel
            Left = 358
            Top = 16
            Width = 75
            Height = 13
            Caption = 'Uso Prolongado'
          end
          object cxDBTextEdit2: TcxDBTextEdit
            Left = 16
            Top = 80
            DataBinding.DataField = 'REGISTRO_MEDICAMENTO'
            DataBinding.DataSource = dsPrincipal
            TabOrder = 0
            Width = 121
          end
          object cxDBTextEdit3: TcxDBTextEdit
            Left = 16
            Top = 128
            DataBinding.DataField = 'NUMERO_LOTE'
            DataBinding.DataSource = dsPrincipal
            TabOrder = 1
            Width = 121
          end
        end
      end
    end
  end
  inherited pnl_top: TPanel
    Width = 1337
    Height = 23
    ExplicitWidth = 1337
    ExplicitHeight = 23
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
    Left = 806
    Top = 3
  end
  inherited cxLookAndFeelController1: TcxLookAndFeelController
    Left = 1112
    Top = 8
  end
  inherited BarraMenu: TcxImageList
    FormatVersion = 1
    DesignInfo = 197360
  end
  object FdqProdutos: TFDQuery
    Connection = DtmBcoErp.FDBcoERP
    SQL.Strings = (
      'SELECT P.*, '
      'LA.nome_lab,'
      'SEC.nome_sec,'
      'SEC_G.descricao NOME_GRUPO,'
      'SEC_S.descricao NOME_SUBGRUPO,'
      'UNENT.descricao UNID_ENT,'
      'UNSAI.descricao UNID_SAI,'
      'SE.descricao NOME_SETOR_ESTOQUE,'
      'PE.nome_pro NOME_PRO_ESTOQUE,'
      'SB.nome_set NOME_SETOR_BAL,'
      'coalesce( EST.estoque, 0 ) estoque,'
      'TP.descricao NOME_TIPO'
      'FROM  PRODUTO P'
      'LEFT OUTER JOIN laboratorio LA'
      'ON ( LA.cod_lab = P.cod_lab )'
      'LEFT OUTER JOIN secao SEC'
      'ON ( SEC.cod_sec=P.cod_sec )'
      'LEFT OUTER JOIN secao_grupo SEC_G'
      'ON ( SEC_G.cod_sec=P.cod_sec AND SEC_G.cod_grupo=P.cod_grupo )'
      'LEFT OUTER JOIN secao_grupo_subgrupo SEC_S'
      
        'ON ( SEC_S.cod_sec=P.cod_sec AND SEC_S.cod_grupo=P.cod_grupo AND' +
        ' SEC_S.cod_subgrupo=P.sub_grupo )'
      'LEFT OUTER JOIN unidade_medida UNENT'
      'ON( UNENT.codigo=P.codigo_unidade_entrada )'
      'LEFT OUTER JOIN unidade_medida UNSAI'
      'ON( UNSAI.codigo=P.codigo_unidade_saida )'
      'LEFT OUTER JOIN setores_estoque SE'
      'ON( SE.codigo=P.codigo_setor_estoque )'
      'LEFT OUTER JOIN PRODUTO PE'
      'ON( PE.cod_pro=P.cod_pro )'
      'LEFT OUTER JOIN setor_balanca SB'
      'on( SB.cod_set=P.cod_setor )'
      'LEFT OUTER JOIN ESTOQUE EST'
      'ON( EST.cod_pro=P.cod_pro AND EST.cod_emp=:COD_EMP )'
      'LEFT outer JOIN TIPO_PRODUTO TP'
      'ON( TP.codigo=P.codigo_tipo )'
      '')
    Left = 867
    Top = 3
    ParamData = <
      item
        Name = 'COD_EMP'
        DataType = ftInteger
        ParamType = ptInput
        Value = Null
      end>
    object FdqProdutosCOD_PRO: TIntegerField
      FieldName = 'COD_PRO'
      Origin = 'COD_PRO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object FdqProdutosCOD_LAB: TIntegerField
      FieldName = 'COD_LAB'
      Origin = 'COD_LAB'
      Required = True
    end
    object FdqProdutosCOD_SEC: TIntegerField
      FieldName = 'COD_SEC'
      Origin = 'COD_SEC'
      Required = True
    end
    object FdqProdutosVALOR_PRO: TBCDField
      FieldName = 'VALOR_PRO'
      Origin = 'VALOR_PRO'
      Required = True
      Precision = 18
      Size = 2
    end
    object FdqProdutosPROMOCAO_PRO: TBCDField
      FieldName = 'PROMOCAO_PRO'
      Origin = 'PROMOCAO_PRO'
      Precision = 18
      Size = 2
    end
    object FdqProdutosCONTROLA_ESTOQUE_PRO: TStringField
      FieldName = 'CONTROLA_ESTOQUE_PRO'
      Origin = 'CONTROLA_ESTOQUE_PRO'
      Required = True
      FixedChar = True
      Size = 1
    end
    object FdqProdutosCOMISSAO_PRO: TBCDField
      FieldName = 'COMISSAO_PRO'
      Origin = 'COMISSAO_PRO'
      Precision = 18
      Size = 2
    end
    object FdqProdutosQUANT_UNIDADE_ENTRADA: TBCDField
      FieldName = 'QUANT_UNIDADE_ENTRADA'
      Origin = 'QUANT_UNIDADE_ENTRADA'
      Precision = 18
      Size = 2
    end
    object FdqProdutosESTOQUE_MINIMO_PRO: TBCDField
      FieldName = 'ESTOQUE_MINIMO_PRO'
      Origin = 'ESTOQUE_MINIMO_PRO'
      Precision = 18
      Size = 2
    end
    object FdqProdutosNOME_PRO: TStringField
      FieldName = 'NOME_PRO'
      Origin = 'NOME_PRO'
      Required = True
      Size = 80
    end
    object FdqProdutosDESC_CUPOM: TStringField
      FieldName = 'DESC_CUPOM'
      Origin = 'DESC_CUPOM'
      Required = True
      Size = 80
    end
    object FdqProdutosATIVO_PRO: TStringField
      FieldName = 'ATIVO_PRO'
      Origin = 'ATIVO_PRO'
      Required = True
      FixedChar = True
      Size = 1
    end
    object FdqProdutosMARGEM_LUCRO_PRO: TBCDField
      FieldName = 'MARGEM_LUCRO_PRO'
      Origin = 'MARGEM_LUCRO_PRO'
      Precision = 18
      Size = 2
    end
    object FdqProdutosLOCALIZACAO_PRO: TStringField
      FieldName = 'LOCALIZACAO_PRO'
      Origin = 'LOCALIZACAO_PRO'
    end
    object FdqProdutosPRODUTO_PESADO_PRO: TStringField
      FieldName = 'PRODUTO_PESADO_PRO'
      Origin = 'PRODUTO_PESADO_PRO'
      Required = True
      FixedChar = True
      Size = 1
    end
    object FdqProdutosCOD_SETOR: TIntegerField
      FieldName = 'COD_SETOR'
      Origin = 'COD_SETOR'
    end
    object FdqProdutosTECLA_ATALHO_PRO: TIntegerField
      FieldName = 'TECLA_ATALHO_PRO'
      Origin = 'TECLA_ATALHO_PRO'
    end
    object FdqProdutosINDICE_RECEITA_PRO: TIntegerField
      FieldName = 'INDICE_RECEITA_PRO'
      Origin = 'INDICE_RECEITA_PRO'
    end
    object FdqProdutosDIAS_VALIDADE_PRO: TIntegerField
      FieldName = 'DIAS_VALIDADE_PRO'
      Origin = 'DIAS_VALIDADE_PRO'
    end
    object FdqProdutosREFERENCIA_PRO: TStringField
      FieldName = 'REFERENCIA_PRO'
      Origin = 'REFERENCIA_PRO'
      Size = 30
    end
    object FdqProdutosCOMPLEMENTO_PRO: TStringField
      FieldName = 'COMPLEMENTO_PRO'
      Origin = 'COMPLEMENTO_PRO'
      Required = True
      FixedChar = True
      Size = 1
    end
    object FdqProdutosICMS_CONT_EST: TIntegerField
      FieldName = 'ICMS_CONT_EST'
      Origin = 'ICMS_CONT_EST'
    end
    object FdqProdutosICMS_CONT_FORA: TIntegerField
      FieldName = 'ICMS_CONT_FORA'
      Origin = 'ICMS_CONT_FORA'
    end
    object FdqProdutosICMS_CF_EST: TIntegerField
      FieldName = 'ICMS_CF_EST'
      Origin = 'ICMS_CF_EST'
    end
    object FdqProdutosICMS_CF_FORA: TIntegerField
      FieldName = 'ICMS_CF_FORA'
      Origin = 'ICMS_CF_FORA'
    end
    object FdqProdutosCST_CONT_EST: TStringField
      FieldName = 'CST_CONT_EST'
      Origin = 'CST_CONT_EST'
      FixedChar = True
      Size = 3
    end
    object FdqProdutosCST_CONT_FORA: TStringField
      FieldName = 'CST_CONT_FORA'
      Origin = 'CST_CONT_FORA'
      FixedChar = True
      Size = 3
    end
    object FdqProdutosCST_CF_EST: TStringField
      FieldName = 'CST_CF_EST'
      Origin = 'CST_CF_EST'
      FixedChar = True
      Size = 3
    end
    object FdqProdutosCST_CF_FORA: TStringField
      FieldName = 'CST_CF_FORA'
      Origin = 'CST_CF_FORA'
      FixedChar = True
      Size = 3
    end
    object FdqProdutosCAMINHO_FOTO_PRO: TStringField
      FieldName = 'CAMINHO_FOTO_PRO'
      Origin = 'CAMINHO_FOTO_PRO'
      Size = 150
    end
    object FdqProdutosSAIR_TABELA_PRECO: TStringField
      FieldName = 'SAIR_TABELA_PRECO'
      Origin = 'SAIR_TABELA_PRECO'
      FixedChar = True
      Size = 1
    end
    object FdqProdutosCFOP_VENDAS_CONT_EST: TIntegerField
      FieldName = 'CFOP_VENDAS_CONT_EST'
      Origin = 'CFOP_VENDAS_CONT_EST'
    end
    object FdqProdutosCFOP_VENDAS_CF_EST: TIntegerField
      FieldName = 'CFOP_VENDAS_CF_EST'
      Origin = 'CFOP_VENDAS_CF_EST'
    end
    object FdqProdutosCFOP_VENDAS_CONT_FORA: TIntegerField
      FieldName = 'CFOP_VENDAS_CONT_FORA'
      Origin = 'CFOP_VENDAS_CONT_FORA'
    end
    object FdqProdutosCFOP_VENDAS_CF_FORA: TIntegerField
      FieldName = 'CFOP_VENDAS_CF_FORA'
      Origin = 'CFOP_VENDAS_CF_FORA'
    end
    object FdqProdutosST_CONT_EST: TStringField
      FieldName = 'ST_CONT_EST'
      Origin = 'ST_CONT_EST'
      Required = True
      FixedChar = True
      Size = 1
    end
    object FdqProdutosVR_AGREG_CONT_EST: TBCDField
      FieldName = 'VR_AGREG_CONT_EST'
      Origin = 'VR_AGREG_CONT_EST'
      Precision = 18
      Size = 2
    end
    object FdqProdutosIPI_CONT_EST: TBCDField
      FieldName = 'IPI_CONT_EST'
      Origin = 'IPI_CONT_EST'
      Precision = 18
      Size = 2
    end
    object FdqProdutosIPI_CF_EST: TBCDField
      FieldName = 'IPI_CF_EST'
      Origin = 'IPI_CF_EST'
      Precision = 18
      Size = 2
    end
    object FdqProdutosIPI_CONT_FORA: TBCDField
      FieldName = 'IPI_CONT_FORA'
      Origin = 'IPI_CONT_FORA'
      Precision = 18
      Size = 2
    end
    object FdqProdutosIPI_CF_FORA: TBCDField
      FieldName = 'IPI_CF_FORA'
      Origin = 'IPI_CF_FORA'
      Precision = 18
      Size = 2
    end
    object FdqProdutosCOD_NCM: TStringField
      FieldName = 'COD_NCM'
      Origin = 'COD_NCM'
      Size = 8
    end
    object FdqProdutosCLASSIFICACAO_FISCAL: TStringField
      FieldName = 'CLASSIFICACAO_FISCAL'
      Origin = 'CLASSIFICACAO_FISCAL'
      FixedChar = True
      Size = 1
    end
    object FdqProdutosCODIGO_TIPO: TIntegerField
      FieldName = 'CODIGO_TIPO'
      Origin = 'CODIGO_TIPO'
      Required = True
    end
    object FdqProdutosCOD_PRODUTO_ESTOQUE: TIntegerField
      FieldName = 'COD_PRODUTO_ESTOQUE'
      Origin = 'COD_PRODUTO_ESTOQUE'
      Required = True
    end
    object FdqProdutosCOD_GRUPO: TIntegerField
      FieldName = 'COD_GRUPO'
      Origin = 'COD_GRUPO'
    end
    object FdqProdutosSUB_GRUPO: TIntegerField
      FieldName = 'SUB_GRUPO'
      Origin = 'SUB_GRUPO'
    end
    object FdqProdutosPRECO_PROGRAMADO: TBCDField
      FieldName = 'PRECO_PROGRAMADO'
      Origin = 'PRECO_PROGRAMADO'
      Precision = 18
      Size = 2
    end
    object FdqProdutosALIQUOTA_PIS: TBCDField
      FieldName = 'ALIQUOTA_PIS'
      Origin = 'ALIQUOTA_PIS'
      Precision = 18
      Size = 2
    end
    object FdqProdutosALIQUOTA_COFINS: TBCDField
      FieldName = 'ALIQUOTA_COFINS'
      Origin = 'ALIQUOTA_COFINS'
      Precision = 18
      Size = 2
    end
    object FdqProdutosALIQUOTA_IR: TBCDField
      FieldName = 'ALIQUOTA_IR'
      Origin = 'ALIQUOTA_IR'
      Precision = 18
      Size = 2
    end
    object FdqProdutosALIQUOTA_CSLL: TBCDField
      FieldName = 'ALIQUOTA_CSLL'
      Origin = 'ALIQUOTA_CSLL'
      Precision = 18
      Size = 2
    end
    object FdqProdutosALIQUOTA_OUTRAS: TBCDField
      FieldName = 'ALIQUOTA_OUTRAS'
      Origin = 'ALIQUOTA_OUTRAS'
      Precision = 18
      Size = 2
    end
    object FdqProdutosISENTO_PIS_COFINS_PRO: TStringField
      FieldName = 'ISENTO_PIS_COFINS_PRO'
      Origin = 'ISENTO_PIS_COFINS_PRO'
      Required = True
      FixedChar = True
      Size = 1
    end
    object FdqProdutosPRECO_CUSTO: TBCDField
      FieldName = 'PRECO_CUSTO'
      Origin = 'PRECO_CUSTO'
      Precision = 18
    end
    object FdqProdutosCREDITO_ICMS: TBCDField
      FieldName = 'CREDITO_ICMS'
      Origin = 'CREDITO_ICMS'
      Precision = 18
    end
    object FdqProdutosPRECO_PRAZO_PRO: TBCDField
      FieldName = 'PRECO_PRAZO_PRO'
      Origin = 'PRECO_PRAZO_PRO'
      Required = True
      Precision = 18
      Size = 2
    end
    object FdqProdutosTIPO_PRODUCAO: TStringField
      FieldName = 'TIPO_PRODUCAO'
      Origin = 'TIPO_PRODUCAO'
      Required = True
      FixedChar = True
      Size = 1
    end
    object FdqProdutosCODIGO_BARRA_PRO: TStringField
      FieldName = 'CODIGO_BARRA_PRO'
      Origin = 'CODIGO_BARRA_PRO'
      Required = True
      Size = 14
    end
    object FdqProdutosCODIGO_UNIDADE_SAIDA: TIntegerField
      FieldName = 'CODIGO_UNIDADE_SAIDA'
      Origin = 'CODIGO_UNIDADE_SAIDA'
      Required = True
    end
    object FdqProdutosCODIGO_UNIDADE_ENTRADA: TIntegerField
      FieldName = 'CODIGO_UNIDADE_ENTRADA'
      Origin = 'CODIGO_UNIDADE_ENTRADA'
      Required = True
    end
    object FdqProdutosPRECO_PROGRAMADO_PRAZO: TBCDField
      FieldName = 'PRECO_PROGRAMADO_PRAZO'
      Origin = 'PRECO_PROGRAMADO_PRAZO'
      Precision = 18
      Size = 2
    end
    object FdqProdutosRED_CF_EST: TBCDField
      FieldName = 'RED_CF_EST'
      Origin = 'RED_CF_EST'
      Precision = 18
      Size = 2
    end
    object FdqProdutosRED_CF_FORA: TBCDField
      FieldName = 'RED_CF_FORA'
      Origin = 'RED_CF_FORA'
      Precision = 18
      Size = 2
    end
    object FdqProdutosRED_CONT_EST: TBCDField
      FieldName = 'RED_CONT_EST'
      Origin = 'RED_CONT_EST'
      Precision = 18
      Size = 2
    end
    object FdqProdutosRED_CONT_FORA: TBCDField
      FieldName = 'RED_CONT_FORA'
      Origin = 'RED_CONT_FORA'
      Precision = 18
      Size = 2
    end
    object FdqProdutosDATA_VALIDADE: TDateField
      FieldName = 'DATA_VALIDADE'
      Origin = 'DATA_VALIDADE'
    end
    object FdqProdutosCODIGO_SETOR_ESTOQUE: TIntegerField
      FieldName = 'CODIGO_SETOR_ESTOQUE'
      Origin = 'CODIGO_SETOR_ESTOQUE'
      Required = True
    end
    object FdqProdutosORIG: TIntegerField
      FieldName = 'ORIG'
      Origin = 'ORIG'
    end
    object FdqProdutosCSOSN: TStringField
      FieldName = 'CSOSN'
      Origin = 'CSOSN'
      Size = 3
    end
    object FdqProdutosIPI: TFloatField
      FieldName = 'IPI'
      Origin = 'IPI'
    end
    object FdqProdutosICMS: TFloatField
      FieldName = 'ICMS'
      Origin = 'ICMS'
    end
    object FdqProdutosRICMS: TFloatField
      FieldName = 'RICMS'
      Origin = 'RICMS'
    end
    object FdqProdutosIVA: TFloatField
      FieldName = 'IVA'
      Origin = 'IVA'
    end
    object FdqProdutosPIS: TFloatField
      FieldName = 'PIS'
      Origin = 'PIS'
    end
    object FdqProdutosCONFINS: TFloatField
      FieldName = 'CONFINS'
      Origin = 'CONFINS'
    end
    object FdqProdutosTAMANHO: TStringField
      FieldName = 'TAMANHO'
      Origin = 'TAMANHO'
      Size = 10
    end
    object FdqProdutosCOR: TStringField
      FieldName = 'COR'
      Origin = 'COR'
      Size = 40
    end
    object FdqProdutosOBS: TMemoField
      FieldName = 'OBS'
      Origin = 'OBS'
      BlobType = ftMemo
    end
    object FdqProdutosCST_PIS: TStringField
      FieldName = 'CST_PIS'
      Origin = 'CST_PIS'
      Size = 3
    end
    object FdqProdutosCST_COFINS: TStringField
      FieldName = 'CST_COFINS'
      Origin = 'CST_COFINS'
      Size = 3
    end
    object FdqProdutosCST_IPI: TStringField
      FieldName = 'CST_IPI'
      Origin = 'CST_IPI'
      Size = 3
    end
    object FdqProdutosULTIMA_ALTERACAO: TDateField
      FieldName = 'ULTIMA_ALTERACAO'
      Origin = 'ULTIMA_ALTERACAO'
    end
    object FdqProdutosVALOR_ATACADO: TBCDField
      FieldName = 'VALOR_ATACADO'
      Origin = 'VALOR_ATACADO'
      Precision = 18
      Size = 2
    end
    object FdqProdutosALIQ_IBPT_NAC: TBCDField
      FieldName = 'ALIQ_IBPT_NAC'
      Origin = 'ALIQ_IBPT_NAC'
      Precision = 18
      Size = 2
    end
    object FdqProdutosALIQ_IBPT_IMP: TBCDField
      FieldName = 'ALIQ_IBPT_IMP'
      Origin = 'ALIQ_IBPT_IMP'
      Precision = 18
      Size = 2
    end
    object FdqProdutosFATOR_CONVERSAO: TBCDField
      FieldName = 'FATOR_CONVERSAO'
      Origin = 'FATOR_CONVERSAO'
      Precision = 18
      Size = 3
    end
    object FdqProdutosALERTA_COPA: TStringField
      FieldName = 'ALERTA_COPA'
      Origin = 'ALERTA_COPA'
      FixedChar = True
      Size = 1
    end
    object FdqProdutosALERTA_COZINHA: TStringField
      FieldName = 'ALERTA_COZINHA'
      Origin = 'ALERTA_COZINHA'
      FixedChar = True
      Size = 1
    end
    object FdqProdutosANDROID_VISUALIZA: TStringField
      FieldName = 'ANDROID_VISUALIZA'
      Origin = 'ANDROID_VISUALIZA'
      FixedChar = True
      Size = 1
    end
    object FdqProdutosTEMPO_PREPARO: TTimeField
      FieldName = 'TEMPO_PREPARO'
      Origin = 'TEMPO_PREPARO'
    end
    object FdqProdutosNAO_PERMITE_FRAC: TIntegerField
      FieldName = 'NAO_PERMITE_FRAC'
      Origin = 'NAO_PERMITE_FRAC'
    end
    object FdqProdutosSABORES: TIntegerField
      FieldName = 'SABORES'
      Origin = 'SABORES'
    end
    object FdqProdutosCEST: TStringField
      FieldName = 'CEST'
      Origin = 'CEST'
      Size = 7
    end
    object FdqProdutosNCM_EX: TIntegerField
      FieldName = 'NCM_EX'
      Origin = 'NCM_EX'
    end
    object FdqProdutosCODIGO_SERVICO: TIntegerField
      FieldName = 'CODIGO_SERVICO'
      Origin = 'CODIGO_SERVICO'
    end
    object FdqProdutosSERVICO_CODIGO: TStringField
      FieldName = 'SERVICO_CODIGO'
      Origin = 'SERVICO_CODIGO'
      FixedChar = True
      Size = 8
    end
    object FdqProdutosCLASSE_TERAPEUTICA: TStringField
      FieldName = 'CLASSE_TERAPEUTICA'
      Origin = 'CLASSE_TERAPEUTICA'
      FixedChar = True
      Size = 1
    end
    object FdqProdutosREGISTRO_MEDICAMENTO: TStringField
      FieldName = 'REGISTRO_MEDICAMENTO'
      Origin = 'REGISTRO_MEDICAMENTO'
      FixedChar = True
      Size = 15
    end
    object FdqProdutosNUMERO_LOTE: TStringField
      FieldName = 'NUMERO_LOTE'
      Origin = 'NUMERO_LOTE'
      FixedChar = True
      Size = 15
    end
    object FdqProdutosUNIDADE_MEDICAMENTO: TStringField
      FieldName = 'UNIDADE_MEDICAMENTO'
      Origin = 'UNIDADE_MEDICAMENTO'
      FixedChar = True
      Size = 1
    end
    object FdqProdutosUSO_PROLONGADO: TStringField
      FieldName = 'USO_PROLONGADO'
      Origin = 'USO_PROLONGADO'
      FixedChar = True
      Size = 1
    end
  end
  object cxImgsGrid: TcxImageList
    DrawingStyle = dsTransparent
    FormatVersion = 1
    DesignInfo = 525496
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
  object cxGridImg: TcxImageList
    DrawingStyle = dsTransparent
    FormatVersion = 1
    DesignInfo = 1049848
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
  object FDQuxiliar: TFDQuery
    Connection = DtmBcoErp.FDBcoERP
    Left = 937
    Top = 7
  end
end
