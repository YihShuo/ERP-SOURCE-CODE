unit SampleSheet_print;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, QRCtrls, QuickRpt, ExtCtrls, DB, DBTables;

type
  TForm1 = class(TForm)
    QuickRep2: TQuickRep;
    QRBand4: TQRBand;
    qrlbl1: TQRLabel;
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
    qrlbl18: TQRLabel;
    qrlbl19: TQRLabel;
    qrlbl20: TQRLabel;
    qrlbl21: TQRLabel;
    QRDBText2: TQRDBText;
    QRDBText3: TQRDBText;
    QRDBText4: TQRDBText;
    QRDBText24: TQRDBText;
    QRDBText25: TQRDBText;
    QRDBText26: TQRDBText;
    QRDBText27: TQRDBText;
    QRDBText28: TQRDBText;
    QRDBText29: TQRDBText;
    QRDBText30: TQRDBText;
    QRDBText31: TQRDBText;
    QRDBText32: TQRDBText;
    QRDBText33: TQRDBText;
    QRDBText34: TQRDBText;
    QRDBText35: TQRDBText;
    QRDBText36: TQRDBText;
    QRDBText37: TQRDBText;
    QRDBText38: TQRDBText;
    QRDBText39: TQRDBText;
    QRRichText4: TQRRichText;
    qrlbl22: TQRLabel;
    qrlbl32: TQRLabel;
    QRDBText41: TQRDBText;
    QRLabel22: TQRLabel;
    QRDBText43: TQRDBText;
    QRLabel25: TQRLabel;
    QRDBText45: TQRDBText;
    QRBand6: TQRBand;
    qrlbl24: TQRLabel;
    qrlbl25: TQRLabel;
    qrlbl27: TQRLabel;
    qrlbl29: TQRLabel;
    QRLabel1: TQRLabel;
    QRLabel2: TQRLabel;
    QRLabel3: TQRLabel;
    QRLabel4: TQRLabel;
    QRLabel5: TQRLabel;
    QRImage1: TQRImage;
    QRImage2: TQRImage;
    QRLabel6: TQRLabel;
    QRLabel7: TQRLabel;
    QRDBText5: TQRDBText;
    QRDBText6: TQRDBText;
    QRLabel8: TQRLabel;
    QRDBText7: TQRDBText;
    QRLabel9: TQRLabel;
    QRDBText8: TQRDBText;
    QRLabel10: TQRLabel;
    QRDBText9: TQRDBText;
    PrintDialog1: TPrintDialog;
    masqry: TQuery;
    masqryArticle: TStringField;
    masqryDDMH: TStringField;
    masqryXieMing: TStringField;
    masqryseason: TStringField;
    masqryBrand: TStringField;
    masqryFD: TStringField;
    masqryTestNo: TStringField;
    masqrysubTp: TStringField;
    masqryDevTp: TStringField;
    masqrystage: TStringField;
    masqryTestTime: TStringField;
    masqrySIZ: TStringField;
    masqryQTY: TFloatField;
    masqryLastNo: TStringField;
    masqryCutDieNo: TStringField;
    masqryPurpose: TStringField;
    masqryETC: TDateTimeField;
    masqryPreparationDate_first: TDateTimeField;
    masqryPreparationDate: TDateTimeField;
    masqryCutDate: TDateTimeField;
    masqryCutDate_first: TDateTimeField;
    masqryStitchingDate: TDateTimeField;
    masqryStitchingDate_first: TDateTimeField;
    masqryAssembiyDate: TDateTimeField;
    masqryAssembiyDate_first: TDateTimeField;
    masqryUserID: TStringField;
    masqryUserDate: TDateTimeField;
    masqrychoose: TStringField;
    masqryPending_P: TBooleanField;
    masqryPending_C: TBooleanField;
    masqryPending_A: TBooleanField;
    masqryPending_S: TBooleanField;
    masqryQIP_Check: TStringField;
    masqryFinish: TBooleanField;
    masqryComplete: TDateTimeField;
    masqryUserID_s: TStringField;
    masqryUserDate_s: TDateTimeField;
    masqryConstruction: TStringField;
    masqryYN: TStringField;
    masqryypdh: TStringField;
    masqryUpperQty: TFloatField;
    masqryBottomQty: TFloatField;
    masqryMemo1: TMemoField;
    masqryMemo2: TMemoField;
    masqryShipDate: TDateTimeField;
    masqryquantity: TFloatField;
    masqrySPQty: TCurrencyField;
    masqrymonthqty: TCurrencyField;
    masqryTBcancel: TBooleanField;
    masqryTBReceive: TBooleanField;
    masqryTBreceiveDate: TDateTimeField;
    masqrySeeStage: TStringField;
    masqryCTS: TStringField;
    masqryseetype: TStringField;
    masqryPrint_Request: TBooleanField;
    masqryPrint_Check: TBooleanField;
    masqryRubber_Check: TBooleanField;
    masqryRubber_Request: TBooleanField;
    masqrySelected: TIntegerField;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

{$R *.dfm}

end.
