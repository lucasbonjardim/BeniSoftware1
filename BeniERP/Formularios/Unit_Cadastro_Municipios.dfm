inherited Form_Cadastro_Municipios: TForm_Cadastro_Municipios
  Caption = 'Cadastro de Municipios'
  ClientHeight = 526
  ClientWidth = 1353
  ExplicitWidth = 1369
  ExplicitHeight = 565
  PixelsPerInch = 96
  TextHeight = 13
  inherited cxPageControl1: TcxPageControl
    Width = 1353
    Height = 425
    ExplicitWidth = 1353
    ExplicitHeight = 425
    ClientRectBottom = 420
    ClientRectRight = 1348
    inherited tbPesquisa: TcxTabSheet
      ExplicitTop = 26
      ExplicitWidth = 1344
      ExplicitHeight = 393
      inherited Panel1: TPanel
        Width = 1346
        ExplicitWidth = 1344
        inherited lblPesquisa: TcxLabel
          Style.IsFontAssigned = True
          AnchorX = 34
          AnchorY = 21
        end
      end
      inherited pnl_esq: TPanel
        Height = 354
        ExplicitHeight = 362
      end
      inherited pnl_dire: TPanel
        Left = 1297
        Height = 354
        ExplicitLeft = 1305
        ExplicitHeight = 362
      end
      object cxGrid1: TcxGrid
        Left = 49
        Top = 41
        Width = 1248
        Height = 354
        Align = alClient
        TabOrder = 3
        ExplicitLeft = 55
        ExplicitWidth = 1256
        ExplicitHeight = 362
        object cxGrid1DBTableView1: TcxGridDBTableView
          Navigator.Buttons.CustomButtons = <>
          DataController.DataSource = dsPrincipal
          DataController.Summary.DefaultGroupSummaryItems = <>
          DataController.Summary.FooterSummaryItems = <>
          DataController.Summary.SummaryGroups = <>
          object cxGrid1DBTableView1CODIGO_MUNICIPIO: TcxGridDBColumn
            DataBinding.FieldName = 'CODIGO_MUNICIPIO'
            Width = 130
          end
          object cxGrid1DBTableView1DESCRICAO: TcxGridDBColumn
            DataBinding.FieldName = 'DESCRICAO'
          end
          object cxGrid1DBTableView1UF: TcxGridDBColumn
            DataBinding.FieldName = 'UF'
            Width = 144
          end
        end
        object cxGrid1Level1: TcxGridLevel
          GridView = cxGrid1DBTableView1
        end
      end
    end
    inherited tbCadastro: TcxTabSheet
      ExplicitLeft = 3
      ExplicitTop = 26
      ExplicitWidth = 1344
      ExplicitHeight = 393
      object GroupBox1: TGroupBox
        Left = 0
        Top = 0
        Width = 1346
        Height = 241
        Align = alTop
        Caption = 'Cidades'
        TabOrder = 0
        ExplicitWidth = 1344
        object Label1: TLabel
          Left = 16
          Top = 16
          Width = 103
          Height = 13
          Caption = 'C'#211'DIGO MUNICIPIO:'
          FocusControl = cxDBSpinEdit1
        end
        object Label2: TLabel
          Left = 16
          Top = 56
          Width = 63
          Height = 13
          Caption = 'DESCRICAO:'
          FocusControl = cxDBTextEdit1
        end
        object Label3: TLabel
          Left = 16
          Top = 96
          Width = 17
          Height = 13
          Caption = 'UF:'
          FocusControl = cxDBTextEdit2
        end
        object cxDBSpinEdit1: TcxDBSpinEdit
          Left = 16
          Top = 32
          DataBinding.DataField = 'CODIGO_MUNICIPIO'
          DataBinding.DataSource = dsPrincipal
          TabOrder = 0
          Width = 121
        end
        object cxDBTextEdit1: TcxDBTextEdit
          Left = 16
          Top = 72
          DataBinding.DataField = 'DESCRICAO'
          DataBinding.DataSource = dsPrincipal
          TabOrder = 1
          Width = 221
        end
        object cxDBTextEdit2: TcxDBTextEdit
          Left = 16
          Top = 112
          DataBinding.DataField = 'UF'
          DataBinding.DataSource = dsPrincipal
          TabOrder = 2
          Width = 121
        end
      end
    end
  end
  inherited pnl_top: TPanel
    Width = 1353
    ExplicitWidth = 1353
    inherited pbl_de_cima: TPanel
      Width = 1353
      ExplicitWidth = 1353
      inherited shape_cima: TShape
        Width = 1193
        ExplicitWidth = 1213
      end
      inherited pnl_info_direita: TPanel
        Left = 1071
        ExplicitLeft = 1071
        inherited lblregistros: TLabel
          Height = 23
        end
      end
    end
  end
  inherited pnl_baixo: TPanel
    Top = 514
    Width = 1353
    ExplicitTop = 514
    ExplicitWidth = 1353
  end
  inherited ToolBar1: TToolBar
    Width = 1347
    ExplicitWidth = 1347
  end
  inherited dsPrincipal: TDataSource
    DataSet = fdqPrincipal
  end
  inherited BarraMenu: TcxImageList
    FormatVersion = 1
  end
  object fdqPrincipal: TFDQuery
    Connection = DtmBcoErp.FDBcoERP
    SQL.Strings = (
      'select * from tb_municipios')
    Left = 1083
    Top = 11
    object fdqPrincipalCODIGO_MUNICIPIO: TIntegerField
      DisplayLabel = 'C'#211'DIGO MUNICIPIO:'
      FieldName = 'CODIGO_MUNICIPIO'
      Origin = 'CODIGO_MUNICIPIO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object fdqPrincipalDESCRICAO: TStringField
      DisplayLabel = 'DESCRICAO:'
      FieldName = 'DESCRICAO'
      Origin = 'DESCRICAO'
      Required = True
      Size = 80
    end
    object fdqPrincipalUF: TStringField
      DisplayLabel = 'UF:'
      FieldName = 'UF'
      Origin = 'UF'
      FixedChar = True
      Size = 2
    end
  end
end
