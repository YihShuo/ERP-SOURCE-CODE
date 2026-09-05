object UpdateAPI_DTD: TUpdateAPI_DTD
  Left = 0
  Top = 0
  Caption = 'UpdateAPI_DTD'
  ClientHeight = 423
  ClientWidth = 754
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poScreenCenter
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object btnImport: TBitBtn
    Left = 16
    Top = 23
    Width = 75
    Height = 75
    Caption = 'Import Excel'
    TabOrder = 0
    OnClick = btnImportClick
  end
  object btnRunAPI: TBitBtn
    Left = 97
    Top = 23
    Width = 75
    Height = 75
    Caption = 'Run API'
    TabOrder = 1
    OnClick = btnRunAPIClick
  end
  object DBGrid1: TDBGridEh
    Left = 0
    Top = 136
    Width = 754
    Height = 287
    Align = alBottom
    DataSource = DataSource1
    DynProps = <>
    SumList.Active = True
    TabOrder = 2
    object RowDetailData: TRowDetailPanelControlEh
    end
  end
  object DataSource1: TDataSource
    DataSet = ClientDataSet1
    Left = 672
    Top = 104
  end
  object ClientDataSet1: TClientDataSet
    Aggregates = <>
    Params = <>
    Left = 672
    Top = 56
  end
  object OpenDialog1: TOpenDialog
    Left = 672
    Top = 8
  end
end
