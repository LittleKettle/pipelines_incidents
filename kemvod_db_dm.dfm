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
    ConnectionString = 
      'Provider=MSDASQL.1;Persist Security Info=True;User ID=admin;Data' +
      ' Source=DB_KemVod'
    Provider = 'MSDASQL.1'
    Left = 152
    Top = 72
  end
  object ADODataSet1: TADODataSet
    Connection = ADOConnection1
    CursorType = ctStatic
    CommandText = 'select *  from  "'#1057#1086#1073#1099#1090#1080#1103' '#1074#1086#1076#1072'"'
    Parameters = <>
    Left = 240
    Top = 72
  end
end
