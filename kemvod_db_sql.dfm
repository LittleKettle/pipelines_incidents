object Form1: TForm1
  AlignWithMargins = True
  Left = 0
  Top = 0
  Caption = 'Form1'
  ClientHeight = 662
  ClientWidth = 960
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel
    AlignWithMargins = True
    Left = 926
    Top = 583
    Width = 31
    Height = 76
    Align = alRight
    Caption = 'Label1'
    ExplicitLeft = 488
    ExplicitTop = 719
    ExplicitHeight = 13
  end
  object Label2: TLabel
    AlignWithMargins = True
    Left = 24
    Top = 583
    Width = 896
    Height = 76
    Align = alRight
    Caption = 'Label2'
  end
  object DBGrid1: TDBGrid
    AlignWithMargins = True
    Left = 3
    Top = 3
    Width = 954
    Height = 574
    Align = alTop
    DataSource = DataModule2.DataSource1
    TabOrder = 0
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'Tahoma'
    TitleFont.Style = []
  end
end
