object DataModule2: TDataModule2
  OldCreateOrder = False
  Height = 307
  Width = 488
  object DataSource1: TDataSource
    DataSet = ADODataSet1
    Left = 240
    Top = 128
  end
  object ADOConnection1: TADOConnection
    Connected = True
    ConnectionString = 
      'Provider=MSDASQL.1;Persist Security Info=True;User ID=admin;Data' +
      ' Source=DB_KemVod'
    Left = 152
    Top = 72
  end
  object ADODataSet1: TADODataSet
    Connection = ADOConnection1
    CursorType = ctStatic
    Parameters = <>
    Left = 240
    Top = 72
  end
end
