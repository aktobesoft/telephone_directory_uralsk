object Form1: TForm1
  Left = 212
  Top = 87
  Width = 780
  Height = 618
  Caption = #1058#1077#1083#1077#1092#1086#1085#1085#1099#1081' '#1089#1087#1088#1072#1074#1086#1095#1085#1080#1082
  Color = clBtnFace
  Constraints.MinHeight = 346
  Constraints.MinWidth = 780
  Font.Charset = RUSSIAN_CHARSET
  Font.Color = clBlue
  Font.Height = -12
  Font.Name = 'Tahoma'
  Font.Style = [fsBold]
  Menu = MainMenu1
  OldCreateOrder = False
  Position = poDesktopCenter
  OnCreate = FormCreate
  OnResize = FormResize
  DesignSize = (
    772
    564)
  PixelsPerInch = 96
  TextHeight = 14
  object Label6: TLabel
    Left = 661
    Top = 529
    Width = 64
    Height = 14
    Anchors = [akRight, akBottom]
    Caption = 'Bakytzhan'
  end
  object Label7: TLabel
    Left = 163
    Top = 530
    Width = 4
    Height = 14
    Anchors = [akLeft, akBottom]
  end
  object Label8: TLabel
    Left = 22
    Top = 529
    Width = 125
    Height = 14
    Anchors = [akLeft, akBottom]
    Caption = #1050#1086#1083#1080#1095#1077#1089#1090#1074#1086' '#1079#1072#1087#1080#1089#1077#1081
    Font.Charset = RUSSIAN_CHARSET
    Font.Color = clRed
    Font.Height = -12
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object DBGrid1: TDBGrid
    Left = 6
    Top = 120
    Width = 747
    Height = 385
    Anchors = [akLeft, akTop, akRight, akBottom]
    Color = clInfoBk
    DataSource = DataSource1
    Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgConfirmDelete, dgCancelOnExit]
    TabOrder = 0
    TitleFont.Charset = RUSSIAN_CHARSET
    TitleFont.Color = clBlue
    TitleFont.Height = -12
    TitleFont.Name = 'Tahoma'
    TitleFont.Style = [fsBold]
    Columns = <
      item
        Alignment = taCenter
        Expanded = False
        FieldName = 'nomer'
        Title.Alignment = taCenter
        Title.Caption = #1053#1086#1084#1077#1088
        Width = 80
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'fam'
        Title.Caption = #1042#1083#1072#1076#1077#1083#1077#1094
        Width = 417
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'adres'
        Title.Caption = #1040#1076#1088#1077#1089
        Width = 200
        Visible = True
      end>
  end
  object GroupBox1: TGroupBox
    Left = 8
    Top = 8
    Width = 161
    Height = 105
    Caption = #1051#1080#1094#1086
    TabOrder = 1
    object RadioButton1: TRadioButton
      Left = 12
      Top = 23
      Width = 86
      Height = 13
      Caption = #1042#1089#1077
      Checked = True
      TabOrder = 0
      TabStop = True
    end
    object RadioButton2: TRadioButton
      Left = 12
      Top = 50
      Width = 141
      Height = 13
      Caption = #1060#1080#1079#1080#1095#1077#1089#1082#1086#1077' '#1083#1080#1094#1086
      TabOrder = 1
    end
    object RadioButton3: TRadioButton
      Left = 12
      Top = 78
      Width = 133
      Height = 13
      Caption = #1054#1088#1075#1072#1085#1080#1079#1072#1094#1080#1103
      TabOrder = 2
    end
  end
  object RadioGroup1: TRadioGroup
    Left = 601
    Top = 6
    Width = 152
    Height = 91
    Caption = #1057#1086#1088#1090#1080#1088#1086#1074#1072#1090#1100' '#1087#1086
    ItemIndex = 0
    Items.Strings = (
      #1053#1086#1084#1077#1088
      #1042#1083#1072#1076#1077#1083#1077#1094
      #1040#1076#1088#1077#1089)
    TabOrder = 2
  end
  object RadioGroup2: TRadioGroup
    Left = 447
    Top = 6
    Width = 148
    Height = 107
    Caption = #1048#1089#1082#1072#1090#1100' '#1087#1086
    ItemIndex = 0
    Items.Strings = (
      #1053#1086#1084#1077#1088
      #1042#1083#1072#1076#1077#1083#1077#1094
      #1040#1076#1088#1077#1089)
    TabOrder = 3
    OnClick = RadioGroup2Click
  end
  object GroupBox2: TGroupBox
    Left = 174
    Top = 6
    Width = 267
    Height = 107
    Caption = #1053#1086#1084#1077#1088
    TabOrder = 4
    object Label2: TLabel
      Left = 20
      Top = 45
      Width = 52
      Height = 14
      Caption = #8470' '#1076#1086#1084#1072
      Visible = False
    end
    object Label3: TLabel
      Left = 97
      Top = 45
      Width = 33
      Height = 14
      Caption = #8470' '#1082#1074
      Visible = False
    end
    object Label1: TLabel
      Left = 12
      Top = 45
      Width = 149
      Height = 14
      Caption = #1055#1086#1079#1080#1094#1080#1103' '#1090#1077#1089#1090#1072' '#1074' '#1087#1086#1080#1089#1082#1077
    end
    object Button1: TButton
      Left = 184
      Top = 64
      Width = 65
      Height = 25
      Caption = #1048#1089#1082#1072#1090#1100
      TabOrder = 0
      OnClick = Button1Click
    end
    object Edit1: TEdit
      Left = 12
      Top = 21
      Width = 237
      Height = 22
      CharCase = ecUpperCase
      Font.Charset = RUSSIAN_CHARSET
      Font.Color = clBlue
      Font.Height = -12
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      MaxLength = 6
      ParentFont = False
      TabOrder = 1
      OnKeyUp = Edit1KeyUp
    end
    object Edit4: TEdit
      Left = 12
      Top = 65
      Width = 69
      Height = 22
      CharCase = ecUpperCase
      MaxLength = 5
      TabOrder = 2
      Visible = False
    end
    object Edit5: TEdit
      Left = 97
      Top = 65
      Width = 72
      Height = 22
      CharCase = ecUpperCase
      MaxLength = 5
      TabOrder = 3
      Visible = False
    end
    object CheckBox4: TCheckBox
      Left = 12
      Top = 89
      Width = 213
      Height = 13
      Caption = #1060#1080#1083#1100#1090#1088#1086#1074#1072#1090#1100
      TabOrder = 4
      OnClick = CheckBox4Click
    end
    object ComboBox1: TComboBox
      Left = 12
      Top = 64
      Width = 162
      Height = 22
      ItemHeight = 14
      TabOrder = 5
      Text = #1053#1072#1095#1080#1085#1072#1077#1090#1100#1089#1103' '#1089
      Items.Strings = (
        #1053#1072#1095#1080#1085#1072#1077#1090#1089#1103' '#1089
        #1057#1086#1076#1077#1088#1078#1080#1090
        #1047#1072#1082#1072#1085#1095#1080#1074#1072#1077#1090#1089#1103' '#1085#1072)
    end
  end
  object CheckBox3: TCheckBox
    Left = 601
    Top = 101
    Width = 160
    Height = 13
    Caption = #1055#1086' '#1091#1073#1099#1074#1072#1085#1080#1102
    TabOrder = 5
  end
  object DataSource1: TDataSource
    DataSet = Query1
    Left = 104
    Top = 192
  end
  object Query1: TQuery
    BeforeOpen = Query1BeforeOpen
    AfterOpen = Query1AfterOpen
    SQL.Strings = (
      'select nomer,fam,adres from base_09.db')
    Left = 128
    Top = 192
  end
  object MainMenu1: TMainMenu
    Left = 24
    Top = 208
    object file1: TMenuItem
      Caption = #1060#1072#1081#1083
      object file2: TMenuItem
        Caption = #1042#1099#1093#1086#1076
        OnClick = file2Click
      end
    end
    object erer1: TMenuItem
      Caption = #1057#1077#1088#1074#1080#1089
      object N1: TMenuItem
        Caption = #1071#1079#1099#1082
        object N4: TMenuItem
          Caption = #1050#1072#1079#1072#1093#1089#1082#1080#1081
          OnClick = N4Click
        end
        object N5: TMenuItem
          Caption = #1056#1091#1089#1089#1082#1080#1081
          OnClick = N5Click
        end
      end
      object N3: TMenuItem
        Caption = #1050#1086#1076#1099' '#1075#1086#1088#1086#1076#1086#1074
        OnClick = N3Click
      end
      object N6: TMenuItem
        Caption = #1057#1086#1093#1088#1072#1085#1080#1090#1100' '#1074' '#1045#1082#1079#1077#1083
        OnClick = N6Click
      end
    end
    object N2: TMenuItem
      Caption = #1057#1087#1088#1072#1074#1082#1072
      object ReadMe1: TMenuItem
        Caption = #1060#1072#1081#1083' ReadMe'
        OnClick = ReadMe1Click
      end
      object N7: TMenuItem
        Caption = #1054' '#1087#1088#1086#1075#1088#1072#1084#1084#1077
        OnClick = N7Click
      end
    end
  end
  object XPManifest1: TXPManifest
    Left = 484
    Top = 5
  end
end
