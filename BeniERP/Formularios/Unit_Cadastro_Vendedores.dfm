inherited Form_Cadastro_Vendedores: TForm_Cadastro_Vendedores
  Caption = 'Cadastro de Vendedores'
  ClientHeight = 536
  ClientWidth = 1363
  ExplicitWidth = 1379
  ExplicitHeight = 575
  PixelsPerInch = 96
  TextHeight = 13
  inherited cxPageControl1: TcxPageControl
    Width = 1363
    Height = 435
    ExplicitWidth = 1363
    ExplicitHeight = 435
    ClientRectBottom = 430
    ClientRectRight = 1358
    inherited tbPesquisa: TcxTabSheet
      ExplicitTop = 26
      ExplicitWidth = 1354
      ExplicitHeight = 403
      inherited Panel1: TPanel
        Width = 1356
        ExplicitWidth = 1354
        inherited lblPesquisa: TcxLabel
          Style.IsFontAssigned = True
          AnchorX = 34
          AnchorY = 21
        end
      end
      inherited pnl_esq: TPanel
        Height = 364
        ExplicitHeight = 372
      end
      inherited pnl_dire: TPanel
        Left = 1307
        Height = 364
        ExplicitLeft = 1315
        ExplicitHeight = 372
      end
      object cxGrid1: TcxGrid
        Left = 49
        Top = 41
        Width = 1258
        Height = 364
        Align = alClient
        TabOrder = 3
        ExplicitLeft = 584
        ExplicitTop = 192
        ExplicitWidth = 250
        ExplicitHeight = 200
        object cxGrid1DBTableView1: TcxGridDBTableView
          Navigator.Buttons.CustomButtons = <>
          DataController.DataSource = dsPrincipal
          DataController.Summary.DefaultGroupSummaryItems = <>
          DataController.Summary.FooterSummaryItems = <>
          DataController.Summary.SummaryGroups = <>
          object cxGrid1DBTableView1COD_VEND: TcxGridDBColumn
            DataBinding.FieldName = 'COD_VEND'
          end
          object cxGrid1DBTableView1NOME_VEND: TcxGridDBColumn
            DataBinding.FieldName = 'NOME_VEND'
          end
          object cxGrid1DBTableView1ATIVO_VEND: TcxGridDBColumn
            DataBinding.FieldName = 'ATIVO_VEND'
            PropertiesClassName = 'TcxCheckBoxProperties'
            Properties.DisplayChecked = 'Sim'
            Properties.DisplayUnchecked = 'N'#227'o'
            Properties.ValueChecked = 'S'
            Properties.ValueGrayed = 'N'
            Width = 57
          end
          object cxGrid1DBTableView1COMISSAO_VEND: TcxGridDBColumn
            DataBinding.FieldName = 'COMISSAO_VEND'
          end
          object cxGrid1DBTableView1COD_REGIAO: TcxGridDBColumn
            DataBinding.FieldName = 'COD_REGIAO'
            Width = 100
          end
          object cxGrid1DBTableView1SENHA_VEND: TcxGridDBColumn
            DataBinding.FieldName = 'SENHA_VEND'
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
      ExplicitWidth = 1354
      ExplicitHeight = 403
      object GroupBox1: TGroupBox
        Left = 0
        Top = 0
        Width = 1356
        Height = 369
        Align = alTop
        Caption = 'Vendedores'
        TabOrder = 0
        ExplicitWidth = 1354
        object Label1: TLabel
          Left = 7
          Top = 16
          Width = 37
          Height = 13
          Caption = 'C'#243'digo:'
          FocusControl = cxDBSpinEdit1
        end
        object Label2: TLabel
          Left = 7
          Top = 56
          Width = 31
          Height = 13
          Caption = 'Nome:'
          FocusControl = cxDBTextEdit1
        end
        object Label3: TLabel
          Left = 7
          Top = 96
          Width = 29
          Height = 13
          Caption = 'Ativo:'
          FocusControl = cxDBTextEdit2
        end
        object Label4: TLabel
          Left = 7
          Top = 136
          Width = 49
          Height = 13
          Caption = 'Comiss'#227'o:'
          FocusControl = cxDBCurrencyEdit1
        end
        object Label5: TLabel
          Left = 7
          Top = 176
          Width = 73
          Height = 13
          Caption = 'C'#243'digo Regi'#227'o:'
          FocusControl = cxDBSpinEdit2
        end
        object Label6: TLabel
          Left = 7
          Top = 216
          Width = 34
          Height = 13
          Caption = 'Senha:'
          FocusControl = cxDBTextEdit3
        end
        object cxDBSpinEdit1: TcxDBSpinEdit
          Left = 7
          Top = 32
          DataBinding.DataField = 'COD_VEND'
          DataBinding.DataSource = dsPrincipal
          TabOrder = 0
          Width = 121
        end
        object cxDBTextEdit1: TcxDBTextEdit
          Left = 7
          Top = 72
          DataBinding.DataField = 'NOME_VEND'
          DataBinding.DataSource = dsPrincipal
          TabOrder = 1
          Width = 121
        end
        object cxDBTextEdit2: TcxDBTextEdit
          Left = 7
          Top = 112
          DataBinding.DataField = 'ATIVO_VEND'
          DataBinding.DataSource = dsPrincipal
          TabOrder = 2
          Width = 121
        end
        object cxDBCurrencyEdit1: TcxDBCurrencyEdit
          Left = 7
          Top = 152
          DataBinding.DataField = 'COMISSAO_VEND'
          DataBinding.DataSource = dsPrincipal
          TabOrder = 3
          Width = 121
        end
        object cxDBSpinEdit2: TcxDBSpinEdit
          Left = 7
          Top = 192
          DataBinding.DataField = 'COD_REGIAO'
          DataBinding.DataSource = dsPrincipal
          TabOrder = 4
          Width = 121
        end
        object cxDBTextEdit3: TcxDBTextEdit
          Left = 7
          Top = 232
          DataBinding.DataField = 'SENHA_VEND'
          DataBinding.DataSource = dsPrincipal
          TabOrder = 5
          Width = 121
        end
      end
    end
  end
  inherited pnl_top: TPanel
    Width = 1363
    ExplicitWidth = 1363
    inherited pbl_de_cima: TPanel
      Width = 1363
      ExplicitWidth = 1363
      inherited shape_cima: TShape
        Width = 1203
        ExplicitWidth = 1213
      end
      inherited pnl_info_direita: TPanel
        Left = 1081
        ExplicitLeft = 1081
        inherited lblregistros: TLabel
          Height = 23
        end
      end
    end
  end
  inherited pnl_baixo: TPanel
    Top = 524
    Width = 1363
    ExplicitTop = 524
    ExplicitWidth = 1363
  end
  inherited ToolBar1: TToolBar
    Width = 1357
    ExplicitWidth = 1357
  end
  inherited dsPrincipal: TDataSource
    DataSet = fdqVendedores
  end
  inherited BarraMenu: TcxImageList
    FormatVersion = 1
  end
  object fdqVendedores: TFDQuery
    Active = True
    Connection = DtmBcoErp.FDBcoERP
    SQL.Strings = (
      'select * from tb_vendedor')
    Left = 1019
    Top = 19
    object fdqVendedoresCOD_VEND: TIntegerField
      DisplayLabel = 'C'#243'digo:'
      FieldName = 'COD_VEND'
      Origin = 'COD_VEND'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object fdqVendedoresNOME_VEND: TStringField
      DisplayLabel = 'Nome:'
      FieldName = 'NOME_VEND'
      Origin = 'NOME_VEND'
      Required = True
      Size = 50
    end
    object fdqVendedoresATIVO_VEND: TStringField
      DisplayLabel = 'Ativo:'
      FieldName = 'ATIVO_VEND'
      Origin = 'ATIVO_VEND'
      Required = True
      FixedChar = True
      Size = 1
    end
    object fdqVendedoresCOMISSAO_VEND: TBCDField
      DisplayLabel = 'Comiss'#227'o:'
      FieldName = 'COMISSAO_VEND'
      Origin = 'COMISSAO_VEND'
      Precision = 18
      Size = 2
    end
    object fdqVendedoresCOD_REGIAO: TIntegerField
      DisplayLabel = 'C'#243'digo Regi'#227'o:'
      FieldName = 'COD_REGIAO'
      Origin = 'COD_REGIAO'
    end
    object fdqVendedoresSENHA_VEND: TStringField
      DisplayLabel = 'Senha:'
      FieldName = 'SENHA_VEND'
      Origin = 'SENHA_VEND'
      Size = 50
    end
  end
end
