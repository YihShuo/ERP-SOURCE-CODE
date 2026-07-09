unit MassPro_PrintCard1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls, QuickRpt, QRCtrls, DB, DBTables, jpeg, QRXMLSFilt,
  QRExport, QRPDFFilt, StdCtrls, IniFiles,fununit;


type
  TMassPro_PrintCard = class(TForm)
    QuickRep1: TQuickRep;
    ColumnHeaderBand2: TQRBand;
    PageHeaderBand2: TQRBand;
    QRLabel60: TQRLabel;
    QRLabel46: TQRLabel;
    QRBand2: TQRBand;
    QRPDFFilter1: TQRPDFFilter;
    QRXMLSFilter1: TQRXMLSFilter;
    QRCompositeReport1: TQRCompositeReport;
    QRExcelFilter1: TQRExcelFilter;
    QRBand3: TQRBand;
    QRDBText5: TQRDBText;
    QRLabel2: TQRLabel;
    QRLabel4: TQRLabel;
    QRLabel5: TQRLabel;
    QRLabel6: TQRLabel;                   
    QRLabel7: TQRLabel;
    QRLabel8: TQRLabel;
    QRLabel9: TQRLabel;
    QRLabel10: TQRLabel;
    QRLabel1: TQRLabel;
    QRLabel3: TQRLabel;
    QRLabel11: TQRLabel;
    QRLabel12: TQRLabel;
    QRLabel14: TQRLabel;
    QRLabel15: TQRLabel;
    QRLabel16: TQRLabel;
    QRLabel17: TQRLabel;
    QRLabel18: TQRLabel;
    QRLabel19: TQRLabel;
    QRLabel20: TQRLabel;
    QRShape1: TQRShape;
    QRShape2: TQRShape;
    QRShape3: TQRShape;
    QRShape4: TQRShape;
    QRShape5: TQRShape;
    QRShape6: TQRShape;
    QRShape7: TQRShape;
    QRLabel21: TQRLabel;
    QRLabel22: TQRLabel;
    QRLabel_ViTri: TQRLabel;
    QRAritcle: TQRDBText;
    QRCGBH: TQRDBText;
    QRDBText1: TQRDBText;
    QRLabel13: TQRLabel;
    QRDBText8: TQRDBText;
    QRLabel23: TQRLabel;
    QRDBText2: TQRDBText;
    QRLabel24: TQRLabel;
    QRLabel25: TQRLabel;
    QRLabel26: TQRLabel;
    QRLabel27: TQRLabel;
    QRLabel28: TQRLabel;
    QRDBText3: TQRDBText;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormDestroy(Sender: TObject);
    procedure QRCompositeReport1AddReports(Sender: TObject);
    procedure FormCreate(Sender: TObject);
  private
    ComName:String;
    ComNameCH:String;
    WarehouseN37_Card_ISO:string;
    procedure ReadIni();
    { Private declarations }
  public
    { Public declarations }
  end;

var
  MassPro_PrintCard: TMassPro_PrintCard;

implementation

uses main1, StockShoeMonth1;

{$R *.dfm}

procedure TMassPro_PrintCard.ReadIni();
var MyIni :Tinifile;
    AppDir,DBIP,DBUser,DBPass,DBName:string;
begin
  ComName:='CONG TY TNHH TY XUAN';
  ComNameCH:='億春責任有限公司';
  WarehouseN37_Card_ISO:='A-KVT-005A';
  //
  AppDir:=ExtractFilePath(Application.ExeName);
  if FileExists(AppDir+'\ComName.ini')=true then
  begin
    try
      MyIni := Tinifile.Create(AppDir+'\ComName.ini');
      ComName:=MyIni.ReadString('ERP','ComName1','');
      ComNameCH:=MyIni.ReadString('ERP','ComNameCH','');
      WarehouseN37_Card_ISO:=MyIni.ReadString('ERP','WarehouseN37_Card_ISO','A-KVT-005A');
    finally
      MyIni.Free;
    end;
  end;
  QRLabel1.Caption:= WarehouseN37_Card_ISO;
end;

procedure TMassPro_PrintCard.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  action:=cafree;
end;

procedure TMassPro_PrintCard.FormDestroy(Sender: TObject);
begin
  MassPro_PrintCard:=nil;
end;

procedure TMassPro_PrintCard.QRCompositeReport1AddReports(Sender: TObject);
begin
   MassPro_PrintCard.QRLabel60.Caption:=ComNameCH;
   MassPro_PrintCard.QRLabel46.Caption:=ComName;
end;

procedure TMassPro_PrintCard.FormCreate(Sender: TObject);
var year,month,day:word;
    sYear,sMonth,sDay:String;
begin
  ReadIni();
  decodedate(StockShoeMonth.DTP.Date,Year,Month,Day);   //找庫存相關的數據
  sYear:=floattostr(year);
  sMonth:=floattostr(month);
  if length(sMonth)=1 then
    sMonth:='0'+sMonth;
  QRLabel22.Caption:=' '+sYear+' 年 '+ sMonth+' 月存貨盤點卡';
  QRLabel21.Caption:=' '+' The kiem ke hang ton thang '+sMonth+' Nam '+ sYear;
  QRLabel_Vitri.caption:='Kho thanh pham ';//+ StockShoeMonth.Query2.FieldByName('CKBH').Value;
  if StockShoeMonth.chkNgayKK.Checked then
  begin
    QRLabel28.Caption:=DateToStr(StockShoeMonth.DTPKK.Date);
  end else
  begin
    QRLabel28.Caption:=DateToStr(StockShoeMonth.DTP.Date);
  end;
end;


end.
