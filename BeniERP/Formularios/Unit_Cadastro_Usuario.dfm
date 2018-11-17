inherited Form_Cadastro_usuario: TForm_Cadastro_usuario
  Caption = 'Cadastro de Usu'#225'rio'
  ClientHeight = 620
  ClientWidth = 1384
  ExplicitWidth = 1400
  ExplicitHeight = 659
  PixelsPerInch = 96
  TextHeight = 13
  inherited Shape1: TShape
    Top = 56
    Width = 1384
    ExplicitTop = 43
    ExplicitWidth = 1251
  end
  inherited cxPageControl1: TcxPageControl
    Top = 84
    Width = 1384
    Height = 519
    Properties.ActivePage = tbCadastro
    ExplicitTop = 84
    ExplicitWidth = 1384
    ExplicitHeight = 519
    ClientRectBottom = 517
    ClientRectRight = 1382
    inherited tbPesquisa: TcxTabSheet
      ExplicitLeft = 2
      ExplicitTop = 28
      ExplicitWidth = 1380
      ExplicitHeight = 489
      inherited Panel1: TPanel
        Width = 1380
        Height = 9
        Visible = False
        ExplicitWidth = 1380
        ExplicitHeight = 9
        inherited lblPesquisa: TcxLabel
          Style.IsFontAssigned = True
          Visible = False
          ExplicitHeight = 3
          AnchorX = 34
          AnchorY = 5
        end
        inherited Panel2: TPanel
          Height = 9
          ExplicitHeight = 9
          inherited edtText: TEdit
            Height = 0
          end
          inherited edtCurr: TcxCurrencyEdit
            ExplicitHeight = 0
          end
          inherited edtData: TDateTimePicker
            Height = 0
            ExplicitHeight = 0
          end
          inherited edtMask: TMaskEdit
            Height = 0
          end
        end
        inherited cxButton1: TcxButton
          Height = 3
          ExplicitHeight = 3
        end
        inherited pnlData2: TPanel
          Height = 9
          ExplicitHeight = 9
          inherited edtData2: TDateTimePicker
            Height = 0
            ExplicitHeight = 0
          end
        end
        inherited rgOptionGrid: TRadioGroup
          Height = 3
          Visible = False
          ExplicitHeight = 3
        end
      end
      object DBGrid1: TDBGrid
        Left = 0
        Top = 9
        Width = 1380
        Height = 480
        Align = alClient
        Color = clWhite
        DataSource = dsPrincipal
        DrawingStyle = gdsClassic
        GradientEndColor = 15519648
        TabOrder = 1
        TitleFont.Charset = DEFAULT_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -11
        TitleFont.Name = 'Tahoma'
        TitleFont.Style = []
        OnDblClick = DBGrid1DblClick
        OnKeyDown = DBGrid1KeyDown
        Columns = <
          item
            Expanded = False
            FieldName = 'COD_USU'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'NOME_USU'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'COD_GRUPO'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'NOME_COMPLETO'
            Width = 249
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'EMAIL_USU'
            Width = 188
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'DATA_NASCIMENTO_USU'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'USUARIO_ATIVO'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'USUARIO_MASTER'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'COD_EMPRESA_USU'
            Visible = True
          end>
      end
    end
    inherited tbCadastro: TcxTabSheet
      ExplicitLeft = 1
      ExplicitTop = 24
      ExplicitWidth = 1380
      ExplicitHeight = 489
      inherited Shape3: TShape
        Top = 481
        Width = 1380
        ExplicitLeft = -56
        ExplicitTop = 545
        ExplicitWidth = 1043
      end
      object Label1: TLabel
        Left = 47
        Top = 47
        Width = 37
        Height = 13
        Caption = 'C'#243'digo:'
        FocusControl = cxDBSpinEdit1
      end
      object Label2: TLabel
        Left = 58
        Top = 71
        Width = 26
        Height = 13
        Caption = 'login:'
        FocusControl = cxDBTextEdit1
      end
      object Label3: TLabel
        Left = 50
        Top = 98
        Width = 34
        Height = 13
        Caption = 'Senha:'
        FocusControl = cxDBTextEdit2
      end
      object Label4: TLabel
        Left = 15
        Top = 125
        Width = 69
        Height = 13
        Caption = 'Codigo Grupo:'
        FocusControl = cxDBSpinEdit2
      end
      object Label7: TLabel
        Left = 5
        Top = 152
        Width = 79
        Height = 13
        Caption = 'Nome Completo:'
        FocusControl = cxDBTextEdit5
      end
      object Label8: TLabel
        Left = 58
        Top = 179
        Width = 28
        Height = 13
        Caption = 'Email:'
        FocusControl = cxDBTextEdit6
      end
      object Label9: TLabel
        Left = 239
        Top = 78
        Width = 85
        Height = 13
        Caption = 'Data Nascimento:'
        FocusControl = cxDBDateEdit1
      end
      object Label5: TLabel
        Left = 243
        Top = 47
        Width = 81
        Height = 13
        Caption = 'C'#243'digo Empresa:'
        FocusControl = cxDBSpinEdit3
      end
      object cxDBSpinEdit1: TcxDBSpinEdit
        Left = 98
        Top = 44
        DataBinding.DataField = 'COD_USU'
        DataBinding.DataSource = dsPrincipal
        Enabled = False
        TabOrder = 0
        Width = 121
      end
      object cxDBTextEdit1: TcxDBTextEdit
        Left = 98
        Top = 71
        DataBinding.DataField = 'NOME_USU'
        DataBinding.DataSource = dsPrincipal
        Properties.CharCase = ecUpperCase
        TabOrder = 1
        Width = 121
      end
      object cxDBTextEdit2: TcxDBTextEdit
        Left = 98
        Top = 98
        DataBinding.DataField = 'SENHA_USU'
        DataBinding.DataSource = dsPrincipal
        Properties.EchoMode = eemPassword
        Properties.PasswordChar = '*'
        TabOrder = 2
        Width = 121
      end
      object cxDBSpinEdit2: TcxDBSpinEdit
        Left = 98
        Top = 125
        DataBinding.DataField = 'COD_GRUPO'
        DataBinding.DataSource = dsPrincipal
        TabOrder = 3
        Width = 121
      end
      object cxDBTextEdit5: TcxDBTextEdit
        Left = 98
        Top = 152
        DataBinding.DataField = 'NOME_COMPLETO'
        DataBinding.DataSource = dsPrincipal
        TabOrder = 4
        Width = 471
      end
      object cxDBTextEdit6: TcxDBTextEdit
        Left = 98
        Top = 179
        DataBinding.DataField = 'EMAIL_USU'
        DataBinding.DataSource = dsPrincipal
        TabOrder = 5
        Width = 471
      end
      object cxDBDateEdit1: TcxDBDateEdit
        Left = 330
        Top = 71
        DataBinding.DataField = 'DATA_NASCIMENTO_USU'
        DataBinding.DataSource = dsPrincipal
        TabOrder = 6
        Width = 121
      end
      object cxPageControl2: TcxPageControl
        Left = 0
        Top = 207
        Width = 1380
        Height = 271
        Align = alBottom
        TabOrder = 7
        Properties.ActivePage = cxTabSheet2
        Properties.CustomButtons.Buttons = <>
        ClientRectBottom = 269
        ClientRectLeft = 2
        ClientRectRight = 1378
        ClientRectTop = 28
        object cxTabSheet1: TcxTabSheet
          Caption = 'Par'#226'metros '
          ImageIndex = 0
          ExplicitHeight = 230
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
          ExplicitHeight = 230
          object Label6: TLabel
            Left = 5
            Top = 191
            Width = 48
            Height = 13
            Caption = 'Tema cor:'
          end
          object DBRadioGroup2: TDBRadioGroup
            Left = 0
            Top = 0
            Width = 1376
            Height = 189
            Align = alTop
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
            ExplicitTop = -4
          end
          object dxDBColorEdit1: TdxDBColorEdit
            Left = 6
            Top = 210
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
        Width = 417
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
      object cxDBSpinEdit3: TcxDBSpinEdit
        Left = 330
        Top = 44
        DataBinding.DataField = 'COD_EMPRESA_USU'
        DataBinding.DataSource = dsPrincipal
        TabOrder = 9
        Width = 121
      end
    end
  end
  inherited pnl_top: TPanel
    Top = 62
    Width = 1384
    ExplicitTop = 62
    ExplicitWidth = 1384
  end
  inherited Panel22: TPanel
    Top = 603
    Width = 1384
    ExplicitTop = 603
    ExplicitWidth = 1384
  end
  inherited ToolBar1: TToolBar
    AlignWithMargins = True
    Left = 3
    Top = 3
    Width = 1378
    Height = 47
    ExplicitLeft = 3
    ExplicitTop = 3
    ExplicitWidth = 1378
    ExplicitHeight = 47
  end
  inherited dsPrincipal: TDataSource
    DataSet = FDQ_usuarios
    Left = 405
    Top = 41
  end
  object FDQ_usuarios: TFDQuery [7]
    AfterEdit = FDQ_usuariosAfterEdit
    Connection = DtmBcoErp.FDBcoERP
    SQL.Strings = (
      'select * from TB_USUARIO')
    Left = 312
    Top = 48
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
    object FDQ_usuariosCOD_EMPRESA_USU: TIntegerField
      FieldName = 'COD_EMPRESA_USU'
      Origin = 'COD_EMPRESA_USU'
      Required = True
    end
  end
  inherited BarraMenu: TcxImageList
    FormatVersion = 1
  end
  inherited ACBrEnterTab1: TACBrEnterTab
    Left = 176
  end
  object FDQAutoIncremento: TFDQuery
    AfterEdit = FDQ_usuariosAfterEdit
    Connection = DtmBcoErp.FDBcoERP
    SQL.Strings = (
      'select max(COD_USU) as COD_USU from TB_USUARIO')
    Left = 552
    Top = 56
  end
end
