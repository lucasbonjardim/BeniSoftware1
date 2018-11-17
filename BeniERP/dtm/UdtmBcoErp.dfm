object DtmBcoErp: TDtmBcoErp
  OldCreateOrder = False
  OnDestroy = DataModuleDestroy
  Height = 868
  Width = 1304
  object FDBcoERP: TFDConnection
    Params.Strings = (
      'User_Name=sysdba'
      'Password=masterkey'
      
        'Database=192.168.0.78:C:\BeniSoftware\BeniERP\DataBase\BENIGESTA' +
        'O.FDB'
      'CharacterSet=WIN1252'
      'DriverID=FB')
    Connected = True
    LoginPrompt = False
    Left = 24
    Top = 16
  end
  object FDPhysFBDriverLink1: TFDPhysFBDriverLink
    Left = 112
    Top = 16
  end
  object fdq_auxiliar: TFDQuery
    Connection = FDBcoERP
    Left = 32
    Top = 80
  end
  object Fdq_usuario: TFDQuery
    Connection = FDBcoERP
    SQL.Strings = (
      'select * from TB_USUARIO')
    Left = 112
    Top = 72
  end
  object Fdq_TB_EMPRESA: TFDQuery
    Connection = FDBcoERP
    SQL.Strings = (
      'select * from tb_empresa')
    Left = 33
    Top = 151
  end
  object Fdq_TB_TRIBUTACAO_ICMS: TFDQuery
    Connection = FDBcoERP
    SQL.Strings = (
      'select * from TB_TRIBUTACAO_ICMS')
    Left = 32
    Top = 200
  end
  object FDQ_NCM: TFDQuery
    Connection = FDBcoERP
    SQL.Strings = (
      'select * from TB_NCM')
    Left = 32
    Top = 248
  end
end
