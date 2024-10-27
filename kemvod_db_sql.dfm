object Form1: TForm1
  AlignWithMargins = True
  Left = 0
  Top = 0
  Caption = #1042#1099#1073#1086#1088#1082#1072
  ClientHeight = 564
  ClientWidth = 1088
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object DBGrid1: TDBGrid
    AlignWithMargins = True
    Left = 3
    Top = 3
    Width = 1082
    Height = 502
    Align = alTop
    DataSource = DataModule2.DataSource1
    ReadOnly = True
    TabOrder = 0
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'Tahoma'
    TitleFont.Style = []
  end
  object GroupBox1: TGroupBox
    AlignWithMargins = True
    Left = 3
    Top = 511
    Width = 1082
    Height = 50
    Align = alClient
    BiDiMode = bdLeftToRight
    ParentBiDiMode = False
    TabOrder = 1
    object Button2: TButton
      Left = 2
      Top = 15
      Width = 75
      Height = 33
      Align = alLeft
      Caption = 'Set Dates'
      TabOrder = 0
      OnClick = Button2Click
    end
    object Button1: TButton
      Left = 1005
      Top = 15
      Width = 75
      Height = 33
      Align = alRight
      Caption = 'Exit'
      TabOrder = 1
      OnClick = Button1Click
    end
    object Button3: TButton
      Left = 77
      Top = 15
      Width = 75
      Height = 33
      Align = alLeft
      Caption = 'Table'
      TabOrder = 2
      OnClick = Button3Click
    end
  end
end
