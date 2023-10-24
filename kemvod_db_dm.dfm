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
    CommandText = 
      'select *  from  "'#1057#1086#1073#1099#1090#1080#1103' '#1074#1086#1076#1072'" '#13#10'  where ("'#1044#1072#1090#1072' '#1087#1086#1089#1090#1091#1087#1083#1077#1085#1080#1103'".AsD' +
      'ateTime>Date_first)'
    Parameters = <>
    Left = 240
    Top = 72
  end
end
