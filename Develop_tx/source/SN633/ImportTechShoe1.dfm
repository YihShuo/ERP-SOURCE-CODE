object ImportTechShoe: TImportTechShoe
  Left = 657
  Top = 291
  BorderIcons = [biSystemMenu]
  BorderStyle = bsToolWindow
  Caption = 'Import Price'
  ClientHeight = 449
  ClientWidth = 682
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -13
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  FormStyle = fsStayOnTop
  OldCreateOrder = False
  Position = poScreenCenter
  Visible = True
  OnClose = FormClose
  OnDestroy = FormDestroy
  PixelsPerInch = 96
  TextHeight = 16
  object Label1: TLabel
    Left = 8
    Top = 162
    Width = 52
    Height = 16
    Caption = 'Status :'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clBlack
    Font.Height = -13
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label4: TLabel
    Left = 224
    Top = 136
    Width = 144
    Height = 16
    Caption = 'Column C : So Thung'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clBlue
    Font.Height = -13
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label3: TLabel
    Left = 224
    Top = 112
    Width = 108
    Height = 16
    Caption = 'Column B : SKU'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clBlue
    Font.Height = -13
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label2: TLabel
    Left = 224
    Top = 88
    Width = 120
    Height = 16
    Caption = 'Column A : YPDH'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clBlue
    Font.Height = -13
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label5: TLabel
    Left = 4
    Top = 66
    Width = 217
    Height = 16
    Caption = 'Notes Column in Excel when import:'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clBlue
    Font.Height = -13
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsItalic, fsUnderline]
    ParentFont = False
  end
  object Label6: TLabel
    Left = 376
    Top = 88
    Width = 126
    Height = 16
    Caption = 'Column D : So Doi'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clBlue
    Font.Height = -13
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label7: TLabel
    Left = 378
    Top = 112
    Width = 131
    Height = 16
    Caption = 'Column E : Ghi Chu'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clBlue
    Font.Height = -13
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Button1: TButton
    Left = 176
    Top = 16
    Width = 177
    Height = 41
    Caption = 'Import '
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -19
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
    TabOrder = 0
    OnClick = Button1Click
  end
  object Memo1: TMemo
    Left = 0
    Top = 184
    Width = 681
    Height = 265
    ScrollBars = ssVertical
    TabOrder = 1
  end
  object Button2: TButton
    Left = 368
    Top = 16
    Width = 177
    Height = 41
    Caption = 'Sample File'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -19
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
    TabOrder = 2
    OnClick = Button2Click
  end
  object OpenDialog1: TOpenDialog
    Filter = 'Excel Files|*.XLS;*.XLSX'
    Left = 264
  end
  object Query1: TQuery
    DatabaseName = 'DB'
    Left = 136
    Top = 8
  end
  object Query2: TQuery
    DatabaseName = 'DB'
    Left = 96
    Top = 8
  end
  object Query3: TQuery
    DatabaseName = 'DB'
    Left = 56
    Top = 8
  end
end
