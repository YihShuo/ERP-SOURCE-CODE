unit CheckLean;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DB, DBTables, GridsEh, DBGridEh, StdCtrls, ExtCtrls, ComCtrls,comobj;

type
  TCheckLean1 = class(TForm)
    Panel1: TPanel;
    Label1: TLabel;
    Edit1: TEdit;
    DBGridEh1: TDBGridEh;
    Query1: TQuery;
    DataSource1: TDataSource;
    Button1: TButton;
    Query2: TQuery;
    Label2: TLabel;
    Label3: TLabel;
    DTP1: TDateTimePicker;
    DTP3: TDateTimePicker;
    Label4: TLabel;
    DTP2: TDateTimePicker;
    DTP4: TDateTimePicker;
    Button2: TButton;
    Timer1: TTimer;
    Query1idDetail: TFloatField;
    Query1id_dept: TStringField;
    Query1F_id: TFloatField;
    Query1curr_weight: TFloatField;
    Query1shift: TStringField;
    Query1USERDATE: TDateTimeField;
    Query1YN: TStringField;
    Query1curr_weight_residual: TFloatField;
    Query1residual_time: TDateTimeField;
    Query1name: TStringField;
    procedure Edit1KeyPress(Sender: TObject; var Key: Char);
    procedure Button1Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure Button2Click(Sender: TObject);
    procedure Timer1Timer(Sender: TObject);
    procedure Edit1Change(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  CheckLean1: TCheckLean1;

implementation

{$R *.dfm}



procedure TCheckLean1.Edit1KeyPress(Sender: TObject; var Key: Char);
var
  s, firstPart: string;
  p: Integer;
begin
  if Key = #13 then  // khi Enter sau khi gõ
  begin
      with Query1 do
  begin
    Close;
    SQL.Clear;
      SQL.add(' SELECT  A.*, F1.name  ');
      SQL.add('FROM Ch_Formulation_Details_HK A');
      SQL.add('left join Ch_Formulation_HK F on A.F_id=F.id  ');
      SQL.add('left join Ch_Formula F1  on F.inv_id=F1.hc1 AND ISNULL(F.inv_id1, '''') = ISNULL(F1.hc2, '''') and f.sol_id=F1.hc3 and F.TyLe=F1.tl3 and F.TL1=F1.tl1   ');
      SQL.Add('WHERE Curr_weight>0  and USERDATE between   '''+formatdatetime('yyyy/MM/dd',DTP1.Date)+' '+formatdatetime('HH:mm:ss',DTP3.Time)+''' ');
      SQL.Add(' and '+''''+formatdatetime('yyyy/MM/dd',DTP2.Date)+' '+formatdatetime('HH:mm:ss',DTP4.Time)+'''    ');
      SQL.Add(' and idDetail ='''+edit1.Text+''' ');
      SQL.Add('order by userdate desc ');
    Open;
  end; // ? dùng firstPart thay vì Edit1.Text
    Edit1.Clear;

    Key := #0; // tránh beep
  end;
end;


procedure TCheckLean1.Button1Click(Sender: TObject);
begin
  with Query1 do
  begin
    Close;
    SQL.Clear;
      SQL.add(' SELECT  A.*, F1.name  ');
      SQL.add('FROM Ch_Formulation_Details_HK A');
      SQL.add('left join Ch_Formulation_HK F on A.F_id=F.id  ');
      SQL.add('left join Ch_Formula F1  on F.inv_id=F1.hc1 AND ISNULL(F.inv_id1, '''') = ISNULL(F1.hc2, '''') and f.sol_id=F1.hc3 and F.TyLe=F1.tl3 and F.TL1=F1.tl1   ');
       SQL.Add('WHERE Curr_weight>0  and USERDATE between   '''+formatdatetime('yyyy/MM/dd',DTP1.Date)+' '+formatdatetime('HH:mm:ss',DTP3.Time)+''' ');
       SQL.Add(' and '+''''+formatdatetime('yyyy/MM/dd',DTP2.Date)+' '+formatdatetime('HH:mm:ss',DTP4.Time)+'''    ');
       SQL.Add('order by userdate desc ');
    //ParamByName('pidDetail').AsString := AID;
    Open;
  end;
end;



function StartOfTheDay(ADate: TDateTime): TDateTime;
begin
  Result := Int(ADate);  
end;

function EndOfTheDay(ADate: TDateTime): TDateTime;
begin
  Result := Int(ADate) + 1 - (1 / 86400); 
end;


procedure TCheckLean1.FormCreate(Sender: TObject);
var NDate:TDate;
  StartDateTime, EndDateTime: TDateTime;
begin
with Query2 do
  begin
    active:=false;
    sql.Clear;
    sql.add('select getdate() as NDate ');
    active:=true;
    NDate:=fieldbyname('NDate').value;
    active:=false;
  end;
DTP1.date:=NDate;
DTP3.time:=startoftheday(NDate);
DTP2.date:=NDate;
DTP4.time:=endoftheday(NDate);
 StartDateTime := DTP1.Date + DTP3.Time;
  EndDateTime := DTP2.Date + DTP4.Time;
end;
procedure TCheckLean1.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  Action := caFree;
  //CheckLean1:=nil;
end;

procedure TCheckLean1.Button2Click(Sender: TObject);
var eclApp,WorkBook:olevariant;
    i,j:integer;
begin
  if Query1.Active then
  begin
    if Query1.recordcount=0 then
    begin
      showmessage('No record.');
      abort;
    end;
  end else
  begin
    showmessage('No record.');
    abort;
  end;

  try
    eclApp:=CreateOleObject('Excel.Application');
    WorkBook:=CreateOleObject('Excel.Sheet');
  except
    Application.MessageBox('NO Microsoft   Excel','Microsoft   Excel',MB_OK+MB_ICONWarning);
    Exit;
  end;

  try
    WorkBook:=eclApp.workbooks.Add;
    for i:=0 to DBGridEh1.Columns.Count-1 do
    begin
      eclApp.Cells(1,i+1):=DBGridEh1.Columns[i].Title.Caption;
      eclApp.Cells.Cells.item[1,i+1].font.name := 'Calibri';
      eclApp.Cells.Cells.item[1,i+1].font.size:='10';
    end;
    Query1.First;
    j:=2;
    while not Query1.Eof   do
    begin
      eclApp.Cells(j,1):=j-1;
      for i:=0 to DBGridEh1.Columns.Count-1 do
      begin
         eclApp.Cells(j,i+1):=DBGridEh1.Fields[i].Value;
         eclApp.Cells.Cells.item[j,i+1].font.size:='10';
         eclApp.Cells.Cells.item[j,i+1].font.name := 'Calibri';
      end;
      Query1.Next;
      inc(j);
    end;
    eclapp.columns.autofit;
    showmessage('Succeed.');
    eclApp.Visible:=True;
  except
    on   F:Exception   do
      showmessage(F.Message);
  end;

end;



procedure TCheckLean1.Timer1Timer(Sender: TObject);
 var
  s, firstPart: string;
  p: Integer;
  DummyKey: char;
begin
  Timer1.Enabled := False; // t?t ð? không l?p
  DummyKey := #13;
  s := Trim(Edit1.Text);
  if s = '' then Exit;

  // t?m d?u ph?y ð?u tiên
  p := Pos(',', s);
  if p > 0 then
    firstPart := Copy(s, 1, p - 1)
  else
    firstPart := s;

  Edit1.Clear;
  Edit1KeyPress(Edit1, DummyKey);
end;

procedure TCheckLean1.Edit1Change(Sender: TObject);
begin
  Timer1.Enabled := False;
  Timer1.Enabled := True;
end;


end.
