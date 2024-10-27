object Form3: TForm3
  Left = 0
  Top = 0
  Caption = 'Table'
  ClientHeight = 362
  ClientWidth = 635
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object StringGrid1: TStringGrid
    Left = 8
    Top = 8
    Width = 619
    Height = 217
    Align = alCustom
    PopupMenu = PopMenu_StringGrid
    TabOrder = 0
    ColWidths = (
      64
      64
      64
      64
      64)
    RowHeights = (
      24
      24
      24
      24
      24)
  end
  object ViewTable: TButton
    Left = 288
    Top = 280
    Width = 75
    Height = 25
    Caption = 'ViewTable'
    TabOrder = 1
    OnClick = ViewTableClick
  end
  object PopMenu_StringGrid: TPopupMenu
    Left = 16
    Top = 232
    object Copy1: TMenuItem
      Caption = 'Copy'
      ShortCut = 16451
      OnClick = Copy1Click
    end
  end
end
