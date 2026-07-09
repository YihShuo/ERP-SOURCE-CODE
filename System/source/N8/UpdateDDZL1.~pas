unit UpdateDDZL1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DB, DBTables, GridsEh, DBGridEh, StdCtrls, Buttons, ExtCtrls, ComObj;

type
  TUpdateDDZL = class(TForm)
    Panel1: TPanel;
    Label1: TLabel;
    Label3: TLabel;
    BB1: TBitBtn;
    BB3: TBitBtn;
    BB4: TBitBtn;
    BB5: TBitBtn;
    BB6: TBitBtn;
    Button1: TButton;
    edtDDBH: TEdit;
    edtUSERNAME: TEdit;
    DBGrid1: TDBGridEh;
    Query1: TQuery;
    DS1: TDataSource;
    UpSQL1: TUpdateSQL;
    Qtemp: TQuery;
    Query1DDBH: TStringField;
    Query1YN: TStringField;
    OpenDialog1: TOpenDialog;
    procedure BB1Click(Sender: TObject);
    procedure BB4Click(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure Query1AfterOpen(DataSet: TDataSet);
    procedure BB3Click(Sender: TObject);
    procedure BB5Click(Sender: TObject);
    procedure BB6Click(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormDestroy(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  UpdateDDZL: TUpdateDDZL;

implementation

uses main1;

{$R *.dfm}

procedure TUpdateDDZL.BB1Click(Sender: TObject);
var
  ExcelApp, Workbook, Sheet: Variant;
  Row: Integer;
  DDBHValue: string;
begin
  OpenDialog1.Filter := 'Excel Files|*.xls;*.xlsx';
  OpenDialog1.Title := 'Chon file Excel';

  if not OpenDialog1.Execute then
    Exit;

  Query1.Close;
  Query1.SQL.Clear;
  Query1.SQL.Add('SELECT DDBH, YN FROM DDZL WHERE 1=0');
  Query1.CachedUpdates := True;
  Query1.Open;

  ExcelApp := CreateOleObject('Excel.Application');

  try
    Workbook := ExcelApp.Workbooks.Open(OpenDialog1.FileName);
    Sheet := Workbook.WorkSheets[1];

    Row := 1;

    while Trim(VarToStr(Sheet.Cells[Row, 1].Value)) <> '' do
    begin
      DDBHValue := Trim(VarToStr(Sheet.Cells[Row, 1].Value));

      Query1.Append;
      Query1.FieldByName('DDBH').Value := DDBHValue;
      Query1.FieldByName('YN').Value := '1';
      Query1.Post;

      Inc(Row);
    end;

    Workbook.Close(False);

    ShowMessage('Import xong.');
  except
    on E: Exception do
      ShowMessage('Loi import: ' + E.Message);
  end;

  ExcelApp.Quit;
  ExcelApp := Unassigned;

  BB4.Enabled := true;
  BB5.Enabled := true;
end;

procedure TUpdateDDZL.BB4Click(Sender: TObject);
var
  i: Integer;
begin
  if Trim(edtUSERNAME.Text) = '' then
  begin
    ShowMessage('Dien nguoi yeu cau');
    Exit;
  end;
  
  Query1.First;
  for i := 1 to Query1.RecordCount do
  begin
    with QTemp do
    begin
      Active := False;
      SQL.Clear;

      SQL.Add('INSERT INTO BDelRec ');
      SQL.Add('VALUES (''DDZL'', '''+Query1.FieldByName('DDBH').AsString+''', '''+edtUSERNAME.Text+''', '''+main.Edit1.Text+''', ');
      SQL.Add(' ''SystemN8'', GETDATE()) ');
      ExecSQL;
    end;

    UpSQL1.Apply(ukModify);
    Query1.Next;
  end;

  query1.active:=false;
  query1.cachedupdates:=false;
  query1.requestlive:=false;

  BB4.Enabled := false;
  BB5.Enabled := false;
end;

procedure TUpdateDDZL.Button1Click(Sender: TObject);
begin
  with query1 do
    begin
      active:=false;
      sql.Clear;
      sql.add('select top 200 * ');
      sql.add('from DDZL');
      sql.add('where DDBH like '''+edtDDBH.Text+'%'' ');
      active:=true;
    end;
end;

procedure TUpdateDDZL.Query1AfterOpen(DataSet: TDataSet);
begin
  BB1.Enabled:=true;
  BB3.Enabled:=true;
end;

procedure TUpdateDDZL.BB3Click(Sender: TObject);
begin
with query1 do
  begin
    cachedupdates:=true;
    requestlive:=true;
    query1.edit;
  end;
bb4.enabled:=true;
bb5.enabled:=true;
end;

procedure TUpdateDDZL.BB5Click(Sender: TObject);
begin
with query1 do
  begin
    active:=false;
    cachedupdates:=false;
    requestlive:=false;
    active:=true;
  end;
bb4.enabled:=false;
bb5.enabled:=false; 
end;

procedure TUpdateDDZL.BB6Click(Sender: TObject);
begin
  Close;
end;

procedure TUpdateDDZL.FormClose(Sender: TObject; var Action: TCloseAction);
begin
if query1.requestlive then
  begin
    messagedlg('You have to save data first.',mtwarning,[mbyes],0);
    action:=canone;
  end
  else
   action:=Cafree;
end;

procedure TUpdateDDZL.FormDestroy(Sender: TObject);
begin
  UpdateDDZL := nil;
end;

end.
