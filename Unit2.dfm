object Form2: TForm2
  Left = 324
  Top = 136
  Width = 600
  Height = 400
  BorderIcons = [biSystemMenu, biMinimize]
  Caption = #1050#1086#1076#1099' '#1075#1086#1088#1086#1076#1086#1074
  Color = clBtnFace
  Constraints.MaxHeight = 400
  Constraints.MaxWidth = 600
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -13
  Font.Name = 'MS Sans Serif'
  Font.Style = [fsBold]
  OldCreateOrder = False
  OnCreate = FormCreate
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 16
  object Label1: TLabel
    Left = 72
    Top = 25
    Width = 48
    Height = 16
    Caption = 'Label1'
  end
  object DBGrid1: TDBGrid
    Left = 48
    Top = 104
    Width = 505
    Height = 209
    DataSource = DataSource1
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgConfirmDelete, dgCancelOnExit]
    ParentFont = False
    TabOrder = 0
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'MS Sans Serif'
    TitleFont.Style = []
    Columns = <
      item
        Expanded = False
        FieldName = 'kod'
        Title.Caption = #1050#1086#1076
        Width = 83
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'name'
        Title.Caption = #1043#1086#1088#1086#1076
        Width = 148
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'name_1'
        Title.Caption = #1054#1073#1083#1072#1089#1090#1100
        Width = 236
        Visible = True
      end>
  end
  object ComboBox1: TComboBox
    Left = 56
    Top = 56
    Width = 249
    Height = 24
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ItemHeight = 16
    ParentFont = False
    TabOrder = 1
    Text = #1042#1089#1077
    OnChange = ComboBox1Change
    Items.Strings = (
      #1042#1089#1077
      #1040#1082#1084#1086#1083#1080#1085#1089#1082#1072#1103' '#1086#1073#1083#1072#1089#1090#1100
      #1040#1082#1090#1102#1073#1080#1085#1089#1082#1072#1103' '#1086#1073#1083#1072#1089#1090#1100
      #1040#1083#1084#1072#1090#1080#1085#1089#1082#1072#1103' '#1086#1073#1083#1072#1089#1090#1100
      #1040#1090#1099#1088#1072#1091#1089#1082#1072#1103' '#1086#1073#1083#1072#1089#1090#1100
      #1042#1086#1089#1090#1086#1095#1085#1086' '#1050#1072#1079#1072#1093#1089#1090#1072#1085#1089#1082#1072#1103' '#1086#1073#1083#1072#1089#1090#1100
      #1046#1072#1084#1073#1099#1083#1089#1082#1072#1103' '#1086#1073#1083#1072#1089#1090#1100
      #1047#1072#1087#1072#1076#1085#1086'-'#1050#1072#1079#1072#1093#1089#1090#1072#1085#1089#1082#1072#1103' '#1086#1073#1083#1072#1089#1090#1100
      #1050#1072#1088#1072#1075#1072#1085#1076#1080#1085#1089#1082#1072#1103' '#1086#1073#1083#1072#1089#1090#1100
      #1050#1086#1089#1090#1072#1085#1072#1081#1089#1082#1072#1103' '#1086#1073#1083#1072#1089#1090#1100
      #1050#1099#1079#1099#1083#1086#1088#1076#1080#1085#1089#1082#1072#1103' '#1086#1073#1083#1072#1089#1090#1100
      #1052#1072#1085#1075#1099#1089#1090#1072#1091#1089#1082#1072#1103' '#1086#1073#1083#1072#1089#1090#1100
      #1055#1072#1074#1083#1086#1076#1072#1088#1089#1082#1072#1103' '#1086#1073#1083#1072#1089#1090#1100
      #1057#1077#1074#1077#1088#1086'-'#1050#1072#1079#1072#1093#1089#1090#1072#1085#1082#1072#1103' '#1086#1073#1083#1072#1089#1090#1100
      #1070#1078#1085#1086'-'#1050#1072#1079#1072#1093#1089#1090#1072#1085#1089#1082#1072#1103' '#1086#1073#1083#1072#1089#1090#1100)
  end
  object GroupBox1: TGroupBox
    Left = 320
    Top = 16
    Width = 225
    Height = 73
    Caption = #1057#1091#1088#1099#1087#1090#1072#1091
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 2
    object RadioButton1: TRadioButton
      Left = 16
      Top = 16
      Width = 177
      Height = 17
      Caption = #1050#1086#1076#1091
      TabOrder = 0
      OnClick = RadioButton1Click
    end
    object RadioButton2: TRadioButton
      Left = 16
      Top = 32
      Width = 185
      Height = 17
      Caption = #1043#1086#1088#1086#1076#1091
      TabOrder = 1
      OnClick = RadioButton2Click
    end
    object RadioButton3: TRadioButton
      Left = 16
      Top = 48
      Width = 177
      Height = 17
      Caption = #1054#1073#1083#1072#1089#1090#1080
      TabOrder = 2
      OnClick = RadioButton3Click
    end
  end
  object Button1: TButton
    Left = 256
    Top = 328
    Width = 75
    Height = 25
    Caption = #1050#1077#1088'i'
    TabOrder = 3
    OnClick = Button1Click
  end
  object DataSource1: TDataSource
    DataSet = Query1
    Left = 192
    Top = 168
  end
  object Query1: TQuery
    DatabaseName = 'C:\'#1089#1087#1088#1072#1074#1086#1095#1085#1080#1082' 2007'
    SQL.Strings = (
      'select k.kod, k.name,o.name from kod.db k,obl.db o'
      'where k.obl=o.kodi')
    Left = 144
    Top = 168
  end
end
