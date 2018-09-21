object DtmBcoErp: TDtmBcoErp
  OldCreateOrder = False
  OnCreate = DataModuleCreate
  OnDestroy = DataModuleDestroy
  Height = 868
  Width = 1304
  object FDBcoERP: TFDConnection
    Params.Strings = (
      'User_Name=sysdba'
      'Password=masterkey'
      
        'Database=192.168.0.78:C:\BeniSoftware\BeniERP\DataBase\Gestao.FD' +
        'B'
      'DriverID=FB')
    LoginPrompt = False
    Left = 24
    Top = 16
  end
  object FDPhysFBDriverLink1: TFDPhysFBDriverLink
    Left = 112
    Top = 16
  end
end
