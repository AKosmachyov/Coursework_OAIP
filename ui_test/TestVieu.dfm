object Form2: TForm2
  Left = 192
  Top = 153
  Width = 928
  Height = 480
  Caption = 'Form2'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object Button1: TButton
    Left = 792
    Top = 16
    Width = 75
    Height = 25
    Caption = 'add category'
    TabOrder = 0
    OnClick = Button1Click
  end
  object TreeView1: TTreeView
    Left = 48
    Top = 32
    Width = 361
    Height = 321
    AutoExpand = True
    Indent = 19
    TabOrder = 1
  end
end
