unit R_Hoachat_dp;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, GridsEh, DBGridEh, DB, DBTables, Mask, DBCtrls, StdCtrls,
  OleCtrls, MSCommLib_TLB, ExtCtrls, ComCtrls;

type
  TR_hoachat = class(TForm)
    Query1: TQuery;
    DataSource1: TDataSource;
    Panel1: TPanel;
    Label2: TLabel;
    Label4: TLabel;
    MSComm1: TMSComm;
    Button1: TButton;
    Button3: TButton;
    Panel3: TPanel;
    Button2: TButton;
    DBGridEh1: TDBGridEh;
    Query2: TQuery;
    Query3: TQuery;
    Timer1: TTimer;
    DTP1: TDateTimePicker;
    Query2id: TStringField;
    Query2create_time: TDateTimeField;
    Query2name_vi: TStringField;
    Query2name_tw: TStringField;
    Query2maxweight_ch: TFloatField;
    Query2name_vi_1: TStringField;
    Query2name_tw_1: TStringField;
    Query2maxweight_sol: TFloatField;
    Query2notes: TStringField;
    Query2curr_weight_ch: TFloatField;
    Query2curr_weight_sol: TFloatField;
    Query2event_time: TDateTimeField;
    procedure cbb2Change(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure DTP1Change(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  R_hoachat: TR_hoachat;
  workDate: TDateTime;

implementation

{$R *.dfm}



procedure TR_hoachat.cbb2Change(Sender: TObject);
begin
 { with Query3 do
  begin
    Close;
    SQL.Clear;
    SQL.Add('SELECT id FROM Ch_Solvents');
    SQL.Add('WHERE name_vi = ''' + cbb2.Text + '''');
    Open;
    if not Eof then
    begin
      DBEdit3.Text := FieldByName('id').AsString;
    end
    else
    begin
      ShowMessage('Khong tim thay ID tuong ung!');
    end;   }
   {with Query2 do
   begin
    Close;
    SQL.Clear;
    SQL.Add('a.id,create_time,b.name_vi,b.name_tw,a.maxweight_ch,c.name_vi,c.name_tw,a.maxweight_sol,b.notes,curr_weight_ch,curr_weight_sol,event_time,userID ');
    SQL.Add('FROM ch_Formulation a ');
    SQL.Add('INNER JOIN	 dbo.Ch_Inventory b ON a.inv_id=b.id ');
    SQL.Add('INNER JOIN dbo.Ch_Solvents c ON a.sol_id=c.id ');
    SQL.Add('WHERE CAST(create_time AS DATE) = :CreateDate');
    ParamByName('CreateDate').AsDate := DTP1.Date;
   //QL.Add('AND c.id = ''' + DBEdit3.Text + ''' ');
   // ShowMessage(SQL.Text);
    Open;
    //if RecordCount = 0 then
   // begin
      //ShowMessage('Cong thuc sai!');
     // Exit;
    //end;
   // DataSource1.DataSet := Query2;
    //ShowMessage('Success!');
 end;    }
end;

procedure TR_hoachat.FormCreate(Sender: TObject);
var NDate:TDate;
begin
with Query1 do
  begin
    active:=false;
    sql.Clear;
    sql.add('select getdate() as NDate ');
    active:=true;
    NDate:=fieldbyname('NDate').value;
    active:=false;
  end;
DTP1.date:=NDate;
 if Assigned(Query2.FieldByName('create_time')) then
    TDateTimeField(Query2.FieldByName('create_time')).DisplayFormat := 'yyyy-mm-dd hh:nn:ss';
end;

procedure TR_hoachat.DTP1Change(Sender: TObject);
var
  StartDate, EndDate: TDateTime;
begin
  StartDate := Trunc(DTP1.Date);                  // Ngày ch?n, 00:00:00
  EndDate   := StartDate + 1;

 with Query2 do
   begin
    Close;
    SQL.Clear;
    SQL.Add('SELECT a.id,create_time,b.name_vi,b.name_tw,a.maxweight_ch,c.name_vi,c.name_tw,a.maxweight_sol,b.notes,curr_weight_ch,curr_weight_sol,event_time,userID ');
    SQL.Add('FROM ch_Formulation a ');
    SQL.Add('INNER JOIN	 dbo.Ch_Inventory b ON a.inv_id=b.id ');
    SQL.Add('INNER JOIN dbo.Ch_Solvents c ON a.sol_id=c.id ');
    SQL.Add('WHERE create_time >= :StartDate AND create_time < :EndDate');  // nh? có d?u :
    ParamByName('StartDate').AsDateTime := StartDate;
    ParamByName('EndDate').AsDateTime   := EndDate;
    //ShowMessage(SQL.Text);
    Open;
end;
end;
end.
