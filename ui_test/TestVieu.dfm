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
  object GroupBox1: TGroupBox
    Left = 440
    Top = 16
    Width = 337
    Height = 233
    TabOrder = 2
    Visible = False
    object Label1: TLabel
      Left = 8
      Top = 16
      Width = 119
      Height = 13
      Caption = #1042#1074#1077#1076#1080#1090#1077' '#1090#1077#1082#1089#1090' '#1074#1086#1087#1088#1086#1089#1072
    end
    object Edit1: TEdit
      Left = 16
      Top = 40
      Width = 281
      Height = 57
      TabOrder = 0
    end
    object RadioGroup1: TRadioGroup
      Left = 40
      Top = 112
      Width = 65
      Height = 73
      Items.Strings = (
        '1'
        '2'
        '3')
      TabOrder = 1
    end
    object Button3: TButton
      Left = 216
      Top = 200
      Width = 75
      Height = 25
      Caption = #1055#1088#1080#1085#1103#1090#1100
      TabOrder = 2
      OnClick = Button3Click
    end
    object Button4: TButton
      Left = 40
      Top = 192
      Width = 75
      Height = 25
      Caption = #1047#1072#1082#1088#1099#1090#1100
      TabOrder = 3
      OnClick = Button4Click
    end
    object GroupBox2: TGroupBox
      Left = 0
      Top = 0
      Width = 337
      Height = 233
      Caption = 'GroupBox2'
      TabOrder = 4
    end
  end
end
