object PaymentUngHD: TPaymentUngHD
  Left = 350
  Top = 303
  Width = 1501
  Height = 589
  Caption = 'PaymentUngHD'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  OnClose = FormClose
  OnCreate = FormCreate
  OnDestroy = FormDestroy
  PixelsPerInch = 96
  TextHeight = 13
  object Panel25: TPanel
    Left = 0
    Top = 0
    Width = 1485
    Height = 57
    Align = alTop
    BevelOuter = bvNone
    TabOrder = 0
    object Label66: TLabel
      Left = 16
      Top = 20
      Width = 68
      Height = 16
      Caption = 'SupplierNo'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
    end
    object Label67: TLabel
      Left = 251
      Top = 20
      Width = 35
      Height = 16
      Caption = 'FKBH'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
    end
    object btn_QryPMTK: TButton
      Left = 410
      Top = 13
      Width = 73
      Height = 25
      Caption = 'QUERY'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 0
      OnClick = btn_QryPMTKClick
    end
    object edt_Supplier: TEdit
      Left = 93
      Top = 14
      Width = 97
      Height = 24
      Color = clSilver
      Enabled = False
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 1
    end
    object edt_FKBH: TEdit
      Left = 289
      Top = 14
      Width = 106
      Height = 24
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 2
    end
  end
  object DB_PMTK: TDBGridEh
    Left = 0
    Top = 57
    Width = 864
    Height = 493
    Align = alClient
    DataSource = DS_PMTK
    Flat = False
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    FooterColor = clWindow
    FooterFont.Charset = DEFAULT_CHARSET
    FooterFont.Color = clWindowText
    FooterFont.Height = -11
    FooterFont.Name = 'MS Sans Serif'
    FooterFont.Style = []
    Options = [dgEditing, dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgConfirmDelete, dgCancelOnExit, dgMultiSelect]
    ParentFont = False
    TabOrder = 1
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -13
    TitleFont.Name = 'MS Sans Serif'
    TitleFont.Style = []
    OnDblClick = DB_PMTKDblClick
    Columns = <
      item
        EditButtons = <>
        FieldName = 'FKBH'
        Footer.Font.Charset = DEFAULT_CHARSET
        Footer.Font.Color = clWindowText
        Footer.Font.Height = -13
        Footer.Font.Name = 'MS Sans Serif'
        Footer.Font.Style = []
        Footers = <>
      end
      item
        EditButtons = <>
        FieldName = 'ZSBH_MST'
        Footer.Font.Charset = DEFAULT_CHARSET
        Footer.Font.Color = clWindowText
        Footer.Font.Height = -13
        Footer.Font.Name = 'MS Sans Serif'
        Footer.Font.Style = []
        Footers = <>
        Width = 85
      end
      item
        EditButtons = <>
        FieldName = 'KYHIEU_HOADON'
        Footer.Font.Charset = DEFAULT_CHARSET
        Footer.Font.Color = clWindowText
        Footer.Font.Height = -13
        Footer.Font.Name = 'MS Sans Serif'
        Footer.Font.Style = []
        Footers = <>
        Width = 150
      end
      item
        EditButtons = <>
        FieldName = 'VATNO'
        Footers = <>
        Width = 150
      end
      item
        EditButtons = <>
        FieldName = 'VATDATE'
        Footers = <>
        Width = 80
      end
      item
        DisplayFormat = '##,#0.0000'
        EditButtons = <>
        FieldName = 'TONGTIEN_CHUATHUE'
        Footers = <>
        Width = 150
      end
      item
        DisplayFormat = '##,#0.0000'
        EditButtons = <>
        FieldName = 'TONGTIEN_THUE'
        Footers = <>
        Width = 150
      end
      item
        DisplayFormat = '##,#0.0000'
        EditButtons = <>
        FieldName = 'TONGTIEN_THANHTOAN'
        Footers = <>
        Width = 200
      end>
  end
  object Panel1: TPanel
    Left = 864
    Top = 57
    Width = 621
    Height = 493
    Align = alRight
    Caption = 'Panel1'
    TabOrder = 2
    object Panel9: TPanel
      Left = 1
      Top = 1
      Width = 619
      Height = 49
      Align = alTop
      BevelOuter = bvNone
      TabOrder = 0
      object Label5: TLabel
        Left = 185
        Top = -1
        Width = 288
        Height = 20
        AutoSize = False
        Caption = '- Thanh toan ung hoa don tra truoc'
        Color = clBtnFace
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clPurple
        Font.Height = -16
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentColor = False
        ParentFont = False
      end
      object Label1: TLabel
        Left = 185
        Top = 23
        Width = 144
        Height = 20
        AutoSize = False
        Caption = 'Tong tien con lai:'
        Color = clBtnFace
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clPurple
        Font.Height = -16
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentColor = False
        ParentFont = False
      end
      object Label2: TLabel
        Left = 328
        Top = 23
        Width = 281
        Height = 20
        AutoSize = False
        Color = clBtnFace
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clPurple
        Font.Height = -16
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentColor = False
        ParentFont = False
      end
      object BtnTTUNGHD_C: TBitBtn
        Left = 131
        Top = 0
        Width = 46
        Height = 46
        Hint = 'Cancel'
        Caption = 'Cancel'
        Enabled = False
        TabOrder = 0
        OnClick = BtnTTUNGHD_CClick
        Glyph.Data = {
          76010000424D7601000000000000760000002800000020000000100000000100
          04000000000000010000130B0000130B00001000000000000000000000000000
          800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
          FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00333333333333
          333333333333333333333333333333333333333FFF33FF333FFF339993370733
          999333777FF37FF377733339993000399933333777F777F77733333399970799
          93333333777F7377733333333999399933333333377737773333333333990993
          3333333333737F73333333333331013333333333333777FF3333333333910193
          333333333337773FF3333333399000993333333337377737FF33333399900099
          93333333773777377FF333399930003999333337773777F777FF339993370733
          9993337773337333777333333333333333333333333333333333333333333333
          3333333333333333333333333333333333333333333333333333}
        Layout = blGlyphTop
        NumGlyphs = 2
      end
      object BtnTTUNGHD_S: TBitBtn
        Left = 87
        Top = 0
        Width = 45
        Height = 46
        Hint = 'Save Current'
        Caption = 'Save'
        Enabled = False
        TabOrder = 1
        OnClick = BtnTTUNGHD_SClick
        Glyph.Data = {
          76010000424D7601000000000000760000002800000020000000100000000100
          04000000000000010000120B0000120B00001000000000000000000000000000
          800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
          FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00555555555555
          555555555555555555555555555555555555555555FF55555555555559055555
          55555555577FF5555555555599905555555555557777F5555555555599905555
          555555557777FF5555555559999905555555555777777F555555559999990555
          5555557777777FF5555557990599905555555777757777F55555790555599055
          55557775555777FF5555555555599905555555555557777F5555555555559905
          555555555555777FF5555555555559905555555555555777FF55555555555579
          05555555555555777FF5555555555557905555555555555777FF555555555555
          5990555555555555577755555555555555555555555555555555}
        Layout = blGlyphTop
        NumGlyphs = 2
      end
      object BtnTTUNGHD_D: TBitBtn
        Left = 46
        Top = 0
        Width = 45
        Height = 46
        Hint = 'Delete one Record'
        Caption = 'Delete'
        Enabled = False
        TabOrder = 2
        OnClick = BtnTTUNGHD_DClick
        Glyph.Data = {
          76010000424D7601000000000000760000002800000020000000100000000100
          04000000000000010000130B0000130B00001000000000000000000000000000
          800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
          FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00333333333333
          333333333333333333FF33333333333330003333333333333777333333333333
          300033FFFFFF3333377739999993333333333777777F3333333F399999933333
          3300377777733333337733333333333333003333333333333377333333333333
          3333333333333333333F333333333333330033333F33333333773333C3333333
          330033337F3333333377333CC3333333333333F77FFFFFFF3FF33CCCCCCCCCC3
          993337777777777F77F33CCCCCCCCCC399333777777777737733333CC3333333
          333333377F33333333FF3333C333333330003333733333333777333333333333
          3000333333333333377733333333333333333333333333333333}
        Layout = blGlyphTop
        NumGlyphs = 2
      end
      object BtnTTUNGHD_I: TBitBtn
        Left = 2
        Top = 0
        Width = 45
        Height = 46
        Hint = 'Insert one New Record'
        Caption = 'Insert'
        Enabled = False
        TabOrder = 3
        OnClick = BtnTTUNGHD_IClick
        Glyph.Data = {
          76010000424D7601000000000000760000002800000020000000100000000100
          04000000000000010000130B0000130B00001000000000000000000000000000
          800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
          FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00333333333333
          33333333FF33333333FF333993333333300033377F3333333777333993333333
          300033F77FFF3333377739999993333333333777777F3333333F399999933333
          33003777777333333377333993333333330033377F3333333377333993333333
          3333333773333333333F333333333333330033333333F33333773333333C3333
          330033333337FF3333773333333CC333333333FFFFF77FFF3FF33CCCCCCCCCC3
          993337777777777F77F33CCCCCCCCCC3993337777777777377333333333CC333
          333333333337733333FF3333333C333330003333333733333777333333333333
          3000333333333333377733333333333333333333333333333333}
        Layout = blGlyphTop
        NumGlyphs = 2
      end
    end
    object DBGridEh11: TDBGridEh
      Left = 1
      Top = 50
      Width = 619
      Height = 442
      Align = alClient
      DataSource = DS_TTUHD
      Flat = False
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clPurple
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      FooterColor = clWindow
      FooterFont.Charset = DEFAULT_CHARSET
      FooterFont.Color = clWindowText
      FooterFont.Height = -13
      FooterFont.Name = 'MS Sans Serif'
      FooterFont.Style = [fsBold]
      FooterRowCount = 1
      OptionsEh = [dghFixed3D, dghHighlightFocus, dghClearSelection, dghAutoSortMarking, dghMultiSortMarking, dghRowHighlight, dghDialogFind]
      ParentFont = False
      SumList.Active = True
      TabOrder = 1
      TitleFont.Charset = DEFAULT_CHARSET
      TitleFont.Color = clWindowText
      TitleFont.Height = -13
      TitleFont.Name = 'MS Sans Serif'
      TitleFont.Style = []
      UseMultiTitle = True
      VTitleMargin = 3
      OnGetCellParams = DBGridEh11GetCellParams
      Columns = <
        item
          EditButtons = <>
          FieldName = 'STT'
          Footers = <>
          ReadOnly = True
          Width = 35
        end
        item
          EditButtons = <>
          FieldName = 'FKBH'
          Footers = <>
          ReadOnly = True
          Width = 90
        end
        item
          EditButtons = <>
          FieldName = 'TONGTIEN_CHUATHUE'
          Footers = <>
          Title.Caption = 'TONG TIEN|CHUA THUE'
          Width = 120
        end
        item
          EditButtons = <>
          FieldName = 'TONGTIEN_THUE'
          Footers = <>
          Title.Caption = 'TONG TIEN|THUE'
          Width = 90
        end
        item
          EditButtons = <>
          FieldName = 'TONGTIEN_THANHTOAN'
          Footers = <>
          Title.Caption = 'TONG TIEN|THANH TOAN'
          Width = 150
        end
        item
          EditButtons = <>
          FieldName = 'TONGTIEN_THANHTOAN_CONLAI'
          Footers = <>
          ReadOnly = True
          Title.Caption = 'TONG TIEN|THANH TOAN CON LAI'
          Width = 120
        end>
    end
  end
  object qry_PMTK: TQuery
    AfterScroll = qry_PMTKAfterScroll
    DatabaseName = 'DB'
    SQL.Strings = (
      'SELECT *'
      'FROM CGZL_PAYMENTSS'
      'where 1=2')
    Left = 409
    Top = 151
    object qry_PMTKFKBH: TStringField
      FieldName = 'FKBH'
      Origin = 'DB.CGZL_PaymentSS.FKBH'
      FixedChar = True
      Size = 15
    end
    object qry_PMTKVATNO: TStringField
      FieldName = 'VATNO'
      Origin = 'DB.CGZL_PaymentSS.VATNO'
      FixedChar = True
      Size = 50
    end
    object qry_PMTKZSBH_MST: TStringField
      FieldName = 'ZSBH_MST'
      Origin = 'DB.CGZL_PaymentSS.ZSBH_MST'
      FixedChar = True
      Size = 50
    end
    object qry_PMTKUSERID: TStringField
      FieldName = 'USERID'
      Origin = 'DB.CGZL_PaymentSS.USERID'
      FixedChar = True
    end
    object qry_PMTKUSERDATE: TDateTimeField
      FieldName = 'USERDATE'
      Origin = 'DB.CGZL_PaymentSS.USERDATE'
    end
    object qry_PMTKYN: TStringField
      FieldName = 'YN'
      Origin = 'DB.CGZL_PaymentSS.YN'
      FixedChar = True
      Size = 1
    end
    object qry_PMTKSTT: TStringField
      FieldName = 'STT'
      Origin = 'DB.CGZL_PaymentSS.STT'
      FixedChar = True
      Size = 10
    end
    object qry_PMTKKYHIEU_HOADON: TStringField
      FieldName = 'KYHIEU_HOADON'
      Origin = 'DB.CGZL_PaymentSS.KYHIEU_HOADON'
      FixedChar = True
      Size = 200
    end
    object qry_PMTKVATDATE: TDateTimeField
      FieldName = 'VATDATE'
      Origin = 'DB.CGZL_PaymentSS.VATDATE'
    end
    object qry_PMTKTONGTIEN_CHUATHUE: TCurrencyField
      FieldName = 'TONGTIEN_CHUATHUE'
      Origin = 'DB.CGZL_PaymentSS.TONGTIEN_CHUATHUE'
    end
    object qry_PMTKTONGTIEN_THUE: TCurrencyField
      FieldName = 'TONGTIEN_THUE'
      Origin = 'DB.CGZL_PaymentSS.TONGTIEN_THUE'
    end
    object qry_PMTKTONGTIEN_THANHTOAN: TCurrencyField
      FieldName = 'TONGTIEN_THANHTOAN'
      Origin = 'DB.CGZL_PaymentSS.TONGTIEN_THANHTOAN'
    end
    object qry_PMTKTONGTIEN_THANHTOAN_CONLAI: TCurrencyField
      FieldName = 'TONGTIEN_THANHTOAN_CONLAI'
    end
  end
  object DS_PMTK: TDataSource
    DataSet = qry_PMTK
    Left = 409
    Top = 119
  end
  object qry_TTUHD: TQuery
    DatabaseName = 'DB'
    DataSource = DS_PMTK
    SQL.Strings = (
      ' SELECT *'
      'FROM CGZL_PaymentSS_Advance'
      'WHERE FKBH=:FKBH AND VATNO=:VATNO AND ZSBH_MST=:ZSBH_MST '
      ' AND KYHIEU_HOADON=:KYHIEU_HOADON and ISNULL(FKBH_S,'#39#39')='#39#39)
    UpdateObject = Up_TTUHD
    Left = 1036
    Top = 150
    ParamData = <
      item
        DataType = ftString
        Name = 'FKBH'
        ParamType = ptUnknown
        Size = 21
      end
      item
        DataType = ftUnknown
        Name = 'VATNO'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'ZSBH_MST'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'KYHIEU_HOADON'
        ParamType = ptUnknown
      end>
    object qry_TTUHDSTT: TStringField
      FieldName = 'STT'
      Size = 10
    end
    object StringField1: TStringField
      FieldName = 'FKBH'
      FixedChar = True
    end
    object qry_TTUHDVATNO: TStringField
      FieldName = 'VATNO'
      Size = 50
    end
    object qry_TTUHDZSBH_MST: TStringField
      FieldName = 'ZSBH_MST'
      Size = 50
    end
    object StringField3: TStringField
      FieldName = 'USERID'
      FixedChar = True
      Size = 10
    end
    object DateTimeField1: TDateTimeField
      FieldName = 'USERDATE'
    end
    object StringField4: TStringField
      FieldName = 'YN'
      FixedChar = True
      Size = 1
    end
    object qry_TTUHDKYHIEU_HOADON: TStringField
      FieldName = 'KYHIEU_HOADON'
      Size = 200
    end
    object qry_TTUHDVATDATE: TDateTimeField
      FieldName = 'VATDATE'
    end
    object qry_TTUHDTONGTIEN_CHUATHUE: TCurrencyField
      FieldName = 'TONGTIEN_CHUATHUE'
    end
    object qry_TTUHDTONGTIEN_THUE: TCurrencyField
      FieldName = 'TONGTIEN_THUE'
    end
    object qry_TTUHDTONGTIEN_THANHTOAN: TCurrencyField
      FieldName = 'TONGTIEN_THANHTOAN'
    end
    object qry_TTUHDTONGTIEN_THANHTOAN_CONLAI: TCurrencyField
      FieldName = 'TONGTIEN_THANHTOAN_CONLAI'
    end
    object qry_TTUHDFKBH_S: TStringField
      FieldName = 'FKBH_S'
    end
  end
  object DS_TTUHD: TDataSource
    DataSet = qry_TTUHD
    Left = 1038
    Top = 179
  end
  object Up_TTUHD: TUpdateSQL
    ModifySQL.Strings = (
      'UPDATE CGZL_PaymentSS_Advance'
      'SET'
      '    USERID = :USERID,'
      '    USERDATE = GETDATE(),'
      '    YN = :YN,'
      '    VATDATE = :VATDATE,'
      '    TONGTIEN_CHUATHUE = :TONGTIEN_CHUATHUE,'
      '    TONGTIEN_THUE = :TONGTIEN_THUE,'
      '    TONGTIEN_THANHTOAN = :TONGTIEN_THANHTOAN,'
      '    TONGTIEN_THANHTOAN_CONLAI = :TONGTIEN_THANHTOAN_CONLAI,'
      '    FKBH_S = :FKBH_S'
      'WHERE'
      '    STT = :STT'
      '    AND FKBH = :FKBH'
      '    AND VATNO = :VATNO'
      '    AND ZSBH_MST = :ZSBH_MST'
      '    AND KYHIEU_HOADON = :KYHIEU_HOADON')
    InsertSQL.Strings = (
      'INSERT INTO CGZL_PaymentSS_Advance ('
      '    STT, FKBH, VATNO, ZSBH_MST, USERID, USERDATE, YN,'
      '    KYHIEU_HOADON, VATDATE,'
      
        '    TONGTIEN_CHUATHUE, TONGTIEN_THUE, TONGTIEN_THANHTOAN, TONGTI' +
        'EN_THANHTOAN_CONLAI, FKBH_S'
      ')'
      'VALUES ('
      '    :STT, :FKBH, :VATNO, :ZSBH_MST, :USERID, GETDATE(), 1,'
      '    :KYHIEU_HOADON, :VATDATE,'
      
        '    :TONGTIEN_CHUATHUE, :TONGTIEN_THUE, :TONGTIEN_THANHTOAN, :TO' +
        'NGTIEN_THANHTOAN_CONLAI, :FKBH_S'
      ')')
    DeleteSQL.Strings = (
      'DELETE FROM CGZL_PaymentSS_Advance'
      'WHERE'
      '    STT = :STT'
      '    AND FKBH = :FKBH'
      '    AND VATNO = :VATNO'
      '    AND ZSBH_MST = :ZSBH_MST'
      '    AND KYHIEU_HOADON = :KYHIEU_HOADON')
    Left = 1064
    Top = 151
  end
  object qry_temp: TQuery
    DatabaseName = 'DB'
    SQL.Strings = (
      'select kfdh'
      'from kfzl'
      'order by kfdh')
    Left = 648
    Top = 216
  end
  object BDelRec: TQuery
    DatabaseName = 'DB'
    Left = 612
    Top = 213
  end
end
