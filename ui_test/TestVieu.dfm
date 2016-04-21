object Form2: TForm2
  Left = 125
  Top = 153
  Width = 1049
  Height = 508
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
    Left = 944
    Top = 16
    Width = 75
    Height = 25
    Caption = '+'
    TabOrder = 0
    OnClick = Button1Click
  end
  object TreeView1: TTreeView
    Left = 8
    Top = 8
    Width = 305
    Height = 449
    Indent = 19
    TabOrder = 1
    OnClick = TreeView1Click
    Items.Data = {
      010000001D0000000000000000000000FFFFFFFFFFFFFFFF0000000000000000
      04D2E5F1F2}
  end
  object GroupBox1: TGroupBox
    Left = 464
    Top = 72
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
      Height = 21
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
  end
  object Button2: TButton
    Left = 944
    Top = 64
    Width = 75
    Height = 25
    Caption = 'Button2'
    TabOrder = 3
  end
  object GroupBox2: TGroupBox
    Left = 328
    Top = 16
    Width = 505
    Height = 385
    Caption = #1042#1086#1087#1088#1086#1089
    TabOrder = 4
    Visible = False
    object Label2: TLabel
      Left = 8
      Top = 24
      Width = 3
      Height = 13
    end
    object RadioGroup2: TRadioGroup
      Left = 0
      Top = 120
      Width = 505
      Height = 265
      Caption = #1054#1090#1074#1077#1090#1099
      TabOrder = 0
    end
    object GroupBox3: TGroupBox
      Left = 88
      Top = 144
      Width = 329
      Height = 225
      Caption = #1042#1072#1088#1080#1072#1085#1090' '#1086#1090#1074#1077#1090#1072
      TabOrder = 1
      Visible = False
      object Label3: TLabel
        Left = 16
        Top = 32
        Width = 68
        Height = 13
        Caption = #1058#1077#1082#1089#1090' '#1086#1090#1074#1077#1090#1072
      end
      object Edit2: TEdit
        Left = 16
        Top = 64
        Width = 297
        Height = 41
        TabOrder = 0
      end
      object Button5: TButton
        Left = 200
        Top = 168
        Width = 75
        Height = 25
        Caption = #1055#1088#1080#1084#1077#1085#1080#1090#1100
        TabOrder = 1
        OnClick = Button5Click
      end
      object Button6: TButton
        Left = 64
        Top = 168
        Width = 75
        Height = 25
        Caption = #1054#1090#1084#1077#1085#1072
        TabOrder = 2
        OnClick = Button4Click
      end
    end
  end
end
