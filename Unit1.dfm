object MyForm: TMyForm
  Left = 0
  Top = 0
  Caption = #1052#1086#1103' '#1092#1086#1088#1084#1072
  ClientHeight = 408
  ClientWidth = 555
  Color = clBtnFace
  CustomTitleBar.CaptionAlignment = taCenter
  Constraints.MinHeight = 190
  Constraints.MinWidth = 335
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -12
  Font.Name = 'Segoe UI'
  Font.Style = []
  StyleElements = [seFont, seClient]
  DesignSize = (
    555
    408)
  TextHeight = 15
  object TextEditor: TMemo
    Left = 0
    Top = 0
    Width = 556
    Height = 282
    Anchors = [akLeft, akTop, akRight, akBottom]
    TabOrder = 0
  end
  object PrintString: TEdit
    Left = 8
    Top = 300
    Width = 524
    Height = 23
    Anchors = [akLeft, akRight, akBottom]
    TabOrder = 1
  end
  object SelectionNumberString: TComboBox
    Left = 8
    Top = 337
    Width = 164
    Height = 23
    Anchors = [akLeft, akBottom]
    TabOrder = 2
    Items.Strings = (
      #1055#1077#1088#1074#1072#1103
      #1042#1090#1086#1088#1072#1103
      #1058#1088#1077#1090#1100#1103)
  end
  object StartSelection: TButton
    Left = 184
    Top = 336
    Width = 75
    Height = 25
    Anchors = [akLeft, akBottom]
    Caption = #1074#1099#1073#1088#1072#1090#1100
    TabOrder = 3
    OnClick = StartSelectionClick
  end
  object SumB: TButton
    Left = 184
    Top = 376
    Width = 113
    Height = 25
    Anchors = [akLeft, akBottom]
    Caption = #1050#1086#1083#1080#1095#1077#1089#1090#1074#1086' '#1073#1091#1082#1074' '#1073
    TabOrder = 4
    OnClick = SumBClick
  end
end
