object frmMain: TfrmMain
  Left = 0
  Top = 0
  Caption = 'Bit Parser'
  ClientHeight = 97
  ClientWidth = 633
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -13
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 120
  TextHeight = 16
  object cgBit: TRzCheckGroup
    Left = 0
    Top = 44
    Width = 633
    Height = 53
    Align = alBottom
    Alignment = taCenter
    Caption = ''
    Columns = 8
    Items.Strings = (
      '0'
      '1'
      '2'
      '3'
      '4'
      '5'
      '6'
      '7')
    TabOrder = 0
    OnChange = cgBitChange
    ExplicitTop = 52
    CheckStates = (
      0
      0
      0
      0
      0
      0
      0
      0)
    object neIntValue: TRzNumericEdit
      Left = 288
      Top = 16
      Width = 65
      Height = 24
      TabOrder = 0
      OnChange = neIntValueChange
      Max = 255.000000000000000000
      DisplayFormat = ',0;(,0)'
    end
  end
  object rgMethod: TRadioGroup
    Left = 0
    Top = 0
    Width = 633
    Height = 44
    Align = alClient
    Caption = #48320#54872' '#48169#49885
    Columns = 2
    ItemIndex = 0
    Items.Strings = (
      'Int -> Bit'
      'Bit -> Int')
    TabOrder = 1
    OnClick = rgMethodClick
    ExplicitTop = -6
  end
end
