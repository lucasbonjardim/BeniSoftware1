object dtmBcoPdv: TdtmBcoPdv
  OldCreateOrder = False
  Height = 631
  Width = 985
  object FDBcoPDV: TFDConnection
    Params.Strings = (
      'User_Name=sysdba'
      'Password=masterkey'
      'Database=C:\BeniSoftware\BeniERP\DataBase\BENIGESTAO.FDB'
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
  object fdqbuscaproduto: TFDQuery
    Connection = FDBcoPDV
    SQL.Strings = (
      'select * from TB_PRODUTOS')
    Left = 40
    Top = 96
  end
end
