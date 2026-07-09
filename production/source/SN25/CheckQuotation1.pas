unit CheckQuotation1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, GridsEh, DBGridEh, DB, DBTables, StdCtrls, ExtCtrls;

type
  TCheckQuotation = class(TForm)
    DS1: TDataSource;
    Query1: TQuery;
    Query1BJNO: TStringField;
    Query1CLBH: TStringField;
    Query1USPrice: TCurrencyField;
    Query1ZSYWJC: TStringField;
    Query1VNPrice: TCurrencyField;
    DBGridEh1: TDBGridEh;
    Panel1: TPanel;
    Label1: TLabel;
    Label2: TLabel;
    Query2: TQuery;
    Query1IsComputed: TIntegerField;
    Label3: TLabel;
    procedure FormCreate(Sender: TObject);
    procedure DBGridEh1DblClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormDestroy(Sender: TObject);
    procedure DBGridEh1DrawColumnCell(Sender: TObject; const Rect: TRect;
      DataCol: Integer; Column: TColumnEh; State: TGridDrawState);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  CheckQuotation: TCheckQuotation;

implementation
 uses main1,ReplenishCon1;
{$R *.dfm}

procedure TCheckQuotation.FormCreate(Sender: TObject);
begin
      with query2 do
      begin
        //20141202　weston修改原本常發現異常CWHL=0
        active:=false;
        sql.Clear;
        sql.add('select top 1 CWHL from CWHL '); //20150409 weston 修改每月固定匯率
        sql.add('           order by HLYEAR DESC,HLMONTH DESC ');
        active:=true;
        if recordcount>0 then Label2.Caption:=FieldByName('CWHL').AsString;
        active:=false;
      end;
    with query1 do
    begin
      Active:=false;
      sql.clear;
      sql.Add('select CGBJS.BJNO, CGBJS.CLBH, CGBJS.VNPrice, ' +
        'ROUND(ISNULL(CGBJS.USPrice, CGBJS.VNPrice / ' + label2.Caption + '),4) as USPrice, ' +
        'ZSZL.ZSYWJC');
      // Neu USPrice goc la NULL thi tra ve 1, nguoc lai tra ve 0
      sql.Add(',CASE WHEN CGBJS.USPrice IS NULL THEN 1 ELSE 0 END as IsComputed ');
      sql.add('from CGBJS ');
      sql.add('left join CGBJ on CGBJS.BJNO=CGBJ.BJNO');
      sql.add('left join ZSZL on ZSZL.ZSDH=CGBJ.ZSBH ');
      sql.add('where CGBJS.CLBH='''+ReplenishCon.BLDet.FieldValues['CLBH']+'''');
      sql.Add('order by CGBJ.BJNO DESC ');
      active:=true;
    end;
end;

procedure TCheckQuotation.DBGridEh1DblClick(Sender: TObject);
begin
  if query1.recordcount>0 then
  begin
    ReplenishCon.BLDet.Edit;
    //ReplenishCon.BLDet.fieldbyname('VNPrice').Value:=query1.fieldbyname('VNPrice').Value;
    ReplenishCon.BLDet.fieldbyname('USPrice').Value:=query1.fieldbyname('USPrice').Value;
    //MatPrice.query1.post;
  end;
end;

procedure TCheckQuotation.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  action:=cafree;
end;

procedure TCheckQuotation.FormDestroy(Sender: TObject);
begin
  CheckQuotation:=nil;
end;

procedure TCheckQuotation.DBGridEh1DrawColumnCell(Sender: TObject;
  const Rect: TRect; DataCol: Integer; Column: TColumnEh;
  State: TGridDrawState);
begin
  // Kiem tra cot IsComputed chung ta da tao o SQL
  // Neu IsComputed = 1 nghia la USPrice goc bi trong, dang hien gia tinh toan
  if query1.FieldByName('IsComputed').AsInteger = 1 then
  begin
    DBGridEh1.Canvas.Brush.Color := $00CEF3FF; // Mau vang nhat hoac cam nhat
    DBGridEh1.Canvas.Font.Color := clRed;      // Chu mau do de de phan biet
  end;

  // Giu mau xanh khi chon dong (Selected)
  if gdSelected in State then
  begin
    DBGridEh1.Canvas.Brush.Color := clHighlight;
    DBGridEh1.Canvas.Font.Color := clHighlightText;
  end;

  // Ve noi dung
  DBGridEh1.DefaultDrawColumnCell(Rect, DataCol, Column, State);
end;

end.
