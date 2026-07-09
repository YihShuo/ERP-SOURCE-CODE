unit OrderProblem1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DB, DBTables, GridsEh, DBGridEh, ComCtrls, StdCtrls, ExtCtrls;

type
  TOrderProblem = class(TForm)
    Panel1: TPanel;
    Label1: TLabel;
    Label2: TLabel;
    Label14: TLabel;
    Edit1: TEdit;
    Edit2: TEdit;
    Button1: TButton;
    DTP: TDateTimePicker;
    DBGridEh1: TDBGridEh;
    Query1: TQuery;
    DS1: TDataSource;
    Query1DDBH: TStringField;
    Query1Chua_nhap_kho: TIntegerField;
    Query1Nhap_kho: TIntegerField;
    Query1Tai_che: TIntegerField;
    Query1Xuat_hang: TIntegerField;
    Query1Kiem_hang: TIntegerField;
    Query1Tong_vao_khoTP: TIntegerField;
    Query1ShipDate: TDateTimeField;
    Query1Reason: TStringField;
    Query1Memo: TStringField;
    Query1USERID: TStringField;
    Query1Userdate: TDateTimeField;
    Query1XieMing: TStringField;
    Query1ARTICLE: TStringField;
    temp: TQuery;
    Query1ID: TAutoIncField;
    Query1CreateDate: TDateTimeField;
    Label3: TLabel;
    Edit3: TEdit;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormDestroy(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure DBGridEh1Columns11EditButtonClick(Sender: TObject;
      var Handled: Boolean);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  OrderProblem: TOrderProblem;

implementation
 uses reason1;
{$R *.dfm}

procedure TOrderProblem.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  action:=cafree;
end;

procedure TOrderProblem.FormDestroy(Sender: TObject);
begin
  OrderProblem:=nil;
end;

procedure TOrderProblem.Button1Click(Sender: TObject);
begin
  with query1 do
  begin
    active := false;
    sql.Clear;
    SQL.Add('select a.*, c.XieMing,c.ARTICLE from YWCP_Problem A');
    SQL.Add('left join ddzl B on  a.ddbh=b.DDBH');
    SQL.Add('left join xxzl C on C.XieXing = b.XieXing and C.SheHao=b.SheHao');
    SQL.Add(' where CONVERT(varchar,a.userdate,111)= '''+formatdatetime('yyyy/MM/dd',DTP.Date)+''' ');
    SQL.Add('and a.ddbh like''%'+edit1.text+'%'' and c.xieming like''%'+edit2.text+'%'' and c.ARTICLE like''%'+edit3.text+'%'' ');
    active:=true;
  end;
end;

procedure TOrderProblem.FormCreate(Sender: TObject);
begin
  DTP.Date := Date - 1;
end;


procedure TOrderProblem.DBGridEh1Columns11EditButtonClick(Sender: TObject;
  var Handled: Boolean);
var
  FrmReason: TReason;
  vID: Integer;
begin
  Handled := True;

  if Query1.IsEmpty then Exit;
  if Query1.FieldByName('ID').IsNull then Exit;

  vID := Query1.FieldByName('ID').AsInteger;

  FrmReason := TReason.Create(Self);
  try
    FrmReason.SetContext(vID);

    if FrmReason.ShowModal = mrOk then
    begin
      // Delphi 7: dôi khi Refresh không c?p nh?t du?c v?i query join
      // nên uu tiên Close/Open n?u Refresh không th?y thay d?i
      try
        Button1Click(nil);
      except
        Query1.Close;
        Query1.Open;
      end;
    end;
  finally
    FrmReason.Free;
  end;
end;



end.
