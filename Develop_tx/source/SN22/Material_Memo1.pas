unit Material_Memo1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DBTables, Menus, DB, StdCtrls, ExtCtrls, GridsEh, DBGridEh, comobj;

type
  TMaterial_Memo = class(TForm)
    DBGridEh1: TDBGridEh;
    Panel2: TPanel;
    Label1: TLabel;
    Label2: TLabel;
    CLDHEdit: TEdit;
    YWPMEdit: TEdit;
    Button1: TButton;
    Query1: TQuery;
    Query1CLDH: TStringField;
    Query1ZWPM: TStringField;
    Query1YWPM: TStringField;
    Query1DWBH: TStringField;
    Query1CQDH: TStringField;
    Query1Memo: TStringField;
    Query1USERID: TStringField;
    Query1USERDATE: TDateTimeField;
    Query1YN: TStringField;
    DS1: TDataSource;
    Qtemp: TQuery;
    PopupMenu1: TPopupMenu;
    Modify1: TMenuItem;
    Save1: TMenuItem;
    Cancel1: TMenuItem;
    Excel1: TMenuItem;
    UpdateSQL1: TUpdateSQL;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormDestroy(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure Modify1Click(Sender: TObject);
    procedure Save1Click(Sender: TObject);
    procedure Cancel1Click(Sender: TObject);
    procedure Excel1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Material_Memo: TMaterial_Memo;

implementation

uses SampleOrder_Mat1, main1;

{$R *.dfm}

procedure TMaterial_Memo.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  Action:=cafree;
  if Assigned(SampleOrder_Mat) then
    SampleOrder_Mat.Button1Click(nil);
end;

procedure TMaterial_Memo.FormDestroy(Sender: TObject);
begin
  Material_Memo:=nil;
end;

procedure TMaterial_Memo.Button1Click(Sender: TObject);
begin
  with Query1 do
  begin
    active:=false;
    SQL.Clear;
    SQL.Add(' select CLDH,ZWPM,YWPM,DWBH,CQDH,CLZL_Memo.Memo,CLZL_Memo.USERID,CLZL_Memo.USERDATE,CLZL_Memo.YN from CLZL ');
    SQL.Add(' left join CLZL_Memo on CLZL_Memo.CLBH = CLZL.CLDH');
    SQL.Add(' where ((Substring(CLDH,1,3)=''V90'') or CLZL.YN in (''1'',''2'')) ');
    SQL.Add(' and (CLDH not like ''V90M%'') and (CLDH not like ''V90N%'') ');
    if CLDHEdit.Text <> '' then
      SQL.Add(' and CLDH like '''+CLDHEdit.Text+'%'' ');
    if YWPMEdit.Text <> '' then
      SQL.Add(' and YWPM like ''%'+YWPMEdit.Text+'%'' ');
    SQL.Add('order by CLDH ');
    //funcObj.WriteErrorLog(sql.Text);
    Active:=true;
  end;

  Modify1.Enabled:=true;
end;

procedure TMaterial_Memo.Modify1Click(Sender: TObject);
begin
  with Query1 do
  begin
    RequestLive := true;
    CachedUpdates := true;
    Edit;
  end;
  Save1.Enabled := true;
  Cancel1.Enabled := true;
end;

procedure TMaterial_Memo.Save1Click(Sender: TObject);
var i: integer;
begin
  try
    Query1.First;
    for i := 1 to Query1.RecordCount do
    begin
      case Query1.UpdateStatus of
        usModified:
        begin
          with Qtemp do
          begin
            active:=false;
            SQL.Clear;
            SQL.Add('select * from CLZL_Memo');
            SQL.Add('where CLBH='''+Query1.fieldbyname('CLDH').AsString+''' ');
            active:=true;
          end;
          if Qtemp.RecordCount=0 then
          begin
            if Query1.FieldByName('Memo').AsString<>'' then
            begin
              with Qtemp do
              begin
                active:=false;
                SQL.Clear;
                SQL.Add('Insert into CLZL_Memo ');
                SQL.Add('(CLBH, Memo, USERID, USERDATE, YN) ');
                SQL.Add('Values ');
                sql.Add('('''+Query1.FieldByName('CLDH').AsString+''','''+Query1.FieldByName('Memo').AsString+''' ');
                sql.Add(','''+main.Edit1.Text+''' ,getdate(),''1'') ');
                //funcObj.WriteErrorLog(sql.Text);
                ExecSQL();
              end;
            end;
          end else
          begin
            if Query1.FieldByName('Memo').AsString='' then
            begin
              with Qtemp do
              begin
                active:=false;
                SQL.Clear;
                SQL.Add('Delete from CLZL_Memo ');
                SQL.Add('where CLBH='''+Query1.FieldByName('CLDH').AsString+''' ');
                //funcObj.WriteErrorLog(sql.Text);
                ExecSQL();
              end;
            end else
            begin
              with Qtemp do
              begin
                active:=false;
                SQL.Clear;
                SQL.Add('Update CLZL_Memo ');
                SQL.add('set Memo='''+Query1.FieldByName('Memo').AsString+''' ');
                SQL.Add(',USERID='''+main.Edit1.Text+''' ');
                SQL.Add(',USERDATE = getdate() ');
                SQL.Add('where CLBH='''+Query1.FieldByName('CLDH').AsString+''' ');
                //funcObj.WriteErrorLog(sql.Text);
                ExecSQL();
              end;
            end;
          end;
          //
        end;
      end; // end case
      Query1.Next;
    end; // end for
    Query1.Active := false;
    Query1.CachedUpdates := false;
    Query1.RequestLive := false;
    Query1.Active := true;
    Save1.Enabled := false;
    Cancel1.Enabled := false;
    ShowMessage('Succeed.');
  except
    MessageDlg('Have wrong, can not save data!', mtWarning, [mbyes], 0);
  end;
  
end;

procedure TMaterial_Memo.Cancel1Click(Sender: TObject);
begin
  with Query1 do
  begin
    Active := false;
    RequestLive := false;
    CachedUpdates := false;
    Active := true;
  end;
  Save1.Enabled := false;
  Cancel1.Enabled := false;
end;

procedure TMaterial_Memo.Excel1Click(Sender: TObject);
var
  eclApp, WorkBook: olevariant;
  i, j: integer;
begin
  if Query1.Active then
  begin
    if Query1.recordcount = 0 then
    begin
      ShowMessage('No record.');
      Abort;
    end;
  end
  else
  begin
    ShowMessage('No record.');
    Abort;
  end;
  //
  try
    eclApp := CreateOleObject('Excel.Application');
    WorkBook := CreateOleObject('Excel.Sheet');
  except
    Application.MessageBox('NO Microsoft   Excel', 'Microsoft   Excel', MB_OK + MB_ICONWarning);
    Exit;
  end;
  //
  try
    WorkBook := eclApp.workbooks.Add;
    for i := 0 to DBGridEh1.Columns.Count - 1 do
    begin
      eclApp.Cells(1, i + 1) := DBGridEh1.Columns[i].Title.Caption;
      eclApp.Cells.Cells.item[1, i + 1].font.name := 'Calibri';
      eclApp.Cells.Cells.item[1, i + 1].font.size := '10';
    end;
    //
    Query1.First;
    j := 2;
    while not Query1.Eof do
    begin
      eclApp.Cells(j, 1) := j - 1;
      for i := 0 to DBGridEh1.Columns.Count - 1 do
      begin
        eclApp.Cells(j, i + 1) := DBGridEh1.Fields[i].Value;
        eclApp.Cells.Cells.item[j, i + 1].font.name := 'Calibri';
        eclApp.Cells.Cells.item[j, i + 1].font.size := '10';
      end;
      Query1.Next;
      inc(j);
    end;
    eclApp.columns.autofit;
    ShowMessage('Succeed.');
    eclApp.Visible := True;
  except
    on F: Exception do
      showmessage(F.Message);
  end;
  
end;

end.
