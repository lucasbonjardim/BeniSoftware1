inherited frm_cadastro_ncm: Tfrm_cadastro_ncm
  Caption = 'Cadastro NCM'
  ClientHeight = 905
  ClientWidth = 1256
  ExplicitWidth = 1272
  ExplicitHeight = 944
  PixelsPerInch = 96
  TextHeight = 13
  inherited cxPageControl1: TcxPageControl
    Width = 1256
    Height = 789
    Properties.ActivePage = tbCadastro
    ExplicitWidth = 1256
    ExplicitHeight = 789
    ClientRectBottom = 787
    ClientRectRight = 1254
    inherited tbPesquisa: TcxTabSheet
      ExplicitLeft = 0
      ExplicitTop = 0
      ExplicitWidth = 1281
      ExplicitHeight = 745
      inherited Panel1: TPanel
        Width = 1262
        ExplicitWidth = 1281
        inherited lblPesquisa: TcxLabel
          Style.IsFontAssigned = True
          AnchorX = 34
          AnchorY = 21
        end
        inherited Panel2: TPanel
          inherited edtCurr: TcxCurrencyEdit
            ExplicitHeight = 21
          end
        end
      end
      inherited pnl_esq: TPanel
        Height = 701
        TabOrder = 3
      end
      inherited pnl_dire: TPanel
        Left = 1203
        Height = 701
      end
      object cxGrid1: TcxGrid
        Left = 49
        Top = 41
        Width = 1154
        Height = 701
        Align = alClient
        TabOrder = 1
        ExplicitLeft = 0
        ExplicitWidth = 1287
        ExplicitHeight = 746
        object cxGrid1DBTableView1: TcxGridDBTableView
          Navigator.Buttons.CustomButtons = <>
          DataController.DataSource = dsPrincipal
          DataController.Summary.DefaultGroupSummaryItems = <>
          DataController.Summary.FooterSummaryItems = <>
          DataController.Summary.SummaryGroups = <>
          object cxGrid1DBTableView1COD_EMP: TcxGridDBColumn
            DataBinding.FieldName = 'COD_EMP'
          end
          object cxGrid1DBTableView1NCM: TcxGridDBColumn
            DataBinding.FieldName = 'NCM'
          end
          object cxGrid1DBTableView1EX: TcxGridDBColumn
            DataBinding.FieldName = 'EX'
          end
          object cxGrid1DBTableView1TIPO: TcxGridDBColumn
            DataBinding.FieldName = 'TIPO'
          end
          object cxGrid1DBTableView1DESCRICAO: TcxGridDBColumn
            DataBinding.FieldName = 'DESCRICAO'
          end
          object cxGrid1DBTableView1ALI_NACIONAL_FEDERAL: TcxGridDBColumn
            DataBinding.FieldName = 'ALI_NACIONAL_FEDERAL'
          end
          object cxGrid1DBTableView1ALI_IMPORTADO_FEDERAL: TcxGridDBColumn
            DataBinding.FieldName = 'ALI_IMPORTADO_FEDERAL'
          end
          object cxGrid1DBTableView1ALI_ESTADUAL: TcxGridDBColumn
            DataBinding.FieldName = 'ALI_ESTADUAL'
          end
          object cxGrid1DBTableView1ALI_MUNICIPAL: TcxGridDBColumn
            DataBinding.FieldName = 'ALI_MUNICIPAL'
          end
          object cxGrid1DBTableView1VIGENCIA_DT_INI: TcxGridDBColumn
            DataBinding.FieldName = 'VIGENCIA_DT_INI'
          end
          object cxGrid1DBTableView1VIGENCIA_DT_FIM: TcxGridDBColumn
            DataBinding.FieldName = 'VIGENCIA_DT_FIM'
          end
          object cxGrid1DBTableView1CHAVE: TcxGridDBColumn
            DataBinding.FieldName = 'CHAVE'
          end
          object cxGrid1DBTableView1VERSAO: TcxGridDBColumn
            DataBinding.FieldName = 'VERSAO'
          end
          object cxGrid1DBTableView1FONTE_DADOS: TcxGridDBColumn
            DataBinding.FieldName = 'FONTE_DADOS'
          end
        end
        object cxGrid1Level1: TcxGridLevel
          GridView = cxGrid1DBTableView1
        end
      end
    end
    inherited tbCadastro: TcxTabSheet
      ExplicitWidth = 1252
      ExplicitHeight = 742
      inherited Shape3: TShape
        Top = 734
        Width = 1252
        ExplicitTop = 789
        ExplicitWidth = 1297
      end
      object GroupBox1: TGroupBox
        Left = 0
        Top = 0
        Width = 1252
        Height = 139
        Align = alTop
        Caption = 'Ncm'
        TabOrder = 0
        object Label1: TLabel
          Left = 13
          Top = 14
          Width = 45
          Height = 13
          Caption = 'Empresa:'
          FocusControl = cxDBSpinEdit1
        end
        object Label5: TLabel
          Left = 13
          Top = 95
          Width = 50
          Height = 13
          Caption = 'Descri'#231#227'o:'
          FocusControl = cxDBTextEdit1
        end
        object Label2: TLabel
          Left = 13
          Top = 56
          Width = 26
          Height = 13
          Caption = 'NCM:'
          FocusControl = cxDBSpinEdit2
        end
        object Label10: TLabel
          Left = 140
          Top = 14
          Width = 73
          Height = 13
          Caption = 'Vig'#234'ncia Inicial:'
          FocusControl = cxDBDateEdit1
        end
        object Label11: TLabel
          Left = 269
          Top = 14
          Width = 68
          Height = 13
          Caption = 'Vig'#234'ncia Final:'
          FocusControl = cxDBDateEdit2
        end
        object Label12: TLabel
          Left = 140
          Top = 56
          Width = 35
          Height = 13
          Caption = 'Chave:'
          FocusControl = cxDBTextEdit2
        end
        object Label4: TLabel
          Left = 269
          Top = 56
          Width = 24
          Height = 13
          Caption = 'Tipo:'
          FocusControl = cxDBSpinEdit4
        end
        object Label13: TLabel
          Left = 402
          Top = 14
          Width = 70
          Height = 13
          Caption = 'Vers'#227'o I.B.P.T'
          FocusControl = cxDBLabel2
        end
        object cxDBSpinEdit1: TcxDBSpinEdit
          Left = 13
          Top = 30
          DataBinding.DataField = 'COD_EMP'
          DataBinding.DataSource = dsPrincipal
          TabOrder = 0
          Width = 121
        end
        object cxDBTextEdit1: TcxDBTextEdit
          Left = 13
          Top = 110
          DataBinding.DataField = 'DESCRICAO'
          DataBinding.DataSource = dsPrincipal
          TabOrder = 1
          Width = 700
        end
        object cxDBSpinEdit2: TcxDBSpinEdit
          Left = 13
          Top = 70
          DataBinding.DataField = 'NCM'
          DataBinding.DataSource = dsPrincipal
          Style.Color = 12582911
          TabOrder = 2
          Width = 121
        end
        object cxDBDateEdit1: TcxDBDateEdit
          Left = 140
          Top = 30
          DataBinding.DataField = 'VIGENCIA_DT_INI'
          DataBinding.DataSource = dsPrincipal
          TabOrder = 3
          Width = 121
        end
        object cxDBDateEdit2: TcxDBDateEdit
          Left = 269
          Top = 30
          DataBinding.DataField = 'VIGENCIA_DT_FIM'
          DataBinding.DataSource = dsPrincipal
          TabOrder = 4
          Width = 121
        end
        object cxDBTextEdit2: TcxDBTextEdit
          Left = 140
          Top = 69
          DataBinding.DataField = 'CHAVE'
          DataBinding.DataSource = dsPrincipal
          TabOrder = 5
          Width = 121
        end
        object cxDBSpinEdit4: TcxDBSpinEdit
          Left = 269
          Top = 69
          DataBinding.DataField = 'TIPO'
          DataBinding.DataSource = dsPrincipal
          TabOrder = 6
          Width = 121
        end
        object cxDBLabel2: TcxDBLabel
          Left = 397
          Top = 30
          DataBinding.DataField = 'VERSAO'
          DataBinding.DataSource = dsPrincipal
          ParentFont = False
          Style.Font.Charset = DEFAULT_CHARSET
          Style.Font.Color = clBlue
          Style.Font.Height = -15
          Style.Font.Name = 'Tahoma'
          Style.Font.Style = []
          Style.IsFontAssigned = True
          Height = 21
          Width = 202
        end
        object cxDBLabel1: TcxDBLabel
          Left = 402
          Top = 70
          DataBinding.DataField = 'FONTE_DADOS'
          DataBinding.DataSource = dsPrincipal
          Height = 21
          Width = 202
        end
      end
      object GroupBox2: TGroupBox
        Left = 0
        Top = 139
        Width = 1252
        Height = 592
        Align = alClient
        TabOrder = 1
        object Label6: TLabel
          Left = 140
          Top = 60
          Width = 86
          Height = 13
          Caption = 'Aliquota Nacional:'
          FocusControl = cxDBCurrencyEdit1
        end
        object Label9: TLabel
          Left = 140
          Top = 19
          Width = 89
          Height = 13
          Caption = 'Aliquota Municipal:'
          FocusControl = cxDBCurrencyEdit4
        end
        object Label3: TLabel
          Left = 140
          Top = 94
          Width = 49
          Height = 13
          Caption = 'Excec'#231#227'o:'
          FocusControl = cxDBSpinEdit3
        end
        object Label8: TLabel
          Left = 13
          Top = 59
          Width = 87
          Height = 13
          Caption = 'Aliquota Estadual:'
          FocusControl = cxDBCurrencyEdit3
        end
        object Label15: TLabel
          Left = 13
          Top = 19
          Width = 87
          Height = 13
          Caption = 'Aliquota Estadual:'
          FocusControl = cxDBCurrencyEdit5
        end
        object Label7: TLabel
          Left = 13
          Top = 97
          Width = 96
          Height = 13
          Caption = 'Aliquota Importada:'
        end
        object cxDBCurrencyEdit2: TcxDBCurrencyEdit
          Left = 13
          Top = 110
          DataBinding.DataField = 'ALI_IMPORTADO_FEDERAL'
          DataBinding.DataSource = dsPrincipal
          Properties.DisplayFormat = '% ,00;-% ,00'
          TabOrder = 0
          Width = 121
        end
        object cxDBCurrencyEdit1: TcxDBCurrencyEdit
          Left = 140
          Top = 79
          DataBinding.DataField = 'ALI_NACIONAL_FEDERAL'
          DataBinding.DataSource = dsPrincipal
          Properties.DecimalPlaces = 2
          Properties.DisplayFormat = '% ,000;-% ,000'
          TabOrder = 1
          Width = 121
        end
        object cxDBCurrencyEdit4: TcxDBCurrencyEdit
          Left = 140
          Top = 35
          DataBinding.DataField = 'ALI_MUNICIPAL'
          DataBinding.DataSource = dsPrincipal
          Properties.DisplayFormat = '% ,00;-% ,00'
          TabOrder = 2
          Width = 121
        end
        object cxDBSpinEdit3: TcxDBSpinEdit
          Left = 140
          Top = 110
          DataBinding.DataField = 'EX'
          DataBinding.DataSource = dsPrincipal
          TabOrder = 3
          Width = 121
        end
        object cxDBCurrencyEdit3: TcxDBCurrencyEdit
          Left = 13
          Top = 75
          DataBinding.DataField = 'ALI_ESTADUAL'
          DataBinding.DataSource = dsPrincipal
          Properties.DisplayFormat = '% ,00;-% ,00'
          TabOrder = 4
          Width = 121
        end
        object cxDBCurrencyEdit5: TcxDBCurrencyEdit
          Left = 13
          Top = 35
          DataBinding.DataField = 'ALI_ESTADUAL'
          DataBinding.DataSource = dsPrincipal
          Properties.DisplayFormat = '% ,00;-% ,00'
          TabOrder = 5
          Width = 121
        end
      end
    end
  end
  inherited pnl_top: TPanel
    Width = 1256
    ExplicitWidth = 1256
    inherited pbl_de_cima: TPanel
      Width = 1256
      ExplicitWidth = 1256
      inherited shape_cima: TShape
        Width = 1096
        ExplicitWidth = 1106
      end
      inherited pnl_info_direita: TPanel
        Left = 996
        ExplicitLeft = 996
      end
    end
  end
  inherited pnl_baixo: TPanel
    Top = 893
    Width = 1256
  end
  inherited ToolBar1: TToolBar
    Width = 1256
    ExplicitWidth = 1256
  end
  inherited dsPrincipal: TDataSource
    DataSet = fdq_principal
  end
  inherited BarraMenu: TcxImageList
    FormatVersion = 1
  end
  object fdq_principal: TFDQuery
    Active = True
    Connection = DtmBcoErp.FDBcoERP
    SQL.Strings = (
      'SELECT * FROM TB_NCM')
    Left = 1008
    Top = 33
    object fdq_principalCOD_EMP: TIntegerField
      DisplayLabel = 'Empresa'
      FieldName = 'COD_EMP'
      Origin = 'COD_EMP'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object fdq_principalNCM: TIntegerField
      FieldName = 'NCM'
      Origin = 'NCM'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object fdq_principalEX: TIntegerField
      FieldName = 'EX'
      Origin = 'EX'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object fdq_principalTIPO: TIntegerField
      FieldName = 'TIPO'
      Origin = 'TIPO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object fdq_principalDESCRICAO: TStringField
      FieldName = 'DESCRICAO'
      Origin = 'DESCRICAO'
      Size = 250
    end
    object fdq_principalALI_NACIONAL_FEDERAL: TBCDField
      DisplayLabel = 'ALIQUOTA NACINAL'
      FieldName = 'ALI_NACIONAL_FEDERAL'
      Origin = 'ALI_NACIONAL_FEDERAL'
      Precision = 18
      Size = 2
    end
    object fdq_principalALI_IMPORTADO_FEDERAL: TBCDField
      DisplayLabel = 'ALIQUOTA IMPORTADA'
      FieldName = 'ALI_IMPORTADO_FEDERAL'
      Origin = 'ALI_IMPORTADO_FEDERAL'
      Precision = 18
      Size = 2
    end
    object fdq_principalALI_ESTADUAL: TBCDField
      DisplayLabel = 'ALIQUOTA ESTADUAL'
      FieldName = 'ALI_ESTADUAL'
      Origin = 'ALI_ESTADUAL'
      Precision = 18
      Size = 2
    end
    object fdq_principalALI_MUNICIPAL: TBCDField
      DisplayLabel = 'ALIQUOTA MUNICIPAL'
      FieldName = 'ALI_MUNICIPAL'
      Origin = 'ALI_MUNICIPAL'
      Precision = 18
      Size = 2
    end
    object fdq_principalVIGENCIA_DT_INI: TDateField
      DisplayLabel = 'VIGENCIA DATA INICIAL'
      FieldName = 'VIGENCIA_DT_INI'
      Origin = 'VIGENCIA_DT_INI'
    end
    object fdq_principalVIGENCIA_DT_FIM: TDateField
      DisplayLabel = 'VIGENCIA DATA FINAL'
      FieldName = 'VIGENCIA_DT_FIM'
      Origin = 'VIGENCIA_DT_FIM'
    end
    object fdq_principalCHAVE: TStringField
      FieldName = 'CHAVE'
      Origin = 'CHAVE'
      Size = 15
    end
    object fdq_principalVERSAO: TStringField
      FieldName = 'VERSAO'
      Origin = 'VERSAO'
      Size = 15
    end
    object fdq_principalFONTE_DADOS: TStringField
      DisplayLabel = 'FONTE DADOS'
      FieldName = 'FONTE_DADOS'
      Origin = 'FONTE_DADOS'
      Size = 50
    end
  end
end
