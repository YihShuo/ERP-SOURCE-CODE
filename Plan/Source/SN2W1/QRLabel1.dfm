object QRLabel: TQRLabel
  Left = 457
  Top = 289
  BorderStyle = bsNone
  Caption = 'QRLabel'
  ClientHeight = 264
  ClientWidth = 167
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  FormStyle = fsStayOnTop
  OldCreateOrder = False
  OnClose = FormClose
  OnCreate = FormCreate
  OnDestroy = FormDestroy
  PixelsPerInch = 96
  TextHeight = 13
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 167
    Height = 264
    Align = alClient
    BevelOuter = bvNone
    Color = clWhite
    TabOrder = 0
    object LB_ORDER: TLabel
      Left = 0
      Top = 168
      Width = 161
      Height = 57
      Alignment = taCenter
      AutoSize = False
      Caption = 'ORDER'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Microsoft YaHei'
      Font.Style = [fsBold]
      ParentFont = False
      Layout = tlCenter
      WordWrap = True
    end
    object Label2: TLabel
      Left = 0
      Top = 232
      Width = 57
      Height = 27
      Align = alCustom
      Alignment = taCenter
      AutoSize = False
      Caption = 'QTY:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -21
      Font.Name = 'Microsoft YaHei'
      Font.Style = [fsBold]
      ParentFont = False
      Layout = tlCenter
    end
    object LB_DATE: TLabel
      Left = 0
      Top = 0
      Width = 167
      Height = 49
      Align = alTop
      Alignment = taCenter
      AutoSize = False
      Caption = 'Date'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'Microsoft YaHei'
      Font.Style = []
      ParentFont = False
    end
    object Shape1: TShape
      Left = 2
      Top = 230
      Width = 161
      Height = 2
      Align = alCustom
      Pen.Width = 2
    end
    object LB_QTY: TLabel
      Left = 56
      Top = 232
      Width = 109
      Height = 27
      Align = alCustom
      Alignment = taCenter
      AutoSize = False
      Caption = 'QTY'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -21
      Font.Name = 'Microsoft YaHei'
      Font.Style = [fsBold]
      ParentFont = False
      Layout = tlCenter
    end
    object Panel2: TPanel
      Left = 0
      Top = 49
      Width = 167
      Height = 120
      Align = alTop
      BevelOuter = bvNone
      Color = clWhite
      TabOrder = 0
      object PaintBox1: TPaintBox
        Left = 10
        Top = 0
        Width = 120
        Height = 120
        Align = alLeft
        OnPaint = PaintBox1Paint
      end
      object LB_MACHINE: TLabel
        Left = 130
        Top = 0
        Width = 37
        Height = 120
        Align = alClient
        Alignment = taCenter
        AutoSize = False
        Caption = 'Machine'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Microsoft YaHei'
        Font.Style = []
        ParentFont = False
        Layout = tlCenter
      end
      object IMG_MACHINE: TImage
        Left = 0
        Top = 0
        Width = 10
        Height = 120
        Align = alLeft
      end
    end
    object Panel3: TPanel
      Left = 0
      Top = 169
      Width = 167
      Height = 5
      Align = alTop
      BevelOuter = bvNone
      Color = clWhite
      TabOrder = 1
    end
  end
end
