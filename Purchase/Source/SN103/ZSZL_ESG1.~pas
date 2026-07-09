unit ZSZL_ESG1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DBTables, DB, GridsEh, DBGridEh, StdCtrls, ComCtrls, Buttons,
  ExtCtrls;

type
  TZSZL_ESG = class(TForm)
    Panel1: TPanel;
    Label1: TLabel;
    BB1: TBitBtn;
    BB2: TBitBtn;
    BB3: TBitBtn;
    BB4: TBitBtn;
    BB5: TBitBtn;
    BB6: TBitBtn;
    Button1: TButton;
    ZSDH: TEdit;
    bbt6: TBitBtn;
    ImportExcel: TBitBtn;
    DBGrid1: TDBGridEh;
    Qtemp: TQuery;
    QtempCGNO: TStringField;
    QtempAddress: TStringField;
    QtempLocation: TIntegerField;
    QtempLocation_station: TIntegerField;
    QtempLength_KM: TFloatField;
    QtempType: TIntegerField;
    QtempUSERID: TStringField;
    QtempUSERDATE: TDateTimeField;
    QCheckCLBH: TQuery;
    Query1: TQuery;
    DS1: TDataSource;
    UpSQL1: TUpdateSQL;
    OpenDialog1: TOpenDialog;
    Query1ZSDH: TStringField;
    Query1Address: TStringField;
    Query1Import: TStringField;
    Query1Export: TStringField;
    Query1Trains_type: TStringField;
    Query1USERID: TStringField;
    Query1USERDATE: TDateTimeField;
    Button2: TButton;
    Query1Length: TFloatField;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormDestroy(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure BB3Click(Sender: TObject);
    procedure BB4Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  ZSZL_ESG: TZSZL_ESG;

implementation

uses main1;

{$R *.dfm}

procedure TZSZL_ESG.FormClose(Sender: TObject; var Action: TCloseAction);
begin
     action:=Cafree;
end;

procedure TZSZL_ESG.FormDestroy(Sender: TObject);
begin
    ZSZL_ESG := nil;
end;

procedure TZSZL_ESG.Button1Click(Sender: TObject);
begin
  if not Query1.RequestLive then
  begin
  with Query1 do
    begin
      active:=false;
      sql.Clear;
      SQL.Add('select * from ZSZL_ESG where ZSDH like ''%'+ZSDH.Text+'%''');
      active:=true;
    end;
  end
  else
    begin
      showmessage('Pls save data first.');
    end;
    bb3.Enabled:=true;
end;

procedure TZSZL_ESG.Button2Click(Sender: TObject);
begin
    with Qtemp do
    begin
      active:=false;
      sql.Clear;
      SQL.Add('Insert into ZSZL_ESG');
      SQL.Add('select ZSDH, fpdz, NULL, NULL, NULL, ''SYSTEM'', GETDATE(),NULL from ZSZL ');
      SQL.Add('where ZSDH not in(select ZSDH from ZSZL_ESG)');
      SQL.Add('UPDATE T1 SET T1.Address = T2.fpdz');
      SQL.Add('FROM ZSZL_ESG T1 INNER JOIN ZSZL T2 ON T1.ZSDH = T2.ZSDH;');
      ExecSQL();
    end;
end;

procedure TZSZL_ESG.BB3Click(Sender: TObject);
begin
with Query1 do
  begin
    cachedupdates:=true;
    requestlive:=true;
    Query1.edit;
  end;
bb4.enabled:=true;
bb5.enabled:=true;
end;

procedure TZSZL_ESG.BB4Click(Sender: TObject);
var i:integer;
begin
  try
    Query1.first;
    for i:=1 to Query1.RecordCount do
      begin
        case Query1.UpdateStatus of
         usModified:
            begin
                    Query1.Edit;
                    Query1.FieldByName('USERID').Value:=main.Edit1.Text;
                    upsql1.apply(ukmodify);
              end;
        end;
        Query1.next;
      end;
    Query1.active:=false;
    Query1.cachedupdates:=false;
    Query1.requestlive:=false;
    Query1.active:=true;
    bb4.enabled:=false;
    bb5.enabled:=false;
  except
    Messagedlg('Have wrong, can not save data!',mtwarning,[mbyes],0);
  end;
end;
end.
