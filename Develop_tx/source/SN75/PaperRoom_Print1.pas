unit PaperRoom_Print1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls, QuickRpt, QRCtrls, DB, DBTables, IdBaseComponent,
  IdCoder, IdCoder3to4, IdCoderMIME, jpeg;

type
  TPapaerRoom_print = class(TForm)
    QuickRep1: TQuickRep;
    QRBand6: TQRBand;
    qrlbl25: TQRLabel;
    qrlbl27: TQRLabel;
    qrlbl29: TQRLabel;
    PreviewQry: TQuery;
    PreviewQryDDMH: TStringField;
    PreviewQryypdh: TStringField;
    PreviewQryXieMing: TStringField;
    PreviewQryseason: TStringField;
    PreviewQrybrand: TStringField;
    PreviewQryFD: TStringField;
    PreviewQryTestNo: TStringField;
    PreviewQryArticle: TStringField;
    PreviewQryDevTp: TStringField;
    PreviewQrysubTp: TStringField;
    PreviewQrystage: TStringField;
    PreviewQryTestTime: TStringField;
    PreviewQrySIZ: TStringField;
    PreviewQryLastNo: TStringField;
    PreviewQryCutDieNo: TStringField;
    PreviewQryPurpose: TStringField;
    PreviewQryETC: TDateTimeField;
    PreviewQryShipDate: TDateTimeField;
    PreviewQryUserDate: TDateTimeField;
    PreviewQryConstruction: TStringField;
    PreviewQrySeeType: TStringField;
    PreviewQryPrint_Request: TBooleanField;
    PreviewQryRubber_Request: TBooleanField;
    PreviewQryQty: TFloatField;
    PreviewQryUpperQty: TFloatField;
    PreviewQryBottomQty: TFloatField;
    PreviewQryMemo1: TMemoField;
    QRBand5: TQRBand;
    qrlbl2: TQRLabel;
    QRDBText1: TQRDBText;
    qrlbl3: TQRLabel;
    qrlbl4: TQRLabel;
    qrlbl5: TQRLabel;
    qrlbl6: TQRLabel;
    qrlbl7: TQRLabel;
    qrlbl8: TQRLabel;
    qrlbl9: TQRLabel;
    qrlbl10: TQRLabel;
    qrlbl11: TQRLabel;
    qrlbl12: TQRLabel;
    qrlbl13: TQRLabel;
    qrlbl14: TQRLabel;
    qrlbl15: TQRLabel;
    qrlbl16: TQRLabel;
    qrlbl17: TQRLabel;
    QRDBText2: TQRDBText;
    QRDBText3: TQRDBText;
    QRDBText4: TQRDBText;
    QRDBText24: TQRDBText;
    QRDBText25: TQRDBText;
    QRDBText27: TQRDBText;
    QRDBText28: TQRDBText;
    QRDBText33: TQRDBText;
    QRDBText34: TQRDBText;
    QRDBText35: TQRDBText;
    QRDBText36: TQRDBText;
    QRDBText37: TQRDBText;
    QRDBText38: TQRDBText;
    QRDBText39: TQRDBText;
    qrlbl22: TQRLabel;
    qrlbl32: TQRLabel;
    QRDBText41: TQRDBText;
    QRLabel22: TQRLabel;
    QRDBText43: TQRDBText;
    QRLabel25: TQRLabel;
    QRDBText45: TQRDBText;
    QRLabel27: TQRLabel;
    QRLabel28: TQRLabel;
    QRDBText48: TQRDBText;
    QRLabel36: TQRLabel;
    QRDBText50: TQRDBText;
    QRLabel38: TQRLabel;
    QRLabel40: TQRLabel;
    QRDBText54: TQRDBText;
    QRDBText51: TQRDBText;
    QRDBText47: TQRDBText;
    QRDBText26: TQRDBText;
    QRLabel42: TQRLabel;
    QRDBText56: TQRDBText;
    QRDBText30: TQRDBText;
    QRDBRichText1: TQRDBRichText;
    QRDBRichText2: TQRDBRichText;
    PreviewQryStatus: TMemoField;
    QRDBImage1: TQRDBImage;
    UpdateSQL1: TUpdateSQL;
    PreviewQryBarcode: TBlobField;
    QRImage1: TQRImage;
    procedure FormDestroy(Sender: TObject);
  private
    { Private declarations }
  public
    procedure GenerateBarcode(TestNo: string);
    { Public declarations }
  end;

var
  PapaerRoom_print: TPapaerRoom_print;

implementation

uses
  PaperRoom_shoeTest, main1, Barcode93Unit1;

{$R *.dfm}

procedure TPapaerRoom_print.FormDestroy(Sender: TObject);
begin
  PapaerRoom_print := Nil;
end;

procedure TPapaerRoom_print.GenerateBarcode(TestNo: string);
var
  Img: TImage;
  BarcodeBMP: TBitmap;
  MemoryStream: TMemoryStream;
begin
  Img := TImage.Create(self);
  Img.Width := 180;
  Img.Height := 38;
  Barcode93Obj := TBarcode93.Create(self);
  Barcode93Obj.ImBarCodeShow(Img.Canvas, TestNo, false);
  BarcodeBMP := TBitmap.Create;
  MemoryStream := TMemoryStream.Create;
  try
    BarcodeBMP.Assign(Img.Picture.Bitmap);
    BarcodeBMP.SaveToStream(MemoryStream);
    MemoryStream.Position := 0;
    PreviewQry.Edit;
    TBlobField(PreviewQry.FieldByName('Barcode')).LoadFromStream(MemoryStream);
  finally
    BarcodeBMP.Free;
    Barcode93Obj.Free;
    MemoryStream.Free;
  end;
end;

end.


