object form_Configurar_Pis_Cofins: Tform_Configurar_Pis_Cofins
  Left = 0
  Top = 0
  BorderIcons = [biSystemMenu]
  BorderStyle = bsDialog
  Caption = 'Parametros EFD PIS COFINS'
  ClientHeight = 364
  ClientWidth = 319
  Color = clBtnHighlight
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poScreenCenter
  OnClose = FormClose
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object BitBtn1: TBitBtn
    Left = 222
    Top = 295
    Width = 75
    Height = 25
    Kind = bkOK
    NumGlyphs = 2
    TabOrder = 0
    OnClick = Btn_ok
  end
  object Metodo: TRadioGroup
    Left = 8
    Top = 151
    Width = 309
    Height = 66
    Caption = '  M'#233'todo de Apropria'#231#227'o de Cr'#233'ditos  '
    Items.Strings = (
      '1 - M'#233'todo de Apropria'#231#227'o Direta'
      '2 - M'#233'todo de Rateio Proporcional( Receita Bruta )')
    TabOrder = 1
  end
  object Regime: TRadioGroup
    Left = 8
    Top = 56
    Width = 309
    Height = 89
    Caption = '  Regime de Apura'#231#227'o de Contribui'#231#227'o Social  '
    Items.Strings = (
      '1 - Regime N'#227'o-Cumulativo'
      '2 - Regime Cumulativo'
      '3 - Regime Cumulativo e N'#227'o Cumulativo')
    TabOrder = 2
  end
  object Tipo: TRadioGroup
    Left = 8
    Top = 223
    Width = 309
    Height = 66
    Caption = '  Tipo de Contribui'#231#227'o Apurada  '
    Items.Strings = (
      '1 - Exclusivamente Al'#237'cota B'#225'sica'
      '2 - Al'#237'cotas Especificas')
    TabOrder = 3
  end
  object Versao: TRadioGroup
    Left = 8
    Top = 8
    Width = 309
    Height = 42
    Caption = 'Vers'#227'o do Layout'
    Columns = 4
    Items.Strings = (
      '1.0.0'
      '1.0.1'
      '2.0.0'
      '2.0.1')
    TabOrder = 4
  end
  object Conf: TFDQuery
    Connection = DtmBcoErp.FDBcoERP
    SQL.Strings = (
      'select * from TB_EFD_PISCOFINS where COD_EMP=:CODEMP')
    Left = 256
    Top = 72
    ParamData = <
      item
        Name = 'CODEMP'
        DataType = ftInteger
        ParamType = ptInput
        Value = Null
      end>
    object ConfCOD: TIntegerField
      FieldName = 'COD'
      Origin = 'COD'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object ConfCOD_EMP: TIntegerField
      FieldName = 'COD_EMP'
      Origin = 'COD_EMP'
    end
    object ConfVERSAO: TIntegerField
      FieldName = 'VERSAO'
      Origin = 'VERSAO'
    end
    object ConfREGIME_APURACAO: TIntegerField
      FieldName = 'REGIME_APURACAO'
      Origin = 'REGIME_APURACAO'
    end
    object ConfMETODO: TIntegerField
      FieldName = 'METODO'
      Origin = 'METODO'
    end
    object ConfTIPO_CONT: TIntegerField
      FieldName = 'TIPO_CONT'
      Origin = 'TIPO_CONT'
    end
  end
  object ACBrEnterTab1: TACBrEnterTab
    Left = 88
    Top = 304
  end
end
