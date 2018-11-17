inherited Form_Cadastro_ICMS: TForm_Cadastro_ICMS
  Caption = 'Cadastro de ICMS'
  ClientHeight = 632
  ClientWidth = 1423
  ExplicitWidth = 1439
  ExplicitHeight = 671
  PixelsPerInch = 96
  TextHeight = 13
  inherited Shape1: TShape
    Top = 58
    Width = 1423
    Height = 4
    ExplicitTop = 52
    ExplicitWidth = 1253
    ExplicitHeight = 4
  end
  inherited cxPageControl1: TcxPageControl
    Top = 87
    Width = 1423
    Height = 528
    Properties.ActivePage = tbCadastro
    ExplicitTop = 87
    ExplicitWidth = 1423
    ExplicitHeight = 528
    ClientRectBottom = 524
    ClientRectRight = 1419
    inherited tbPesquisa: TcxTabSheet
      ExplicitLeft = 2
      ExplicitTop = 28
      ExplicitWidth = 1419
      ExplicitHeight = 498
      inherited Panel1: TPanel
        Width = 1415
        ExplicitWidth = 1419
        inherited lblPesquisa: TcxLabel
          Style.IsFontAssigned = True
          AnchorX = 34
          AnchorY = 21
        end
        inherited Panel2: TPanel
          inherited edtCurr: TcxCurrencyEdit
            ExplicitHeight = 23
          end
        end
      end
      object cxGrid1: TcxGrid
        AlignWithMargins = True
        Left = 3
        Top = 44
        Width = 1409
        Height = 453
        Align = alClient
        TabOrder = 1
        LookAndFeel.Kind = lfStandard
        LookAndFeel.NativeStyle = False
        RootLevelOptions.DetailFrameColor = clNone
        ExplicitWidth = 1413
        ExplicitHeight = 451
        object cxGridDBTableView1: TcxGridDBTableView
          OnDblClick = cxGridDBTableView1DblClick
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
          OptionsView.ColumnAutoWidth = True
          Styles.Content = cxstylPadrao
          Styles.ContentOdd = cxstylOdd
          Styles.Group = cxstylGrupos
          Styles.Header = cxstylHeader
          Styles.Inactive = cxstylInactive
          object cxGridDBTableView1COD_ICMS: TcxGridDBColumn
            Caption = 'C'#211'DIGO ICMS'
            DataBinding.FieldName = 'COD_ICMS'
            Width = 88
          end
          object cxGridDBTableView1COD_EMP: TcxGridDBColumn
            DataBinding.FieldName = 'COD_EMP'
            Width = 109
          end
          object cxGridDBTableView1DESCRICAO: TcxGridDBColumn
            DataBinding.FieldName = 'DESCRICAO'
            Width = 185
          end
          object cxGridDBTableView1CST: TcxGridDBColumn
            DataBinding.FieldName = 'CST'
            Width = 57
          end
          object cxGridDBTableView1ICMS: TcxGridDBColumn
            DataBinding.FieldName = 'ICMS'
            Width = 54
          end
          object cxGridDBTableView1REDUCAO: TcxGridDBColumn
            DataBinding.FieldName = 'REDUCAO'
            Width = 79
          end
          object cxGridDBTableView1DIF: TcxGridDBColumn
            DataBinding.FieldName = 'DIF'
            Width = 44
          end
          object cxGridDBTableView1MVA: TcxGridDBColumn
            DataBinding.FieldName = 'MVA'
            Width = 110
          end
          object cxGridDBTableView1TIPO_GRP: TcxGridDBColumn
            Caption = 'TIPO GRP'
            DataBinding.FieldName = 'TIPO_GRP'
            Width = 73
          end
          object cxGridDBTableView1USUARIO_ALTERACAO: TcxGridDBColumn
            Caption = #218'SUARIO ALTERA'#199#195'O'
            DataBinding.FieldName = 'USUARIO_ALTERACAO'
            Width = 212
          end
          object cxGridDBTableView1DT_ULT_ATUALIZACAO: TcxGridDBColumn
            Caption = 'DATA MODIFICA'#199#195'O'
            DataBinding.FieldName = 'DT_ULT_ATUALIZACAO'
            Width = 229
          end
          object cxGridDBTableView1HR_ULT_ATUALIZACAO: TcxGridDBColumn
            Caption = 'HORA ATUALIZA'#199#195'O'
            DataBinding.FieldName = 'HR_ULT_ATUALIZACAO'
            Width = 165
          end
        end
        object cxGridLevel1: TcxGridLevel
          GridView = cxGridDBTableView1
        end
      end
    end
    inherited tbCadastro: TcxTabSheet
      ExplicitLeft = 2
      ExplicitTop = 28
      ExplicitWidth = 1419
      ExplicitHeight = 498
      inherited Shape3: TShape
        Top = 492
        Width = 1415
        ExplicitTop = 544
        ExplicitWidth = 1125
      end
      object Panel3: TPanel
        Left = 0
        Top = 0
        Width = 1415
        Height = 45
        Align = alTop
        BevelOuter = bvNone
        Color = clWhite
        ParentBackground = False
        TabOrder = 0
        ExplicitWidth = 1419
        object cxLabel1: TcxLabel
          Left = 5
          Top = -3
          Caption = 'C'#243'digo :'
          Transparent = True
        end
        object dbedtCOD_ICMS: TDBEdit
          Left = 5
          Top = 16
          Width = 121
          Height = 23
          TabStop = False
          CharCase = ecUpperCase
          DataField = 'COD_ICMS'
          DataSource = dsPrincipal
          Enabled = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = 16744448
          Font.Height = -12
          Font.Name = 'Segoe UI'
          Font.Style = [fsBold]
          ParentFont = False
          ReadOnly = True
          TabOrder = 1
        end
        object DBEdit1: TDBEdit
          Left = 147
          Top = 16
          Width = 121
          Height = 23
          TabStop = False
          CharCase = ecUpperCase
          DataField = 'COD_EMP'
          DataSource = dsPrincipal
          Enabled = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = 16744448
          Font.Height = -12
          Font.Name = 'Segoe UI'
          Font.Style = [fsBold]
          ParentFont = False
          ReadOnly = True
          TabOrder = 2
        end
        object cxLabel7: TcxLabel
          Left = 147
          Top = -3
          Caption = 'C'#243'digo Empresa :'
          Transparent = True
        end
      end
      object Panel6: TPanel
        Left = 0
        Top = 90
        Width = 1415
        Height = 48
        Align = alTop
        BevelOuter = bvNone
        Color = clWhite
        ParentBackground = False
        TabOrder = 1
        ExplicitWidth = 1419
        object pnlIcms: TPanel
          Left = 0
          Top = 0
          Width = 134
          Height = 48
          Align = alLeft
          BevelOuter = bvNone
          TabOrder = 0
          object cxLabel3: TcxLabel
            Left = 3
            Top = -1
            Caption = 'ICMS(%)'
            Transparent = True
          end
          object dbedtICMS: TDBEdit
            Left = 5
            Top = 19
            Width = 121
            Height = 21
            CharCase = ecUpperCase
            DataField = 'ICMS'
            DataSource = dsPrincipal
            TabOrder = 1
          end
        end
        object pnlReducao: TPanel
          Left = 134
          Top = 0
          Width = 134
          Height = 48
          Align = alLeft
          BevelOuter = bvNone
          TabOrder = 1
          object cxLabel4: TcxLabel
            Left = 3
            Top = -1
            Caption = 'Redu'#231#227'o(%)'
            Transparent = True
          end
          object dbedtREDUCAO: TDBEdit
            Left = 5
            Top = 19
            Width = 121
            Height = 21
            CharCase = ecUpperCase
            DataField = 'REDUCAO'
            DataSource = dsPrincipal
            TabOrder = 1
          end
        end
        object pnlDiferido: TPanel
          Left = 268
          Top = 0
          Width = 134
          Height = 48
          Align = alLeft
          BevelOuter = bvNone
          TabOrder = 2
          object cxLabel5: TcxLabel
            Left = 3
            Top = -1
            Caption = 'Diferido(%)'
            Transparent = True
          end
          object dbedtDIF: TDBEdit
            Left = 5
            Top = 19
            Width = 121
            Height = 21
            CharCase = ecUpperCase
            DataField = 'DIF'
            DataSource = dsPrincipal
            TabOrder = 1
          end
        end
        object pnlMva: TPanel
          Left = 402
          Top = 0
          Width = 134
          Height = 48
          Align = alLeft
          BevelOuter = bvNone
          TabOrder = 3
          object cxLabel6: TcxLabel
            Left = 3
            Top = -1
            Caption = 'MVA(%)'
            Transparent = True
          end
          object dbedtMVA: TDBEdit
            Left = 5
            Top = 19
            Width = 121
            Height = 21
            CharCase = ecUpperCase
            DataField = 'MVA'
            DataSource = dsPrincipal
            TabOrder = 1
          end
        end
      end
      object Panel5: TPanel
        Left = 0
        Top = 138
        Width = 1415
        Height = 135
        Align = alTop
        BevelOuter = bvNone
        Color = clWhite
        ParentBackground = False
        TabOrder = 2
        ExplicitWidth = 1419
        object dbrgrpCST: TDBRadioGroup
          AlignWithMargins = True
          Left = 5
          Top = 3
          Width = 716
          Height = 129
          Margins.Left = 5
          Margins.Right = 7
          Align = alLeft
          Caption = 'CST'
          Columns = 2
          DataField = 'CST'
          DataSource = dsPrincipal
          Items.Strings = (
            '00 - Tributado'
            '10 - Tributado e com cobran'#231'a por Substitui'#231#227'o'
            '20 - Redu'#231#227'o'
            '30 - Isento / N'#227'o Tribuatado com cobran'#231'a por Subs.'
            '40 - Isento'
            '41 - N'#227'o Tributado'
            '50 - Suspens'#227'o'
            '51 - Diferido'
            '60 - ICMS cobrado ant. por Substitui'#231#227'o'
            '70 - Redu'#231#227'o e com Cobran'#231'a por Substitui'#231#227'o'
            '90 - Outras')
          TabOrder = 0
          Values.Strings = (
            '00'
            '10'
            '20'
            '30'
            '40'
            '41'
            '50'
            '51'
            '60'
            '70'
            '90')
        end
      end
      object Panel4: TPanel
        Left = 0
        Top = 45
        Width = 1415
        Height = 45
        Align = alTop
        BevelOuter = bvNone
        Color = clWhite
        ParentBackground = False
        TabOrder = 3
        ExplicitWidth = 1419
        object cxLabel2: TcxLabel
          Left = 3
          Top = -2
          Caption = 'Descri'#231#227'o :'
          Transparent = True
        end
        object dbedtDESCRICAO: TDBEdit
          Left = 5
          Top = 18
          Width = 524
          Height = 21
          CharCase = ecUpperCase
          DataField = 'DESCRICAO'
          DataSource = dsPrincipal
          TabOrder = 1
        end
      end
    end
  end
  inherited pnl_top: TPanel
    Top = 65
    Width = 1423
    ExplicitTop = 65
    ExplicitWidth = 1423
  end
  inherited Panel22: TPanel
    Top = 615
    Width = 1423
    ExplicitTop = 615
    ExplicitWidth = 1423
  end
  inherited ToolBar1: TToolBar
    AlignWithMargins = True
    Left = 3
    Top = 3
    Width = 1417
    Height = 49
    ExplicitLeft = 3
    ExplicitTop = 3
    ExplicitWidth = 1417
    ExplicitHeight = 49
  end
  inherited dsPrincipal: TDataSource
    DataSet = QPrincipal
    Left = 440
    Top = 72
  end
  inherited cxLookAndFeelController1: TcxLookAndFeelController
    Top = 64
  end
  inherited BarraMenu: TcxImageList
    FormatVersion = 1
    DesignInfo = 66608
  end
  inherited ACBrEnterTab1: TACBrEnterTab
    Left = 752
    Top = 78
  end
  inherited cxHintStyleController1: TcxHintStyleController
    Left = 696
    Top = 70
  end
  object QPrincipal: TFDQuery
    Active = True
    AfterInsert = QPrincipalAfterInsert
    AfterScroll = QPrincipalAfterScroll
    Connection = DtmBcoErp.FDBcoERP
    SQL.Strings = (
      'SELECT * FROM TB_TRIBUTACAO_ICMS WHERE COD_EMP=:COD_EMP')
    Left = 400
    Top = 72
    ParamData = <
      item
        Name = 'COD_EMP'
        DataType = ftInteger
        ParamType = ptInput
        Value = 1
      end>
    object QPrincipalCOD_ICMS: TIntegerField
      FieldName = 'COD_ICMS'
      Origin = 'COD_ICMS'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object QPrincipalCOD_EMP: TIntegerField
      FieldName = 'COD_EMP'
      Origin = 'COD_EMP'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object QPrincipalDESCRICAO: TStringField
      FieldName = 'DESCRICAO'
      Origin = 'DESCRICAO'
      Required = True
      Size = 100
    end
    object QPrincipalCST: TStringField
      FieldName = 'CST'
      Origin = 'CST'
      Size = 2
    end
    object QPrincipalICMS: TBCDField
      FieldName = 'ICMS'
      Origin = 'ICMS'
      Precision = 18
      Size = 2
    end
    object QPrincipalREDUCAO: TBCDField
      FieldName = 'REDUCAO'
      Origin = 'REDUCAO'
      Precision = 18
      Size = 2
    end
    object QPrincipalDIF: TBCDField
      FieldName = 'DIF'
      Origin = 'DIF'
      Precision = 18
      Size = 2
    end
    object QPrincipalMVA: TBCDField
      FieldName = 'MVA'
      Origin = 'MVA'
      Precision = 18
      Size = 2
    end
    object QPrincipalTIPO_GRP: TStringField
      FieldName = 'TIPO_GRP'
      Origin = 'TIPO_GRP'
      Size = 3
    end
    object QPrincipalUSUARIO_ALTERACAO: TStringField
      FieldName = 'USUARIO_ALTERACAO'
      Origin = 'USUARIO_ALTERACAO'
      Size = 60
    end
    object QPrincipalDT_ULT_ATUALIZACAO: TSQLTimeStampField
      FieldName = 'DT_ULT_ATUALIZACAO'
      Origin = 'DT_ULT_ATUALIZACAO'
    end
    object QPrincipalHR_ULT_ATUALIZACAO: TSQLTimeStampField
      FieldName = 'HR_ULT_ATUALIZACAO'
      Origin = 'HR_ULT_ATUALIZACAO'
    end
  end
  object cxStyleRepository1: TcxStyleRepository
    Left = 936
    Top = 72
    PixelsPerInch = 96
    object cxstylPadrao: TcxStyle
      AssignedValues = [svColor, svFont, svTextColor]
      Color = clWhite
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = 'Segoe UI'
      Font.Style = []
      TextColor = clBlack
    end
    object cxstylOdd: TcxStyle
      AssignedValues = [svColor, svFont, svTextColor]
      Color = 15400927
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = 'Segoe UI'
      Font.Style = []
      TextColor = clBlack
    end
    object cxstylHeader: TcxStyle
      AssignedValues = [svColor, svFont, svTextColor]
      Color = clWhite
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clGreen
      Font.Height = -12
      Font.Name = 'Segoe UI'
      Font.Style = []
      TextColor = clGreen
    end
    object cxstylHeaderBold: TcxStyle
      AssignedValues = [svFont, svTextColor]
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -12
      Font.Name = 'Segoe UI'
      Font.Style = [fsBold]
      TextColor = clBlack
    end
    object cxstylInactive: TcxStyle
      AssignedValues = [svColor, svFont, svTextColor]
      Color = clWhite
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = 'Segoe UI'
      Font.Style = []
      TextColor = clBlack
    end
    object cxstylVermelho: TcxStyle
      AssignedValues = [svColor, svFont]
      Color = 14145535
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = 'Segoe UI'
      Font.Style = []
    end
    object cxstylGrupos: TcxStyle
      AssignedValues = [svFont, svTextColor]
      Font.Charset = DEFAULT_CHARSET
      Font.Color = 191
      Font.Height = -12
      Font.Name = 'Segoe UI'
      Font.Style = [fsBold]
      TextColor = 191
    end
  end
  object cxImgsGrid: TcxImageList
    DrawingStyle = dsTransparent
    FormatVersion = 1
    DesignInfo = 4195312
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
end
