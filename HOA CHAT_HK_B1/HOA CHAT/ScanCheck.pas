unit ScanCheck;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DB, DBTables, GridsEh, DBGridEh, StdCtrls, ExtCtrls, ComCtrls;

type
  TCheckScan = class(TForm)
    Panel1: TPanel;
    Label1: TLabel;
    Edit1: TEdit;
    DBGridEh1: TDBGridEh;
    Query1: TQuery;
    DS1: TDataSource;
    Query1id: TFloatField;
    Query1create_time: TDateTimeField;
    Query1name_vi: TStringField;
    Query1name_tw: TStringField;
    Query1maxweight_ch: TFloatField;
    Query1curr_weight_ch: TFloatField;
    Query1name_vi_1: TStringField;
    Query1name_tw_1: TStringField;
    Query1maxweight_sol: TFloatField;
    Query1curr_weight_sol: TFloatField;
    Query1notes: TStringField;
    Query1event_time: TDateTimeField;
    Query1userID: TStringField;
    Query1honhop: TStringField;
    Query1total_weight: TFloatField;
    Query1event_time_plus: TDateTimeField;
    Button1: TButton;
    Timer1: TTimer;
    Label2: TLabel;
    DTP1: TDateTimePicker;
    Label3: TLabel;
    DTP2: TDateTimePicker;
    DTP3: TDateTimePicker;
    DTP4: TDateTimePicker;
    Query2: TQuery;
    procedure Edit1KeyPress(Sender: TObject; var Key: Char);
     procedure ShowDataByID(const AID: string);
    procedure Button1Click(Sender: TObject);
    procedure Edit1Change(Sender: TObject);
    procedure Timer1Timer(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  CheckScan: TCheckScan;

implementation

{$R *.dfm}

procedure TCheckScan.Edit1KeyPress(Sender: TObject; var Key: Char);
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

procedure TCheckScan.ShowDataByID(const AID: string);
begin
  with Query1 do
  begin
    Close;
    SQL.Clear;
    SQL.Add('SELECT a.id,b.name_vi as honhop,ISNULL(curr_weight_ch,0) + ISNULL(curr_weight_sol,0) AS total_weight,create_time,b.name_vi,b.name_tw, ');
    SQL.Add(' a.maxweight_ch,curr_weight_ch,c.name_vi,c.name_tw,a.maxweight_sol,curr_weight_sol,b.notes,event_time,userID, CASE  ');
    SQL.Add(' WHEN b.notes = ''1H'' THEN DATEADD(HOUR, 1, event_time)   ');
    SQL.Add(' WHEN b.notes = ''2H'' THEN DATEADD(HOUR, 2, event_time)  ');
    SQL.Add(' ELSE event_time   ');
    SQL.Add(' END AS event_time_plus     ');
    SQL.Add('FROM ch_Formulation_HK a  ');
    SQL.Add('INNER JOIN	 dbo.Ch_Inventory_HK b ON a.inv_id=b.id ');
    SQL.Add(' INNER JOIN dbo.Ch_Solvents_HK c ON a.sol_id=c.id  ');
    SQL.Add('WHERE a.id = :pID');
    ParamByName('pID').AsString := AID;
    Open;
  end;
end;
procedure TCheckScan.Button1Click(Sender: TObject);
   begin
  with Query1 do
  begin
    Close;
    SQL.Clear;
    SQL.Add('SELECT a.id,b.name_vi as honhop,ISNULL(curr_weight_ch,0) + ISNULL(curr_weight_sol,0) AS total_weight,create_time,b.name_vi,b.name_tw, ');
    SQL.Add(' a.maxweight_ch,curr_weight_ch,c.name_vi,c.name_tw,a.maxweight_sol,curr_weight_sol,b.notes,event_time,userID, CASE  ');
    SQL.Add(' WHEN b.notes = ''1H'' THEN DATEADD(HOUR, 1, event_time)   ');
    SQL.Add(' WHEN b.notes = ''2H'' THEN DATEADD(HOUR, 2, event_time)  ');
    SQL.Add(' ELSE event_time   ');
    SQL.Add(' END AS event_time_plus     ');
    SQL.Add('FROM ch_Formulation_HK a  ');
    SQL.Add('INNER JOIN	 dbo.Ch_Inventory_HK b ON a.inv_id=b.id ');
    SQL.Add(' INNER JOIN dbo.Ch_Solvents_HK c ON a.sol_id=c.id  ');
    SQL.Add('where curr_weight_sol>0 and curr_weight_ch>0    ');
    sql.add('   and  create_time between   '''+formatdatetime('yyyy/MM/dd',DTP1.Date)+' '+formatdatetime('HH:mm:ss',DTP3.Time)+'''');
    sql.add('           and '+''''+formatdatetime('yyyy/MM/dd',DTP2.Date)+' '+formatdatetime('HH:mm:ss',DTP4.Time)+''' ');
    SQL.Add('order by create_time desc ');
    //ParamByName('pID').AsString := AID;
    Open;
  end;
end;

procedure TCheckScan.Edit1Change(Sender: TObject);
begin
   Timer1.Enabled := False;
  Timer1.Enabled := True; // reset l?i timer m?i khi g?
end;

procedure TCheckScan.Timer1Timer(Sender: TObject);
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

procedure TCheckScan.FormShow(Sender: TObject);
begin
 DTP1.Date := Now;
 DTP2.Date := Now;
end;

function StartOfTheDay(ADate: TDateTime): TDateTime;
begin
  Result := Int(ADate);  
end;

function EndOfTheDay(ADate: TDateTime): TDateTime;
begin
  Result := Int(ADate) + 1 - (1 / 86400); 
end;


procedure TCheckScan.FormCreate(Sender: TObject);
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
procedure TCheckScan.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  Action := caFree;
//  CheckScan:=nil;
end;

end.
