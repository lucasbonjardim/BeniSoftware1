inherited Form_Cadastro_usuario: TForm_Cadastro_usuario
  Caption = 'Cadastro de Usu'#225'rio'
  ClientHeight = 719
  ClientWidth = 1211
  ExplicitWidth = 1227
  ExplicitHeight = 758
  PixelsPerInch = 96
  TextHeight = 13
  inherited Shape1: TShape
    Width = 1211
    ExplicitWidth = 1251
  end
  inherited ToolBar1: TToolBar
    Width = 1211
    ExplicitWidth = 1211
  end
  inherited cxPageControl1: TcxPageControl
    Width = 1211
    Height = 651
    Properties.ActivePage = tbCadastro
    ExplicitWidth = 1211
    ExplicitHeight = 651
    ClientRectBottom = 647
    ClientRectRight = 1207
    inherited tbPesquisa: TcxTabSheet
      ExplicitWidth = 1203
      ExplicitHeight = 623
      inherited Panel1: TPanel
        Width = 1203
        ExplicitWidth = 1203
        inherited lblPesquisa: TcxLabel
          Style.IsFontAssigned = True
          Visible = False
          AnchorX = 34
          AnchorY = 21
        end
        inherited rgOptionGrid: TRadioGroup
          Visible = False
        end
      end
      inherited Panel22: TPanel
        Top = 606
        Width = 1203
        TabOrder = 3
        ExplicitTop = 606
        ExplicitWidth = 1203
      end
      inherited Panel23: TPanel
        Top = 583
        Width = 1203
        ExplicitTop = 583
        ExplicitWidth = 1203
      end
      object cxGrid1: TcxGrid
        Left = 0
        Top = 41
        Width = 1203
        Height = 542
        Align = alClient
        TabOrder = 1
        object cxGrid1DBTableView1: TcxGridDBTableView
          Navigator.Buttons.CustomButtons = <>
          DataController.DataSource = dsPrincipal
          DataController.Summary.DefaultGroupSummaryItems = <>
          DataController.Summary.FooterSummaryItems = <>
          DataController.Summary.SummaryGroups = <>
          object cxGrid1DBTableView1COD_USU: TcxGridDBColumn
            DataBinding.FieldName = 'COD_USU'
          end
          object cxGrid1DBTableView1NOME_USU: TcxGridDBColumn
            DataBinding.FieldName = 'NOME_USU'
          end
          object cxGrid1DBTableView1SENHA_USU: TcxGridDBColumn
            DataBinding.FieldName = 'SENHA_USU'
          end
          object cxGrid1DBTableView1COD_GRUPO: TcxGridDBColumn
            DataBinding.FieldName = 'COD_GRUPO'
          end
          object cxGrid1DBTableView1OPERADOR_CAIXA: TcxGridDBColumn
            DataBinding.FieldName = 'OPERADOR_CAIXA'
          end
          object cxGrid1DBTableView1NOME_COMPLETO: TcxGridDBColumn
            DataBinding.FieldName = 'NOME_COMPLETO'
          end
          object cxGrid1DBTableView1EMAIL_USU: TcxGridDBColumn
            DataBinding.FieldName = 'EMAIL_USU'
          end
          object cxGrid1DBTableView1DATA_NASCIMENTO_USU: TcxGridDBColumn
            DataBinding.FieldName = 'DATA_NASCIMENTO_USU'
          end
          object cxGrid1DBTableView1USUARIO_MASTER: TcxGridDBColumn
            DataBinding.FieldName = 'USUARIO_MASTER'
          end
        end
        object cxGrid1Level1: TcxGridLevel
          GridView = cxGrid1DBTableView1
        end
      end
    end
    inherited tbCadastro: TcxTabSheet
      ExplicitWidth = 1203
      ExplicitHeight = 623
      inherited Shape3: TShape
        Top = 266
        Width = 1203
        ExplicitTop = 276
        ExplicitWidth = 1213
      end
      object Label1: TLabel [1]
        Left = 53
        Top = 56
        Width = 37
        Height = 13
        Caption = 'C'#243'digo:'
        FocusControl = cxDBSpinEdit1
      end
      object Label2: TLabel [2]
        Left = 64
        Top = 80
        Width = 26
        Height = 13
        Caption = 'login:'
        FocusControl = cxDBTextEdit1
      end
      object Label3: TLabel [3]
        Left = 56
        Top = 107
        Width = 34
        Height = 13
        Caption = 'Senha:'
        FocusControl = cxDBTextEdit2
      end
      object Label4: TLabel [4]
        Left = 21
        Top = 134
        Width = 69
        Height = 13
        Caption = 'Codigo Grupo:'
        FocusControl = cxDBSpinEdit2
      end
      object Label7: TLabel [5]
        Left = 11
        Top = 161
        Width = 79
        Height = 13
        Caption = 'Nome Completo:'
        FocusControl = cxDBTextEdit5
      end
      object Label8: TLabel [6]
        Left = 64
        Top = 188
        Width = 28
        Height = 13
        Caption = 'Email:'
        FocusControl = cxDBTextEdit6
      end
      object Label9: TLabel [7]
        Left = 5
        Top = 222
        Width = 85
        Height = 13
        Caption = 'Data Nascimento:'
        FocusControl = cxDBDateEdit1
      end
      inherited pnl_baixo: TPanel
        Top = 274
        Width = 1203
        TabOrder = 9
        ExplicitTop = 274
        ExplicitWidth = 1203
      end
      object cxDBSpinEdit1: TcxDBSpinEdit
        Left = 104
        Top = 53
        DataBinding.DataField = 'COD_USU'
        DataBinding.DataSource = dsPrincipal
        TabOrder = 0
        Width = 121
      end
      object cxDBTextEdit1: TcxDBTextEdit
        Left = 104
        Top = 80
        DataBinding.DataField = 'NOME_USU'
        DataBinding.DataSource = dsPrincipal
        TabOrder = 1
        Width = 121
      end
      object cxDBTextEdit2: TcxDBTextEdit
        Left = 104
        Top = 107
        DataBinding.DataField = 'SENHA_USU'
        DataBinding.DataSource = dsPrincipal
        Properties.EchoMode = eemPassword
        Properties.PasswordChar = '*'
        TabOrder = 2
        Width = 121
      end
      object cxDBSpinEdit2: TcxDBSpinEdit
        Left = 104
        Top = 134
        DataBinding.DataField = 'COD_GRUPO'
        DataBinding.DataSource = dsPrincipal
        TabOrder = 3
        Width = 121
      end
      object cxDBTextEdit5: TcxDBTextEdit
        Left = 104
        Top = 161
        Anchors = [akLeft, akTop, akRight]
        DataBinding.DataField = 'NOME_COMPLETO'
        DataBinding.DataSource = dsPrincipal
        TabOrder = 4
        Width = 454
      end
      object cxDBTextEdit6: TcxDBTextEdit
        Left = 104
        Top = 188
        Anchors = [akLeft, akTop, akRight]
        DataBinding.DataField = 'EMAIL_USU'
        DataBinding.DataSource = dsPrincipal
        TabOrder = 5
        Width = 454
      end
      object cxDBDateEdit1: TcxDBDateEdit
        Left = 104
        Top = 215
        DataBinding.DataField = 'DATA_NASCIMENTO_USU'
        DataBinding.DataSource = dsPrincipal
        TabOrder = 6
        Width = 121
      end
      object cxPageControl2: TcxPageControl
        Left = 0
        Top = 291
        Width = 1203
        Height = 332
        Align = alBottom
        TabOrder = 7
        Properties.ActivePage = cxTabSheet1
        Properties.CustomButtons.Buttons = <>
        ClientRectBottom = 328
        ClientRectLeft = 4
        ClientRectRight = 1199
        ClientRectTop = 24
        object cxTabSheet1: TcxTabSheet
          Caption = 'Par'#226'metros '
          ImageIndex = 0
          object cbdbUsapadraotema: TcxDBCheckBox
            Left = 3
            Top = 3
            Caption = 'Usa tema Padr'#227'o Beni Software'
            DataBinding.DataField = 'USA_TEMAPADRAO'
            DataBinding.DataSource = dsPrincipal
            ParentFont = False
            Properties.Alignment = taLeftJustify
            Properties.ImmediatePost = True
            Properties.NullStyle = nssUnchecked
            Properties.ValueChecked = '1'
            Properties.ValueUnchecked = '0'
            Style.Font.Charset = ANSI_CHARSET
            Style.Font.Color = clBlack
            Style.Font.Height = -13
            Style.Font.Name = 'MS Sans Serif'
            Style.Font.Style = []
            Style.IsFontAssigned = True
            TabOrder = 0
            Transparent = True
            OnClick = cbdbUsapadraotemaClick
          end
          object cxDBusuarioativo: TcxDBCheckBox
            Left = 3
            Top = 44
            Caption = 'Usu'#225'rio Ativo?'
            DataBinding.DataField = 'USUARIO_ATIVO'
            DataBinding.DataSource = dsPrincipal
            ParentFont = False
            Properties.Alignment = taLeftJustify
            Properties.ImmediatePost = True
            Properties.NullStyle = nssUnchecked
            Properties.ValueChecked = '1'
            Properties.ValueUnchecked = '0'
            Style.Font.Charset = ANSI_CHARSET
            Style.Font.Color = clBlack
            Style.Font.Height = -13
            Style.Font.Name = 'MS Sans Serif'
            Style.Font.Style = []
            Style.IsFontAssigned = True
            TabOrder = 1
            Transparent = True
            OnClick = cxDBusuarioativoClick
          end
          object cxDBoperadorcaixa: TcxDBCheckBox
            Left = 3
            Top = 25
            Caption = 'Operador de Caixa'
            DataBinding.DataField = 'OPERADOR_CAIXA'
            DataBinding.DataSource = dsPrincipal
            ParentFont = False
            Properties.Alignment = taLeftJustify
            Properties.ImmediatePost = True
            Properties.NullStyle = nssUnchecked
            Properties.ValueChecked = 'S'
            Properties.ValueUnchecked = 'N'
            Style.Font.Charset = ANSI_CHARSET
            Style.Font.Color = clBlack
            Style.Font.Height = -13
            Style.Font.Name = 'MS Sans Serif'
            Style.Font.Style = []
            Style.IsFontAssigned = True
            TabOrder = 2
            Transparent = True
          end
          object cxDBUsuarioMaster: TcxDBCheckBox
            Left = 3
            Top = 65
            Caption = 'Usu'#225'rio Master'
            DataBinding.DataField = 'USUARIO_MASTER'
            DataBinding.DataSource = dsPrincipal
            ParentFont = False
            Properties.Alignment = taLeftJustify
            Properties.ImmediatePost = True
            Properties.NullStyle = nssUnchecked
            Properties.ValueChecked = '1'
            Properties.ValueUnchecked = '0'
            Style.Font.Charset = ANSI_CHARSET
            Style.Font.Color = clBlack
            Style.Font.Height = -13
            Style.Font.Name = 'MS Sans Serif'
            Style.Font.Style = []
            Style.IsFontAssigned = True
            TabOrder = 3
            Transparent = True
          end
        end
        object cxTabSheet2: TcxTabSheet
          Caption = 'Personaliza'#231#227'o'
          ImageIndex = 1
          object Label6: TLabel
            Left = 7
            Top = 15
            Width = 48
            Height = 13
            Caption = 'Tema cor:'
          end
          object DBRadioGroup2: TDBRadioGroup
            Left = 3
            Top = 46
            Width = 350
            Height = 211
            Caption = 'Cor Pr'#233' Definidas.'
            Columns = 2
            DataField = 'TEMA_COR'
            DataSource = dsPrincipal
            Items.Strings = (
              'azul'
              'roxo escuro'
              'Azul claro'
              'Azul escuro'
              'verde'
              'Preto'
              'Verde Whatsappp'
              'Beni Azul Original escuro'
              'Beni Azul Original claro'
              'Beni Roxo Original claro'
              'Beni Laranja Original escuro'
              'Beni Vermelho Original escuro'
              'Beni Original')
            TabOrder = 0
            Values.Strings = (
              '0'
              '1'
              '2')
            OnChange = DBRadioGroup2Change
          end
          object dxDBColorEdit1: TdxDBColorEdit
            Left = 61
            Top = 12
            DataBinding.DataField = 'TEMA_COR'
            DataBinding.DataSource = dsPrincipal
            TabOrder = 1
            Width = 121
          end
        end
      end
      object DBRadioGroup1: TDBRadioGroup
        Left = 10
        Top = 8
        Width = 185
        Height = 32
        Anchors = [akLeft, akTop, akRight]
        Caption = 'Exibi'#231#227'o da Ribon'
        Columns = 2
        DataField = 'MODELO_TEMA'
        DataSource = dsPrincipal
        Items.Strings = (
          'Completo'
          'Simplificado')
        TabOrder = 8
        Values.Strings = (
          '0'
          '1'
          '2')
      end
    end
  end
  inherited pnl_top: TPanel
    Width = 1211
    ExplicitWidth = 1211
  end
  inherited dsPrincipal: TDataSource
    DataSet = FDQ_usuarios
    Left = 845
    Top = 9
  end
  inherited BarraMenu: TcxImageList
    FormatVersion = 1
  end
  object FDQ_usuarios: TFDQuery [7]
    Connection = DtmBcoErp.FDBcoERP
    SQL.Strings = (
      'select * from TB_USUARIO')
    Left = 776
    Top = 8
    object FDQ_usuariosCOD_USU: TIntegerField
      FieldName = 'COD_USU'
      Origin = 'COD_USU'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object FDQ_usuariosNOME_USU: TWideStringField
      FieldName = 'NOME_USU'
      Origin = 'NOME_USU'
      Required = True
      Size = 10
    end
    object FDQ_usuariosSENHA_USU: TWideStringField
      FieldName = 'SENHA_USU'
      Origin = 'SENHA_USU'
      Required = True
      Size = 25
    end
    object FDQ_usuariosCOD_GRUPO: TIntegerField
      FieldName = 'COD_GRUPO'
      Origin = 'COD_GRUPO'
      Required = True
    end
    object FDQ_usuariosOPERADOR_CAIXA: TWideStringField
      FieldName = 'OPERADOR_CAIXA'
      Origin = 'OPERADOR_CAIXA'
      Required = True
      FixedChar = True
      Size = 1
    end
    object FDQ_usuariosTEMA_COR: TStringField
      FieldName = 'TEMA_COR'
      Origin = 'TEMA_COR'
      Size = 50
    end
    object FDQ_usuariosNOME_COMPLETO: TStringField
      FieldName = 'NOME_COMPLETO'
      Origin = 'NOME_COMPLETO'
      Required = True
      Size = 60
    end
    object FDQ_usuariosEMAIL_USU: TStringField
      FieldName = 'EMAIL_USU'
      Origin = 'EMAIL_USU'
      Size = 400
    end
    object FDQ_usuariosDATA_NASCIMENTO_USU: TDateField
      FieldName = 'DATA_NASCIMENTO_USU'
      Origin = 'DATA_NASCIMENTO_USU'
    end
    object FDQ_usuariosUSUARIO_ATIVO: TIntegerField
      FieldName = 'USUARIO_ATIVO'
      Origin = 'USUARIO_ATIVO'
    end
    object FDQ_usuariosMODELO_TEMA: TIntegerField
      FieldName = 'MODELO_TEMA'
      Origin = 'MODELO_TEMA'
      Required = True
    end
    object FDQ_usuariosUSA_TEMAPADRAO: TIntegerField
      FieldName = 'USA_TEMAPADRAO'
      Origin = 'USA_TEMAPADRAO'
    end
    object FDQ_usuariosUSUARIO_MASTER: TIntegerField
      FieldName = 'USUARIO_MASTER'
      Origin = 'USUARIO_MASTER'
      Required = True
    end
  end
  inherited ACBrEnterTab1: TACBrEnterTab
    Left = 176
  end
end
