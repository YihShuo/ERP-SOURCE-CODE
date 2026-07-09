unit Extra_CP1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DBTables, DB, GridsEh, DBGridEh, StdCtrls, Buttons, ExtCtrls;

type
  TExtra_CP = class(TForm)
    pnTop: TPanel;
    Lbl_LB: TLabel;
    BB3: TBitBtn;
    BB4: TBitBtn;
    BB5: TBitBtn;
    Button1: TButton;
    DBGridEh1: TDBGridEh;
    Query1: TQuery;
    Query1KCYEAR: TStringField;
    Query1KCMONTH: TStringField;
    DataSource1: TDataSource;
    UpdateSQL1: TUpdateSQL;
    QTemp: TQuery;
    Query1nameextra: TStringField;
    Query1status: TStringField;
    Query1usprice: TFloatField;
    Query1vnacc: TFloatField;
    Query1IdKT: TStringField;
    Query1DateKT: TDateTimeField;
    Query1qty: TFloatField;
    Query1GSBH: TStringField;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormDestroy(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure BB3Click(Sender: TObject);
    procedure BB5Click(Sender: TObject);
    procedure BB4Click(Sender: TObject);
  private      
    ssYear,ssMonth:string;
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Extra_CP: TExtra_CP;

implementation

uses SemiMonthTotal1, main1;

{$R *.dfm}

procedure TExtra_CP.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  action:=cafree;
end;

procedure TExtra_CP.FormDestroy(Sender: TObject);
begin
  Extra_CP:=nil;
end;

procedure TExtra_CP.Button1Click(Sender: TObject);
begin
  ssYear := SemiMonthTotal.CBX3.Text;
  ssMonth := SemiMonthTotal.CBX4.Text;

  with Query1 do
  begin
    active:=false;
    sql.Clear;
    SQL.Add('SELECT gc.KCYEAR,gc.KCMONTH, GSBH, status, max(nameextra) nameextra, max(IdKT) IdKT, max(DateKT) DateKT, ');
    SQL.Add('sum(qty) qty, max(price.usprice) usprice, sum(vnacc) vnacc FROM CW_MatCostMonth_GC gc ');
    SQL.Add('left join CW_MatCostMonth_Price price on price.KCYEAR=gc.KCYEAR and price.KCMONTH=gc.KCMONTH and price.DDBH=gc.NameExtra ');
    SQL.Add('WHERE gc.KCYEAR='+ssYear+' and gc.KCMONTH='+ssMonth+' ');
    SQL.Add('group by gc.KCYEAR,gc.KCMONTH,GSBH,status ');
    active:=true;
  end;
  BB3.Enabled:=true;
end;

procedure TExtra_CP.BB3Click(Sender: TObject);
begin
  with Query1 do
  begin
    cachedupdates:=true;
    requestlive:=true;
    edit;
  end;
  bb4.enabled:=true;
  bb5.enabled:=true;
end;

procedure TExtra_CP.BB5Click(Sender: TObject);
begin
  with Query1 do
  begin
    active:=false;
    cachedupdates:=false;
    requestlive:=false;
    active:=true;
  end;
  bb4.enabled:=false;
  bb5.enabled:=false;
end;

procedure TExtra_CP.BB4Click(Sender: TObject);
var i:integer;
begin
  try
  query1.first;
  for i:=1 to query1.RecordCount do
  begin
    case query1.updatestatus of
      usmodified:
      begin
        with Qtemp do
        begin
          active:=false;
          sql.Clear;
          SQL.Add('update CW_MatCostMonth_GC ');
          SQL.Add('set ');
          SQL.Add('nameextra = '''+query1.fieldbyname('nameextra').AsString+''', ');
          SQL.Add('IdKT = '''+main.edit1.text+''', ');
          SQL.Add('DateKT= getdate() ');
          SQL.Add('where ');
          SQL.Add('KCYEAR = '''+query1.fieldbyname('KCYEAR').AsString+''' ');
          SQL.Add('and KCMONTH = '''+query1.fieldbyname('KCMONTH').AsString+''' ');
          SQL.Add('and Status = '''+query1.fieldbyname('status').AsString+''' ');    
          SQL.Add('and GSBH = '''+query1.fieldbyname('GSBH').AsString+''' ');
          //funcobj.WriteErrorLog(sql.Text);
          ExecSQL();
        end;
      end;
    end;
    query1.next;
  end;
  query1.active:=false;
  query1.cachedupdates:=false;
  query1.requestlive:=false;
  query1.active:=true;
  bb4.enabled:=false;
  bb5.enabled:=false;
  except
    Messagedlg('Have wrong, can not save!',mtwarning,[mbyes],0);
  end;

end;

end.
