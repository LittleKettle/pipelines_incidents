object Form2: TForm2
  Left = 0
  Top = 0
  AutoSize = True
  Caption = 'Interval Date'
  ClientHeight = 337
  ClientWidth = 611
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poDesktopCenter
  OnCreate = FormCreate
  OnDestroy = FormDestroy
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel
    Left = 13
    Top = 0
    Width = 580
    Height = 22
    Caption = 'Please enter a interval of date for to formation the table'
    Font.Charset = RUSSIAN_CHARSET
    Font.Color = clWindowText
    Font.Height = -19
    Font.Name = 'Consolas'
    Font.Style = []
    Font.Quality = fqClearType
    ParentFont = False
  end
  object MonthCalendar1: TMonthCalendar
    Left = 48
    Top = 28
    Width = 191
    Height = 160
    Date = 45207.912172291670000000
    TabOrder = 0
    OnClick = MonthCalendar1Click
  end
  object GrpBxDate_sec: TGroupBox
    Left = 317
    Top = 209
    Width = 281
    Height = 57
    Caption = 'Date Second'
    TabOrder = 1
  end
  object ComBxDate_sec: TComboBox
    Left = 334
    Top = 232
    Width = 49
    Height = 21
    Style = csDropDownList
    TabOrder = 2
    OnChange = ComBxDate_secChange
  end
  object ComBxMoth_sec: TComboBox
    Left = 389
    Top = 232
    Width = 130
    Height = 21
    Style = csDropDownList
    TabOrder = 3
    OnChange = ComBxMoth_secChange
  end
  object SpinEdYear_sec: TSpinEdit
    Left = 525
    Top = 232
    Width = 73
    Height = 22
    MaxValue = 0
    MinValue = 0
    TabOrder = 4
    Value = 0
    OnChange = SpinEdYear_secChange
    OnEnter = SpinEdYear_secEnter
  end
  object GrpBxDate_frst: TGroupBox
    Left = 0
    Top = 208
    Width = 281
    Height = 57
    Caption = 'Date First'
    TabOrder = 5
    object ComBxDate_first: TComboBox
      Left = 13
      Top = 25
      Width = 49
      Height = 21
      Style = csDropDownList
      TabOrder = 0
      OnChange = ComBxDate_firstChange
    end
    object ComBxMoth_first: TComboBox
      Left = 68
      Top = 24
      Width = 130
      Height = 21
      Style = csDropDownList
      TabOrder = 1
      OnChange = ComBxMoth_firstChange
    end
    object SpinEdYear_first: TSpinEdit
      Left = 204
      Top = 24
      Width = 74
      Height = 22
      MaxValue = 0
      MinValue = 0
      TabOrder = 2
      Value = 0
      OnChange = SpinEdYear_firstChange
      OnEnter = SpinEdYear_firstEnter
    end
  end
  object MonthCalendar2: TMonthCalendar
    Left = 375
    Top = 28
    Width = 191
    Height = 160
    Date = 45207.912172303240000000
    TabOrder = 6
    OnClick = MonthCalendar2Click
  end
  object GroupBox1: TGroupBox
    Left = 517
    Top = 296
    Width = 94
    Height = 41
    TabOrder = 7
    object BtnNext: TButton
      Left = 3
      Top = 5
      Width = 88
      Height = 33
      Caption = 'Next'
      TabOrder = 0
      OnClick = BtnNextClick
    end
  end
end
