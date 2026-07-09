unit PrintHC_CT1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls, StdCtrls, DelphiZXingQRCode;

type
  TPrintHC_CT = class(TForm)
    Panel2: TPanel;
    Shape1: TShape;
    PaintBox1: TPaintBox;
    LB_QTY: TLabel;
    LB_ORDER: TLabel;
    LB_DATE: TLabel;
    Label2: TLabel;
    Dep: TLabel;
    procedure FormCreate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormDestroy(Sender: TObject);
    procedure PaintBox1Paint(Sender: TObject);
  private
    QRCodeBitmap: TBitmap;
  public
    function NoSign(const S: string): string;
    // BU?C 1: Thêm tham s? APrintDate: string vào dây
    procedure QRUpdate(AID, AFid, ADep, AQty: string; Encode, QuietZone: integer; APrintDate: string);
  end;

var
  PrintHC_CT: TPrintHC_CT;

implementation

{$R *.dfm}

function TPrintHC_CT.NoSign(const S: string): string;
const
  vChars: string = 'àá??ãâ?????a?????èé???ê?????ìí??iòó??õô?????o?????ùú??uu??????ý???dÀÁ??ÃÂ?????A?????ÈÉ???Ê?????ÌÍ??IÒÓ??ÕÔ?????O?????ÙÚ??UU??????Ý???Ð';
  rChars: string = 'aaaaaaaaaaaaaaaaaeeeeeeeeeeeiiiiiooooooooooooooooouuuuuuuuuuuyyyyydAAAAAAAAAAAAAAAAAEEEEEEEEEEEIIIIIOOOOOOOOOOOOOOOOOUUUUUUUUUUUYYYYYD';
var i, p: Integer;
begin
  Result := S;
  for i := 1 to Length(Result) do begin
    p := Pos(Result[i], vChars);
    if p > 0 then Result[i] := rChars[p];
  end;
end;

procedure TPrintHC_CT.FormCreate(Sender: TObject);
begin
  QRCodeBitmap := TBitmap.Create;
end;

procedure TPrintHC_CT.FormDestroy(Sender: TObject);
begin
  QRCodeBitmap.Free;
  PrintHC_CT := Nil;
end;

procedure TPrintHC_CT.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  Action := caFree;
end;

// BU?C 2: Thêm tham s? APrintDate: string vào ph?n th?c thi hàm
procedure TPrintHC_CT.QRUpdate(AID, AFid, ADep, AQty: string; Encode, QuietZone: integer; APrintDate: string);
var
  QRCode: TDelphiZXingQRCode;
  Row, Column: Integer;
begin
  if not Assigned(QRCodeBitmap) then QRCodeBitmap := TBitmap.Create;
  QRCode := TDelphiZXingQRCode.Create;
  try
    LB_ORDER.Caption := NoSign(AFid);
    LB_QTY.Caption := AQty;
    Dep.Caption := ADep;

    // BU?C 3: Gán ngày truy?n vào thay vì dùng hàm Now c?a h? th?ng
    LB_DATE.Caption := APrintDate;

    QRCode.Data := AID;
    QRCode.Encoding := TQRCodeEncoding(Encode);
    QRCode.QuietZone := QuietZone;
    QRCodeBitmap.Width := QRCode.Columns;
    QRCodeBitmap.Height := QRCode.Rows;
    for Row := 0 to QRCode.Rows - 1 do
      for Column := 0 to QRCode.Columns - 1 do
        if (QRCode.IsBlack[Row, Column]) then
          QRCodeBitmap.Canvas.Pixels[Column, Row] := clBlack
        else
          QRCodeBitmap.Canvas.Pixels[Column, Row] := clWhite;
  finally
    QRCode.Free;
  end;
  PaintBox1.Repaint;
end;

procedure TPrintHC_CT.PaintBox1Paint(Sender: TObject);
var Scale: Double;
begin
  PaintBox1.Canvas.Brush.Color := clWhite;
  PaintBox1.Canvas.FillRect(PaintBox1.ClientRect);
  if (QRCodeBitmap.Width > 0) and (QRCodeBitmap.Height > 0) then
  begin
    if (PaintBox1.Width < PaintBox1.Height) then Scale := PaintBox1.Width / QRCodeBitmap.Width
    else Scale := PaintBox1.Height / QRCodeBitmap.Height;
    PaintBox1.Canvas.StretchDraw(Rect(0, 0, Trunc(Scale * QRCodeBitmap.Width), Trunc(Scale * QRCodeBitmap.Height)), QRCodeBitmap);
  end;
end;

end.
