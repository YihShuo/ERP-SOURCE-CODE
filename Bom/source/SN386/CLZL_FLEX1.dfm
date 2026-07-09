object CLZL_FLEX: TCLZL_FLEX
  Left = 398
  Top = 173
  Width = 1305
  Height = 482
  Caption = 'CLZL_FLEX'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object PageControl1: TPageControl
    Left = 0
    Top = 0
    Width = 1289
    Height = 443
    ActivePage = TabSheet1
    Align = alClient
    TabOrder = 0
    object TabSheet1: TTabSheet
      Caption = 'TabSheet1'
      object DBGridEh5: TDBGridEh
        Left = 0
        Top = 80
        Width = 704
        Height = 335
        Align = alLeft
        Flat = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        FooterColor = clWindow
        FooterFont.Charset = DEFAULT_CHARSET
        FooterFont.Color = clWindowText
        FooterFont.Height = -11
        FooterFont.Name = 'MS Sans Serif'
        FooterFont.Style = []
        FooterRowCount = 1
        FrozenCols = 3
        ParentFont = False
        SumList.Active = True
        TabOrder = 0
        TitleFont.Charset = DEFAULT_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -11
        TitleFont.Name = 'MS Sans Serif'
        TitleFont.Style = []
        Columns = <
          item
            EditButtons = <>
            FieldName = 'SR'
            Footers = <
              item
                ValueType = fvtCount
              end>
            Width = 116
          end
          item
            EditButtons = <>
            FieldName = 'SKU'
            Footers = <>
            Width = 55
          end
          item
            EditButtons = <>
            FieldName = 'CostingSeason'
            Footers = <>
          end
          item
            EditButtons = <>
            FieldName = 'Component'
            Footers = <>
            Width = 63
          end
          item
            EditButtons = <>
            FieldName = 'CLBH'
            Footers = <>
            Width = 71
          end
          item
            EditButtons = <>
            FieldName = 'FlexMaterialCode'
            Footers = <>
            Width = 73
          end
          item
            EditButtons = <>
            FieldName = 'Color'
            Footers = <>
            Width = 71
          end
          item
            EditButtons = <>
            FieldName = 'Material'
            Footers = <>
            Width = 127
          end
          item
            EditButtons = <>
            FieldName = 'Supplier'
            Footers = <>
            Title.Caption = 'Supplier_Flex'
            Width = 110
          end
          item
            EditButtons = <>
            FieldName = 'SupplierCode'
            Footers = <>
            Width = 62
          end
          item
            EditButtons = <>
            FieldName = 'CSBH'
            Footers = <>
          end
          item
            EditButtons = <>
            FieldName = 'ZSYWJC'
            Footers = <>
          end
          item
            EditButtons = <>
            FieldName = 'MaterialSeason'
            Footers = <>
            Width = 31
          end
          item
            EditButtons = <>
            FieldName = 'Factory'
            Footers = <>
          end
          item
            EditButtons = <>
            FieldName = 'MTL_No'
            Footers = <>
            Width = 39
          end
          item
            EditButtons = <>
            FieldName = 'Color_No'
            Footers = <>
            Width = 34
          end
          item
            EditButtons = <>
            FieldName = 'XieXing'
            Footers = <>
          end
          item
            EditButtons = <>
            FieldName = 'SheHao'
            Footers = <>
          end
          item
            EditButtons = <>
            FieldName = 'CostingSize'
            Footers = <>
          end>
      end
      object Panel8: TPanel
        Left = 0
        Top = 0
        Width = 1281
        Height = 80
        Align = alTop
        Caption = 'Panel6'
        TabOrder = 1
      end
    end
  end
end
