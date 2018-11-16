inherited Form_Cadastro_Aliquota_pdv: TForm_Cadastro_Aliquota_pdv
  Caption = 'Cadastro de Al'#237'quotas PDV'
  ClientHeight = 535
  ClientWidth = 1365
  ExplicitWidth = 1381
  ExplicitHeight = 574
  PixelsPerInch = 96
  TextHeight = 13
  inherited Shape1: TShape
    Top = 46
    Width = 1365
    ExplicitTop = 49
    ExplicitWidth = 1375
  end
  inherited cxPageControl1: TcxPageControl
    Top = 74
    Width = 1365
    Height = 444
    ExplicitTop = 74
    ExplicitWidth = 1365
    ExplicitHeight = 444
    ClientRectBottom = 440
    ClientRectRight = 1361
    inherited tbPesquisa: TcxTabSheet
      ExplicitLeft = 4
      ExplicitTop = 24
      ExplicitWidth = 1357
      ExplicitHeight = 416
      inherited Panel1: TPanel
        Width = 1357
        ExplicitWidth = 1357
        inherited lblPesquisa: TcxLabel
          Style.IsFontAssigned = True
          AnchorX = 34
          AnchorY = 21
        end
      end
      object GroupBox1: TGroupBox
        Left = 0
        Top = 41
        Width = 1357
        Height = 375
        Align = alClient
        Caption = 'Aliquotas PDV'
        TabOrder = 1
        object cxGrid1: TcxGrid
          Left = 2
          Top = 15
          Width = 1353
          Height = 358
          Align = alClient
          TabOrder = 0
          object cxGrid1DBTableView1: TcxGridDBTableView
            Navigator.Buttons.CustomButtons = <>
            DataController.DataSource = dsPrincipal
            DataController.Summary.DefaultGroupSummaryItems = <>
            DataController.Summary.FooterSummaryItems = <>
            DataController.Summary.SummaryGroups = <>
            object cxGrid1DBTableView1ALIQUOTA_ESTADO: TcxGridDBColumn
              DataBinding.FieldName = 'ALIQUOTA_ESTADO'
              Width = 115
            end
            object cxGrid1DBTableView1ALIQUOTA_INTERNA: TcxGridDBColumn
              DataBinding.FieldName = 'ALIQUOTA_INTERNA'
            end
            object cxGrid1DBTableView1ALIQUOTA_EXTERNA: TcxGridDBColumn
              DataBinding.FieldName = 'ALIQUOTA_EXTERNA'
              Width = 143
            end
            object cxGrid1DBTableView1ALIQUOTA_VALOR: TcxGridDBColumn
              DataBinding.FieldName = 'ALIQUOTA_VALOR'
              Width = 124
            end
            object cxGrid1DBTableView1ALIQUOTA_USUARIO_ALTERACAO: TcxGridDBColumn
              DataBinding.FieldName = 'ALIQUOTA_USUARIO_ALTERACAO'
            end
            object cxGrid1DBTableView1ALIQUOTA_DT_ULT_ATUALIZACAO: TcxGridDBColumn
              DataBinding.FieldName = 'ALIQUOTA_DT_ULT_ATUALIZACAO'
              Width = 123
            end
            object cxGrid1DBTableView1ALIQUOTA_HR_ULT_ATUALIZACAO: TcxGridDBColumn
              DataBinding.FieldName = 'ALIQUOTA_HR_ULT_ATUALIZACAO'
              Width = 144
            end
          end
          object cxGrid1Level1: TcxGridLevel
            GridView = cxGrid1DBTableView1
          end
        end
      end
    end
    inherited tbCadastro: TcxTabSheet
      ExplicitLeft = 2
      ExplicitTop = 28
      ExplicitWidth = 1371
      ExplicitHeight = 423
      inherited Shape3: TShape
        Top = 416
        Width = 1371
        ExplicitTop = 416
        ExplicitWidth = 1371
      end
      object GroupBox2: TGroupBox
        AlignWithMargins = True
        Left = 3
        Top = 3
        Width = 1365
        Height = 407
        Align = alClient
        Caption = 'Aliquotas PDV'
        TabOrder = 0
        ExplicitHeight = 406
        object Label1: TLabel
          Left = 15
          Top = 24
          Width = 37
          Height = 13
          Caption = 'Estado:'
          FocusControl = cxDBTextEdit1
        end
        object Label2: TLabel
          Left = 15
          Top = 80
          Width = 99
          Height = 13
          Caption = 'ALIQUOTA INTERNA'
          FocusControl = cxDBCurrencyEdit1
        end
        object Label3: TLabel
          Left = 17
          Top = 139
          Width = 97
          Height = 13
          Caption = 'ALIQUOTAEXTERNA'
          FocusControl = cxDBCurrencyEdit2
        end
        object Label4: TLabel
          Left = 17
          Top = 200
          Width = 88
          Height = 13
          Caption = 'ALIQUOTA VALOR'
          FocusControl = cxDBCalcEdit1
        end
        object cxDBTextEdit1: TcxDBTextEdit
          Left = 15
          Top = 43
          AutoSize = False
          DataBinding.DataField = 'ALIQUOTA_ESTADO'
          DataBinding.DataSource = dsPrincipal
          Enabled = False
          ParentFont = False
          Style.Font.Charset = DEFAULT_CHARSET
          Style.Font.Color = clWindowText
          Style.Font.Height = -16
          Style.Font.Name = 'Tahoma'
          Style.Font.Style = []
          Style.IsFontAssigned = True
          TabOrder = 0
          Height = 31
          Width = 202
        end
        object cxDBCurrencyEdit1: TcxDBCurrencyEdit
          Left = 15
          Top = 99
          AutoSize = False
          DataBinding.DataField = 'ALIQUOTA_INTERNA'
          DataBinding.DataSource = dsPrincipal
          ParentFont = False
          Style.Font.Charset = DEFAULT_CHARSET
          Style.Font.Color = clWindowText
          Style.Font.Height = -16
          Style.Font.Name = 'Tahoma'
          Style.Font.Style = []
          Style.IsFontAssigned = True
          TabOrder = 1
          Height = 34
          Width = 202
        end
        object cxDBCurrencyEdit2: TcxDBCurrencyEdit
          Left = 15
          Top = 158
          AutoSize = False
          DataBinding.DataField = 'ALIQUOTA_EXTERNA'
          DataBinding.DataSource = dsPrincipal
          ParentFont = False
          Style.Font.Charset = DEFAULT_CHARSET
          Style.Font.Color = clWindowText
          Style.Font.Height = -16
          Style.Font.Name = 'Tahoma'
          Style.Font.Style = []
          Style.IsFontAssigned = True
          TabOrder = 2
          Height = 36
          Width = 202
        end
        object cxDBCalcEdit1: TcxDBCalcEdit
          Left = 15
          Top = 219
          AutoSize = False
          DataBinding.DataField = 'ALIQUOTA_VALOR'
          DataBinding.DataSource = dsPrincipal
          ParentFont = False
          Style.Font.Charset = DEFAULT_CHARSET
          Style.Font.Color = clWindowText
          Style.Font.Height = -16
          Style.Font.Name = 'Tahoma'
          Style.Font.Style = []
          Style.IsFontAssigned = True
          TabOrder = 3
          Height = 30
          Width = 202
        end
      end
    end
  end
  inherited pnl_top: TPanel
    Top = 52
    Width = 1365
    ExplicitTop = 52
    ExplicitWidth = 1365
  end
  inherited Panel22: TPanel
    Top = 518
    Width = 1365
    ExplicitTop = 518
    ExplicitWidth = 1365
  end
  inherited ToolBar1: TToolBar
    AlignWithMargins = True
    Left = 3
    Top = 3
    Width = 1359
    Height = 37
    ExplicitLeft = 3
    ExplicitTop = 3
    ExplicitWidth = 1359
    ExplicitHeight = 37
  end
  inherited dsPrincipal: TDataSource
    DataSet = FDQ_Principal
    Left = 512
    Top = 55
  end
  inherited BarraMenu: TcxImageList
    FormatVersion = 1
  end
  inherited cxHintStyleController1: TcxHintStyleController
    Left = 600
  end
  object FDQ_Principal: TFDQuery
    Connection = DtmBcoErp.FDBcoERP
    SQL.Strings = (
      'select * from  TB_ALIQUOTA_PDV')
    Left = 400
    Top = 53
    object FDQ_PrincipalALIQUOTA_ESTADO: TStringField
      DisplayLabel = 'ALIQUOTA ESTADO'
      FieldName = 'ALIQUOTA_ESTADO'
      Origin = 'ALIQUOTA_ESTADO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
      FixedChar = True
      Size = 2
    end
    object FDQ_PrincipalALIQUOTA_INTERNA: TBCDField
      DisplayLabel = 'ALIQUOTA INTERNA'
      FieldName = 'ALIQUOTA_INTERNA'
      Origin = 'ALIQUOTA_INTERNA'
      Precision = 18
      Size = 2
    end
    object FDQ_PrincipalALIQUOTA_EXTERNA: TBCDField
      DisplayLabel = 'ALIQUOTAEXTERNA'
      FieldName = 'ALIQUOTA_EXTERNA'
      Origin = 'ALIQUOTA_EXTERNA'
      Precision = 18
      Size = 2
    end
    object FDQ_PrincipalALIQUOTA_VALOR: TFloatField
      DisplayLabel = 'ALIQUOTA VALOR'
      FieldName = 'ALIQUOTA_VALOR'
      Origin = 'ALIQUOTA_VALOR'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object FDQ_PrincipalALIQUOTA_USUARIO_ALTERACAO: TWideStringField
      DisplayLabel = 'ALIQUOTA USUARIO ALTERACAO'
      FieldName = 'ALIQUOTA_USUARIO_ALTERACAO'
      Origin = 'ALIQUOTA_USUARIO_ALTERACAO'
      Size = 50
    end
    object FDQ_PrincipalALIQUOTA_DT_ULT_ATUALIZACAO: TDateField
      DisplayLabel = 'DATA ATUALIZA'#199#195'O'
      FieldName = 'ALIQUOTA_DT_ULT_ATUALIZACAO'
      Origin = 'ALIQUOTA_DT_ULT_ATUALIZACAO'
    end
    object FDQ_PrincipalALIQUOTA_HR_ULT_ATUALIZACAO: TTimeField
      DisplayLabel = 'HORA ATUALIZA'#199#195'O'
      FieldName = 'ALIQUOTA_HR_ULT_ATUALIZACAO'
      Origin = 'ALIQUOTA_HR_ULT_ATUALIZACAO'
    end
  end
end
