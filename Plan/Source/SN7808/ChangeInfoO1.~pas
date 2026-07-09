unit ChangeInfoO1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, DB, DBTables, GridsEh, DBGridEh, ExtCtrls;

type
  TChangeInfoO = class(TForm)
    Panel1: TPanel;
    Button1: TButton;
    DBGridEh1: TDBGridEh;
    Query1: TQuery;
    DS1: TDataSource;
    Label1: TLabel;
    Edit1: TEdit;
    Button2: TButton;
    Label2: TLabel;
    Edit2: TEdit;
    UpSMZL_MAKE: TUpdateSQL;
    Query1ID: TFloatField;
    Query1CODEBAR: TStringField;
    Query1MA_KE: TStringField;
    Query1Qty: TIntegerField;
    Query1Status: TStringField;
    Query1USERID: TStringField;
    Query1USERDATE: TDateTimeField;
    Query1DEPNO: TStringField;
    Query1ysbh: TStringField;
    Query1xxcc: TStringField;
    Label3: TLabel;
    Edit3: TEdit;
    procedure FormDestroy(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  ChangeInfoO: TChangeInfoO;

implementation

{$R *.dfm}

procedure TChangeInfoO.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  // Giai phong bo nho ngay khi dong Form
  Action := caFree;
end;

procedure TChangeInfoO.FormDestroy(Sender: TObject);
begin
  // Gan nil de tranh loi truy cap vao vung nho da giai phong
  ChangeInfoO := nil;
end;

procedure TChangeInfoO.Button1Click(Sender: TObject);
begin
  with query1 do
  begin
  active:=false;
  sql.Clear;
  sql.Add('select smzl_make.*,smdd.ysbh,smddss.xxcc from smzl_make inner join smddss on smddss.codebar=smzl_make.codebar left join smdd on smdd.ddbh=smddss.ddbh and smdd.gxlb=smddss.gxlb');
  sql.Add('where status in (''in'',''out'') and smzl_make.codebar in (select codebar from smddss where ddbh like''%'+edit1.Text+'%'') ');
  if trim(edit2.text)<>'' then   sql.add(' and smzl_make.codebar ='''+edit2.Text+''' ');
  if trim(edit3.text)<>'' then   sql.add(' and smddss.xxcc ='''+edit3.Text+''' ');
  sql.add('order by smzl_make.ID, smzl_make.status');
  active:=true;
  requestlive:=true;
  cachedupdates:=true;
  edit;
  end;
end;

procedure TChangeInfoO.Button2Click(Sender: TObject);
var i:integer;
begin
  Query1.First;
  for i:=0 to Query1.RecordCount-1 do
  begin
    case Query1.updatestatus of
      usmodified:
      begin
        Query1.Edit;
        UpSMZL_MAKE.apply(ukmodify);
      end;
    end;
    Query1.Next;
  end;
  Query1.active:=false;
  Query1.cachedupdates:=false;
  Query1.requestlive:=false;
  Query1.active:=true;
end;

end.
