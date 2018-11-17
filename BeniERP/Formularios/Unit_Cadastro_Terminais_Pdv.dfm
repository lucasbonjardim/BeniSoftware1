inherited Form_Cadastro_Terminais_PDV: TForm_Cadastro_Terminais_PDV
  Caption = 'Cadastro de Terminais PDV - SAT/ NFCe'
  ClientHeight = 1040
  ClientWidth = 1356
  ExplicitWidth = 1372
  ExplicitHeight = 1079
  PixelsPerInch = 96
  TextHeight = 13
  inherited Shape1: TShape
    Width = 1356
    ExplicitTop = 52
    ExplicitWidth = 1386
  end
  inherited cxPageControl1: TcxPageControl
    Top = 75
    Width = 1356
    Height = 948
    Properties.ActivePage = tbCadastro
    ExplicitTop = 75
    ExplicitWidth = 1356
    ExplicitHeight = 948
    ClientRectBottom = 944
    ClientRectRight = 1352
    inherited tbPesquisa: TcxTabSheet
      ExplicitWidth = 1358
      ExplicitHeight = 930
      inherited Panel1: TPanel
        Width = 1358
        ExplicitWidth = 1358
        inherited lblPesquisa: TcxLabel
          Style.IsFontAssigned = True
          AnchorX = 34
          AnchorY = 21
        end
      end
      object cxGrid1: TcxGrid
        Left = 0
        Top = 41
        Width = 1348
        Height = 879
        Align = alClient
        BorderStyle = cxcbsNone
        TabOrder = 1
        ExplicitWidth = 1358
        ExplicitHeight = 889
        object cxGrid1DBTableView1: TcxGridDBTableView
          Navigator.Buttons.CustomButtons = <>
          DataController.DataSource = dsPrincipal
          DataController.Summary.DefaultGroupSummaryItems = <>
          DataController.Summary.FooterSummaryItems = <>
          DataController.Summary.SummaryGroups = <>
          object cxGrid1DBTableView1TER_ID: TcxGridDBColumn
            Caption = 'Terminal PDV:'
            DataBinding.FieldName = 'TER_ID'
            Width = 108
          end
          object cxGrid1DBTableView1TER_TIPO_PDV: TcxGridDBColumn
            Caption = 'Tipo PDV:'
            DataBinding.FieldName = 'TER_TIPO_PDV'
            Width = 133
          end
          object cxGrid1DBTableView1TER_DT_ULT_ATUALIZACAO: TcxGridDBColumn
            Caption = 'Data Ultima Atualiza'#231#227'o:'
            DataBinding.FieldName = 'TER_DT_ULT_ATUALIZACAO'
            Width = 140
          end
          object cxGrid1DBTableView1TER_HR_ULT_ATUALIZACAO: TcxGridDBColumn
            Caption = 'Hora ultima Atualiza'#231#227'o:'
            DataBinding.FieldName = 'TER_HR_ULT_ATUALIZACAO'
            Width = 235
          end
        end
        object cxGrid1Level1: TcxGridLevel
          GridView = cxGrid1DBTableView1
        end
      end
    end
    inherited tbCadastro: TcxTabSheet
      ExplicitLeft = 4
      ExplicitTop = 24
      ExplicitWidth = 1348
      ExplicitHeight = 920
      inherited Shape3: TShape
        Top = 912
        Width = 1348
        ExplicitTop = 940
        ExplicitWidth = 1382
      end
      object Label11: TLabel
        Left = 6
        Top = 261
        Width = 70
        Height = 13
        Caption = 'Porta Balan'#231'a:'
        FocusControl = cxDBSpinEdit10
      end
      object Label10: TLabel
        Left = 12
        Top = 226
        Width = 64
        Height = 13
        Caption = 'Tipo Balan'#231'a:'
        FocusControl = cxDBSpinEdit9
      end
      object Label9: TLabel
        Left = 11
        Top = 190
        Width = 65
        Height = 13
        Caption = 'Porta Pinpad:'
        FocusControl = cxDBSpinEdit8
      end
      object Label5: TLabel
        Left = 6
        Top = 157
        Width = 70
        Height = 13
        Caption = 'Porta Teclado:'
        FocusControl = cxDBSpinEdit4
      end
      object Label4: TLabel
        Left = 16
        Top = 121
        Width = 60
        Height = 13
        Caption = 'Tipo Teclado'
        FocusControl = cxDBSpinEdit3
      end
      object Label3: TLabel
        Left = 19
        Top = 89
        Width = 57
        Height = 13
        Caption = 'Porta leitor:'
        FocusControl = cxDBSpinEdit2
      end
      object Label2: TLabel
        Left = 52
        Top = 59
        Width = 24
        Height = 13
        Caption = 'Tipo:'
      end
      object Label1: TLabel
        Left = 61
        Top = 24
        Width = 15
        Height = 13
        Caption = 'ID:'
        FocusControl = cxDBSpinEdit1
      end
      object GroupBox1: TGroupBox
        Left = 0
        Top = 638
        Width = 1348
        Height = 271
        Align = alBottom
        Caption = 'Valores'
        TabOrder = 0
        object DBCheckBox1: TDBCheckBox
          Left = 40
          Top = 32
          Width = 137
          Height = 17
          Caption = 'Habilita Display Teclado'
          DataField = 'TER_HAB_DISP_TEC'
          DataSource = dsPrincipal
          TabOrder = 0
          ValueChecked = '1'
          ValueUnchecked = '0'
        end
        object DBCheckBox2: TDBCheckBox
          Left = 40
          Top = 67
          Width = 185
          Height = 17
          Caption = 'Habilita Mensagem Teclado'
          DataField = 'TER_HAB_MSG_TEC'
          DataSource = dsPrincipal
          TabOrder = 1
          ValueChecked = '1'
          ValueUnchecked = '0'
        end
        object DBCheckBox3: TDBCheckBox
          Left = 40
          Top = 104
          Width = 185
          Height = 17
          Caption = 'Habilita Pinpad'
          DataField = 'TER_HABILITA_PINPAD'
          DataSource = dsPrincipal
          TabOrder = 2
          ValueChecked = '1'
          ValueUnchecked = '0'
        end
        object DBCheckBox4: TDBCheckBox
          Left = 40
          Top = 137
          Width = 185
          Height = 17
          Caption = 'Habilita Vendedor'
          DataField = 'TER_HAB_VENDEDOR'
          DataSource = dsPrincipal
          TabOrder = 3
          ValueChecked = '1'
          ValueUnchecked = '0'
        end
        object DBCheckBox5: TDBCheckBox
          Left = 40
          Top = 173
          Width = 185
          Height = 17
          Caption = 'Habilita TEF'
          DataField = 'TER_HAB_TEF'
          DataSource = dsPrincipal
          TabOrder = 4
          ValueChecked = '1'
          ValueUnchecked = '0'
        end
        object DBCheckBox6: TDBCheckBox
          Left = 40
          Top = 201
          Width = 185
          Height = 17
          Caption = 'Verifica Produto Balan'#231'a'
          DataField = 'TER_CHK_PROD_BAL'
          DataSource = dsPrincipal
          TabOrder = 5
          ValueChecked = '1'
          ValueUnchecked = '0'
        end
        object DBCheckBox7: TDBCheckBox
          Left = 224
          Top = 32
          Width = 185
          Height = 17
          Caption = 'Verifica Gaveta Aberta'
          DataField = 'TER_CHK_GAV_ABERTA'
          DataSource = dsPrincipal
          TabOrder = 6
          ValueChecked = '1'
          ValueUnchecked = '0'
        end
        object DBCheckBox8: TDBCheckBox
          Left = 224
          Top = 67
          Width = 185
          Height = 17
          Caption = 'Habilita Imagem Fundo PDV'
          DataField = 'TER_HAB_IMG_TELA'
          DataSource = dsPrincipal
          TabOrder = 7
          ValueChecked = '1'
          ValueUnchecked = '0'
        end
        object DBCheckBox9: TDBCheckBox
          Left = 224
          Top = 104
          Width = 185
          Height = 17
          Caption = 'Habilita Tela Troco'
          DataField = 'TER_HAB_TELA_TROCO'
          DataSource = dsPrincipal
          TabOrder = 8
          ValueChecked = '1'
          ValueUnchecked = '0'
        end
        object DBCheckBox10: TDBCheckBox
          Left = 224
          Top = 137
          Width = 185
          Height = 17
          Caption = 'Habilita  Troco Detalhado'
          DataField = 'TER_TROCO_COMP_DETALHADO'
          DataSource = dsPrincipal
          TabOrder = 9
          ValueChecked = '1'
          ValueUnchecked = '0'
        end
        object DBCheckBox11: TDBCheckBox
          Left = 224
          Top = 173
          Width = 185
          Height = 17
          Caption = 'Habilita  Leitora de Cheque'
          DataField = 'TER_HAB_CMC7'
          DataSource = dsPrincipal
          TabOrder = 10
          ValueChecked = '1'
          ValueUnchecked = '0'
        end
        object DBCheckBox12: TDBCheckBox
          Left = 40
          Top = 230
          Width = 185
          Height = 17
          Caption = 'Habilita  Rotina Desconto PDV'
          DataField = 'TER_HAB_ROT_DESC_PDV'
          DataSource = dsPrincipal
          TabOrder = 11
          ValueChecked = '1'
          ValueUnchecked = '0'
        end
      end
      object cxDBSpinEdit10: TcxDBSpinEdit
        Left = 82
        Top = 258
        DataBinding.DataField = 'TER_COM_BALANCA'
        DataBinding.DataSource = dsPrincipal
        TabOrder = 1
        Width = 79
      end
      object cxDBSpinEdit9: TcxDBSpinEdit
        Left = 82
        Top = 221
        DataBinding.DataField = 'TER_TPO_BALANCA'
        DataBinding.DataSource = dsPrincipal
        TabOrder = 2
        Width = 79
      end
      object cxDBSpinEdit8: TcxDBSpinEdit
        Left = 82
        Top = 187
        DataBinding.DataField = 'TER_COM_PINPAD'
        DataBinding.DataSource = dsPrincipal
        TabOrder = 3
        Width = 79
      end
      object cxDBSpinEdit4: TcxDBSpinEdit
        Left = 82
        Top = 151
        DataBinding.DataField = 'TER_COM_TECLADO'
        DataBinding.DataSource = dsPrincipal
        TabOrder = 4
        Width = 79
      end
      object cxDBSpinEdit3: TcxDBSpinEdit
        Left = 82
        Top = 124
        DataBinding.DataField = 'TER_TPO_TECLADO'
        DataBinding.DataSource = dsPrincipal
        TabOrder = 5
        Width = 79
      end
      object cxDBSpinEdit2: TcxDBSpinEdit
        Left = 82
        Top = 83
        DataBinding.DataField = 'TER_COM_LEITOR'
        DataBinding.DataSource = dsPrincipal
        TabOrder = 6
        Width = 79
      end
      object db_combo_tpo_pdv: TDBComboBox
        Left = 82
        Top = 56
        Width = 1229
        Height = 21
        Style = csDropDownList
        Anchors = [akLeft, akTop, akRight]
        DataField = 'TER_TIPO_PDV'
        DataSource = dsPrincipal
        Items.Strings = (
          'SAT'
          'NFCe')
        TabOrder = 7
      end
      object cxDBSpinEdit1: TcxDBSpinEdit
        Left = 82
        Top = 21
        Anchors = [akLeft, akTop, akRight]
        DataBinding.DataField = 'TER_ID'
        DataBinding.DataSource = dsPrincipal
        Enabled = False
        TabOrder = 8
        Width = 1229
      end
      object BConfigEFD: TButton
        Left = 3
        Top = 301
        Width = 158
        Height = 25
        Caption = 'Configurar SAT'
        TabOrder = 9
      end
    end
  end
  inherited pnl_top: TPanel
    Top = 53
    Width = 1356
    ExplicitTop = 53
    ExplicitWidth = 1356
  end
  inherited Panel22: TPanel
    Top = 1023
    Width = 1356
    ExplicitTop = 1023
    ExplicitWidth = 1356
  end
  inherited ToolBar1: TToolBar
    AlignWithMargins = True
    Left = 3
    Top = 12
    Width = 1350
    Height = 38
    ExplicitLeft = 3
    ExplicitTop = 12
    ExplicitWidth = 1350
    ExplicitHeight = 38
  end
  inherited dsPrincipal: TDataSource
    DataSet = FDQ_Principal
    Left = 392
    Top = 55
  end
  inherited BarraMenu: TcxImageList
    FormatVersion = 1
  end
  inherited cxHintStyleController1: TcxHintStyleController
    Left = 744
  end
  object FDQ_Principal: TFDQuery
    Active = True
    Connection = DtmBcoErp.FDBcoERP
    SQL.Strings = (
      'SELECT * FROM TB_TERMINAL_PDV')
    Left = 264
    Top = 63
    object FDQ_PrincipalTER_ID: TIntegerField
      FieldName = 'TER_ID'
      Origin = 'TER_ID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object FDQ_PrincipalTER_TIPO_PDV: TStringField
      FieldName = 'TER_TIPO_PDV'
      Origin = 'TER_TIPO_PDV'
      Required = True
      Size = 5
    end
    object FDQ_PrincipalTER_COM_LEITOR: TIntegerField
      FieldName = 'TER_COM_LEITOR'
      Origin = 'TER_COM_LEITOR'
    end
    object FDQ_PrincipalTER_TPO_TECLADO: TIntegerField
      FieldName = 'TER_TPO_TECLADO'
      Origin = 'TER_TPO_TECLADO'
    end
    object FDQ_PrincipalTER_COM_TECLADO: TIntegerField
      FieldName = 'TER_COM_TECLADO'
      Origin = 'TER_COM_TECLADO'
    end
    object FDQ_PrincipalTER_HAB_DISP_TEC: TIntegerField
      FieldName = 'TER_HAB_DISP_TEC'
      Origin = 'TER_HAB_DISP_TEC'
    end
    object FDQ_PrincipalTER_HAB_MSG_TEC: TIntegerField
      FieldName = 'TER_HAB_MSG_TEC'
      Origin = 'TER_HAB_MSG_TEC'
    end
    object FDQ_PrincipalTER_HABILITA_PINPAD: TIntegerField
      FieldName = 'TER_HABILITA_PINPAD'
      Origin = 'TER_HABILITA_PINPAD'
    end
    object FDQ_PrincipalTER_COM_PINPAD: TIntegerField
      FieldName = 'TER_COM_PINPAD'
      Origin = 'TER_COM_PINPAD'
    end
    object FDQ_PrincipalTER_TPO_BALANCA: TIntegerField
      FieldName = 'TER_TPO_BALANCA'
      Origin = 'TER_TPO_BALANCA'
    end
    object FDQ_PrincipalTER_COM_BALANCA: TIntegerField
      FieldName = 'TER_COM_BALANCA'
      Origin = 'TER_COM_BALANCA'
    end
    object FDQ_PrincipalTER_HAB_VENDEDOR: TIntegerField
      FieldName = 'TER_HAB_VENDEDOR'
      Origin = 'TER_HAB_VENDEDOR'
    end
    object FDQ_PrincipalTER_HAB_TEF: TIntegerField
      FieldName = 'TER_HAB_TEF'
      Origin = 'TER_HAB_TEF'
    end
    object FDQ_PrincipalTER_CHK_PROD_BAL: TIntegerField
      FieldName = 'TER_CHK_PROD_BAL'
      Origin = 'TER_CHK_PROD_BAL'
    end
    object FDQ_PrincipalTER_CHK_GAV_ABERTA: TIntegerField
      FieldName = 'TER_CHK_GAV_ABERTA'
      Origin = 'TER_CHK_GAV_ABERTA'
    end
    object FDQ_PrincipalTER_FLAG_GAV_FECHADA: TIntegerField
      FieldName = 'TER_FLAG_GAV_FECHADA'
      Origin = 'TER_FLAG_GAV_FECHADA'
    end
    object FDQ_PrincipalTER_HAB_IMG_TELA: TIntegerField
      FieldName = 'TER_HAB_IMG_TELA'
      Origin = 'TER_HAB_IMG_TELA'
    end
    object FDQ_PrincipalTER_HAB_TELA_TROCO: TIntegerField
      FieldName = 'TER_HAB_TELA_TROCO'
      Origin = 'TER_HAB_TELA_TROCO'
    end
    object FDQ_PrincipalTER_TROCO_COMP_DETALHADO: TStringField
      FieldName = 'TER_TROCO_COMP_DETALHADO'
      Origin = 'TER_TROCO_COMP_DETALHADO'
      Size = 1
    end
    object FDQ_PrincipalTER_HAB_CMC7: TIntegerField
      FieldName = 'TER_HAB_CMC7'
      Origin = 'TER_HAB_CMC7'
    end
    object FDQ_PrincipalTER_CARGA_PRO_GERAL: TIntegerField
      FieldName = 'TER_CARGA_PRO_GERAL'
      Origin = 'TER_CARGA_PRO_GERAL'
    end
    object FDQ_PrincipalTER_HAB_ROT_DESC_PDV: TIntegerField
      FieldName = 'TER_HAB_ROT_DESC_PDV'
      Origin = 'TER_HAB_ROT_DESC_PDV'
    end
    object FDQ_PrincipalTER_DH_ULT_CAR_PRODUTO: TSQLTimeStampField
      FieldName = 'TER_DH_ULT_CAR_PRODUTO'
      Origin = 'TER_DH_ULT_CAR_PRODUTO'
    end
    object FDQ_PrincipalTER_CARGA_CLI_GERAL: TIntegerField
      FieldName = 'TER_CARGA_CLI_GERAL'
      Origin = 'TER_CARGA_CLI_GERAL'
    end
    object FDQ_PrincipalTER_DH_ULT_CAR_CLIENTE: TSQLTimeStampField
      FieldName = 'TER_DH_ULT_CAR_CLIENTE'
      Origin = 'TER_DH_ULT_CAR_CLIENTE'
    end
    object FDQ_PrincipalTER_CARGA_CONFIGURACAO: TIntegerField
      FieldName = 'TER_CARGA_CONFIGURACAO'
      Origin = 'TER_CARGA_CONFIGURACAO'
    end
    object FDQ_PrincipalTER_DT_ULT_ATUALIZACAO: TDateField
      FieldName = 'TER_DT_ULT_ATUALIZACAO'
      Origin = 'TER_DT_ULT_ATUALIZACAO'
    end
    object FDQ_PrincipalTER_HR_ULT_ATUALIZACAO: TTimeField
      FieldName = 'TER_HR_ULT_ATUALIZACAO'
      Origin = 'TER_HR_ULT_ATUALIZACAO'
    end
  end
end
