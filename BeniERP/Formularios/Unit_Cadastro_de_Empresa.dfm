inherited Form_Cadastro_de_Empresa: TForm_Cadastro_de_Empresa
  Caption = 'Cadastro de Loja'
  ClientHeight = 642
  ClientWidth = 1058
  ExplicitWidth = 1074
  ExplicitHeight = 681
  PixelsPerInch = 96
  TextHeight = 13
  inherited Shape1: TShape
    Top = 46
    Width = 1058
    ExplicitTop = 46
    ExplicitWidth = 1442
  end
  inherited ToolBar1: TToolBar
    AlignWithMargins = True
    Left = 3
    Top = 3
    Width = 1052
    Height = 37
    ExplicitLeft = 3
    ExplicitTop = 3
    ExplicitWidth = 1052
    ExplicitHeight = 37
  end
  inherited cxPageControl1: TcxPageControl
    Top = 74
    Width = 1058
    Height = 551
    Properties.ActivePage = tbCadastro
    ExplicitTop = 74
    ExplicitWidth = 1058
    ExplicitHeight = 551
    ClientRectBottom = 547
    ClientRectRight = 1054
    inherited tbPesquisa: TcxTabSheet
      ExplicitLeft = 4
      ExplicitTop = 24
      ExplicitWidth = 1050
      ExplicitHeight = 523
      inherited Panel1: TPanel
        Width = 1050
        Height = 25
        Visible = False
        ExplicitWidth = 1050
        ExplicitHeight = 25
        inherited lblPesquisa: TcxLabel
          Style.IsFontAssigned = True
          ExplicitHeight = 19
          AnchorX = 34
          AnchorY = 13
        end
        inherited Panel2: TPanel
          Height = 25
          ExplicitHeight = 25
          inherited edtText: TEdit
            Height = 7
          end
          inherited edtCurr: TcxCurrencyEdit
            ExplicitHeight = 7
          end
          inherited edtData: TDateTimePicker
            Height = 7
            ExplicitHeight = 7
          end
          inherited edtMask: TMaskEdit
            Height = 7
          end
        end
        inherited cxButton1: TcxButton
          Height = 19
          ExplicitHeight = 19
        end
        inherited pnlData2: TPanel
          Height = 25
          ExplicitHeight = 25
          inherited edtData2: TDateTimePicker
            Height = 7
            ExplicitHeight = 7
          end
        end
        inherited rgOptionGrid: TRadioGroup
          Height = 19
          ExplicitHeight = 19
        end
      end
      object DBGrid1: TDBGrid
        Left = 0
        Top = 25
        Width = 1050
        Height = 498
        Align = alClient
        DataSource = dsPrincipal
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
            FieldName = 'COD_EMP'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'RAZAO_EMP'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'END_EMP'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'BAI_EMP'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'CID_EMP'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'CEP_EMP'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'EST_EMP'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'INSC_EMP'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'TEL_EMP'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'FAX_EMP'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'CNPJ_EMP'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'INSCRICAO_MUNICIPAL'
            Visible = True
          end>
      end
    end
    inherited tbCadastro: TcxTabSheet
      ExplicitLeft = 4
      ExplicitTop = 24
      ExplicitWidth = 1050
      ExplicitHeight = 523
      inherited Shape3: TShape
        Top = 515
        Width = 1050
        ExplicitTop = 818
        ExplicitWidth = 1284
      end
      object PC: TPageControl
        Left = 0
        Top = 0
        Width = 1050
        Height = 512
        ActivePage = TabSheet2
        Align = alClient
        TabOrder = 0
        object TabSheet1: TTabSheet
          Caption = 'Dados'
          object Label1: TLabel
            Left = 8
            Top = 8
            Width = 33
            Height = 13
            Caption = 'C'#243'digo'
          end
          object Label2: TLabel
            Left = 8
            Top = 48
            Width = 74
            Height = 13
            Caption = 'Raz'#227'o Social(*)'
          end
          object Label6: TLabel
            Left = 8
            Top = 128
            Width = 45
            Height = 13
            Caption = 'Endere'#231'o'
          end
          object Label7: TLabel
            Left = 8
            Top = 168
            Width = 28
            Height = 13
            Caption = 'Bairro'
          end
          object Label11: TLabel
            Left = 8
            Top = 208
            Width = 25
            Height = 13
            Caption = 'CNPJ'
          end
          object Label12: TLabel
            Left = 168
            Top = 208
            Width = 65
            Height = 13
            Caption = 'Insc.Estadual'
          end
          object Label8: TLabel
            Left = 192
            Top = 168
            Width = 33
            Height = 13
            Caption = 'Cidade'
          end
          object Label9: TLabel
            Left = 432
            Top = 168
            Width = 33
            Height = 13
            Caption = 'Estado'
          end
          object Label10: TLabel
            Left = 512
            Top = 168
            Width = 19
            Height = 13
            Caption = 'CEP'
          end
          object Label13: TLabel
            Left = 432
            Top = 208
            Width = 42
            Height = 13
            Caption = 'Telefone'
          end
          object Label3: TLabel
            Left = 513
            Top = 208
            Width = 18
            Height = 13
            Caption = 'Fax'
          end
          object Label5: TLabel
            Left = 8
            Top = 248
            Width = 61
            Height = 13
            Caption = 'Respons'#225'vel'
          end
          object Label14: TLabel
            Left = 432
            Top = 128
            Width = 37
            Height = 13
            Caption = 'N'#250'mero'
          end
          object Label17: TLabel
            Left = 8
            Top = 88
            Width = 41
            Height = 13
            Caption = 'Fantasia'
          end
          object Label19: TLabel
            Left = 272
            Top = 208
            Width = 67
            Height = 13
            Caption = 'Insc.Municipal'
          end
          object cod_emp: TcxDBSpinEdit
            Left = 8
            Top = 21
            DataBinding.DataField = 'COD_EMP'
            DataBinding.DataSource = dsPrincipal
            TabOrder = 0
            Width = 121
          end
          object db_razao: TcxDBTextEdit
            Left = 8
            Top = 67
            DataBinding.DataField = 'RAZAO_EMP'
            DataBinding.DataSource = dsPrincipal
            TabOrder = 1
            Width = 403
          end
          object cxDBTextEdit2: TcxDBTextEdit
            Left = 8
            Top = 147
            DataBinding.DataField = 'END_EMP'
            DataBinding.DataSource = dsPrincipal
            TabOrder = 2
            Width = 403
          end
          object cxDBTextEdit3: TcxDBTextEdit
            Left = 8
            Top = 184
            DataBinding.DataField = 'BAI_EMP'
            DataBinding.DataSource = dsPrincipal
            TabOrder = 3
            Width = 169
          end
          object cxDBTextEdit4: TcxDBTextEdit
            Left = 183
            Top = 184
            DataBinding.DataField = 'CID_EMP'
            DataBinding.DataSource = dsPrincipal
            TabOrder = 4
            Width = 228
          end
          object cxDBTextEdit7: TcxDBTextEdit
            Left = 170
            Top = 224
            DataBinding.DataField = 'INSC_EMP'
            DataBinding.DataSource = dsPrincipal
            TabOrder = 5
            Width = 94
          end
          object cxDBTextEdit8: TcxDBTextEdit
            Left = 432
            Top = 224
            DataBinding.DataField = 'TEL_EMP'
            DataBinding.DataSource = dsPrincipal
            TabOrder = 6
            Width = 68
          end
          object cxDBTextEdit5: TcxDBTextEdit
            Left = 513
            Top = 224
            DataBinding.DataField = 'FAX_EMP'
            DataBinding.DataSource = dsPrincipal
            TabOrder = 7
            Width = 121
          end
          object cxDBTextEdit9: TcxDBTextEdit
            Left = 432
            Top = 147
            DataBinding.DataField = 'NUMERO_EMP'
            DataBinding.DataSource = dsPrincipal
            TabOrder = 8
            Width = 121
          end
          object cxDBTextEdit10: TcxDBTextEdit
            Left = 8
            Top = 267
            DataBinding.DataField = 'RESP_EMP'
            DataBinding.DataSource = dsPrincipal
            TabOrder = 9
            Width = 403
          end
          object cxDBTextEdit12: TcxDBTextEdit
            Left = 8
            Top = 107
            DataBinding.DataField = 'FANTASIA_EMP'
            DataBinding.DataSource = dsPrincipal
            TabOrder = 10
            Width = 403
          end
          object cxDBTextEdit15: TcxDBTextEdit
            Left = 8
            Top = 224
            DataBinding.DataField = 'CNPJ_EMP'
            DataBinding.DataSource = dsPrincipal
            TabOrder = 11
            Width = 121
          end
          object DBComboBox1: TDBComboBox
            Left = 432
            Top = 187
            Width = 68
            Height = 21
            Style = csDropDownList
            DataField = 'EST_EMP'
            DataSource = dsPrincipal
            Items.Strings = (
              'AC'
              'AL'
              'AM'
              'AP'
              'BA'
              'CE'
              'DF'
              'ES'
              'GO'
              'MA'
              'MG'
              'MS'
              'MT'
              'PA'
              'PB'
              'PE'
              'PI'
              'PR'
              'RJ'
              'RN'
              'RO'
              'RR'
              'RS'
              'SC'
              'SE'
              'SP'
              'TO'
              '')
            TabOrder = 12
          end
          object cxDBMaskEdit1: TcxDBMaskEdit
            Left = 513
            Top = 187
            DataBinding.DataField = 'CEP_EMP'
            DataBinding.DataSource = dsPrincipal
            TabOrder = 13
            Width = 81
          end
          object DBImage1: TDBImage
            Left = 432
            Top = 17
            Width = 135
            Height = 105
            DataField = 'CAMINHO_FOTO_EMP'
            DataSource = dsPrincipal
            TabOrder = 14
          end
          object cxDBTextEdit13: TcxDBTextEdit
            Left = 272
            Top = 224
            DataBinding.DataField = 'INSCRICAO_MUNICIPAL'
            DataBinding.DataSource = dsPrincipal
            TabOrder = 15
            Width = 139
          end
          object Button2: TButton
            Left = 135
            Top = 223
            Width = 29
            Height = 23
            ImageIndex = 9
            Images = BarraMenu
            TabOrder = 16
          end
        end
        object TabSheet2: TTabSheet
          Caption = 'Par'#226'metros'
          ImageIndex = 1
          object Label4: TLabel
            Left = 8
            Top = 128
            Width = 73
            Height = 13
            Caption = 'Abrev.Etiqueta'
          end
          object Label15: TLabel
            Left = 8
            Top = 48
            Width = 79
            Height = 13
            Caption = 'Tipo de Empresa'
          end
          object Label16: TLabel
            Left = 144
            Top = 128
            Width = 107
            Height = 13
            Caption = 'Tipo de Carga Balan'#231'a'
          end
          object Label18: TLabel
            Left = 8
            Top = 88
            Width = 131
            Height = 13
            Caption = 'Caminho Validador Sintegra'
          end
          object BtnCaminhoValidador: TButton
            Left = 366
            Top = 107
            Width = 22
            Height = 21
            Caption = '...'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Segoe UI'
            Font.Style = []
            ParentFont = False
            TabOrder = 1
            OnClick = BtnCaminhoValidadorClick
          end
          object GroupBox1: TGroupBox
            Left = 3
            Top = 179
            Width = 580
            Height = 121
            Caption = 'EFD'
            TabOrder = 0
            object Label21: TLabel
              Left = 8
              Top = 24
              Width = 24
              Height = 13
              Caption = 'Perfil'
            end
            object Label22: TLabel
              Left = 64
              Top = 24
              Width = 97
              Height = 13
              Caption = 'C'#243'd.Munic'#237'pio(IBGE)'
            end
            object Label23: TLabel
              Left = 8
              Top = 64
              Width = 116
              Height = 13
              Caption = 'Indicador Tipo Atividade'
            end
            object Label24: TLabel
              Left = 260
              Top = 82
              Width = 89
              Height = 13
              Caption = '* Perfil (A, B ou C)'
            end
            object Label25: TLabel
              Left = 164
              Top = 98
              Width = 192
              Height = 13
              Caption = '* Tipo Atividade (0-Industrial  1-Outros)'
            end
            object Label20: TLabel
              Left = 208
              Top = 24
              Width = 127
              Height = 13
              Caption = 'Vers'#227'o Layout EFD - Fiscal'
            end
            object BConfigEFD: TButton
              Left = 438
              Top = 93
              Width = 139
              Height = 25
              Caption = 'Config. EFD Pis Cofins'
              TabOrder = 0
              OnClick = BConfigEFDClick
            end
          end
          object cxDBTextEdit6: TcxDBTextEdit
            Left = 8
            Top = 147
            DataBinding.DataField = 'NOME_EMP_ETIQUETA'
            DataBinding.DataSource = dsPrincipal
            TabOrder = 2
            Width = 120
          end
          object db_combo_tipo_empresa: TDBComboBox
            Left = 8
            Top = 63
            Width = 350
            Height = 21
            Style = csDropDownList
            DataField = 'TIPO_EMP'
            DataSource = dsPrincipal
            Items.Strings = (
              'SIMPLES NACIONAL'
              'LUCRO REAL'
              'LUCRO PRESUMIDO'
              '')
            TabOrder = 3
          end
          object db_chk_cli_prevenda: TDBCheckBox
            Left = 8
            Top = 3
            Width = 281
            Height = 17
            Caption = 'Mostrar Situa'#231#227'o do Cliente nas Pre-Vendas'
            DataField = 'MOSTRAR_SITCLI_PREVENDA'
            DataSource = dsPrincipal
            TabOrder = 4
            ValueChecked = 'S'
            ValueUnchecked = 'N'
          end
          object db_chk_cli_sem_cpf: TDBCheckBox
            Left = 8
            Top = 26
            Width = 194
            Height = 17
            Caption = 'Cadastrar Cliente sem CPF'
            DataField = 'CADASTRAR_CLIENTE_SEM_CPF'
            DataSource = dsPrincipal
            TabOrder = 5
            ValueChecked = 'S'
            ValueUnchecked = 'N'
          end
          object db_carga_balanca_tipo: TDBComboBox
            Left = 144
            Top = 147
            Width = 214
            Height = 21
            Style = csDropDownList
            DataField = 'TIPO_CARGA_BALANCA'
            DataSource = dsPrincipal
            Items.Strings = (
              'POR PRODUTO'
              'POR COD.DE BARRA'
              '')
            TabOrder = 6
          end
          object dbedit_caminhosintegravalidador: TcxDBTextEdit
            Left = 8
            Top = 107
            DataBinding.DataField = 'CAMINHO_VALIDADOR_SINTEGRA'
            DataBinding.DataSource = dsPrincipal
            TabOrder = 7
            Width = 350
          end
          object cxDBTextEdit14: TcxDBTextEdit
            Left = 12
            Top = 219
            DataBinding.DataField = 'PERFIL_EFD'
            DataBinding.DataSource = dsPrincipal
            TabOrder = 8
            Width = 33
          end
          object cxDBTextEdit16: TcxDBTextEdit
            Left = 67
            Top = 219
            DataBinding.DataField = 'CODIGO_MUNICIPIO'
            DataBinding.DataSource = dsPrincipal
            TabOrder = 9
            Width = 97
          end
          object cxDBSpinEdit2: TcxDBSpinEdit
            Left = 12
            Top = 262
            DataBinding.DataField = 'TIPO_ATIVIDADE_EFD'
            DataBinding.DataSource = dsPrincipal
            TabOrder = 10
            Width = 33
          end
          object DBComboBox4: TDBComboBox
            Left = 211
            Top = 219
            Width = 136
            Height = 21
            Style = csDropDownList
            DataField = 'VERSAO_EFD'
            DataSource = dsPrincipal
            Items.Strings = (
              'Mais Novo'
              '1.0.3'
              '1.0.4'
              '1.0.5'
              '1.0.8'
              '')
            TabOrder = 11
          end
          object Button1: TButton
            Left = 167
            Top = 218
            Width = 29
            Height = 23
            ImageIndex = 9
            Images = BarraMenu
            TabOrder = 12
          end
        end
        object Contador: TTabSheet
          Caption = 'Contador'
          ImageIndex = 3
          object Label26: TLabel
            Left = 8
            Top = 8
            Width = 27
            Height = 13
            Caption = 'Nome'
          end
          object Label27: TLabel
            Left = 8
            Top = 48
            Width = 45
            Height = 13
            Caption = 'Endere'#231'o'
          end
          object Label28: TLabel
            Left = 72
            Top = 88
            Width = 28
            Height = 13
            Caption = 'Bairro'
          end
          object Label29: TLabel
            Left = 429
            Top = 88
            Width = 66
            Height = 13
            Caption = 'C'#243'd.Munic'#237'pio'
          end
          object Label31: TLabel
            Left = 521
            Top = 88
            Width = 19
            Height = 13
            Caption = 'CEP'
          end
          object Label32: TLabel
            Left = 8
            Top = 88
            Width = 37
            Height = 13
            Caption = 'N'#250'mero'
          end
          object Label33: TLabel
            Left = 135
            Top = 128
            Width = 19
            Height = 13
            Caption = 'CPF'
          end
          object Label34: TLabel
            Left = 328
            Top = 128
            Width = 42
            Height = 13
            Caption = 'Telefone'
          end
          object Label35: TLabel
            Left = 440
            Top = 128
            Width = 18
            Height = 13
            Caption = 'Fax'
          end
          object Label30: TLabel
            Left = 237
            Top = 128
            Width = 21
            Height = 13
            Caption = 'CRC'
          end
          object Label36: TLabel
            Left = 8
            Top = 128
            Width = 25
            Height = 13
            Caption = 'CNPJ'
          end
          object Label37: TLabel
            Left = 8
            Top = 168
            Width = 24
            Height = 13
            Caption = 'Email'
          end
          object cxDBTextEdit17: TcxDBTextEdit
            Left = 8
            Top = 27
            DataBinding.DataField = 'NOME_CONTADOR'
            DataBinding.DataSource = dsPrincipal
            TabOrder = 0
            Width = 609
          end
          object cxDBTextEdit18: TcxDBTextEdit
            Left = 118
            Top = 144
            DataBinding.DataField = 'CPF_CONTADOR'
            DataBinding.DataSource = dsPrincipal
            TabOrder = 1
            Width = 104
          end
          object cxDBTextEdit19: TcxDBTextEdit
            Left = 237
            Top = 144
            DataBinding.DataField = 'CRC_CONTADOR'
            DataBinding.DataSource = dsPrincipal
            TabOrder = 2
            Width = 83
          end
          object cxDBTextEdit20: TcxDBTextEdit
            Left = 8
            Top = 144
            DataBinding.DataField = 'CNPJ_CONTADOR'
            DataBinding.DataSource = dsPrincipal
            TabOrder = 3
            Width = 102
          end
          object cxDBTextEdit21: TcxDBTextEdit
            Left = 516
            Top = 104
            DataBinding.DataField = 'CEP_CONTADOR'
            DataBinding.DataSource = dsPrincipal
            TabOrder = 4
            Width = 101
          end
          object cxDBTextEdit22: TcxDBTextEdit
            Left = 8
            Top = 67
            DataBinding.DataField = 'END_CONTADOR'
            DataBinding.DataSource = dsPrincipal
            TabOrder = 5
            Width = 609
          end
          object cxDBTextEdit28: TcxDBTextEdit
            Left = 8
            Top = 187
            DataBinding.DataField = 'EMAIL_CONTADOR'
            DataBinding.DataSource = dsPrincipal
            TabOrder = 6
            Width = 609
          end
          object cxDBTextEdit27: TcxDBTextEdit
            Left = 431
            Top = 104
            DataBinding.DataField = 'CODIGO_MUNICIPIO_CONTADOR'
            DataBinding.DataSource = dsPrincipal
            TabOrder = 7
            Width = 77
          end
          object cxDBTextEdit23: TcxDBTextEdit
            Left = 7
            Top = 104
            DataBinding.DataField = 'NUMERO_CONTADOR'
            DataBinding.DataSource = dsPrincipal
            TabOrder = 8
            Width = 49
          end
          object cxDBTextEdit24: TcxDBTextEdit
            Left = 62
            Top = 104
            DataBinding.DataField = 'BAIRRO_CONTADOR'
            DataBinding.DataSource = dsPrincipal
            TabOrder = 9
            Width = 363
          end
          object cxDBTextEdit25: TcxDBTextEdit
            Left = 326
            Top = 144
            DataBinding.DataField = 'TEL_CONTADOR'
            DataBinding.DataSource = dsPrincipal
            TabOrder = 10
            Width = 108
          end
          object cxDBTextEdit26: TcxDBTextEdit
            Left = 440
            Top = 144
            DataBinding.DataField = 'FAX_CONTADOR'
            DataBinding.DataSource = dsPrincipal
            TabOrder = 11
            Width = 177
          end
        end
        object TabSheet3: TTabSheet
          Caption = 'Imagem'
          ImageIndex = 2
          object GroupBox6: TGroupBox
            Left = 8
            Top = 12
            Width = 337
            Height = 209
            Caption = 'Foto'
            TabOrder = 0
            object BtnLimpa: TBitBtn
              Left = 248
              Top = 104
              Width = 75
              Height = 25
              Caption = '&Limpa'
              Glyph.Data = {
                36030000424D3603000000000000360000002800000010000000100000000100
                18000000000000030000120B0000120B00000000000000000000FF00FFFF00FF
                FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00
                FFFF00FF0732DE0732DEFF00FF0732DE0732DEFF00FFFF00FFFF00FFFF00FFFF
                00FFFF00FFFF00FFFF00FFFF00FFFF00FF0732DE0732DEFF00FFFF00FF0732DE
                0732DE0732DEFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF0732
                DE0732DEFF00FFFF00FFFF00FF0732DE0732DD0732DE0732DEFF00FFFF00FFFF
                00FFFF00FFFF00FFFF00FF0732DE0732DEFF00FFFF00FFFF00FFFF00FFFF00FF
                0534ED0732DF0732DE0732DEFF00FFFF00FFFF00FFFF00FF0732DE0732DEFF00
                FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF0732DE0732DE0732DDFF
                00FF0732DD0732DE0732DEFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF
                FF00FFFF00FFFF00FF0732DD0633E60633E60633E90732DCFF00FFFF00FFFF00
                FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF0633E307
                32E30534EFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF
                FF00FFFF00FFFF00FF0732DD0534ED0533E90434EF0434F5FF00FFFF00FFFF00
                FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF0434F40534EF0533EBFF
                00FFFF00FF0434F40335F8FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF
                FF00FF0335FC0534EF0434F8FF00FFFF00FFFF00FFFF00FF0335FC0335FBFF00
                FFFF00FFFF00FFFF00FFFF00FFFF00FF0335FB0335FB0335FCFF00FFFF00FFFF
                00FFFF00FFFF00FFFF00FF0335FB0335FBFF00FFFF00FFFF00FFFF00FF0335FB
                0335FB0335FBFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00
                FF0335FBFF00FFFF00FF0335FB0335FB0335FBFF00FFFF00FFFF00FFFF00FFFF
                00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF0335FB0335FB
                FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00
                FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF
                00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF}
              TabOrder = 0
            end
            object Panel3: TPanel
              Left = 8
              Top = 16
              Width = 225
              Height = 185
              BevelOuter = bvNone
              BevelWidth = 4
              TabOrder = 1
              object DBImage2: TDBImage
                Left = 0
                Top = 0
                Width = 216
                Height = 160
                DataField = 'CAMINHO_FOTO_EMP'
                DataSource = dsPrincipal
                TabOrder = 0
              end
            end
            object BtnFoto: TBitBtn
              Left = 248
              Top = 64
              Width = 75
              Height = 25
              Caption = '&Foto'
              Glyph.Data = {
                36030000424D3603000000000000360000002800000010000000100000000100
                18000000000000030000120B0000120B00000000000000000000FF00FFFF00FF
                FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00
                FFFF00FFFF00FFFF00FFFF00FF29ABD735B3DC23A9D7FF00FFFF00FFFF00FFFF
                00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF29ABD7
                AFF6FC86EFFA49C2E449C2E449C2E434B4DD24AAD7FF00FFFF00FFFF00FFFF00
                FFFF00FFFF00FFFF00FFFF00FF29ABD7A6E9F59EFFFF97FCFF99FBFF95F7FF8D
                F2FE83EAFA49C2E449C2E43AB8DFFF00FFFF00FFFF00FFFF00FFFF00FF29ABD7
                8BD7ECABFEFF90F8FF91F6FF90F5FF8FF5FF8FF4FF90F4FF95F6FF75DDF52DAF
                DBFF00FFFF00FFFF00FFFF00FF29ABD729ABD7AAF0FA91FAFF91F6FF90F5FF8E
                F4FF8DF2FE8BF1FE8CF1FF77DFF656CAEAFF00FFFF00FFFF00FFFF00FF29ABD7
                7BE5F429ABD79EFEFF8DF7FF8EF6FF8CF4FF8DF2FE8BF1FE8CF1FF72DDF50571
                0A2CB0DAFF00FFFF00FFFF00FF29ABD793F9FD29ABD7A8E9F5A8F0FAA4F1FBA1
                F7FF8CF3FF8AF1FE05710A1A8E2B0EA31B05710AFF00FFFF00FFFF00FF29ABD7
                9DFEFF86F2FB29ABD729ABD729ABD729ABD7AFF2FB0C84140EA31B0EA31B0EA3
                1B2DB0471FA8D6FF00FFFF00FF29ABD79AFCFF96FBFF95FBFF95FAFF90F7FF6C
                DEF3087E100C84140975130EA31B0EA31B0EA31B148D23FF00FFFF00FF29ABD7
                9BFDFF94FAFF92F8FF91F6FF92F7FF93F9FF84EFFD29ABD709751324B53B0571
                0A05710A05710AFF00FFFF00FF29ABD7A4FFFF94FCFF92F9FF93F8FF8FEDFA90
                ECFA95EEFC96F1FD087E1042CE6705710A08831005710AFF00FFFF00FF25A8D6
                29ABD79EF5FB9FF7FD05710A2BAED925A8D628ABD7087E1058E08758E0870571
                0AFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF29ABD730AED92CADD805710A58
                E08758E08758E08705710A05710A08810FFF00FFFF00FFFF00FFFF00FFFF00FF
                FF00FFFF00FFFF00FFFF00FFFF00FF05710A05710A05710A087E10067A0DFF00
                FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF
                00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF}
              TabOrder = 2
            end
          end
        end
      end
    end
  end
  inherited pnl_top: TPanel
    Top = 52
    Width = 1058
    ExplicitTop = 52
    ExplicitWidth = 1058
  end
  inherited Panel22: TPanel
    Top = 625
    Width = 1058
    ExplicitTop = 625
    ExplicitWidth = 1058
  end
  inherited dsPrincipal: TDataSource
    DataSet = FDQ_Principal
    Left = 168
    Top = 47
  end
  inherited BarraMenu: TcxImageList
    FormatVersion = 1
    ImageInfo = <
      item
        Image.Data = {
          36100000424D3610000000000000360000002800000020000000200000000100
          2000000000000010000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000010100010000000001000001010000010000
          0000010100010000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          000001000001150E00155C3E015C93620294B77901B8CC8602CCCC8602CCB779
          01B8936202945C3E015C150E0015010000010000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000003121
          0131AA7002AAF8A303F9FDA403FEFFA603FFFFA603FFFFA603FFFFA603FFFFA6
          03FFFFA603FFFDA403FEF8A303F9AA7002AA3121013100000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          000000000000000000000000000000000000000000000C08000C96650297FBA4
          03FCFFA603FFFFA603FFFFA603FFFFA603FFFFA603FFFFA603FFFFA603FFFFA6
          03FFFFA603FFFFA603FFFFA603FFFFA603FFFBA403FC966502970C08000C0000
          0000000000000000000000000000000000000000000000000000000000000000
          00000000000000000000000000000000000021160021D38C02D4FFA603FFFFA6
          03FFFFA603FFFFA603FFFFA603FFFFA603FFFFA603FFFFA603FFFFA603FFFFA6
          03FFFFA603FFFFA603FFFFA603FFFFA603FFFFA603FFFFA603FFD38C02D42116
          0021000000000000000000000000000000000000000000000000000000000000
          000000000000000000000000000021160021E09403E1FFA603FFFFA603FFFFA6
          03FFFFA603FFFFA603FFFFA603FFFFA603FFFFA603FFFFA603FFFFA603FFFFA6
          03FFFFA603FFFFA603FFFFA603FFFFA603FFFFA603FFFFA603FFFFA603FFE094
          03E1211600210000000000000000000000000000000000000000000000000000
          000000000000000000000C08000CD38C02D4FFA603FFFFA603FFFFA603FFFFA6
          03FFFFA603FFFFA603FFFFA603FFFFA603FFFFA603FFFFA603FFFFA603FFFFA6
          03FFFFA603FFFFA603FFFFA603FFFFA603FFFFA603FFFFA603FFFFA603FFFFA6
          03FFD38C02D40C08000C00000000000000000000000000000000000000000000
          0000000000000100000196630297FFA603FFFFA603FFFFA603FFFFA603FFFFA6
          03FFFFA603FFFFA603FFFFA603FFFFA603FFFFA603FFFFA603FFFFA603FFFFA6
          03FFFFA603FFFFA603FFFFA603FFFFA603FFFFA603FFFFA603FFFFA603FFFFA6
          03FFFFA603FF9663029701000001000000000000000000000000000000000000
          00000000000032210132FBA403FCFFA603FFFFA603FFFFA603FFFFA603FFFFA6
          03FFFFA603FFFFA603FFFFA603FFFFA603FFFFA603FFFFA603FFFFA603FFFFA6
          03FFFFA603FFFFA603FFFFA603FFFFA603FFFFA603FFFFA603FFFFA603FFFFA6
          03FFFFA603FFFBA403FC32210132000000000000000000000000000000000000
          000001000001AA7002AAFFA603FFFFA603FFFFA603FFFFA603FFFFA603FFFFA6
          03FFFFA603FFFFA603FFFFA603FFFFA603FFFFA603FFFBA403FCFBA403FCFFA6
          03FFFFA603FFFFA603FFFFA603FFFFA603FFFFA603FFFFA603FFFFA603FFFFA6
          03FFFFA603FFFFA603FFAA7002AA010000010000000000000000000000000000
          0000140D0014F8A303F9FFA603FFFFA603FFFFA603FFFFA603FFFFA603FFFFA6
          03FFFFA603FFFFA603FFFFA603FFFFA603FFEA9B03EB0C08000C0B08000BEA9B
          03EBFFA603FFFFA603FFFFA603FFFFA603FFFFA603FFFFA603FFFFA603FFFFA6
          03FFFFA603FFFFA603FFF8A303F9140D00140000000000000000000000000000
          00005C3E015CFDA503FEFFA603FFFFA603FFFFA603FFFFA603FFFFA603FFFFA6
          03FFFFA603FFFFA603FFFFA603FFFFA603FFE19603E20101000101010001E196
          03E2FFA603FFFFA603FFFFA603FFFFA603FFFFA603FFFFA603FFFFA603FFFFA6
          03FFFFA603FFFFA603FFFDA503FE5C3D015C0000000000000000000000000101
          000193620294FFA603FFFFA603FFFFA603FFFFA603FFFFA603FFFFA603FFFFA6
          03FFFFA603FFFFA603FFFFA603FFFFA603FFE19603E20101000101010001E196
          03E2FFA603FFFFA603FFFFA603FFFFA603FFFFA603FFFFA603FFFFA603FFFFA6
          03FFFFA603FFFFA603FFFFA603FF936202940101000100000000000000000000
          0000B77901B8FFA603FFFFA603FFFFA603FFFFA603FFFFA603FFFFA603FFFFA6
          03FFFFA603FFEE9D03EFE79903E8E79903E8CD8902CE0101000101010001CD89
          02CEE79903E8E79903E8EE9D03EFFFA603FFFFA603FFFFA603FFFFA603FFFFA6
          03FFFFA603FFFFA603FFFFA603FFB77901B80000000000000000000000000100
          0001CC8602CCFFA603FFFFA603FFFFA603FFFFA603FFFFA603FFFFA603FFFFA6
          03FFFBA403FC0C08000C01010001010100010100000100000000000000000100
          000101010001010100010C08000CFBA403FCFFA603FFFFA603FFFFA603FFFFA6
          03FFFFA603FFFFA603FFFFA603FFCC8602CC0100000100000000000000000100
          0001CC8602CCFFA603FFFFA603FFFFA603FFFFA603FFFFA603FFFFA603FFFFA6
          03FFFBA403FC0906000901010001010100010101000100000000000000000101
          0001010100010101000109060009FBA303FCFFA603FFFFA603FFFFA603FFFFA6
          03FFFFA603FFFFA603FFFFA603FFCC8602CC0100000100000000000000000000
          0000B77901B8FFA603FFFFA603FFFFA603FFFFA603FFFFA603FFFFA603FFFFA6
          03FFFFA603FFE39503E4D89003D9D89003D9C08102C00101000101010001C081
          02C0D78E03D8D78E03D8E29603E3FFA603FFFFA603FFFFA603FFFFA603FFFFA6
          03FFFFA603FFFFA603FFFFA603FFB77901B80000000000000000000000000101
          000193620294FFA603FFFFA603FFFFA603FFFFA603FFFFA603FFFFA603FFFFA6
          03FFFFA603FFFFA603FFFFA603FFFFA603FFE09403E10101000101010001E196
          03E2FFA603FFFFA603FFFFA603FFFFA603FFFFA603FFFFA603FFFFA603FFFFA6
          03FFFFA603FFFFA603FFFFA603FF936202940101000100000000000000000000
          00005C3E015CFDA503FEFFA603FFFFA603FFFFA603FFFFA603FFFFA603FFFFA6
          03FFFFA603FFFFA603FFFFA603FFFFA603FFE09403E10101000101010001E196
          03E2FFA603FFFFA603FFFFA603FFFFA603FFFFA603FFFFA603FFFFA603FFFFA6
          03FFFFA603FFFFA603FFFDA503FE5C3E015C0000000000000000000000000000
          0000140D0014F8A303F9FFA603FFFFA603FFFFA603FFFFA603FFFFA603FFFFA6
          03FFFFA603FFFFA603FFFFA603FFFFA603FFE89A03E90503000505030005E89A
          03E9FFA603FFFFA603FFFFA603FFFFA603FFFFA603FFFFA603FFFFA603FFFFA6
          03FFFFA603FFFFA603FFF8A303F9140D00140000000000000000000000000000
          000001000001AA7002AAFFA603FFFFA603FFFFA603FFFFA603FFFFA603FFFFA6
          03FFFFA603FFFFA603FFFFA603FFFFA603FFFFA603FFF19E03F2F19E03F2FFA6
          03FFFFA603FFFFA603FFFFA603FFFFA603FFFFA603FFFFA603FFFFA603FFFFA6
          03FFFFA603FFFFA603FFAA7002AA010000010000000000000000000000000000
          00000000000032210132FBA403FCFFA603FFFFA603FFFFA603FFFFA603FFFFA6
          03FFFFA603FFFFA603FFFFA603FFFFA603FFFFA603FFFFA603FFFFA603FFFFA6
          03FFFFA603FFFFA603FFFFA603FFFFA603FFFFA603FFFFA603FFFFA603FFFFA6
          03FFFFA603FFFBA403FC32210132000000000000000000000000000000000000
          0000000000000100000196630297FFA603FFFFA603FFFFA603FFFFA603FFFFA6
          03FFFFA603FFFFA603FFFFA603FFFFA603FFFFA603FFFFA603FFFFA603FFFFA6
          03FFFFA603FFFFA603FFFFA603FFFFA603FFFFA603FFFFA603FFFFA603FFFFA6
          03FFFFA603FF9663029701000001000000000000000000000000000000000000
          000000000000000000000C08000CD38C02D4FFA603FFFFA603FFFFA603FFFFA6
          03FFFFA603FFFFA603FFFFA603FFFFA603FFFFA603FFFFA603FFFFA603FFFFA6
          03FFFFA603FFFFA603FFFFA603FFFFA603FFFFA603FFFFA603FFFFA603FFFFA6
          03FFD38C02D40C08000C00000000000000000000000000000000000000000000
          000000000000000000000000000021160021E09403E1FFA603FFFFA603FFFFA6
          03FFFFA603FFFFA603FFFFA603FFFFA603FFFFA603FFFFA603FFFFA603FFFFA6
          03FFFFA603FFFFA603FFFFA603FFFFA603FFFFA603FFFFA603FFFFA603FFE094
          03E1211600210000000000000000000000000000000000000000000000000000
          00000000000000000000000000000000000021160021D38C02D4FFA603FFFFA6
          03FFFFA603FFFFA603FFFFA603FFFFA603FFFFA603FFFFA603FFFFA603FFFFA6
          03FFFFA603FFFFA603FFFFA603FFFFA603FFFFA603FFFFA603FFD38C02D42116
          0021000000000000000000000000000000000000000000000000000000000000
          000000000000000000000000000000000000000000000C08000C96650297FBA4
          03FCFFA603FFFFA603FFFFA603FFFFA603FFFFA603FFFFA603FFFFA603FFFFA6
          03FFFFA603FFFFA603FFFFA603FFFFA603FFFBA403FC966502970C08000C0000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000003121
          0131AA7002AAF8A303F9FDA403FEFFA603FFFFA603FFFFA603FFFFA603FFFFA6
          03FFFFA603FFFDA403FEF8A303F9AA7002AA3121013100000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          000001000001150E00155C3E015C93620294B77901B8CC8602CCCC8602CCB779
          01B8936202945C3E015C150E0015010000010000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000010100010000000001000001010000010000
          0000010100010000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000}
      end
      item
        Image.Data = {
          36100000424D3610000000000000360000002800000020000000200000000100
          2000000000000010000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          000000000000201E18235E574A63655D4F69655D4F69655D4F69655D4F69655D
          4F69655D4F69655D4F69655D4F69655D4F69655D4F69655D4F69655D4F69655D
          4F69655D4F69655D4F69655D4F69655D4F69655D4F69655D4F69655D4F69655D
          4F69655D4F695F574A63211E1823000000000000000000000000000000000000
          000059400167EDD9A9FAF9EBD2FFF9EBD2FFF9EBD2FFF9EBD2FFF9EBD2FFF9EB
          D2FFF9EBD2FFF9EBD2FFF9EBD2FFF9EBD2FFF9EBD2FFF9EBD2FFF9EBD2FFF9EB
          D2FFF9EBD2FFF9EBD2FFF9EBD2FFF9EBD2FFF9EBD2FFF9EBD2FFF9EBD2FFF9EB
          D2FFF9EBD2FFF9EBD2FFEDD8A9FA583E00670000000000000000000000001C15
          0120DCA504FAF3DEACFFF9ECD5FFF9ECD5FFF9ECD5FFF9ECD4FFF9ECD4FFF9EC
          D4FFF9ECD4FFF9ECD4FFF9ECD4FFF9ECD4FFF9ECD4FFF9ECD4FFF9ECD4FFF9EC
          D4FFF9ECD4FFF9ECD4FFF9ECD4FFF9ECD4FFF9ECD4FFF9ECD4FFF9ECD4FFF9EC
          D5FFF9ECD5FFF9ECD5FFF3DEACFFDAA103FA1C14012000000000000000005440
          035FE2AC06FFF4E0AFFFFAEED9FFFAEED9FFEAD09BFFE7CB90FFE7CA8EFFE6C9
          8CFFE6C889FFE5C787FFE5C685FFE4C584FFE4C482FFE4C481FFE4C480FFE4C4
          80FFE4C480FFE4C480FFE4C480FFE4C480FFE4C480FFE4C480FFE3C27EFFF5E4
          C5FFFAEED9FFFAEED9FFF4E0AFFFE1AB06FF543E035F00000000000000005A44
          0466E2AD0AFFF5E2B3FFFAF0DDFFFAF0DDFFFAF0DDFFFAF0DDFFFAF0DDFFFAF0
          DDFFFAF0DDFFFAF0DDFFFAF0DDFFFAF0DDFFFAF0DDFFFAF0DDFFFAF0DDFFFAF0
          DDFFFAF0DDFFFAF0DDFFFAF0DDFFFAF0DDFFFAF0DDFFFAF0DDFFFAF0DDFFFAF0
          DDFFFAF0DDFFFAF0DDFFF5E2B3FFE2AD0AFF5A44046600000000000000005A45
          0666E3AF0EFFF5E3B6FFFBF1E0FFFBF1E0FFFBF1E0FFFBF1E0FFFBF1E0FFFBF1
          E0FFFBF1E0FFFBF1E0FFFBF1E0FFFBF1E0FFFBF1E0FFFBF1E0FFFBF1E0FFFBF1
          E0FFFBF1E0FFFBF1E0FFFBF1E0FFFBF1E0FFFBF1E0FFFBF1E0FFFBF1E0FFFBF1
          E0FFFBF1E0FFFBF1E0FFF5E3B6FFE3AF0EFF5A45066600000000000000005B46
          0766E4B112FFF6E5BAFFFBF3E5FFFBF3E5FFF9EEDBFFF8EDD8FFF8EDD8FFF8ED
          D7FFF8EDD7FFF8ECD7FFF8ECD6FFF8ECD6FFF8ECD6FFF8ECD6FFF8ECD5FFF8EC
          D5FFF8ECD5FFF8ECD5FFF8ECD5FFF8ECD5FFF8ECD5FFF8ECD5FFF7ECD5FFFBF2
          E2FFFBF3E5FFFBF3E5FFF6E5BAFFE4B112FF5B46076600000000000000005B46
          0966E6B216FFF6E6BDFFFCF5E8FFFCF5E9FFEEDAAFFFECD6A6FFEBD4A4FFEBD4
          A2FFEBD3A1FFEAD29FFFEAD19DFFE9D09BFFE9D09AFFE9CF99FFE9CF99FFE9CF
          99FFE9CF99FFE9CF99FFE9CF99FFE9CF99FFE9CF99FFE9CF99FFE8CE97FFF7EC
          D5FFFCF5E8FFFCF5E8FFF6E6BDFFE6B216FF5B46096600000000000000005C47
          0B66E7B41BFFF7E8C0FFFCF7ECFFFCF7ECFFFCF7ECFFFCF7ECFFFCF7ECFFFCF7
          ECFFFCF7ECFFFCF7ECFFFCF7ECFFFCF7ECFFFCF7ECFFFCF7ECFFFCF7ECFFFCF7
          ECFFFCF7ECFFFCF7ECFFFCF7ECFFFCF7ECFFFCF7ECFFFCF7ECFFFCF7ECFFFCF7
          ECFFFCF7ECFFFCF7ECFFF7E8C0FFE7B41BFF5C470B6600000000000000005C48
          0D66E8B61FFFF8E9C4FFFDF8EFFFFDF8EFFFFDF8EFFFFDF8EFFFFDF8EFFFFDF8
          EFFFFDF8EFFFFDF8EFFFFDF8EFFFFDF8EFFFFDF8EFFFFDF8EFFFFDF8EFFFFDF8
          EFFFFDF8EFFFFDF8EFFFFDF8EFFFFDF8EFFFFDF8EFFFFDF8EFFFFDF8EFFFFDF8
          EFFFFDF8EFFFFDF8EFFFF8E9C4FFE8B61FFF5C480D6600000000000000005D49
          0E66E9B824FFF8EBC7FFFDFAF3FFFDFAF3FFF6EBD5FFF5E9D0FFF5E8CFFFF4E8
          CEFFF4E7CDFFF4E7CCFFF4E7CBFFF4E6CAFFF4E6C9FFF3E6C9FFF3E6C9FFF3E6
          C9FFF3E6C9FFF3E6C9FFF3E6C9FFF3E6C9FFF3E6C9FFF3E6C9FFF3E5C8FFFBF5
          EAFFFDFAF3FFFDFAF3FFF8EBC7FFE9B824FF5D490E6600000000000000005D49
          1066EABA29FFF9ECCBFFFEFBF6FFFEFBF7FFF4E7CCFFF2E4C5FFF2E3C4FFF1E2
          C2FFF1E2C1FFF1E1C0FFF1E1BFFFF0E0BEFFF0E0BDFFF0DFBCFFF0DFBCFFF0DF
          BCFFF0DFBCFFF0DFBCFFF0DFBCFFF0DFBCFFF0DFBCFFF0DFBCFFF0DFBBFFFBF5
          E9FFFEFBF6FFFEFBF6FFF9ECCBFFEABA29FF5D49106600000000000000005E4A
          1266EBBD2FFFF9EECEFFFEFCF9FFFEFCF9FFFEFCF9FFFEFCF9FFFEFCF9FFFEFC
          F9FFFEFCF9FFFEFCF9FFFEFCF9FFFEFCF9FFFEFCF9FFFEFCF9FFFEFCF9FFFEFC
          F9FFFEFCF9FFFEFCF9FFFEFCF9FFFEFCF9FFFEFCF9FFFEFCF9FFFEFCF9FFFEFC
          F9FFFEFCF9FFFEFCF9FFF9EECEFFEBBD2FFF5E4A126600000000000000005E4B
          1466EDBF34FFFAEFD1FFFFFEFCFFFFFEFCFFFFFEFCFFFFFEFCFFFFFEFCFFFFFE
          FCFFFFFEFCFFFFFEFCFFFFFEFCFFFFFEFCFFFFFEFCFFFFFEFCFFFFFEFCFFFFFE
          FCFFFFFEFCFFFFFEFCFFFFFEFCFFFFFEFCFFFFFEFCFFFFFEFCFFFFFEFCFFFFFE
          FCFFFFFEFCFFFFFEFCFFFAEFD1FFEDBF34FF5E4B146600000000000000005F4C
          1666EEC13AFFF9ECC8FFFFFEFEFFFFFEFEFFFFFEFEFFFFFEFEFFFFFEFEFFFFFE
          FEFFFFFEFEFFFFFEFEFFFFFEFEFFFFFEFEFFFFFEFEFFFFFEFEFFFFFEFEFFFFFE
          FEFFFFFEFEFFFFFEFEFFFFFEFEFFFFFEFEFFFFFEFEFFFFFEFEFFFFFEFEFFFFFE
          FEFFFFFEFEFFFFFEFEFFF9ECC8FFEEC13AFF5F4C166600000000000000005F4D
          1866EFC440FFF0C950FFF3D478FFF3D579FFF3D579FFF3D579FFF3D579FFF3D5
          79FFF3D579FFF3D579FFF3D579FFF3D579FFF3D579FFF3D579FFF3D579FFF3D5
          79FFF3D579FFF3D579FFF3D579FFF3D579FFF3D579FFF3D579FFF3D579FFF3D5
          79FFF3D579FFF3D478FFF0C950FFEFC440FF5F4D18660000000000000000604E
          1A66F0C645FFF0C746FFF0C746FFF0C746FFF1C748FFF1C748FFF1C748FFF1C7
          48FFF1C748FFF1C748FFF1C748FFF1C748FFF1C748FFF1C748FFF1C748FFF1C7
          48FFF1C748FFF1C748FFF1C748FFF1C748FFF1C748FFF1C748FFF1C748FFF1C7
          48FFF0C746FFF0C746FFF0C746FFF0C645FF604E1A660000000000000000604F
          1C66F2C94AFFF2C94BFFF2C94BFFEAC250FFE4BB4EFFE4BA4CFFE3B94AFFE5BE
          57FFECCD84FFECCD85FFECCD84FFECCD83FFEBCC83FFEBCC82FFEBCC82FFEBCC
          82FFEBCC82FFEBCC82FFEBCC82FFEBCC82FFEBCC82FFEBCC82FFEBCC82FFEBCB
          7EFFE9BF4DFFF2C94BFFF2C94BFFF2C94AFF604F1C6600000000000000006150
          1E66F3CB4FFFF3CB50FFF3CB52FFE5BD52FFE4BB50FFE4BB4DFFE3BA4BFFF0D7
          9FFFF7E6C6FFF7E6C6FFF7E6C6FFF7E6C6FFF7E6C6FFF7E6C6FFF7E6C6FFF7E6
          C6FFF7E6C6FFF7E6C6FFF7E5C5FFF4E0BBFFF4E0BAFFF4E0BAFFF6E3C0FFF7E5
          C6FFEBCD84FFF2CB51FFF3CB50FFF3CB4FFF61501E6600000000000000006150
          2066F4CD55FFF4CD55FFF4CD57FFE5BD54FFE5BC52FFE5BC50FFE4BB4EFFF2DA
          A7FFF8E7CAFFF8E7CAFFF8E7CAFFF8E7CAFFF8E7CAFFF8E7CAFFF8E7CAFFF8E7
          CAFFF8E7CAFFF8E7CAFFE2C17BFFD2A33DFFCF9D30FFCF9C2EFFD09F34FFF7E6
          C8FFEDCF8BFFF4CD57FFF4CD55FFF4CD55FF6150206600000000000000006251
          2266F5CF59FFF5D05AFFF5D05CFFE6BF57FFE5BE55FFE5BD53FFE5BC51FFF2DB
          ABFFF9E9CEFFF9E9CEFFF9E9CEFFF9E9CEFFF9E9CEFFF9E9CEFFF9E9CEFFF9E9
          CEFFF9E9CEFFF9E9CFFFE0BD72FFD3A43FFFD09E33FFCF9D30FFCE9B2CFFF7E7
          C9FFEDD18FFFF5D05BFFF5D05AFFF5CF59FF6251226600000000000000006252
          2466F6D15EFFF6D25FFFF6D261FFE7C059FFE6BF57FFE6BE55FFE5BD53FFF3DD
          AEFFF9EBD3FFF9EBD3FFF9EBD3FFF9EBD3FFF9EBD3FFF9EBD3FFF9EBD3FFF9EB
          D3FFF9EBD3FFF9EBD4FFE0BD74FFD3A43FFFD09E33FFCF9D30FFCE9B2CFFF8E9
          CEFFEED292FFF6D260FFF6D25FFFF6D15EFF6252246600000000000000006353
          2666F8D363FFF8D464FFF7D465FFE7C15BFFE7C059FFE6BF57FFE6BE55FFF3DF
          B2FFFAEED9FFFAEED9FFFAEED9FFFAEED9FFFAEED9FFFAEED9FFFAEED9FFFAEE
          D9FFFAEED9FFFAEED9FFE0BE75FFD3A43FFFD09E33FFCF9D30FFCE9B2CFFF9EB
          D3FFEED496FFF7D365FFF8D464FFF8D363FF6353266600000000000000006354
          2766F9D467FFF9D568FFF8D569FFE8C15DFFE7C05BFFE7C059FFE6BF57FFF4E1
          B6FFFBF0DEFFFBF0DEFFFBF0DEFFFBF0DEFFFBF0DEFFFBF0DEFFFBF0DEFFFBF0
          DEFFFBF0DEFFFBF1DFFFE0BF77FFD3A43FFFD09E33FFCF9D30FFCE9B2CFFFAEE
          D9FFEFD699FFF8D569FFF9D568FFF9D467FF6354276600000000000000006354
          2966FAD66BFFFAD76CFFF9D76DFFE8C25FFFE8C15DFFE7C05BFFE7BF59FFF4E3
          BAFFFBF3E4FFFBF3E4FFFBF3E4FFFBF3E4FFFBF3E4FFFBF3E4FFFBF3E4FFFBF3
          E4FFFBF3E4FFFBF3E4FFE1C078FFD3A43FFFD09E33FFCF9D30FFCE9B2CFFFAF0
          DEFFEFD79DFFF9D76CFFFAD76CFFFAD66BFF6354296600000000000000006355
          2A66FAD86FFFFAD970FFFAD971FFE9C361FFE8C25FFFE8C15DFFE7C05BFFF5E4
          BEFFFCF5EAFFFCF5EAFFFCF5EAFFFCF5EAFFFCF5EAFFFCF5EAFFFCF5EAFFFCF5
          EAFFFCF5EAFFFCF6EAFFE1C079FFD3A43FFFD09E33FFCF9D30FFCE9B2CFFFBF2
          E3FFF0D9A0FFFAD870FFFAD970FFFAD86FFF64552A6600000000000000005D4E
          265FFBD870FFFBDA73FFFBDA75FFE9C463FFE8C361FFE8C25FFFE8C15DFFF6E6
          C2FFFDF8EFFFFDF8EFFFFDF8EFFFFDF8EFFFFDF8EFFFFDF8EFFFFDF8EFFFFDF8
          EFFFFDF8EFFFFDF8EFFFE1C17BFFD3A43FFFD09E33FFCF9D30FFCE9B2CFFFCF5
          E8FFF1DAA4FFFBDA74FFFBDA73FFFBDA73FF5E512A5F00000000000000001F1A
          0C20F3CF68FAFCDA75FFFCDB77FFE9C465FFE9C363FFE9C361FFE8C25FFFF6E8
          C6FFFEFAF4FFFEFAF4FFFEFAF4FFFEFAF4FFFEFAF4FFFEFAF4FFFEFAF4FFFEFA
          F4FFFEFAF4FFFEFAF4FFE3C584FFD1A137FFCE9B2BFFCD9928FFCE9B2CFFFDF8
          F1FFF1DBA6FFFCDB76FFFCDB75FFF5D46FFA201B0E2000000000000000000000
          000063512567F3CD66FAFBD873FFE9C362FFE8C260FFE8C15EFFE7C05CFFF6E8
          C7FFFEFCF9FFFEFCF9FFFEFCF9FFFEFCF9FFFEFCF9FFFEFCF9FFFEFCF9FFFEFC
          F9FFFEFCF9FFFEFCF9FFFDFAF4FFF8F0E0FFF8F0DEFFF8EFDEFFFAF5EAFFFEFC
          F9FFF1DBA7FFFBD873FFF4D06AFA645429670000000000000000000000000000
          0000000000001F180A205B4A225F5F4D24665F4D23665F4D23665F4D2266645D
          4B6968645E6A68645E6A68645E6A68645E6A68645E6A68645E6A68645E6A6864
          5E6A68645E6A68645E6A68645E6A68645E6A68645E6A68645E6A68645E6A6864
          5E6A635841685C4B235F1F190B20000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000}
      end
      item
        Image.Data = {
          36100000424D3610000000000000360000002800000020000000200000000100
          200000000000001000000000000000000000000000000000000000000000030A
          101117568B912387D8E22796F0FB2998F5FF2998F5FF2998F5FF2998F5FF2998
          F5FF2998F5FF2998F5FF2998F5FF2998F5FF2998F5FF2796F0FB1653858A0001
          0101000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000030A1011237F
          CFD72998F5FF2998F5FF2998F5FF2998F5FF2998F5FF2998F5FF2998F5FF2998
          F5FF2998F5FF2998F5FF2998F5FF2998F5FF2998F5FF2998F5FF2998F5FF1859
          9096000101010000000000000000000000000000000000000000000000000000
          000000000000000000000000000000000000000000000000000017568B912998
          F5FF278FE9F21140676C091F3335081D2E30081D2E30081D2E30081D2E30081D
          2E30081D2E30081D2E30081D2E30081D2E300A243A3D2998F5FF2998F5FF2998
          F5FF185990960001010100000000000000000000000000000000000000000000
          00000000000000000000000000000000000000000000000000002387D8E22998
          F5FF1140676C0000000000000000000000000000000000000000000000000000
          000000000000000000000000000000000000030A0F102998F5FF2998F5FF2998
          F5FF2998F5FF1859909600010101000000000000000000000000000000000000
          00000000000000000000000000000000000000000000000000002995F1FC2998
          F5FF091F33350000000000000000000000000000000000000000000000000000
          000000000000000000000000000000000000030A0F102998F5FF2998F5FF2998
          F5FF2998F5FF2998F5FF18599096000101010000000000000000000000000000
          00000000000000000000000000000000000000000000000000002998F5FF2998
          F5FF081D2E300000000000000000000000000000000000000000000000000000
          000000000000000000000000000000000000030A0F102998F5FF2998F5FF2998
          F5FF2998F5FF2998F5FF2998F5FF185990960001010100000000000000000000
          00000000000000000000000000000000000000000000000000002998F5FF2998
          F5FF081D2E300000000000000000000000000000000000000000000000000000
          000000000000000000000000000000000000030A0F102998F5FF2998F5FF2998
          F5FF2998F5FF2998F5FF2998F5FF2998F5FF1859909600010101000000000000
          00000000000000000000000000000000000000000000000000002998F5FF2998
          F5FF081D2E300000000000000000000000000000000000000000000000000000
          000000000000000000000000000000000000030A0F102998F5FF2998F5FF2998
          F5FF2998F5FF2998F5FF2998F5FF2998F5FF2998F5FF18599096000101010000
          00000000000000000000000000000000000000000000000000002998F5FF2998
          F5FF081D2E300000000000000000000000000000000000000000000000000000
          00000000000000000000000000000000000002080D0E2998F5FF2998F5FF2998
          F5FF2998F5FF2998F5FF2998F5FF2998F5FF2998F5FF2998F5FF185990960001
          01010000000000000000000000000000000000000000000000002998F5FF2998
          F5FF081D2E300000000000000000000000000000000000000000000000000000
          000000000000000000000000000000000000000000002075BDC62998F5FF2998
          F5FF2998F5FF2998F5FF2998F5FF2998F5FF2998F5FF2998F5FF2998F5FF1140
          676B0000000000000000000000000000000000000000000000002998F5FF2998
          F5FF081D2E300000000000000000000000000000000000000000000000000000
          00000000000000000000000000000000000000000000030C131417568D921B68
          A9AF1B68A9AF1B68A9AF1B68A9AF1B68A9AF1B68A9AF2382D3DC2998F5FF1A5F
          98A00000000000000000000000000000000000000000000000002998F5FF2998
          F5FF081D2E300000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000017568A902998F5FF1A5F
          98A00000000000000000000000000000000000000000000000002998F5FF2998
          F5FF081D2E300000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000017568A902998F5FF1A5F
          98A00000000000000000000000000000000000000000000000002998F5FF2998
          F5FF081D2E300000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000017568A902998F5FF1A5F
          98A00000000000000000000000000000000000000000000000002998F5FF2998
          F5FF081D2E300000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000017568A902998F5FF1A5F
          98A00000000000000000000000000000000000000000000000002998F5FF2998
          F5FF081D2E300000000000000000000000000000000000000000000000000000
          000000000000000000000000000000000000000000000000000002020C0D0C0A
          4F550807383C0000000000000000000000000000000017568A902998F5FF1A5F
          98A0000000000000000002010B0C0C0A4F550907393D000000002998F5FF2998
          F5FF081D2E300000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000002020C0D1F1BCCDB241F
          EDFF241FEDFF1512899300000101000000000000000017568A90278EE7F00921
          35370000000004031A1C1F1BCBDA241FEDFF241FEDFF13107B842998F5FF2998
          F5FF081D2E300000000000000000000000000000000000000000000000000000
          000000000000000000000000000000000000000000000C0B5056241FEDFF241F
          EDFF241FEDFF241FEDFF15128B960000010100000000103B5F63092135370000
          000004031A1C1F1BCCDB241FEDFF241FEDFF241FEDFF201DDAEB2998F5FF2998
          F5FF081D2E300000000000000000000000000000000000000000000000000000
          000000000000000000000000000000000000000000000807383C241FEDFF241F
          EDFF241FEDFF241FEDFF241FEDFF15128B960000010100000000000000000403
          1A1C1F1BCCDB241FEDFF241FEDFF241FEDFF241FEDFF1E1AC4D42998F5FF2998
          F5FF081D2E300000000000000000000000000000000000000000000000000000
          000000000000000000000000000000000000000000000000000015128A94241F
          EDFF241FEDFF241FEDFF241FEDFF241FEDFF15128B960000010104031A1C1F1B
          CCDB241FEDFF241FEDFF241FEDFF241FEDFF221CDEF0080732362998F5FF2998
          F5FF081D2E300000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000001011512
          8B96241FEDFF241FEDFF241FEDFF241FEDFF241FEDFF1613949F1F1BCCDB241F
          EDFF241FEDFF241FEDFF241FEDFF221CDEF008073337000000002998F5FF2998
          F5FF081D2E300000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          010115128B96241FEDFF241FEDFF241FEDFF241FEDFF241FEDFF241FEDFF241F
          EDFF241FEDFF241FEDFF221CDEF00807333700000000000000002998F5FF2998
          F5FF081D2E300000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          00000000010115128B96241FEDFF241FEDFF241FEDFF241FEDFF241FEDFF241F
          EDFF241FEDFF221CDEF0080733370000000000000000000000002998F5FF2998
          F5FF081D2E300000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          000000000000000001011613949F241FEDFF241FEDFF241FEDFF241FEDFF241F
          EDFF221FE8FB08073438000000000000000000000000000000002998F5FF2998
          F5FF081D2E300000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          00000000000004031A1C1F1BCCDB241FEDFF241FEDFF241FEDFF241FEDFF241F
          EDFF241FEDFF15128B96000001010000000000000000000000002998F5FF2998
          F5FF081D2E300000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          000004031A1C1F1BCCDB241FEDFF241FEDFF241FEDFF241FEDFF241FEDFF241F
          EDFF241FEDFF241FEDFF15128B960000010100000000000000002998F5FF2998
          F5FF081D2E300000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000403
          1A1C1F1BCCDB241FEDFF241FEDFF241FEDFF241FEDFF221FE8FB241FEDFF241F
          EDFF241FEDFF241FEDFF241FEDFF15128B9600000101000000002796F0FB2998
          F5FF081F32340000000000000000000000000000000000000000000000000000
          000000000000000000000000000000000000000000000000000004031A1C1F1B
          CCDB241FEDFF241FEDFF241FEDFF241FEDFF221CDEF00807343815128B96241F
          EDFF241FEDFF241FEDFF241FEDFF241FEDFF15128B96000001012387D8E22998
          F5FF1140666B0000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000002010B0C1F1BCBDA241F
          EDFF241FEDFF241FEDFF241FEDFF221CDEF00807333700000000000001011512
          8B96241FEDFF241FEDFF241FEDFF241FEDFF241FEDFF1210788217568B912998
          F5FF278FE9F21140676C0A263D400A263D400A263D400A263D400A263D400A26
          3D400A263D400A263D400A263D4006152224000000000C0A4F55241FEDFF241F
          EDFF241FEDFF241FEDFF221CDEF0080733370000000000000000000000000000
          010115128B96241FEDFF241FEDFF241FEDFF241FEDFF201DDAEC030A1011237F
          CFD72998F5FF2998F5FF2998F5FF2998F5FF2998F5FF2998F5FF2998F5FF2998
          F5FF2998F5FF2998F5FF2998F5FF1A629EA4000000000907393D241FEDFF241F
          EDFF241FEDFF221CDEF008073337000000000000000000000000000000000000
          00000000010115128B96241FEDFF241FEDFF241FEDFF1D1AC6D500000000030A
          101117568B912387D8E2268EE6EF268EE6EF268EE6EF268EE6EF268EE6EF268E
          E6EF268EE6EF268EE6EF268EE6EF2282D1DA010406060000000013107C85201D
          DAEB1E1AC4D40807323600000000000000000000000000000000000000000000
          0000000000000000010112107983201DDAEC1D1AC6D508073539}
      end
      item
        Image.Data = {
          36100000424D3610000000000000360000002800000020000000200000000100
          200000000000001000000000000000000000000000000000000000000000030A
          101117568B912387D8E22796F0FB2998F5FF2998F5FF2998F5FF2998F5FF2998
          F5FF2998F5FF2998F5FF2998F5FF2998F5FF2998F5FF2796F0FB1653868B0001
          0101000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000030A1011237F
          CFD72998F5FF2998F5FF2998F5FF2998F5FF2998F5FF2998F5FF2998F5FF2998
          F5FF2998F5FF2998F5FF2998F5FF2998F5FF2998F5FF2998F5FF2998F5FF1859
          9096000101010000000000000000000000000000000000000000000000000000
          000000000000000000000000000000000000000000000000000017568B912998
          F5FF278FE9F2113F666A081F3234081D2E30081D2E30081D2E30081D2E30081D
          2E30081D2E30081D2E30081D2E30081D2E300A243A3D2998F5FF2998F5FF2998
          F5FF185990960001010100000000000000000000000000000000000000000000
          00000000000000000000000000000000000000000000000000002387D8E22998
          F5FF1140666B0000000000000000000000000000000000000000000000000000
          000000000000000000000000000000000000030A0F102998F5FF2998F5FF2998
          F5FF2998F5FF1859909600010101000000000000000000000000000000000000
          00000000000000000000000000000000000000000000000000002995F1FC2998
          F5FF091F33350000000000000000000000000000000000000000000000000000
          000000000000000000000000000000000000030A0F102998F5FF2998F5FF2998
          F5FF2998F5FF2998F5FF18599096000101010000000000000000000000000000
          00000000000000000000000000000000000000000000000000002998F5FF2998
          F5FF081D2E300000000000000000000000000000000000000000000000000000
          000000000000000000000000000000000000030A0F102998F5FF2998F5FF2998
          F5FF2998F5FF2998F5FF2998F5FF185990960001010100000000000000000000
          00000000000000000000000000000000000000000000000000002998F5FF2998
          F5FF081D2E300000000000000000000000000000000000000000000000000000
          000000000000000000000000000000000000030A0F102998F5FF2998F5FF2998
          F5FF2998F5FF2998F5FF2998F5FF2998F5FF1859909600010101000000000000
          00000000000000000000000000000000000000000000000000002998F5FF2998
          F5FF081D2E300000000000000000000000000000000000000000000000000000
          000000000000000000000000000000000000030A0F102998F5FF2998F5FF2998
          F5FF2998F5FF2998F5FF2998F5FF2998F5FF2998F5FF18599096000101010000
          00000000000000000000000000000000000000000000000000002998F5FF2998
          F5FF081D2E300000000000000000000000000000000000000000000000000000
          00000000000000000000000000000000000002080D0E2998F5FF2998F5FF2998
          F5FF2998F5FF2998F5FF2998F5FF2998F5FF2998F5FF2998F5FF185990960001
          01010000000000000000000000000000000000000000000000002998F5FF2998
          F5FF081D2E300000000000000000000000000000000000000000000000000000
          000000000000000000000000000000000000000000002075BDC52998F5FF2998
          F5FF2998F5FF2998F5FF2998F5FF2998F5FF2998F5FF2998F5FF2998F5FF1140
          666B0000000000000000000000000000000000000000000000002998F5FF2998
          F5FF081D2E300000000000000000000000000000000000000000000000000000
          00000000000000000000000000000000000000000000030C131417568D921B68
          A9AF1B68A9AF1B68A9AF1B68A9AF1B68A9AF1B68A9AF2382D3DC2998F5FF1756
          8A900000000000000000000000000000000000000000000000002998F5FF2998
          F5FF081D2E300000000000000000000000000000000000000000000000000000
          000000000000160908330D06051F000000000000000000000000000000000000
          0000000000000000000000000000000000000000000017568A902998F5FF1756
          8A900000000000000000000000000000000000000000000000002998F5FF2998
          F5FF081D2E300000000000000000000000000000000000000000000000000000
          0000000000000D06051F692D27F7461E1AA51609083400000000000000000000
          0000000000000000000000000000000000000000000017568A902998F5FF1756
          8A900000000000000000000000000000000000000000000000002998F5FF2998
          F5FF081D2E300000000000000000000000000000000000000000000000000000
          00000000000000000000461E1AA56C2E28FF6C2E28FF50221EBE200D0C4B0000
          0001000000000000000000000000000000000000000017568A902998F5FF1756
          8A900000000000000000000000000000000000000000000000002998F5FF2998
          F5FF081D2E300000000000000000000000000000000000000000000000000000
          00000000000000000000160908336C2E28FF6C2E28FF642925EB2D13116B0502
          020B000000000000000000000000000000000000000017568A902998F5FF1756
          8A900000000000000000000000000000000000000000000000002998F5FF2998
          F5FF081D2E300000000000000000000000000000000000000000000000000000
          000000000000000000000000000050221DBC642925EB10070625331613796128
          24E4682D26F94E201DB710070626000000000000000017568A902998F5FF1756
          8A900000000000000000000000000000000000000000000000002998F5FF2998
          F5FF081D2E300000000000000000000000000000000000000000000000000000
          00000000000000000000000000001F0D0C4A2D13116B331613796C2E28FF6C2E
          28FF6C2E28FF6C2E28FF622925EA1308072D00000000061522242486D9E31756
          8A900000000000000000000000000000000000000000000000002998F5FF2998
          F5FF081D2E300000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000010502020B612824E46C2E28FF6C2E
          28FF6C2E28FF6C2E28FF6C2E28FF622925EA1308072D00000000061522241345
          6F740000000000000000000000000000000000000000000000002998F5FF2998
          F5FF081D2E300000000000000000000000000000000000000000000000000000
          00000000000000000000000000000000000000000000682D26F96C2E28FF6C2E
          28FF6C2E28FF6C2E28FF6C2E28FF6C2E28FF622925EA1308072D000000000001
          01010000000000000000000000000000000000000000000000002998F5FF2998
          F5FF081D2E300000000000000000000000000000000000000000000000000000
          000000000000000000000000000000000000000000004E201DB76C2E28FF6C2E
          28FF6C2E28FF6C2E28FF6C2E28FF6C2E28FF6C2E28FF622925EA1308072D0000
          00000000000000000000000000000000000000000000000000002998F5FF2998
          F5FF081D2E300000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000010070626622925EA6C2E
          28FF6C2E28FF6C2E28FF6C2E28FF6C2E28FF6C2E28FF6C2E28FF622925EA1308
          072D0000000000000000000000000000000000000000000000002998F5FF2998
          F5FF081D2E300000000000000000000000000000000000000000000000000000
          00000000000000000000000000000000000000000000000000001308072D6229
          25EA6C2E28FF6C2E28FF6C2E28FF6C2E28FF6C2E28FF6C2E28FF6C2E28FF6229
          25EA1308072D00000000000000000000000000000000000000002998F5FF2998
          F5FF081D2E300000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000001308
          072D622925EA6C2E28FF6C2E28FF6C2E28FF6C2E28FF6C2E28FF6C2E28FF6C2E
          28FF622925EA1308072D000000000000000000000000000000002998F5FF2998
          F5FF081D2E300000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          00001308072D622925EA6C2E28FF6C2E28FF6C2E28FF6C2E28FF6C2E28FF6C2E
          28FF6C2E28FF622925EA1308072D0000000000000000000000002998F5FF2998
          F5FF081D2E300000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000001308072D622925EA6C2E28FF6C2E28FF6C2E28FF6C2E28FF6C2E
          28FF6C2E28FF6C2E28FF622925EA1308072D00000000000000002998F5FF2998
          F5FF081D2E300000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          000000000000000000001308072D622925EA6C2E28FF6C2E28FF6C2E28FF6C2E
          28FF6C2E28FF6C2E28FF6C2E28FF622925EA1308072D000000002998F5FF2998
          F5FF081D2E300000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          00000000000000000000000000001308072D622925EA6C2E28FF6C2E28FF6C2E
          28FF6C2E28FF6C2E28FF6C2E28FF6C2E28FF622925EA100706252796F0FB2998
          F5FF081F32340000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000001308072D622925EA6C2E28FF6C2E
          28FF6C2E28FF6C2E28FF6C2E28FF6C2E28FF6C2E28FF4C211DB62387D8E22998
          F5FF1140676C0000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          000000000000000000000000000000000000000000001308072D622925EA6C2E
          28FF6C2E28FF6C2E28FF6C2E28FF6C2E28FF6C2E28FF652B26F117558A902998
          F5FF2691E9F31140676C0A263D400A263D400A263D400A263D400A263D400A26
          3D400A263D400A263D400A263D400A263D400A263D400A263D400A263D400A26
          3D400A263D400A263D400A263D400B28404305142021000000001308072D6229
          25EA6C2E28FF6C2E28FF6C2E28FF6C2E28FF6C2E28FF5E2723DF030A1011237F
          CFD72998F5FF2998F5FF2998F5FF2998F5FF2998F5FF2998F5FF2998F5FF2998
          F5FF2998F5FF2998F5FF2998F5FF2998F5FF2998F5FF2998F5FF2998F5FF2998
          F5FF2998F5FF2998F5FF2998F5FF2998F5FF2486D9E306152224000000001308
          072D622925EA6C2E28FF6C2E28FF6C2E28FF6C2E28FF3015127200000000030A
          10111754888E2385D7E1268EE6EF268EE6EF268EE6EF268EE6EF268EE6EF268E
          E6EF268EE6EF268EE6EF268EE6EF268EE6EF268EE6EF268EE6EF268EE6EF268E
          E6EF268EE6EF268EE6EF268EE6EF268EE6EF2078C1CA0D2F4C4F000000000000
          00000F0706244C211DB6662A26F05E2723DF3015127200000001}
      end
      item
        Image.Data = {
          36100000424D3610000000000000360000002800000020000000200000000100
          2000000000000010000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000070502099167
          28AFD09439FCD3973BFFD3973BFFD3973BFFD3973BFFD3973BFFD3973BFFD397
          3BFFD3973BFFD3973BFFD3973BFFD09439FC906628AE07050208000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000563D1868936A
          29B3050401060000000000000000000000000000000000000000000000000000
          000000000000000000000000000005040106956B2AB4553D1867000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000715120896347
          1B77000000000000000000000000000000000000000000000000000000000000
          00000000000000000000000000000000000063471B7871512089000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          00000000000000000000000000000000000000000000000000007D5B2399563D
          18680000000000000000231B136F000000000000000000000000231B136F0000
          00000000000015100B410E0B082E00000000563E18687E592398000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          00000000000000000000000000000000000000000000000000008A6327A84934
          14580000000000000000281F1680000000000000000000000000281F16800000
          00000000000015100B42140F0B3E00000000493414588A6327A8000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000986D2BB83C2B
          11480000000000000000281F1680000000000000000000000000281F16800000
          000000000000120E093817110C48000000003C2B1148986D2AB8000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000A5762DC82E21
          0D380000000000000000281F1680000000000000000000000000281F16800000
          0000000000000E0B082E1A140E52000000002F210D39A5762DC7000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000B27F32D72218
          09290000000001010103271E167D000000000000000000000000281F16800000
          0000000000000B0906241D16105B0000000022180A29B27E32D7000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000BE8935E7150F
          0619000000000403020E241C1472000000000000000000000000281F16800000
          0000000000000806051B2019116500000000150F0619BE8835E7000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000CB9138F70705
          0209000000000806041920191267000000000000000000000000281F16800000
          00000000000005040311231B136F000000000806020ACC9239F6000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000006040207CC9338F80000
          0000000000000B0906241D16105C000000000000000000000000281F16800000
          00000000000002020107261D15790000000000000000CD923AF9050402070000
          0000000000000000000000000000000000000000000000000000000000000000
          00000000000000000000000000000000000000000000130E0517C08A36E90000
          0000000000000F0B082F1A140E51000000000000000000000000281F16800000
          00000000000000000000271F16800000000000000000C18A36E9130D05160000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000020170927B38031D90000
          000000000000120E0A3A16110C46000000000000000000000000281F16800000
          00000000000000000000281F16800000000000000000B48032DA1F1709260000
          0000000000000000000000000000000000000000000000000000000000000000
          000000000000000000000000000000000000000000002D200D37A6762FC90000
          00000000000016110C45120E0A3B000000000000000000000000281F16800000
          00000000000000000000281F16800000000000000000A6782FCA2C200C360000
          0000000000000000000000000000000000000000000000000000000000000000
          000000000000000000000000000000000000000000003A291046986D2ABA0000
          00000000000019130E500F0C0830000000000000000000000000281F16800000
          00000000000000000000281F168000000000000000009A6D2ABA392910450000
          0000000000000000000000000000000000000000000000000000000000000000
          00000000000000000000000000000000000000000000473314568C6527AA0000
          0000000000001D16105B0C090625000000000000000000000000281F16800000
          00000000000000000000281F168000000000000000008D6527AB463214550000
          0000000000000000000000000000000000000000000000000000000000000000
          00000000000000000000000000000000000000000000543C17667F5B249A0000
          000000000000201912660806051A000000000000000000000000281F16800000
          00000000000000000000281F16800000000000000000805C249B533B17640000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000061451B757252208A0000
          000000000000221A136C0403020D000000000000000000000000261D157A0000
          00000000000000000000261D157900000000000000007252208B60451B740000
          0000000000000000000000000000000000000000000000000000000000000000
          000000000000000000000000000000000000000000006E4E1F8565491C7A0000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000066491D7C6D4E1E840000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000100C041465481C7A6A4C1E806A4C1E806A4C
          1E806A4C1E806A4C1E806A4C1E806A4C1E806A4C1E806A4C1E806A4C1E806A4C
          1E806A4C1E806A4C1E806A4C1E806A4C1E806A4C1E806A4C1E806A4C1E806548
          1C7A100C04140000000000000000000000000000000000000000000000000000
          000000000000000000000000000065481C7A9D702BBF6A4C1E806A4C1E806A4C
          1E806A4C1E806A4C1E806A4C1E806A4C1E806A4C1E806A4C1E806A4C1E806A4C
          1E806A4C1E806A4C1E806A4C1E806A4C1E806A4C1E806A4C1E806A4C1E809D70
          2BBF65481C7A0000000000000000000000000000000000000000000000000000
          00000000000000000000000000006A4C1E806A4C1E8000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000006A4C
          1E806A4C1E800000000000000000000000000000000000000000000000000000
          000000000000000000000000000065481C7A9D702BBF6A4C1E806A4C1E806A4C
          1E806A4C1E806A4C1E806A4C1E806A4C1E806A4C1E806A4C1E806A4C1E806A4C
          1E806A4C1E806A4C1E806A4C1E806A4C1E806A4C1E806A4C1E806A4C1E809D70
          2BBF65481C7A0000000000000000000000000000000000000000000000000000
          0000000000000000000000000000110C051465481C7A6A4C1E806A4C1E806A4C
          1E806A4C1E806A4C1E806A4C1E806A4C1E806A4C1E806A4C1E806A4C1E806A4C
          1E806A4C1E806A4C1E806A4C1E806A4C1E806A4C1E806A4C1E806A4C1E806548
          1C7A100C04140000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          000000000000000000009B6F2BBC402E124D0000000000000000000000000000
          000001010001A9792ECC32230E3C000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000046321354C89037F3D3973BFFD3973BFFD3973BFFD397
          3BFFD3973BFF9F712CC006040207000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000}
      end
      item
        Image.Data = {
          36100000424D3610000000000000360000002800000020000000200000000100
          200000000000001000000000000000000000000000000000000000000000030B
          111217568B912387D8E22796F0FB2998F5FF2998F5FF2998F5FF2998F5FF2998
          F5FF2998F5FF2998F5FF2998F5FF2998F5FF2998F5FF2796F0FB1653868B0001
          0101000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000030B1112237F
          CFD72998F5FF2998F5FF2998F5FF2998F5FF2998F5FF2998F5FF2998F5FF2998
          F5FF2998F5FF2998F5FF2998F5FF2998F5FF2998F5FF2998F5FF2998F5FF1859
          9096000101010000000000000000000000000000000000000000000000000000
          000000000000000000000000000000000000000000000000000017568B912998
          F5FF278FE9F21140676C091F3335081D2E30081D2E30081D2E30081D2E30081D
          2E30081D2E30081D2E30081D2E30081D2E300C2C474A2998F5FF2998F5FF2998
          F5FF185990960001010100000000000000000000000000000000000000000000
          00000000000000000000000000000000000000000000000000002387D8E22998
          F5FF1140676C0000000000000000000000000000000000000000000000000000
          00000000000000000000000000000000000005131F202998F5FF2998F5FF2998
          F5FF2998F5FF1859909600010101000000000000000000000000000000000000
          00000000000000000000000000000000000000000000000000002995F1FC2998
          F5FF091F33350000000000000000000000000000000000000000000000000000
          00000000000000000000000000000000000005131F202998F5FF2998F5FF2998
          F5FF2998F5FF2998F5FF18599096000101010000000000000000000000000000
          00000000000000000000000000000000000000000000000000002998F5FF2998
          F5FF081D2E300000000000000000000000000000000000000000000000000000
          00000000000000000000000000000000000005131F202998F5FF2998F5FF2998
          F5FF2998F5FF2998F5FF2998F5FF185990960001010100000000000000000000
          00000000000000000000000000000000000000000000000000002998F5FF2998
          F5FF081D2E300000000000000000000000000000000000000000000000000000
          00000000000000000000000000000000000005131F202998F5FF2998F5FF2998
          F5FF2998F5FF2998F5FF2998F5FF2998F5FF1859909600010101000000000000
          00000000000000000000000000000000000000000000000000002998F5FF2998
          F5FF081D2E300000000000000000000000000000000000000000000000000000
          00000000000000000000000000000000000005131F202998F5FF2998F5FF2998
          F5FF2998F5FF2998F5FF2998F5FF2998F5FF2998F5FF18599096000101010000
          00000000000000000000000000000000000000000000000000002998F5FF2998
          F5FF081D2E300000000000000000000000000000000000000000000000000000
          000000000000000000000000000000000000030D14152998F5FF2998F5FF2998
          F5FF2998F5FF2998F5FF2998F5FF2998F5FF2998F5FF2998F5FF185990960001
          01010000000000000000000000000000000000000000000000002998F5FF2998
          F5FF081D2E300000000000000000000000000000000000000000000000000000
          000000000000000000000000000000000000000000002075BDC62998F5FF2998
          F5FF2998F5FF2998F5FF2998F5FF2998F5FF2998F5FF2998F5FF2998F5FF113F
          666A0000000000000000000000000000000000000000000000002998F5FF2998
          F5FF081D2E300000000000000000000000000000000000000000000000000000
          00000000000000000000000000000000000000000000030C131417568D921B68
          A9AF1B68A9AF1B68A9AF1B68A9AF1B68A9AF1B68A9AF2385D7E12998F5FF1756
          8A9000000000000000000502020B210E0C4D170A0937000000002998F5FF2998
          F5FF081D2E300000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          000000000000000000000000000000000000000000001A5F98A0278EE7F00920
          3436000000000C05041C5B2722D86C2E28FF6C2E28FF361714802998F5FF2998
          F5FF081D2E300000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000017568B91092135370000
          00000C05041C5D2821DB6C2E28FF6C2E28FF6C2E28FF642925EB2998F5FF2998
          F5FF081D2E300000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000001050909000000000C05
          041C5D2821DB6C2E28FF6C2E28FF6C2E28FF6C2E28FF5B2722D62998F5FF2998
          F5FF081D2E300000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          00000603020E07030311020101040000000000000000000000000C05041C5D28
          21DB6C2E28FF6C2E28FF6C2E28FF6C2E28FF682B25F51A0B0A3E2998F5FF2998
          F5FF081D2E300000000000000000000000000000000000000000000000000000
          000000000000000000000000000000000000000000001D0C0B44481F1BAA642B
          24EC6C2E28FF6C2E28FF6A2C26FA53241FC52E14116E100706265D2821DB6C2E
          28FF6C2E28FF6C2E28FF6C2E28FF682B25F51C0C0A42000000002998F5FF2998
          F5FF081D2E300000000000000000000000000000000000000000000000000000
          0000000000000000000000000000080303134B1F1CB26C2E28FF6C2E28FF6C2E
          28FF6C2E28FF6C2E28FF6C2E28FF6C2E28FF6C2E28FF6C2E28FE6C2E28FF6C2E
          28FF6C2E28FF6C2E28FF682B25F51C0C0A4200000000000000002998F5FF2998
          F5FF081D2E300000000000000000000000000000000000000000000000000000
          000000000000000000000A0404185B2621DA6C2E28FF6C2E28FF4D211CB5240F
          0D56100706250E0605201A0B0A3E3B19168B662C26F26C2E28FF6C2E28FF6C2E
          28FF6C2E28FF682B25F51C0C0A420000000000000000000000002998F5FF2998
          F5FF081D2E300000000000000000000000000000000000000000000000000000
          0000000000000101010352231FC46C2E28FF652B26F1210E0C4F000000000000
          0000000000000000000000000000000000000B05041B53241FC56C2E28FF6C2E
          28FF682B25F51C0C0A42000000000000000000000000000000002998F5FF2998
          F5FF081D2E300000000000000000000000000000000000000000000000000000
          0000000000002A1210646C2E28FF6B2C28FC1C0C0A42000000000C0A080D7164
          527EB39E82C6BCA687D0918069A02A251F2F000000000502020C592621D26C2E
          28FF54241EC600000000000000000000000000000000000000002998F5FF2998
          F5FF081D2E300000000000000000000000000000000000000000000000000000
          0000000000005A2520D46C2E28FF401A189600000000110F0C13C2AA8DD7E6CB
          A7FFE6CBA7FFE6CBA7FFE6CBA7FFE1C5A2F94940355100000000180A09386C2E
          28FF6C2E28FF16090833000000000000000000000000000000002998F5FF2998
          F5FF081D2E300000000000000000000000000000000000000000000000000000
          00000D06051F6C2E28FF6C2E28FF1107062900000000918069A0E6CBA7FFE6CB
          A7FFE6CBA7FFE6CBA7FFE6CBA7FFE6CBA7FFD8BD9DEF0E0D0A10000000005523
          1FC86C2E28FF3617147F000000000000000000000000000000002998F5FF2998
          F5FF081D2E300000000000000000000000000000000000000000000000000000
          00001F0D0C4A6C2E28FF642925EB0000000005040305DFC5A2F7E6CBA7FFE6CB
          A7FFE6CBA7FFE6CBA7FFE6CBA7FFE6CBA7FFE6CBA7FF53493C5C000000003B19
          168C6C2E28FF481E1BA9000000000000000000000000000000002998F5FF2998
          F5FF081D2E300000000000000000000000000000000000000000000000000000
          0000230F0D546C2E28FF5C2823DC00000000110F0C13E6CBA7FFE6CBA7FFE6CB
          A7FFE6CBA7FFE6CBA7FFE6CBA7FFE6CBA7FFE6CBA7FF65594970000000003617
          14806C2E28FF49201BAF000000000000000000000000000000002998F5FF2998
          F5FF081D2E300000000000000000000000000000000000000000000000000000
          00001E0D0B476C2E28FF642A25EF0000000103020203D9C19EF2E6CBA7FFE6CB
          A7FFE6CBA7FFE6CBA7FFE6CBA7FFE6CBA7FFE6CBA7FF4B433754000000003D1A
          17906C2E28FF461E19A6000000000000000000000000000000002998F5FF2998
          F5FF081D2E300000000000000000000000000000000000000000000000000000
          00000A0404186C2E28FF6C2E28FF160908340000000081705D8EE6CBA7FFE6CB
          A7FFE6CBA7FFE6CBA7FFE6CBA7FFE6CBA7FFCEB694E40908070A000000005925
          20D36C2E28FF33161378000000000000000000000000000000002998F5FF2998
          F5FF081D2E300000000000000000000000000000000000000000000000000000
          00000000000054241EC76C2E28FF471D1AA7000000000908070AAC997EC0E6CB
          A7FFE6CBA7FFE6CBA7FFE6CBA7FFD7BD9CEE3630273C000000001E0D0B486C2E
          28FF6C2E28FE11070729000000000000000000000000000000002995F1FC2998
          F5FF081F32340000000000000000000000000000000000000000000000000000
          000000000000230F0D546C2E28FF6C2E28FF26100E590000000004030304544B
          3D5E96836DA69D8B72AE746654811715111A000000000A0404175E2922E16C2E
          28FF4C201BB300000000000000000000000000000000000000002387D8E22998
          F5FF1140676C0000000000000000000000000000000000000000000000000000
          0000000000000000000049201BAF6C2E28FF6A2C26FA2F14116F010000020000
          000000000000000000000000000000000000150908315B2621DA6C2E28FF652B
          24EE0E060520000000000000000000000000000000000000000017568B912998
          F5FF278FE9F21140676C0A263D400A263D400A263D400A263D400A263D400A26
          3D40081E3133000000000602020D53241FC56C2E28FF6C2E28FF592520D33215
          12761D0C0B451A0B0A3E28110F5E481F1BAB6B2C28FC6C2E28FF662C26F21B0C
          0A40000000000000000000000000000000000000000000000000030B1112237F
          CFD72998F5FF2998F5FF2998F5FF2998F5FF2998F5FF2998F5FF2998F5FF2998
          F5FF2997F2FD0D314F5300000000030101083E1B16936B2C28FC6C2E28FF6C2E
          28FF6C2E28FF6C2E28FF6C2E28FF6C2E28FF6C2E28FF562520CC1208072B0000
          000000000000000000000000000000000000000000000000000000000000030B
          111217568B912387D8E22796F0FB2998F5FF2998F5FF2998F5FF2998F5FF2998
          F5FF2998F5FF2793EEF90F385B5F0000000000000000110706273B19168A5625
          20CC632B24ED652B26F15D2723DE461E19A6210E0C4F01000002000000000000
          0000000000000000000000000000000000000000000000000000}
      end
      item
        Image.Data = {
          36100000424D3610000000000000360000002800000020000000200000000100
          2000000000000010000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          000000000000050401062E210D3835260F4035260F4035260F4035260F403526
          0F4035260F4035260F4035260F4035260F4035260F4034250F3F1912071E0000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          00001912071EB48232DBA9792ECC9D702BBF9D702BBF9D702BBF9D702BBF9D70
          2BBF9D702BBF9D702BBF9D702BBF9D702BBF9D702BBF9F722CC0C18A36E96649
          1D7C000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000805D239C694B1D7F00000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000110C0514C18A
          36E91912071E0000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          00009D702BBF35260F4000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000009F72
          2CC034250F3F0000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          00009D702BBF35260F4000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000009D70
          2BBF35260F400000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          00009D702BBF35260F4000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000009D70
          2BBF35260F400000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          00009D702BBF35260F4000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000009D70
          2BBF35260F400000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          00005C411A6F1F16092500000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000009D70
          2BBF35260F400000000000000000000000000000000000000000000000000000
          00000000000000000000000000000000000006050414221A136C000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000009D70
          2BBF35260F400000000000000000000000000000000000000000000000000000
          000000000000000000000000000006050414423223D1271E167D000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000009D70
          2BBF35260F400000000000000000000000000000000000000000000000000000
          0000000000000000000006050415423223D12920168200000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000009D70
          2BBF35260F400000000000000000000000000000000000000000000000000000
          00000000000006050415413323D1292017840000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000009D70
          2BBF35260F400000000000000000000000000000000000000000000000000000
          00000403020D403223D2473727E2281F1680281F1680281F1680281F1680281F
          1680281F1680281F1680281F1680281F1680281F1680281F1680281F1680281F
          1680281F1680281F1680211A126B000000000000000000000000000000009D70
          2BBF35260F400000000000000000000000000000000000000000000000000000
          00000303020B3F3122CB473727E2281F1680281F1680281F1680281F1680281F
          1680281F1680281F1680281F1680281F1680281F1680281F1680281F1680281F
          1680281F1680281F1680221A136B000000000000000000000000000000009D70
          2BBF35260F400000000000000000000000000000000000000000000000000000
          00000000000005040311403122CB2A2017850000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000009D70
          2BBF35260F400000000000000000000000000000000000000000000000000000
          0000000000000000000005040311403222CC2A20178500000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000009D70
          2BBF35260F400000000000000000000000000000000000000000000000000000
          000000000000000000000000000006040312403223CD291F1682000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000009D70
          2BBF35260F400000000000000000000000000000000000000000000000000000
          00000000000000000000000000000000000006040312231B1370000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000009D70
          2BBF35260F400000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          00005B411A6E1E16092500000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000009D70
          2BBF35260F400000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          00009D702BBF35260F4000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000009D70
          2BBF35260F400000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          00009D702BBF35260F4000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000009D70
          2BBF35260F400000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          00009D702BBF35260F4000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000009D70
          2BBF35260F400000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          00009C702CBD3828104300000000000000000000000000000000000000000000
          000000000000000000000000000000000000000000000000000000000000A173
          2CC333240E3D0000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          00006D4E1F848D6527AB0A07030C000000000000000000000000000000000000
          000000000000000000000000000000000000000000000000000034260F40C28A
          35EB0E0A04110000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          000008050209856025A2CC9238F8D3973BFFD3973BFFD3973BFFD3973BFFD397
          3BFFD3973BFFD3973BFFD3973BFFD3973BFFD3973BFFD3973BFFB58133DC3B2A
          1047000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000}
      end
      item
        Image.Data = {
          36100000424D3610000000000000360000002800000020000000200000000100
          2000000000000010000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000001000000030000
          000B000000160000001A000000140000000D0000000700000004000000020000
          0001000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000001000000050000
          0015462D24FF25150FDA11090788020101340000001B00000010000000080000
          0003000000010000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000001000000060000
          00184F372DD7A27A6CFF544548FF282B48F7122252B3060B1B57000000180000
          000B000000040000000100000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000010000000100000002000000050000
          0013291D1880836F6BFFAACAE9FF7091C3FF3D5B9DFF29448FFF0E1C419A0000
          001D0000000B0000000300000001000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000010000000100000001000000020000000300000004000000070000
          001005040330535775F6DAE3F0FF9EC1E5FF7495C6FF4F6CA6FF2C4F99FF0419
          469B0000001B0000000B00000003000000010000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          00010000000200000004000000070000000A0000000E00000011000000140000
          001B0000002A263A65B2889ECAFFCCD8EAFF1684E5FF49AAE9FF0D50B2FF0E4A
          A5FF041A47990000001A0000000B000000030000000100000000000000000000
          0000000000000000000000000000000000000000000000000000000000010000
          0003000000070000000E0102041B0B172B5A142B50921A3768B51F427CD51E41
          7BD55571A6F7718AB2FF466AB0FFFFFFFFFF45A3EDFF1989E9FF4EAEEAFF0E57
          B4FF104DA7FF051C4898000000190000000A0000000300000001000000000000
          0000000000000000000000000000000000000000000000000000000000020000
          000703050A2019345CA12B5798F35D84B8FF8BAACDFFA7C3DBFFAFD4E7FF88CB
          E4FF69D0E9FF68BBDDFF608BBDFF648FC6FFBFE6FBFF48A8EEFF1D92EAFF56B3
          ECFF125CB7FF1151ABFF051E4A97000000180000000A00000003000000010000
          0000000000000000000000000000000000000000000000000000000000030000
          000D23487CCA679ECFFFB4DEF4FFE4F8FAFFEAFAFAFFE8FBFAFFD1F4F9FFA0E8
          F6FF6DD8F0FF3FB2E2FF5FABD7FF538CC3FF3D90D7FFC4E8FAFF4EAFEEFF2298
          EAFF5BB6EDFF1361BAFF1355ADFF061F4C950000001600000009000000030000
          0001000000000000000000000000000000000000000000000000000000040000
          00113060A5FF91CEF0FFBCE6F9FFE4F8FAFFEAFAFAFFE8FBFAFFD1F4F9FFA1E9
          F7FF6ED9F1FF40B6E6FF349FDCFF589ED1FF528CC4FF4095D9FFC8EBFCFF52B5
          F2FF279EEDFF60BBEDFF1664BEFF155CB0FF08224D9400000015000000090000
          0002000000010000000000000000000000000000000000000000000000040000
          00123263A6FF91CEF0FFBCE6F9FFE4F8FAFFEAFAFAFFE8FBFAFFD1F4F9FFA1E9
          F7FF6EDAF2FF41B6E7FF35A2E0FF298BD2FF5294CBFF5692C6FF459BDBFFCCEE
          FDFF58BAF4FF2CA6F2FF67BFEEFF186BC1FF1860B4FF08245093000000130000
          0008000000020000000100000000000000000000000000000000000000040000
          00113567A8FF91CEF0FFBCE6F9FFE5F8FAFFECFAFAFFEAFBFAFFD7F5FAFFACEC
          F8FF7FE0F4FF56C2ECFF49B0E7FF3D9DDCFF2F8ACFFF64A8D4FF629ECDFF48A0
          DEFFD1F1FEFF5CBFF6FF31ACF4FF6BC3F0FF1B71C4FF1A65B6FF0A2751920000
          0012000000080000000200000001000000000000000000000000000000040000
          00103669ABFF9AD2F1FFC4E9F9FFCDE5F0FFB2CEE5FF94B8DBFF6C9ECFFF4F92
          CBFF2975BDFF1863B5FF155CB1FF145AB0FF165EB4FF1963B3FF5D95C7FF609A
          CBFF4BA4DFFFD4F3FEFF63C7F7FF39B4F4FF71C8F2FF1E77C8FF1D6ABBFF0B29
          5390000000110000000700000002000000010000000000000000000000040000
          000F386DACFF7FBAE4FF81B2DDFF9EC1E0FFB2CEE5FFBDD9EAFFB7DEEEFF8CD3
          ECFF6BD5EFFF41B7E8FF35A3E2FF298CD6FF1E77C8FF2682CAFF3C91D0FF6CA3
          D3FF5C97CBFF4FA9E1FFD7F5FFFF83D6FBFF3EBEF8FF75CDF2FF227DC9FF2070
          BEFF181B278F0000000F00000006000000020000000000000000000000040000
          000E2D5485C980BEE7FFB8E2F7FFE4F8FAFFEAFAFAFFE8FBFAFFD1F4F9FFA1E9
          F7FF6EDAF2FF41B7E8FF35A3E2FF2A8FD8FF217FCEFF2B8DD3FF4FADE3FF64B7
          E9FF80BAE6FF63A1D3FF53AFE3FFDAF6FEFF6DD2FDFF43C2F8FF7AD2F4FF7877
          7BFF7C4836FF2B10098E0000000E000000060000000200000000000000030000
          000D3D72B1FF91CEF0FFBCE6F9FFE4F8FAFFEAFAFAFFE8FBFAFFD1F4F9FFA1E9
          F7FF6EDAF2FF41B7E8FF35A3E2FF2A8FD8FF217FCEFF2B8DD3FF4FAEE4FF66B9
          ECFF5DACE8FF70AFE1FF68A7D6FF56B2E5FFDDF8FFFF73D8FDFF8DBAC8FFDAC0
          B1FF9C6955FF844F3DFF190C238C0000000C0000000500000001000000030000
          000D3F75B3FF91CEF0FFBCE6F9FFE4F8FAFFEAFAFAFFE8FBFAFFD1F4F9FFA1E9
          F7FF6EDAF2FF41B7E8FF35A3E2FF2A8FD8FF217FCEFF2B8DD3FF4FAEE4FF66BA
          EDFF5EAEEBFF479EE2FF7BB5E1FF629ACAFF59B5E6FFE6F8FAFFDDC3AFFFD1B2
          9CFFDDC4B6FF55478EFF1B1A9BFF0807408B0000000B00000004000000030000
          000D4078B5FF91CEF0FFBCE6F9FFE5F8FAFFECFAFAFFEAFBFAFFD7F5FAFFACEC
          F8FF7FE0F4FF56C2ECFF49B0E7FF3D9EDEFF308DD4FF3B9AD8FF5CB6E7FF6FBF
          EEFF63B2EDFF489FE4FF54A4DFFF6589B9FF6D7580C7B88E7BFFFBF0E0FFE1C8
          B4FF9794C7FF828DE8FF2427B0FF1E1EA2FF0B0B478900000006000000030000
          000C437BB6FF9AD2F1FFC4E9F9FFCDE5F0FFB2CEE5FF94B8DBFF6C9ECFFF4F92
          CBFF2975BDFF1863B5FF155CB1FF145AB0FF165FB5FF1A65B7FF307EC5FF4993
          D3FF59A2E0FF5AABE8FF60ACE4FF376AABFF3D3D3D4F4B2F2687BE9585FFF7EE
          E6FF869CF2FF5B70E7FF949FEBFF7681D4FF21249CFF00000007000000030000
          000A467EB9FF7FBAE4FF81B2DDFF9EC1E0FFB2CEE5FFBDD9EAFFB7DEEEFF8CD3
          ECFF6BD5EFFF41B7E8FF35A3E2FF298CD6FF1E77C8FF2683CCFF3D94D4FF4491
          D3FF337BC8FF246DBFFF4088CEFF3A6FADFF000000100000000A362A45846573
          D9FFD9E6FDFF869DF3FFA8BEF6FF4852C9FF1E205D8400000004000000030000
          000936628EC780BEE7FFB8E2F7FFE4F8FAFFEAFAFAFFE8FBFAFFD1F4F9FFA1E9
          F7FF6EDAF2FF41B7E8FF35A3E2FF2A8FD8FF217FCEFF2B8DD3FF4FAEE4FF66BA
          EDFF5EAFECFF469DE2FF428ED2FF2E5786C90000000D00000005000000042327
          63826B7BDFFFDAE7FDFF6071DDFF232863830000000500000002000000020000
          00094984BCFF91CEF0FFBCE6F9FFE4F8FAFFEAFAFAFFE8FBFAFFD1F4F9FFA1E9
          F7FF6EDAF2FF41B7E8FF35A3E2FF2A8FD8FF217FCEFF2B8DD3FF4FAEE4FF66BA
          EDFF5EAFECFF48A0E5FF55A6E2FF3E75B2FF0000000C00000003000000010000
          0003282E6981505BD4FF282E6981000000040000000200000001000000020000
          00094B87BEFF91CEF0FFBCE6F9FFE4F8FAFFEAFAFAFFE8FBFAFFD1F4F9FFA1E9
          F7FF6EDAF2FF41B7E8FF35A3E2FF2A8FD8FF217FCEFF2B8DD3FF4FAEE4FF66BA
          EDFF5EAFECFF48A0E5FF55A6E2FF4178B4FF0000000C00000003000000000000
          0001000000020000000200000002000000010000000000000000000000020000
          00084D8AC0FF91CEF0FFBCE6F9FFE4F8FAFFEAFAFAFFE8FBFAFFD1F4F9FFA1E9
          F7FF6EDAF2FF41B7E8FF35A3E2FF2A8FD8FF217FCEFF2B8DD3FF4FAEE4FF66BA
          EDFF5EAFECFF48A0E5FF55A6E2FF427AB7FF0000000B00000003000000000000
          0000000000000000000000000000000000000000000000000000000000020000
          00074F8CC2FF91CEF0FFBEE6F9FFE5F9FCFFE8FAFDFFE8FAFEFFE5F9FEFFDCF6
          FDFFDEF7FDFFDDF6FEFFD7F4FEFFCCEFFCFFB1DFF6FFACDEF7FF9DDAF6FF92D4
          F5FF76C0F1FF4BA1E6FF55A6E2FF447EB8FF0000000B00000003000000000000
          0000000000000000000000000000000000000000000000000000000000020000
          0007518FC4FFDAF2FBFFF4FDFEFFF3FDFEFFE8FAFFFFDCF8FEFFD4F5FDFFCBF2
          FDFFC7F1FCFFBEEDFCFFB8ECFDFFB3E9FDFFB0E8FCFFB0E7FCFFABE5FCFFA9E4
          FBFFA5E3FBFF9EDDFAFF82C9F1FF4680BAFF0000000A00000003000000000000
          0000000000000000000000000000000000000000000000000000000000010000
          00065391C6FFFAFEFFFFE8FBFEFFD4F5FEFFCEF5FEFFCAF3FDFFC7F1FEFFC3F0
          FDFFBFEEFDFFBBEDFDFFB7EBFCFFB2E9FCFFAEE6FCFFAAE5FCFFA5E3FBFFA1E1
          FBFF9CE0FBFF99DEFBFF96DDFBFF4983BCFF0000000800000002000000000000
          0000000000000000000000000000000000000000000000000000000000010000
          00044D83A8CBAFD6ECFFDEF4FBFFE3FAFEFFDCF7FEFFD3F4FDFFCDF3FDFFC5F0
          FDFFC2EFFCFFBBECFDFFB5EAFDFFB0E8FDFFAEE7FCFFABE5FCFFA6E4FBFFA3E2
          FBFF9FE0FBFF97DAF8FF7ABEE6FF43769ECC0000000600000002000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0002060A0D14365C76915E9CC8EE85BCE1FFA0CEE9FFB1DAF0FFC1E5F6FFBEE5
          F6FFC5EBF9FFCCF1FDFFC6EFFDFFB8E6F9FFA8DCF3FFA3DAF3FF91CCECFF81C0
          E5FF6DADD9FF5390BEEE3154709205090C160000000300000001000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          000100000001000000030204050B1B2D3A49305269823F6B8AA84E84AACE4D84
          AACE5793C0E85FA2D3FF5FA2D2FF5692BEE84A80A7CE4A80A6CE3C6687A92D4E
          6683182A384C0204050D00000004000000020000000100000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000100000001000000020000000300000003000000040000
          0004000000040000000500000005000000050000000500000005000000040000
          0003000000030000000200000001000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000}
      end
      item
        Image.Data = {
          36100000424D3610000000000000360000002800000020000000200000000100
          2000000000000010000000000000000000000000000000000000332E2848A594
          81E7B5A18CFFB5A18CFFB4A08CFFB4A08AFFB39F89FFB29E89FFB19E88FFB09C
          87FFB09C87FFAF9C86FFAF9B85FFAE9A85FFAC9A84FFAC9983FFAB9983FFAB97
          82FFAA9782FFAA9681FFA99680FFA99680FFA89580FFA8947FFFA8947EFFA793
          7EFFA7927EFFA7927DFFA6927CFFA7927EFF9F8D79F62F292348AD9B86F1E4DB
          D1FFF7F2ECFFF6F1ECFFF6F1ECFFF6F0EBFFF6F0EBFFF5F0EAFFF4EFE8FFF4EF
          E8FFF4EFE7FFF4EEE7FFF4EEE7FFF4EEE6FFF4EEE5FFF4EEE5FFF4EDE5FFF3ED
          E5FFF3ECE4FFF3EDE3FFF3ECE3FFF2ECE3FFF3ECE2FFF2EBE2FFF2EBE1FFF1EB
          E1FFF1EBE1FFF1EBE1FFF1EAE1FFF1EADFFFDBD0C2FF9E8A75F1B8A48FFFF7F3
          EDFFF7F2EDFFF7F2ECFFF6F2ECFFF6F1ECFFF5F1EBFFF6F0EBFFF5F0EAFFF5F0
          EAFFF4EFE8FFF4EFE7FFF4EFE7FFF4EEE7FFF4EEE6FFF4EEE6FFF4EEE5FFF3ED
          E5FFF4EDE4FFF3EDE4FFF3ECE4FFF3ECE3FFF3ECE3FFF2EBE2FFF3ECE2FFF1EB
          E2FFF1EBE1FFF2EBE1FFF2EBE1FFF2EADFFFF1EADFFFA6927DFFB8A590FFF8F3
          EEFFF7F2EDFFF7F2EDFFF7F2EDFFF6F2ECFFF6F1EBFFF6F1EBFFF5F1EBFFF5F0
          EAFFF5F0EAFFF4EFE8FFF4EFE7FFF4EFE7FFF4EFE7FFEEE9E0FFDCD6D0FFD5CF
          C9FFD3CEC7FFD3CDC5FFD2CBC5FFD0CBC4FFCFCAC2FFD6D0C8FFEBE4DAFFF2EB
          E2FFF1EBE2FFF2EBE1FFF2EAE1FFF1EBDFFFF2EADFFFA6927CFFB9A691FFF8F4
          EFFFF7F3EEFFF7F2EEFFF6F2EDFFF6F2ECFFF6F2ECFFF6F1ECFFF5F1EBFFF6F0
          EAFFF6F1E8FFF5F0E8FFF1ECE5FFE7E2DCFFDDD8D1FFC9C4BFFFC79060FFC68F
          5EFFC58D5DFFC48C5BFFC48B5AFFC38A5AFFC38858FFC28858FFBBB6AFFFD2CC
          C4FFDFD9D0FFEEE7DEFFF2EBE1FFF2EBE1FFF1EADFFFA7927EFFBAA791FFF8F4
          EFFFF7F4EEFFF7F3EEFFF7F2EEFFF7F3EDFFF4EFEAFFE7E3DDFFDEDAD4FFDCD8
          D3FFDBD6D2FFDAD6D1FFD0CCC5FF9E8777FF967963FF957761FFC89161FFFAF2
          EBFFFBF1E9FFFAF0E7FFFAEFE6FFF9EEE4FFF9EDE3FFC28958FF856A52FF8368
          51FF8C7865FFE0D9D1FFF2EBE2FFF1EBE1FFF1EBE1FFA7927DFFBAA792FFF8F4
          EFFFF8F4EFFFF8F4EFFFF7F3EEFFF7F3EEFFE9E4DFFFCAA482FFCB9363FFCA92
          61FFC99160FFC88F5FFFB88356FF987B65FFFFFFFFFFDED8D2FFC99362FFFBF2
          EBFFFBF1EAFFFAF1E9FFFAF0E8FFFAF0E6FFF9EEE5FFC3895AFFD1C8BFFFD1C7
          BEFF836851FFD4CDC5FFF2EBE2FFF2ECE1FFF2EBE1FFA7937EFFBBA893FFF9F4
          F0FFF8F4F0FFF8F3EFFFF8F4EFFFF8F3EEFFE2DDD9FFD8A87EFFF9F1EBFFF2E2
          D4FFF1E1D1FFF0DFD0FFDDCDBCFF9A7C66FFFFFFFFFFEEEBE8FF9F816BFF9D7F
          68FF997B66FF957861FF90735DFF8B6F58FF876C54FF836851FFDFD9D3FFD1C8
          BFFF846952FFD1CBC3FFF2EBE2FFF2EBE2FFF2EBE2FFA8947FFFBCA993FFF9F5
          F0FFF9F4F0FFF8F4F0FFF8F4EFFFF8F3EEFFE3DEDAFFD9AA81FFFCF7F2FFF6EC
          E1FFF7EADFFFF5E8DCFFE3D6CAFF9A7D67FFFFFFFFFFEFECEAFFEDEAE8FFECE8
          E4FFEAE6E2FFE8E4E0FFE6E2DDFFE5DFDBFFE3DDD8FFE2DCD6FFE0DAD4FFD2C8
          C0FF856953FFD3CDC5FFF2ECE3FFF2ECE2FFF2EBE2FFA8947FFFBDA995FFF9F5
          F1FFF9F4F1FFF8F4F0FFF8F4EFFFF8F4EFFFE3E0DAFFD9AA82FFFCF8F3FFF8ED
          E4FFF7ECE1FFF6EADEFFE6DACEFF9C7D68FFFFFFFFFFC9905BFFB66921FFB567
          1FFFB3641CFFB1621AFFAF5F18FFAD5D16FFAC5C15FFAB5A13FFBA7E49FFD3CA
          C1FF856A54FFD5CFC7FFF3ECE3FFF2ECE3FFF2EBE2FFA8957FFFBEAA95FFF9F5
          F1FFF9F5F1FFF9F5F1FFF9F4F0FFF9F4EFFFE5E1DDFFDAAB83FFFCF8F4FFF8F0
          E6FFF8EEE4FFF6ECE1FFE8DDD2FF9C7E69FFFFFFFFFFBA6D25FFF2B17BFFF0AE
          7AFFEEAC77FFEDA976FFEAA674FFE9A470FFE8A26FFFE6A16DFFAA5A13FFD4CA
          C2FF876B55FFD7D0C8FFF3ECE3FFF3ECE3FFF2ECE3FFA89580FFBEAB95FFFAF5
          F3FFF9F5F3FFF9F5F1FFF9F5F0FFF9F4F0FFE6E2DFFFDBAC83FFFDF9F6FFF9F2
          E9FFF8F0E7FFF8EEE5FFEAE0D6FF9D7F69FFFFFFFFFFBC6F27FFC47D39FFC37A
          36FFBF7733FFBD732EFFB96D2AFFB66925FFB36622FFB2631FFFAB5B14FFD4CB
          C3FF886C56FFD8D3CBFFF3EDE4FFF3ECE4FFF3ECE3FFA99681FFBEAC96FFFAF6
          F4FFFAF5F3FFF9F5F3FFF9F5F1FFF9F5F1FFE7E4E0FFDBAC84FFFDFAF8FFFAF3
          ECFFF9F2E9FFF9F0E7FFEEE5DBFF9D8069FFFFFFFFFFBD7128FFC79061FFFBF2
          ECFFFAF2EBFFFAF1E9FFFAF0E7FFF9EEE5FFF9EDE3FFC28858FFAC5D15FFFFFF
          FFFF896D57FFDDD7D0FFF3EDE4FFF3EDE4FFF3EDE3FFA99681FFBFAC97FFFAF6
          F4FFFAF6F4FFF9F6F3FFF9F6F3FFF9F5F1FFE9E5E1FFDBAD84FFFEFBF8FFFBF5
          F0FFFAF3ECFFDBB28FFFD5AD88FFA8886FFF9D7F69FFB5763AFFC79161FFFBF3
          EDFFFBF2ECFFFAF1EBFFFAF1E9FFF9EFE7FFFAEFE5FFC38A59FFA66328FF8C70
          58FF998370FFE8E2DAFFF3EDE5FFF4EDE5FFF3EDE3FFAB9681FFBFAD98FFFAF7
          F4FFFAF6F3FFFAF6F4FFFAF6F3FFF9F5F1FFEAE6E3FFDBAD85FFFEFCFAFFFCF6
          F2FFFAF5F0FFFAF3EDFFF8F1E9FFF5EBE2FFF0E5DCFFE4D9CEFFC99263FFFBF3
          EDFFFBF3EDFFFBF2ECFFFBF1EAFFFBF0E9FFFAF0E7FFC38A5BFFD4CFC8FFE3DE
          D6FFEAE4DCFFF2ECE4FFF4EEE5FFF3EEE5FFF3EDE4FFAB9883FFC0AD98FFFBF7
          F5FFFBF6F4FFFAF6F4FFF9F6F3FFFAF6F3FFEBE8E6FFDCAE86FFFEFDFBFFFCF8
          F5FFFCF7F2FFE0B996FFDEB692FFDCB28FFFD8B08BFFCFA682FFC99365FFFBF3
          EDFFFBF3EDFFFBF3EDFFFBF2ECFFFAF2EBFFFAF1E9FFC48B5CFFE3DFD8FFF4EF
          E7FFF4EFE7FFF4EEE6FFF4EDE5FFF4EEE5FFF3EDE4FFAC9983FFC0AE98FFFAF8
          F5FFFAF7F5FFFBF7F4FFFAF7F4FFFAF6F3FFEDE9E7FFDDAF86FFFEFCFBFFFCFA
          F6FFFDF9F5FFFCF7F2FFFBF5F0FFFBF3EDFFF9F1EAFFF1E7DFFFCA9565FFFBF3
          EDFFFBF3EDFFFBF3EDFFFBF3EDFFFBF2ECFFFBF2EBFFC48C5DFFE5E1DAFFF5EF
          E7FFF4EFE7FFF4EFE7FFF4EEE6FFF4EEE6FFF4EDE5FFAC9884FFC0AF99FFFBF7
          F6FFFBF7F5FFFAF7F4FFFAF7F5FFFAF7F4FFEDEBE8FFDDAF87FFFEFCFAFFFDF9
          F6FFFDF9F6FFE4BD9BFFE3BB99FFE0B996FFDEB693FFD7B08CFFCB9666FFCA94
          66FFC99464FFC89363FFC89161FFC78F60FFC68F5FFFC58D5DFFEBE5E0FFF4EF
          E8FFF4EFE7FFF4EFE7FFF4EFE6FFF4EEE6FFF4EEE6FFAD9A84FFC1AF99FFFBF8
          F6FFFBF7F6FFFBF8F5FFFBF7F5FFFAF7F4FFF0ECE9FFDDAF87FFFDFCFAFFFCF8
          F5FFFCF9F7FFFDF9F6FFFCF9F5FFFCF7F2FFFBF5EFFFF8F2EBFFF4ECE3FFF2E8
          DFFFF0E5DAFFEEE2D8FFE8D8C9FFC18B5DFFD7D4CEFFEDE9E2FFF3EDE8FFF5F0
          E8FFF4F0E8FFF4EFE7FFF4EFE7FFF4EEE7FFF4EFE6FFAD9A84FFC2B09AFFFBF8
          F7FFFBF8F6FFFBF7F6FFFBF7F5FFFBF7F4FFF2EEECFFDDB088FFFDFBF9FFFCF7
          F5FFFCF9F6FFE4BD9BFFE4BD9BFFE4BD9BFFE2BC99FFE1B996FFDEB693FFDBB2
          8FFFF7EDE3FFF6EBE0FFF1E1D2FFCA9263FFE2DDD8FFF6F0EBFFF5F1EAFFF5F0
          E8FFF5F0E8FFF4F0E8FFF5EFE8FFF4EEE7FFF4EFE6FFAE9B85FFC2B09BFFFBF9
          F7FFFBF8F7FFFBF8F6FFFBF8F6FFFBF7F5FFF2EEEDFFDEB088FFFDFAF8FFFBF6
          F3FFFBF7F5FFFDF9F6FFFDFAF7FFFDFAF7FFFDF9F5FFFBF6F2FFFAF4EDFFFAF1
          EBFFF9EFE6FFF7EDE3FFF2E2D4FFCB9463FFE3DFDAFFF6F2ECFFF5F0EBFFF5F1
          EAFFF6F0EAFFF5EFE8FFF5EFE8FFF4EFE7FFF4EFE7FFAF9B85FFC2B19BFFFBF9
          F7FFFBF8F6FFFBF8F6FFFBF8F6FFFBF8F5FFF3EFEDFFDEB189FFFCF9F6FFFAF4
          F0FFFBF6F3FFE4BD9BFFE4BD9BFFE4BD9BFFE4BD9BFFE4BD9BFFE3BB99FFE0B9
          96FFF8F1EAFFF7EEE5FFF3E4D7FFCC9565FFE3E0DBFFF6F2ECFFF6F1ECFFF5F1
          EBFFF5F0EAFFF5F0E8FFF5F0E8FFF4EFE8FFF4F0E7FFB09C86FFC3B19DFFFBF8
          F7FFFBF8F7FFFBF9F7FFFBF8F6FFFBF8F6FFF4F1EEFFDEB189FFFCF8F5FFF9F3
          EDFFFAF5F0FFFBF6F3FFFBF8F5FFFCFAF6FFFDFAF7FFFDF9F7FFFCF8F4FFFBF6
          F0FFFAF3ECFFF9F0E8FFF4E5D8FFCD9666FFE6E1DCFFF6F2ECFFF6F2ECFFF6F1
          ECFFF5F1EAFFF6F0EBFFF5F0EAFFF5F0E8FFF5F0E8FFB09C87FFC3B29DFFFBF9
          F8FFFBF9F7FFFBF9F7FFFBF8F7FFFBF8F6FFF5F2F0FFDFB28AFFFBF7F3FFF8F1
          EAFFF9F3EDFFFAF5F0FFFBF6F3FFFCF8F5FFFDF9F6FFFDFAF7FFFDF9F6FFFCF7
          F3FFFAF4F0FFF9F2ECFFF4E7DBFFCD9767FFE6E2DDFFF7F3EDFFF6F2ECFFF6F1
          ECFFF6F1EBFFF6F1EBFFF6F0EAFFF5F1EAFFF5F0EAFFB19D88FFC4B39EFFFBF9
          F8FFFCF9F8FFFBF9F7FFFBF9F7FFFBF9F7FFF5F3F1FFDFB28AFFFBF6F1FFF7EF
          E7FFF8F1EAFFF9F3EDFFFAF4F0FFFBF6F3FFFCF8F6FFFDFAF6FFFCFAF7FFFDF8
          F6FFFBF6F2FFFAF4EEFFF5E9DEFFCF9969FFE7E4DEFFF7F3EDFFF7F2EDFFF7F1
          EDFFF6F2ECFFF6F1EBFFF6F1EBFFF5F0EAFFF5F0EAFFB29F89FFC5B39EFFFBF9
          F8FFFCF9F8FFFBFAF8FFFBF8F7FFFBF9F7FFF7F4F2FFDFB28AFFFAF5F0FFFBF6
          F1FFFBF7F3FFFCF8F5FFFCF9F6FFFDFAF8FFFDFBF9FFFEFCFBFFFEFDFBFFFEFC
          FAFFFEFBFAFFFDFAF8FFFAF5F0FFD19B6CFFEAE6E0FFF7F3EEFFF7F3EEFFF7F3
          EDFFF6F2ECFFF6F2ECFFF6F1EBFFF6F1EBFFF6F0EAFFB39F89FFC5B39EFFFCF9
          F8FFFCF9F8FFFBF9F8FFFBF9F7FFFBF9F7FFF8F6F5FFE3C2A4FFDFB38AFFDFB2
          8AFFDFB28AFFDEB189FFDEB189FFDEB188FFDEB088FFDDAF87FFDDAF87FFDCAF
          86FFDCAE86FFDCAD85FFDBAD84FFD7B290FFEFEBE6FFF8F3EFFFF7F3EEFFF7F3
          EEFFF7F2EDFFF6F2ECFFF7F1ECFFF6F2EBFFF6F0EBFFB4A089FFC6B49EFFFBFA
          F8FFFCFAF9FFFCFAF8FFFBFAF8FFFCF9F8FFFAF8F6FFF9F7F5FFF7F4F2FFF6F3
          F1FFF5F2F1FFF5F2EFFFF4F0EEFFF4F0EEFFF2EFECFFF1EEECFFF1EDEBFFF0EC
          E9FFEEEBE7FFEEEAE6FFEEEAE6FFF0ECE8FFF6F3EDFFF7F4EFFFF7F3EEFFF7F3
          EEFFF7F3EDFFF7F2EDFFF6F2ECFFF6F1ECFFF6F1EBFFB4A18AFFC6B49FFFFCFA
          F9FFFBFAF9FFFCF9F9FFFBF9F8FFFCF9F8FFFBF9F8FFFBF9F7FFFBF9F7FFFBF8
          F7FFFBF8F6FFFBF8F6FFFBF7F6FFFAF8F5FFFAF8F5FFFBF7F4FFFAF6F4FFFAF6
          F3FFFAF6F3FFF9F6F3FFF9F5F1FFF9F5F1FFF8F5F0FFF8F4F0FFF8F4EFFFF7F3
          EEFFF8F3EEFFF7F3EDFFF7F2EDFFF6F2ECFFF7F1ECFFB5A18CFFC7B4A0FFFCFA
          F9FFFCFAF9FFFCFAF9FFFBF9F9FFFCF9F8FFFCF9F8FFFBF9F8FFFBF9F7FFFBF9
          F7FFFBF8F7FFFBF8F6FFFBF8F6FFFBF8F6FFFBF7F5FFFBF7F4FFFBF7F5FFFAF7
          F4FFFAF7F4FFFAF6F3FFF9F6F1FFF9F6F1FFF9F5F1FFF8F4F0FFF8F5EFFFF7F4
          EFFFF7F3EFFFF8F3EEFFF7F3EEFFF6F2EDFFF6F2EDFFB5A28DFFB2A291E7EEE8
          E2FFFCFAF9FFFCFAF9FFFCFAF9FFFCFAF9FFFCF9F8FFFCF9F8FFFCF9F8FFFBF8
          F8FFFBF9F7FFFBF9F7FFFBF8F7FFFBF8F6FFFBF8F5FFFBF7F6FFFBF7F5FFFBF7
          F4FFFAF6F4FFFAF6F3FFFAF6F3FFF9F5F3FFF9F6F1FFF8F5F1FFF9F5F0FFF8F4
          EFFFF7F4EFFFF8F4EFFFF7F3EEFFF7F3EEFFE6DDD4FFA59481E7312D283F9B8F
          7DC9C7B59FFFC6B49FFFC6B39EFFC5B49FFFC5B39EFFC4B29DFFC4B29DFFC3B2
          9BFFC3B19BFFC2B09BFFC2B09AFFC1AF9AFFC0AF99FFC0AE99FFC0AD98FFBFAC
          97FFBFAC97FFBEAC96FFBEAA95FFBEAA94FFBDAA95FFBDA994FFBCA893FFBBA8
          92FFBAA792FFB9A691FFB9A590FFB8A590FFA69481E82D28233F}
      end
      item
        Image.Data = {
          36100000424D3610000000000000360000002800000020000000200000000100
          2000000000000010000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          000000000000000000000502020B4B201CB1662A26F032151275000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000502020C52231EC16C2E28FF6C2E28FF662A26F0000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          00000502020C52231EC16C2E28FF6C2E28FF6C2E28FF4B201CB1000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000C05041C3717148150221DBC552420CA4F211CBA331613790E06
          052052231EC16C2E28FF6C2E28FF6C2E28FF52231EC10502020B000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          00002E13116C682B25F56C2E28FF642B24EC5D2721DB652B24EE6C2E28FF6B2C
          27FC6C2E28FF6C2E28FF6C2E28FF52231EC10502020C00000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000002F14
          12706C2E28FF5B2721D61C0C0A42010100030000000002010104200E0C4C5E27
          23DF6C2E28FF6C2E28FF52231EC10502020C0000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          000000000000000000000000000000000000000000000000000010070625682D
          26F9592520D30603020F100E0C127164527D907F69A06B5E4E770C0A090D0A04
          04175E2723DF6B2C27FC0E060520000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          00000000000000000000000000000000000000000000000000003B19168C6C2E
          28FF180A093815131018CBB292E1E6CBA7FFE6CBA7FFE6CBA7FFBEA98BD40C0A
          090D200E0C4D6C2E28FF33161379000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000562520CB5C28
          23DC000000017C6E5A8AE6CBA7FFE6CBA7FFE6CBA7FFE6CBA7FFE6CBA7FF6B5E
          4E7702010104652B24EE4F211CBA000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          00000000000000000000000000000000000000000000000000005D2723DE5123
          1EC200000000A38F76B5E6CBA7FFE6CBA7FFE6CBA7FFE6CBA7FFE6CBA7FF907F
          69A0000000005D2721DB552420CA000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000562420CE5B27
          22D80000000082735F90E6CBA7FFE6CBA7FFE6CBA7FFE6CBA7FFE6CBA7FF7164
          527D01010003642B24EC50221DBC000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          00000000000000000000000000000000000000000000000000003E1A16936C2E
          28FE1408072E1B18141ED5BC9BECE6CBA7FFE6CBA7FFE6CBA7FFCBB292E1100E
          0C121C0C0A426C2E28FF37171481000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          00000000000000000000000000000000000000000000000000001308072D6B2C
          28FC55231FC8030101081B18141E82735F90A28F76B47C6E5A8A151310180603
          020F5B2721D6682B25F50C05041C000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000003617
          14806C2E28FF55231FC81408072E000000000000000000000001180A09385925
          20D36C2E28FF2E13116C00000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000100
          0002361714806B2C28FC6C2E28FE5B2722D852221FC35C2823DC6C2E28FF682D
          26F92F14116F0000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000001308072D3E1A1693562420CE5E2823DD562520CB3B19168C1007
          0625000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000}
      end>
  end
  object FDQ_Principal: TFDQuery
    Connection = DtmBcoErp.FDBcoERP
    SQL.Strings = (
      'select * from tb_empresa')
    Left = 288
    Top = 46
    object FDQ_PrincipalCOD_EMP: TIntegerField
      DisplayLabel = 'C'#243'digo:'
      FieldName = 'COD_EMP'
      Origin = 'COD_EMP'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object FDQ_PrincipalRAZAO_EMP: TStringField
      DisplayLabel = 'Raz'#227'o:'
      FieldName = 'RAZAO_EMP'
      Origin = 'RAZAO_EMP'
      Required = True
      Size = 50
    end
    object FDQ_PrincipalEND_EMP: TWideStringField
      DisplayLabel = 'Endere'#231'o:'
      FieldName = 'END_EMP'
      Origin = 'END_EMP'
      Size = 50
    end
    object FDQ_PrincipalBAI_EMP: TWideStringField
      DisplayLabel = 'Bairro:'
      FieldName = 'BAI_EMP'
      Origin = 'BAI_EMP'
      Size = 30
    end
    object FDQ_PrincipalCID_EMP: TWideStringField
      DisplayLabel = 'Cidade:'
      FieldName = 'CID_EMP'
      Origin = 'CID_EMP'
      Size = 30
    end
    object FDQ_PrincipalCEP_EMP: TWideStringField
      DisplayLabel = 'CEP:'
      FieldName = 'CEP_EMP'
      Origin = 'CEP_EMP'
      FixedChar = True
      Size = 9
    end
    object FDQ_PrincipalEST_EMP: TWideStringField
      FieldName = 'EST_EMP'
      Origin = 'EST_EMP'
      FixedChar = True
      Size = 2
    end
    object FDQ_PrincipalINSC_EMP: TWideStringField
      DisplayLabel = 'I.E:'
      FieldName = 'INSC_EMP'
      Origin = 'INSC_EMP'
    end
    object FDQ_PrincipalTEL_EMP: TWideStringField
      DisplayLabel = 'Telefone:'
      FieldName = 'TEL_EMP'
      Origin = 'TEL_EMP'
      Size = 13
    end
    object FDQ_PrincipalFAX_EMP: TWideStringField
      DisplayLabel = 'Fax:'
      FieldName = 'FAX_EMP'
      Origin = 'FAX_EMP'
      Size = 13
    end
    object FDQ_PrincipalNOME_EMP_ETIQUETA: TWideStringField
      FieldName = 'NOME_EMP_ETIQUETA'
      Origin = 'NOME_EMP_ETIQUETA'
      Size = 15
    end
    object FDQ_PrincipalNUMERO_EMP: TWideStringField
      DisplayLabel = 'N'#186':'
      FieldName = 'NUMERO_EMP'
      Origin = 'NUMERO_EMP'
      Size = 10
    end
    object FDQ_PrincipalRESP_EMP: TWideStringField
      FieldName = 'RESP_EMP'
      Origin = 'RESP_EMP'
      Size = 50
    end
    object FDQ_PrincipalCAMINHO_FOTO_EMP: TWideStringField
      FieldName = 'CAMINHO_FOTO_EMP'
      Origin = 'CAMINHO_FOTO_EMP'
      Size = 150
    end
    object FDQ_PrincipalFANTASIA_EMP: TWideStringField
      DisplayLabel = 'Fantasia:'
      FieldName = 'FANTASIA_EMP'
      Origin = 'FANTASIA_EMP'
      Size = 50
    end
    object FDQ_PrincipalMOSTRAR_SITCLI_PREVENDA: TWideStringField
      FieldName = 'MOSTRAR_SITCLI_PREVENDA'
      Origin = 'MOSTRAR_SITCLI_PREVENDA'
      Required = True
      FixedChar = True
      Size = 1
    end
    object FDQ_PrincipalCADASTRAR_CLIENTE_SEM_CPF: TWideStringField
      FieldName = 'CADASTRAR_CLIENTE_SEM_CPF'
      Origin = 'CADASTRAR_CLIENTE_SEM_CPF'
      Required = True
      FixedChar = True
      Size = 1
    end
    object FDQ_PrincipalTIPO_EMP: TIntegerField
      FieldName = 'TIPO_EMP'
      Origin = 'TIPO_EMP'
      Required = True
    end
    object FDQ_PrincipalTIPO_CARGA_BALANCA: TIntegerField
      FieldName = 'TIPO_CARGA_BALANCA'
      Origin = 'TIPO_CARGA_BALANCA'
      Required = True
    end
    object FDQ_PrincipalCNPJ_EMP: TWideStringField
      DisplayLabel = 'CNPJ:'
      FieldName = 'CNPJ_EMP'
      Origin = 'CNPJ_EMP'
      Size = 14
    end
    object FDQ_PrincipalCAMINHO_VALIDADOR_SINTEGRA: TWideStringField
      FieldName = 'CAMINHO_VALIDADOR_SINTEGRA'
      Origin = 'CAMINHO_VALIDADOR_SINTEGRA'
      Size = 80
    end
    object FDQ_PrincipalINSCRICAO_MUNICIPAL: TWideStringField
      DisplayLabel = 'I.M:'
      FieldName = 'INSCRICAO_MUNICIPAL'
      Origin = 'INSCRICAO_MUNICIPAL'
    end
    object FDQ_PrincipalPERFIL_EFD: TWideStringField
      FieldName = 'PERFIL_EFD'
      Origin = 'PERFIL_EFD'
      FixedChar = True
      Size = 1
    end
    object FDQ_PrincipalCODIGO_MUNICIPIO: TWideStringField
      FieldName = 'CODIGO_MUNICIPIO'
      Origin = 'CODIGO_MUNICIPIO'
      Size = 7
    end
    object FDQ_PrincipalTIPO_ATIVIDADE_EFD: TIntegerField
      FieldName = 'TIPO_ATIVIDADE_EFD'
      Origin = 'TIPO_ATIVIDADE_EFD'
    end
    object FDQ_PrincipalNOME_CONTADOR: TWideStringField
      FieldName = 'NOME_CONTADOR'
      Origin = 'NOME_CONTADOR'
      Size = 80
    end
    object FDQ_PrincipalCPF_CONTADOR: TWideStringField
      FieldName = 'CPF_CONTADOR'
      Origin = 'CPF_CONTADOR'
      Size = 14
    end
    object FDQ_PrincipalCRC_CONTADOR: TWideStringField
      FieldName = 'CRC_CONTADOR'
      Origin = 'CRC_CONTADOR'
      Size = 15
    end
    object FDQ_PrincipalCNPJ_CONTADOR: TWideStringField
      FieldName = 'CNPJ_CONTADOR'
      Origin = 'CNPJ_CONTADOR'
      Size = 18
    end
    object FDQ_PrincipalCEP_CONTADOR: TWideStringField
      FieldName = 'CEP_CONTADOR'
      Origin = 'CEP_CONTADOR'
      FixedChar = True
      Size = 9
    end
    object FDQ_PrincipalEND_CONTADOR: TWideStringField
      FieldName = 'END_CONTADOR'
      Origin = 'END_CONTADOR'
      Size = 60
    end
    object FDQ_PrincipalNUMERO_CONTADOR: TWideStringField
      FieldName = 'NUMERO_CONTADOR'
      Origin = 'NUMERO_CONTADOR'
      Size = 10
    end
    object FDQ_PrincipalBAIRRO_CONTADOR: TWideStringField
      FieldName = 'BAIRRO_CONTADOR'
      Origin = 'BAIRRO_CONTADOR'
      Size = 50
    end
    object FDQ_PrincipalTEL_CONTADOR: TWideStringField
      FieldName = 'TEL_CONTADOR'
      Origin = 'TEL_CONTADOR'
      Size = 10
    end
    object FDQ_PrincipalFAX_CONTADOR: TWideStringField
      FieldName = 'FAX_CONTADOR'
      Origin = 'FAX_CONTADOR'
      Size = 10
    end
    object FDQ_PrincipalCODIGO_MUNICIPIO_CONTADOR: TWideStringField
      FieldName = 'CODIGO_MUNICIPIO_CONTADOR'
      Origin = 'CODIGO_MUNICIPIO_CONTADOR'
      Size = 7
    end
    object FDQ_PrincipalVERSAO_EFD: TIntegerField
      FieldName = 'VERSAO_EFD'
      Origin = 'VERSAO_EFD'
    end
    object FDQ_PrincipalEMAIL_CONTADOR: TWideStringField
      FieldName = 'EMAIL_CONTADOR'
      Origin = 'EMAIL_CONTADOR'
      Size = 255
    end
  end
  object OpenDialog: TOpenDialog
    Left = 352
    Top = 48
  end
  object HTTPRIO1: THTTPRIO
    HTTPWebNode.UseUTF8InHeader = True
    HTTPWebNode.InvokeOptions = [soIgnoreInvalidCerts, soAutoCheckAccessPointViaUDDI]
    HTTPWebNode.WebNodeOptions = []
    Converter.Options = [soSendMultiRefObj, soTryAllSchema, soRootRefNodesToBody, soCacheMimeResponse, soUTF8EncodeXML]
    Left = 984
    Top = 200
  end
end
