object Form2: TForm2
  Left = 189
  Top = 209
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
  OnClose = FormClose
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
    Left = 8
    Top = 8
    Width = 409
    Height = 377
    Indent = 19
    TabOrder = 1
    Items.Data = {
      010000001D0000000000000000000000FFFFFFFFFFFFFFFF0000000000000000
      04D2E5F1F2}
  end
  object Button2: TButton
    Left = 792
    Top = 64
    Width = 75
    Height = 25
    Caption = 'Button2'
    TabOrder = 2
  end
end
