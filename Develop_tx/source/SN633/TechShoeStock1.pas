unit TechShoeStock1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DB, StdCtrls, ComCtrls, GridsEh, DBGridEh, ExtCtrls, Menus,
  DBTables, DateUtils, Comobj ,IniFiles;

type
  TTechShoeStock = class(TForm)
    EXEQry: TQuery;
    Query2: TQuery;
    DS2: TDataSource;
    PC1: TPageControl;
    TS2: TTabSheet;
    Panel1: TPanel;
    Label3: TLabel;
    Edit2: TEdit;
    Button1: TButton;
    Button4: TButton;
    DBGridEh2: TDBGridEh;
    Button6: TButton;
    Button8: TButton;
    Query2KCYEAR: TStringField;
    Query2KCMONTH: TStringField;
    Query2CKBH: TStringField;
    Query2YPDH: TStringField;
    Query2Article: TStringField;
    Query2CTS: TStringField;
    Query2Qty: TFloatField;
    Query2Memo: TStringField;
    Query2UserID: TStringField;
    Query2UserDate: TDateTimeField;
    Query2YN: TStringField;
    Label2: TLabel;
    CBX1: TComboBox;
    Label13: TLabel;
    CBX2: TComboBox;
    PopupMenu1: TPopupMenu;
    Modify1: TMenuItem;
    Save1: TMenuItem;
    Cancel1: TMenuItem;
    UpdateSQL1: TUpdateSQL;
    CheckBox1: TCheckBox;
    Button2: TButton;
    Delete1: TMenuItem;
    DeleteAll1: TMenuItem;
    procedure FormDestroy(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure Button1Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure Button4Click(Sender: TObject);
    procedure Button6Click(Sender: TObject);
    procedure Button8Click(Sender: TObject);
    procedure Modify1Click(Sender: TObject);
    procedure Cancel1Click(Sender: TObject);
    procedure Save1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure Delete1Click(Sender: TObject);
    procedure DeleteAll1Click(Sender: TObject);
    procedure DBGridEh2GetCellParams(Sender: TObject; Column: TColumnEh;
      AFont: TFont; var Background: TColor; State: TGridDrawState);
  private
    { Private declarations }
    procedure ExportExcel(Query:TQuery);
  public
    { Public declarations }
  end;

var
  TechShoeStock: TTechShoeStock;

implementation
  uses main1, SampleFinishShoeStock_Detail1, FunUnit,
  SampleFinishStock_Print1, TechShoeStock_Print1, ImportTechShoe1;
{$R *.dfm}

procedure TTechShoeStock.FormDestroy(Sender: TObject);
begin
  TechShoeStock:=nil;
end;

procedure TTechShoeStock.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  Action:=CaFree;
end;


procedure TTechShoeStock.Button1Click(Sender: TObject);
var iYear,iMonth,iDay:word;
    sYear,sMonth:string;

begin

  with Query2 do
  begin
    Active:=false;
    SQL.Clear;
    //
    SQL.Add('	Select * ');
    SQL.Add('	from ShoeTestMonth_Tech Tech');
    SQL.Add('	where Tech.KCYEAR='''+CBX1.Text+''' ');
    SQL.Add('	   and Tech.KCMONTH='''+CBX2.Text+''' ');
    SQL.Add('    and CKBH='''+main.Edit2.Text+''' ');
    if edit2.Text <> '' then
      SQL.Add('  and YPDH like '''+Edit2.Text+'%'' ');
    if checkbox1.Checked then
      SQL.Add('  and Qty >0 ');
    SQL.Add('order by Tech.CTS ');
    //FuncObj.WriteErrorLog(sql.Text);
    Active:=true;
  end;
end;

procedure TTechShoeStock.FormCreate(Sender: TObject);
var
  myYear, myMonth, myDay : Word;
  i,j,index:integer;
begin
   // Load year-month
  DecodeDate(Date(), myYear, myMonth, myDay);
  for i:=0 to CBX1.Items.Count-1 do
  begin
    if strtoint(CBX1.Items[i])=myYear then
    begin
      CBX1.ItemIndex:=i;
      break;
    end;
  end;
  for i:=0 to CBX2.Items.Count-1 do
  begin
    if strtoint(CBX2.Items[i])=myMonth then
    begin
      CBX2.ItemIndex:=i;
      break;
    end;
  end;
end;



//¿é¥XExcel
procedure TTechShoeStock.ExportExcel(Query:TQuery);
var eclApp,WorkBook:olevariant;
    i,j:integer;
begin
    if Query.Active then
    begin
      if Query.recordcount=0 then
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
      eclApp.Cells(1,1):='NO';
      for   i:=1   to   Query.fieldcount   do
      begin
          eclApp.Cells(1,i+1):=Query.fields[i-1].FieldName;
      end;
      Query.First;
      j:=2;
      while   not  Query.Eof   do
        begin
          eclApp.Cells(j,1):=j-1;
          for   i:=1   to   Query.fieldcount   do
          begin
              if ((Query.Fields[i-1].FieldName = 'KCMONTH') or (Query.Fields[i-1].FieldName = 'CTS')) then
              begin
                eclApp.Cells[j,i+1].NumberFormatLocal:='@';
                eclApp.Cells(j,i+1):=Query.Fields[i-1].Value;
              end else
              begin
                eclApp.Cells(j,i+1):=Query.Fields[i-1].Value;
              end;
          end;
          Query.Next;
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
//

procedure TTechShoeStock.Button4Click(Sender: TObject);
begin
  ExportExcel(Query2);
end;

procedure TTechShoeStock.Button6Click(Sender: TObject);
begin
  TechShoeStock_Print:=TTechShoeStock_Print.Create(self);
  TechShoeStock_Print.Quickrep1.prepare;
  TechShoeStock_Print.PageN.caption:=inttostr(TechShoeStock_Print.quickrep1.QRPrinter.pagecount);
  TechShoeStock_Print.Quickrep1.preview;
  TechShoeStock_Print.Free;
end;

procedure TTechShoeStock.Button8Click(Sender: TObject);
begin
  ImportTechShoe:=TImportTechShoe.create(self);
  ImportTechShoe.show;
end;

procedure TTechShoeStock.Modify1Click(Sender: TObject);
begin
  if ((Query2.FieldByName('UserID').Value<> main.Edit1.Text) or (Now - Query2.FieldByName('UserDate').Value>1)) then
  begin
    showmessage('Can not modify');
    abort;
  end;
  with Query2 do
  begin
     RequestLive:=true;
     CachedUpdates:=true;
     edit;
  end;
  save1.Enabled:=true;
  Cancel1.Enabled:=true;
end;

procedure TTechShoeStock.Cancel1Click(Sender: TObject);
begin
   with Query2 do
  begin
    Active := false;
    RequestLive := false;
    CachedUpdates := false;
    Active := true;
  end;

  Save1.Enabled := false;
  Cancel1.Enabled := false;
end;

procedure TTechShoeStock.Save1Click(Sender: TObject);
var i : integer;
begin
  try
    Query2.First;
    for i := 1 to Query2.RecordCount do
    begin
      case Query2.UpdateStatus of
        usModified:
        begin
          if (Query2.FieldByName('YN').AsString = '1') then
          begin
            Query2.Edit;
            Query2.FieldByName('USERID').Value := main.Edit1.text;
            Query2.FieldByName('USERDATE').Value := Now;
            UpdateSQL1.Apply(ukModify);
          end;
          if (Query2.FieldByName('YN').AsString = '0') then
          begin
            with EXEQry do
            begin
              active:=false;
              sql.Clear;
              sql.add('insert into BDelRec ');
              sql.add('(TableName ,TNO,CLBH,OldID,DelID,DelDate)');
              sql.add('values ('+''''+'ShoeTestMonth_Tech'+''''+','+''''+Query2.fieldbyname('YPDH').Value+'''');
              sql.add(','+''''+Query2.fieldbyname('KCYEAR').Value+'***'+Query2.fieldbyname('KCMONTH').Value+''''+','+''''+Query2.fieldbyname('USERID').Value+''''+',');
              sql.add(''''+main.Edit1.Text+''''+',getdate())');
              execsql;
              active:=false;
            end;
            UpdateSQL1.Apply(ukdelete);
          end;
        end;
      end;
      Query2.Next;
    end;

    Query2.Active := false;
    Query2.CachedUpdates := false;
    Query2.RequestLive := false;
    Query2.Active := true;

    Save1.Enabled := false;
    Cancel1.Enabled := false;

  except
    MessageDlg('Have wrong, can not save data!', mtWarning, [mbyes], 0);
  end;
end;

procedure TTechShoeStock.Button2Click(Sender: TObject);
var   a:string;
      eclApp,WorkBook:olevariant;
      i,j:integer;
begin
   if  Query2.active  then
    begin
    try
      eclApp:=CreateOleObject('Excel.Application');
      WorkBook:=CreateOleObject('Excel.Sheet');
    except
      Application.MessageBox('No Microsoft   Excel','Microsoft   Excel',MB_OK+MB_ICONWarning);
      Exit;
    end;
    try
    WorkBook:=eclApp.workbooks.Add;
    eclApp.Cells(1,1):='STT';
    eclApp.Cells(1,2):='Khach Hang';
    eclApp.Cells(1,3):='RY';
    eclApp.Cells(1,4):='SKU';
    eclApp.Cells(1,5):='Ten mau ma';
    eclApp.Cells(1,6):='So thung';
    eclApp.Cells(1,7):='So doi';
    eclApp.Cells(1,8):='Xuong';
    eclApp.Cells(1,9):='So Khu';
    j:=2;
    while   not   Query2.Eof   do
      begin
        for   i:=0   to  Query2.fieldcount-1  do
        begin
          eclApp.Cells(j,1):=j-1;
          eclApp.Cells(j,2):='Converse';
          eclApp.Cells(j,3):=Query2.FieldByName('YPDH').AsString;
          eclApp.Cells(j,4):=Query2.FieldByName('Article').AsString;
          eclApp.Cells(j,5):='Giay mau giu lai';
          eclApp.Cells[j,6].NumberFormatLocal:='@';
          eclApp.Cells(j,6):=Query2.FieldByName('CTS').AsString;
          eclApp.Cells(j,7):=Query2.FieldByName('Qty').AsString;
          eclApp.Cells(j,8):='A1A2 KHAI THAC';
          eclApp.Cells(j,9):='KHU A';
        end;
      Query2.Next;
      inc(j);
      end;
      eclapp.columns.autofit;
      showmessage('Succeed');
       eclApp.Visible:=True;
      except
        on   F:Exception   do
          showmessage(F.Message);
      end;
    end;
end;

procedure TTechShoeStock.Delete1Click(Sender: TObject);
begin
  if ((Query2.FieldByName('UserID').Value<> main.Edit1.Text) or (Now - Query2.FieldByName('UserDate').Value>1)) then
  begin
    showmessage('Can not Delete');
    abort;
  end;
  with Query2 do
  begin
    requestlive:=true;
    cachedupdates:=true;
    Edit;
    fieldbyname('YN').Value:='0';
  end;
  Save1.Enabled:=true;
  Cancel1.Enabled:=true;
end;

procedure TTechShoeStock.DeleteAll1Click(Sender: TObject);
var i:integer;
begin
  if ((Query2.FieldByName('UserID').Value<> main.Edit1.Text) or (Now - Query2.FieldByName('UserDate').Value>1)) then
  begin
    showmessage('Can not Delete');
    abort;
  end;
  with Query2 do
  begin
    requestlive:=true;
    cachedupdates:=true;
    Query2.First;
     for i:=1 to Query2.RecordCount do
     begin
      edit;
      fieldbyname('YN').Value:='0';
      Query2.next;
     end;
  end;
  Save1.Enabled:=true;
  Cancel1.Enabled:=true;
end;

procedure TTechShoeStock.DBGridEh2GetCellParams(Sender: TObject;
  Column: TColumnEh; AFont: TFont; var Background: TColor;
  State: TGridDrawState);
begin
  if Query2.FieldByName('YN').value='0' then
  begin
    DBGridEh2.canvas.font.color:=clred;
  end;
end;

end.
