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
    Query1USERDATE: TDateTimeField;
    Query1idDetail: TFloatField;
    Query1lean_name: TStringField;
    Query1F_id: TFloatField;
    Query1curr_weight: TFloatField;
    Query1shift: TStringField;
    Query1YN: TStringField;
    Query1name_vi: TStringField;
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
    Query1curr_weight_residual: TFloatField;
    Query1residual_time: TDateTimeField;
    Query1Not_valid: TIntegerField;
    procedure ShowDataByID(const AID: string);
    procedure Edit1KeyPress(Sender: TObject; var Key: Char);
    procedure Button1Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure Button2Click(Sender: TObject);
    procedure Timer1Timer(Sender: TObject);
    procedure Edit1Change(Sender: TObject);
    procedure DBGridEh1GetCellParams(Sender: TObject; Column: TColumnEh;
      AFont: TFont; var Background: TColor; State: TGridDrawState);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  CheckLean1: TCheckLean1;

implementation

{$R *.dfm}


procedure TCheckLean1.ShowDataByID(const AID: string);
begin
  with Query1 do
  begin
    Close;
    SQL.Clear;
      SQL.Add('select ');
       SQL.Add('	idDetail,');
       SQL.Add('    lean_name,');
       SQL.Add('    F_id,');
       SQL.Add('    curr_weight,');
       SQL.Add('    shift,');
       SQL.Add('    USERDATE,');
       SQL.Add('    YN,');
       SQL.Add('    name_vi,');
       SQL.Add('    curr_weight_residual,');
       SQL.Add('    residual_time,');
       SQL.Add('	(case when check_time = 0 and check_weight_residual = 0 then 1 else 0 end) as Not_valid');
       SQL.Add(' from ');
       SQL.Add(' ( ');
       SQL.Add('SELECT ');
       SQL.Add('    idDetail,');
       SQL.Add('    lean_name,');
       SQL.Add('    a.F_id,');
       SQL.Add('    curr_weight,');
       SQL.Add('    shift,');
       SQL.Add('    USERDATE,');
       SQL.Add('    a.YN,');
       SQL.Add('    name_vi,');
       SQL.Add('    a.curr_weight_residual,');
       SQL.Add('    a.residual_time,');
       SQL.Add('    CASE ');
       SQL.Add('        WHEN  CHARINDEX(''-'', shift) > 0 THEN ');
       SQL.Add('            CASE ');
       SQL.Add('                WHEN (CONVERT(time, a.residual_time )');
       SQL.Add('                     BETWEEN ');
       SQL.Add('                         CAST(LEFT(shift, CHARINDEX(''-'', shift) - 1) AS time)');
       SQL.Add('                         AND ');
       SQL.Add('                         CAST(SUBSTRING(shift, CHARINDEX(''-'', shift) + 1, 5) AS time)) ');
       SQL.Add('		THEN 1 ELSE 0 END');
       SQL.Add('    ELSE 0 END AS check_time,');
       SQL.Add('    (case when isnull(a.curr_weight_residual, 0) = 0  then 1 else 0 end) as check_weight_residual');
       SQL.Add('FROM Ch_Formulation_Details_HK A ');
       SQL.Add('INNER JOIN Ch_Departments_HK B ON A.id_dept = B.id_dept ');
       SQL.Add('INNER JOIN Ch_Formulation_HK d ON d.id = a.F_id');
       SQL.Add('LEFT JOIN Ch_Inventory_HK c ON d.inv_id = c.id');
       SQL.Add(') D');
      SQL.Add('WHERE idDetail= :pidDetail');
    ParamByName('pidDetail').AsString := AID;
    Open;
  end;
end;

procedure TCheckLean1.Edit1KeyPress(Sender: TObject; var Key: Char);
var
  s, firstPart: string;
  p: Integer;
begin
  if Key = #13 then  // khi Enter sau khi gõ
  begin
    s := Trim(Edit1.Text);

    // tìm d?u ph?y d?u tiên
    p := Pos(',', s);

    if p > 0 then
      firstPart := Copy(s, 1, p - 1) // l?y t? d?u d?n tru?c d?u ph?y
    else
      firstPart := s; // n?u không có d?u ph?y thì l?y nguyên chu?i

    Edit1.Text := firstPart;

    ShowDataByID(firstPart);   // ? dùng firstPart thay vì Edit1.Text
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
      SQL.Add('select ');
       SQL.Add('	idDetail,');
       SQL.Add('    lean_name,');
       SQL.Add('    F_id,');
       SQL.Add('    curr_weight,');
       SQL.Add('    shift,');
       SQL.Add('    USERDATE,');
       SQL.Add('    YN,');
       SQL.Add('    name_vi,');
       SQL.Add('    curr_weight_residual,');
       SQL.Add('    residual_time,');
       SQL.Add('	(case when check_time = 0 and check_weight_residual = 0 then 1 else 0 end) as Not_valid');
       SQL.Add(' from ');
       SQL.Add(' ( ');
       SQL.Add('SELECT ');
       SQL.Add('    idDetail,');
       SQL.Add('    lean_name,');
       SQL.Add('    a.F_id,');
       SQL.Add('    curr_weight,');
       SQL.Add('    shift,');
       SQL.Add('    USERDATE,');
       SQL.Add('    a.YN,');
       SQL.Add('    name_vi,');
       SQL.Add('    a.curr_weight_residual,');
       SQL.Add('    a.residual_time,');
       SQL.Add('    CASE ');
       SQL.Add('        WHEN  CHARINDEX(''-'', shift) > 0 THEN ');
       SQL.Add('            CASE ');
       SQL.Add('                WHEN (CONVERT(time, a.residual_time )');
       SQL.Add('                     BETWEEN ');
       SQL.Add('                         CAST(LEFT(shift, CHARINDEX(''-'', shift) - 1) AS time)');
       SQL.Add('                         AND ');
       SQL.Add('                         CAST(SUBSTRING(shift, CHARINDEX(''-'', shift) + 1, 5) AS time)) ');
       SQL.Add('		THEN 1 ELSE 0 END');
       SQL.Add('    ELSE 0 END AS check_time,');
       SQL.Add('    (case when isnull(a.curr_weight_residual, 0) = 0  then 1 else 0 end) as check_weight_residual');
       SQL.Add('FROM Ch_Formulation_Details_HK A ');
       SQL.Add('INNER JOIN Ch_Departments_HK B ON A.id_dept = B.id_dept ');
       SQL.Add('INNER JOIN Ch_Formulation_HK d ON d.id = a.F_id');
       SQL.Add('LEFT JOIN Ch_Inventory_HK c ON d.inv_id = c.id');
       SQL.Add(') D');
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
begin
  Timer1.Enabled := False; // t?t ð? không l?p

  s := Trim(Edit1.Text);
  if s = '' then Exit;

  // t?m d?u ph?y ð?u tiên
  p := Pos(',', s);
  if p > 0 then
    firstPart := Copy(s, 1, p - 1)
  else
    firstPart := s;

  Edit1.Clear;
  ShowDataByID(firstPart);
end;

procedure TCheckLean1.Edit1Change(Sender: TObject);
begin
  Timer1.Enabled := False;
  Timer1.Enabled := True;
end;

procedure TCheckLean1.DBGridEh1GetCellParams(Sender: TObject;
  Column: TColumnEh; AFont: TFont; var Background: TColor;
  State: TGridDrawState);
begin
if Query1.FieldByName('Not_valid').value = 1  then
  begin
    DBGridEh1.canvas.font.color:=clRed;
end;
 end;

end.
