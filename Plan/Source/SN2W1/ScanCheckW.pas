unit ScanCheckW;

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
    DS1: TDataSource;
    Button1: TButton;
    Timer1: TTimer;
    Label2: TLabel;
    DTP1: TDateTimePicker;
    Label3: TLabel;
    DTP2: TDateTimePicker;
    DTP3: TDateTimePicker;
    DTP4: TDateTimePicker;
    Query2: TQuery;
    Query1: TQuery;
    Query1id: TFloatField;
    Query1create_time: TDateTimeField;
    Query1maxweight_ch: TFloatField;
    Query1maxweight_ch1: TFloatField;
    Query1maxweight_sol: TFloatField;
    Query1curr_weight_ch: TFloatField;
    Query1curr_weight_ch1: TFloatField;
    Query1curr_weight_sol: TFloatField;
    Query1event_time: TDateTimeField;
    Query1userID: TStringField;
    Query1inv_id: TStringField;
    Query1inv_id1: TStringField;
    Query1sol_id: TStringField;
    Query1YN: TStringField;
    Query1TyLe: TFloatField;
    Query1GSBH: TStringField;
    Query1temperature: TStringField;
    Query1humidity: TStringField;
    Query1Batch_number: TStringField;
    Query1Batch_number_sol: TStringField;
    Query1number_of_spins: TStringField;
    Query1Name: TStringField;
    Query1tong: TFloatField;
    Query1TL1: TFloatField;
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
   with query1 do
   begin
   active:=false;
        // B1: Xóa SQL cu và gán SQL m?i
        SQL.Clear;
        SQL.Add('SELECT F.*,');
        SQL.Add(' F1.name, ');
        SQL.Add('    ISNULL(sum(curr_weight_ch+ curr_weight_ch1+curr_weight_sol),0) as tong');
        SQL.Add('FROM ch_Formulation_HK F left join Ch_Formula F1 on F.inv_id=F1.hc1 AND ISNULL(F.inv_id1, '''') = ISNULL(F1.hc2, '''') and f.sol_id=F1.hc3 and F.TyLe=F1.tl3 and F.TL1=F1.tl1 ');
        SQL.Add('WHERE F.id='''+s+''' ');
        SQL.Add('group by F.id, F.create_time, F.maxweight_ch, F.maxweight_ch1, F.maxweight_sol, F.curr_weight_ch,');
        SQL.Add(' F.curr_weight_ch1, F.curr_weight_sol, F.event_time, F.userID, F.inv_id, F.inv_id1, F.sol_id, F.YN, F.TyLe, F.TL1, F.GSBH, F.temperature, F.humidity, F.Batch_number,F.Batch_number_sol, F.number_of_spins,F1.name');
        SQL.Add('ORDER BY F.create_time DESC');
        active:=true;
    end;


   { // tìm d?u ph?y d?u tiên
    p := Pos(',', s);

    if p > 0 then
      firstPart := Copy(s, 1, p - 1) // l?y t? d?u d?n tru?c d?u ph?y
    else
      firstPart := s; // n?u không có d?u ph?y thì l?y nguyên chu?i

    Edit1.Text := firstPart;

    ShowDataByID(firstPart);   // ? dùng firstPart thay vì Edit1.Text
    Edit1.Clear;

    Key := #0; // tránh beep }
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
        SQL.Add('SELECT F.*,');
        SQL.Add(' F1.name, ');
        SQL.Add('    ISNULL(sum(curr_weight_ch+ curr_weight_ch1+curr_weight_sol),0) as tong');
        SQL.Add('FROM ch_Formulation_HK F left join Ch_Formula F1 on F.inv_id=F1.hc1 AND ISNULL(F.inv_id1, '''') = ISNULL(F1.hc2, '''') and f.sol_id=F1.hc3 and F.TyLe=F1.tl3 and F.TL1=F1.tl1 ');
        SQL.Add('where curr_weight_sol>0 and curr_weight_ch>0    ');
        sql.add('   and  create_time between   '''+formatdatetime('yyyy/MM/dd',DTP1.Date)+' '+formatdatetime('HH:mm:ss',DTP3.Time)+'''');
        sql.add('           and '+''''+formatdatetime('yyyy/MM/dd',DTP2.Date)+' '+formatdatetime('HH:mm:ss',DTP4.Time)+''' ');
        SQL.Add('group by F.id, F.create_time, F.maxweight_ch, F.maxweight_ch1, F.maxweight_sol, F.curr_weight_ch,');
        SQL.Add(' F.curr_weight_ch1, F.curr_weight_sol, F.event_time, F.userID, F.inv_id, F.inv_id1, F.sol_id, F.YN, F.TyLe, F.TL1, F.GSBH, F.temperature, F.humidity, F.Batch_number,F.Batch_number_sol, F.number_of_spins,F1.name');
        SQL.Add('ORDER BY F.create_time DESC');
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
  //ShowDataByID(firstPart);
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
