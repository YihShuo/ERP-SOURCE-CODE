unit SampeFinishShoeStock1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DB, StdCtrls, ComCtrls, GridsEh, DBGridEh, ExtCtrls, Menus,
  DBTables, DateUtils, Comobj ,IniFiles;

type
  TSampeFinishShoeStock = class(TForm)
    EXEQry: TQuery;
    DS1: TDataSource;
    Query1: TQuery;
    Query1KCYEAR: TStringField;
    Query1KCMONTH: TStringField;
    Query1CKBH: TStringField;
    Query1ARTICLE: TStringField;
    Query1Memo: TStringField;
    Query1USERID: TStringField;
    Query1USERDATE: TDateTimeField;
    Query1YN: TStringField;
    UPDet1: TUpdateSQL;
    PopupMenu1: TPopupMenu;
    Modify1: TMenuItem;
    Save1: TMenuItem;
    Cancel1: TMenuItem;
    PopupMenu2: TPopupMenu;
    Modify2: TMenuItem;
    Save2: TMenuItem;
    Cancel2: TMenuItem;
    UPDet2: TUpdateSQL;
    Query2: TQuery;
    DS2: TDataSource;
    PC1: TPageControl;
    TS1: TTabSheet;
    Panel2: TPanel;
    Label4: TLabel;
    Label6: TLabel;
    Label1: TLabel;
    Button2: TButton;
    Button3: TButton;
    CBX2: TComboBox;
    CBX3: TComboBox;
    Edit3: TEdit;
    Button5: TButton;
    DBGridEh1: TDBGridEh;
    TS2: TTabSheet;
    Panel1: TPanel;
    Label3: TLabel;
    Label14: TLabel;
    Edit2: TEdit;
    Button1: TButton;
    DTP: TDateTimePicker;
    Button4: TButton;
    CheckBox1: TCheckBox;
    DBGridEh2: TDBGridEh;
    Query1TestNo: TStringField;
    Query1Qty: TFloatField;
    Query2TestNo: TStringField;
    Query2RKQty: TFloatField;
    Query2XHQty: TFloatField;
    Query2Qty: TFloatField;
    Query2YPDH: TStringField;
    Query2Article: TStringField;
    Query2GSDH: TStringField;
    Query2Quantity: TFloatField;
    Query2JHRQ: TStringField;
    Query2Memo: TStringField;
    Query2LastRem: TFloatField;
    Query1YPDH: TStringField;
    N1: TMenuItem;
    Detail1: TMenuItem;
    Label2: TLabel;
    Edit1: TEdit;
    Label5: TLabel;
    Edit4: TEdit;
    Query2DDZT: TStringField;
    CheckBox2: TCheckBox;
    Button6: TButton;
    Query2XieMing: TStringField;
    Button7: TButton;
    Query2Customer: TStringField;
    Label7: TLabel;
    ComboBox1: TComboBox;
    CB1: TCheckBox;
    DTP1: TDateTimePicker;
    Label8: TLabel;
    DTP2: TDateTimePicker;
    procedure FormDestroy(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure Button3Click(Sender: TObject);
    procedure Modify1Click(Sender: TObject);
    procedure Save1Click(Sender: TObject);
    procedure Cancel1Click(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure Button4Click(Sender: TObject);
    procedure Modify2Click(Sender: TObject);
    procedure Cancel2Click(Sender: TObject);
    procedure Save2Click(Sender: TObject);
    procedure Button5Click(Sender: TObject);
    procedure Detail1Click(Sender: TObject);
    procedure Button6Click(Sender: TObject);
    procedure Button7Click(Sender: TObject);
  private
    { Private declarations }
    procedure ExportExcel(Query:TQuery);
  public
    { Public declarations }
  end;

var
  SampeFinishShoeStock: TSampeFinishShoeStock;

implementation
  uses main1, SampleFinishShoeStock_Detail1, FunUnit,
  SampleFinishStock_Print1;
{$R *.dfm}

procedure TSampeFinishShoeStock.FormDestroy(Sender: TObject);
begin
  SampeFinishShoeStock:=nil;
end;

procedure TSampeFinishShoeStock.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  Action:=CaFree;
end;

procedure TSampeFinishShoeStock.Button3Click(Sender: TObject);
begin
  with Query1 do
  begin
    Active:=false;
    SQL.Clear;
    SQL.Add('Select ShoeTestMonth.*,YPZL.Article,ShoeTestMonth_Memo.Memo,shoeTest.YPDH ');
    SQL.Add('from ShoeTestMonth');
    SQL.Add('left join ShoeTestMonth_Memo on ShoeTestMonth_Memo.testNo=ShoeTestMonth.TestNo ');
    SQL.Add('left join ShoeTest on ShoeTest.TestNo=ShoeTestMonth.TestNo ');
     SQL.Add('Left join YPZL on YPZL.YPDH=ShoeTest.YPDH');
    SQL.Add('where ShoeTestMonth.KCYEAR='''+CBX2.Text+'''  ');
    SQL.Add('		   and ShoeTestMonth.KCMONTH='''+CBX3.Text+''' ');
    SQL.Add('      and YPZL.GSDH='''+main.edit2.Text+''' ');
    if Edit3.Text<>'' then
    SQL.Add('      and shoeTest.YPDH like '''+Edit3.Text+'%'' ');
    if Edit4.Text<>'' then
    SQL.Add('      and ShoeTestMonth.TestNo like '''+Edit4.Text+'%'' ');
    //funcObj.WriteErrorLog(sql.Text);
    Active:=true;
  end;
end;

procedure TSampeFinishShoeStock.Modify1Click(Sender: TObject);
begin
  with Query1 do
  begin
    requestlive:=true;
    cachedupdates:=true;
    edit;
  end;
  Save1.Enabled:=true;
  Cancel1.Enabled:=true;
end;

procedure TSampeFinishShoeStock.Save1Click(Sender: TObject);
var i:integer;
begin
  Query1.First;
  for i:=0 to Query1.RecordCount-1 do
  begin
    case Query1.updatestatus of
      usmodified:
      begin
        if Query1.FieldByName('YN').AsString='2' then
        begin
          Query1.Edit;
          Query1.FieldByName('userID').Value:=main.edit1.text;
          Query1.FieldByName('userdate').Value:=Date;
          UPDet1.apply(ukmodify);
        end else
        begin
          Showmessage('Already be Lock,can''t modify ');
        end;
      end;
    end;
    Query1.Next;
  end;
  Query1.active:=false;
  Query1.cachedupdates:=false;
  Query1.requestlive:=false;
  Query1.active:=true;
  Save1.Enabled:=false;
  Cancel1.Enabled:=false;
end;

procedure TSampeFinishShoeStock.Cancel1Click(Sender: TObject);
begin
  with Query1 do
  begin
    active:=false;
    requestlive:=false;
    cachedupdates:=false;
    active:=true;
  end;
  Save1.Enabled:=false;
  Cancel1.Enabled:=false;
end;

procedure TSampeFinishShoeStock.Button1Click(Sender: TObject);
var iYear,iMonth,iDay:word;
    sYear,sMonth:string;
    LAI,BYI,SKX,CBY,YPDHCodeList:string;
    ini:TiniFile;
    tmpList:TStringlist;

begin
  decodedate(DTP.Date,iYear,iMonth,iDay);   //找庫存相關的數據
  incAMonth(iYear,iMonth,iDay,-1);
  sYear:=floattostr(iYear);
  sMonth:=floattostr(iMonth);
  if length(sMonth)=1 then
    sMonth:='0'+sMonth;

  with Query2 do
  begin
    Active:=false;
    SQL.Clear;
    //
    SQL.Add('Select Shoetest.TestNo,ShoeTestMonth.Qty as LastRem, ShoeTestIn.Qty as RKQty, ShoeTestship.Qty as XHQty, ShoetestAll.Qty,ShoeTest.YPDH,YPZL.Article');
    SQL.Add('       ,Case when ShoeTest.TBCancel=1 then ''C'' else ''Y'' end as DDZT,YPZL.GSDH,YPZL.Quantity,YPZL.JHRQ,ShoeTestMonth_Memo.Memo,kfxxzl.XieMing,kfzl.kfjc as Customer  from (');
    SQL.Add('  Select  TestNo , Sum(Qty) as Qty');
    SQL.Add('  from (');
    SQL.Add('	Select TestNo,Qty,''1'' as SB');
    SQL.Add('	from ShoeTestMonth');
    SQL.Add('	where ShoeTestMonth.KCYEAR='''+sYear+''' ');
    SQL.Add('	   and ShoeTestMonth.KCMONTH='''+sMonth+''' ');
    SQL.Add('	   and IsNull(ShoeTestMonth.CKBH,'''')='''+main.edit2.Text+'''');
    SQL.Add('	union all');
    SQL.Add('	Select  shoetest.TestNo,Sum(shoetest2.qty) as Qty,''2'' as SB');
    SQL.Add('	from shoetest');
    SQL.Add('	left join (select testno,sum(qty) as qty from shoetest2 group by testno ) shoetest2 on  shoetest2.testno=shoetest.testno');
    SQL.Add('	where Convert(varchar,shoetest.complete, 111) between '''+Formatdatetime('yyyy/MM/dd',startofthemonth(DTP.date))+''' and '''+Formatdatetime('yyyy/MM/dd',DTP.date)+''' ');
    SQL.Add('		  and SUBSTRING(shoetest.YPDH,4,1)=''V'' ');
    SQL.Add('	Group by shoetest.TestNo');
    SQL.Add('	union all ');
    SQL.Add('	Select  shoetest.TestNo,-1*Sum(shoetestshipping.qty) as Qty,''3'' as SB');
    SQL.Add('	from shoetest');
    SQL.Add('	left join (Select TestNO,shipdate_final,Sum(Qty) as Qty from shoetestshipping   Group by TestNO,shipdate_final ) shoetestshipping on shoetest.testno=shoetestshipping.testno');
    SQL.Add('	left join (select testno,sum(qty) as qty from shoetest2 group by testno ) shoetest2 on  shoetest2.testno=shoetest.testno');
    SQL.Add('	where Convert(varchar,shoetestshipping.shipdate_final, 111) between '''+Formatdatetime('yyyy/MM/dd',startofthemonth(DTP.date))+''' and '''+Formatdatetime('yyyy/MM/dd',DTP.date)+'''   and shoetest.Complete is not null');
    SQL.Add('		    and SUBSTRING(shoetest.YPDH,4,1)=''V'' ');
    SQL.Add('	Group by shoetest.TestNo  )  Shoetest  Group by TestNo )  ShoetestAll');
    SQL.Add('Left join (');
    SQL.Add('	Select TestNo,Qty,''1'' as SB');
    SQL.Add('	from ShoeTestMonth');
    SQL.Add('	where ShoeTestMonth.KCYEAR='''+sYear+''' ');
    SQL.Add('	   and ShoeTestMonth.KCMONTH='''+sMonth+''' ) ShoeTestMonth on ShoeTestMonth.TestNo=ShoetestAll.TestNo');
    SQL.Add('Left join (');
    SQL.Add('	Select  shoetest.TestNo,Sum(shoetest2.qty) as Qty,''2'' as SB');
    SQL.Add('	from shoetest');
    SQL.Add('	left join (select testno,sum(qty) as qty from shoetest2 group by testno ) shoetest2 on  shoetest2.testno=shoetest.testno');
    SQL.Add('	where Convert(varchar,shoetest.complete, 111) between '''+Formatdatetime('yyyy/MM/dd',startofthemonth(DTP.date))+''' and '''+Formatdatetime('yyyy/MM/dd',DTP.date)+''' ');
    SQL.Add('		    and SUBSTRING(shoetest.YPDH,4,1)=''V'' ');
    SQL.Add('	Group by shoetest.TestNo ) ShoeTestIn on ShoeTestIn.TestNo=ShoetestAll.TestNo');
    SQL.Add('Left join (');
    SQL.Add('	Select  shoetest.TestNo,Sum(shoetestshipping.qty) as Qty,''3'' as SB');
    SQL.Add('	from shoetest');
    SQL.Add('	left join (Select TestNO,shipdate_final,Sum(Qty) as Qty from shoetestshipping   Group by TestNO,shipdate_final ) shoetestshipping on shoetest.testno=shoetestshipping.testno');
    SQL.Add('	left join (select testno,sum(qty) as qty from shoetest2 group by testno ) shoetest2 on  shoetest2.testno=shoetest.testno');
    SQL.Add('	where Convert(varchar,shoetestshipping.shipdate_final, 111) between '''+Formatdatetime('yyyy/MM/dd',startofthemonth(DTP.date))+''' and '''+Formatdatetime('yyyy/MM/dd',DTP.date)+'''  and shoetest.Complete is not null');
    SQL.Add('		    and SUBSTRING(shoetest.YPDH,4,1)=''V'' ');
    SQL.Add('	Group by shoetest.TestNo ) ShoeTestship on ShoeTestship.TestNo=ShoetestAll.TestNo');
    SQL.Add('left join ShoeTest on ShoeTest.TestNo=ShoetestAll.TestNo');
    SQL.Add('Left join YPZL on YPZL.YPDH=ShoeTest.YPDH');
    SQL.Add('left join ShoeTestMonth_Memo on ShoeTestMonth_Memo.testNo=ShoetestAll.TestNo');
    SQL.Add('left join kfxxzl on ypzl.XieXing=kfxxzl.XieXing and ypzl.SheHao=kfxxzl.SheHao');
    SQL.Add('left join kfzl on kfzl.kfdh=kfxxzl.KHDH ');
    SQL.Add('where 1=1 ');
    SQL.Add('   and YPZL.GSDH='''+main.edit2.Text+''' ');
    if Edit2.Text<>'' then
    SQL.Add('   and ShoeTest.YPDH like '''+Edit2.Text+'%'' ');
    if Edit1.Text<>'' then
    SQL.Add('   and ShoetestAll.TestNo like '''+Edit1.Text+'%'' ');
    if CheckBox1.Checked=true then
    SQL.Add('   and ShoetestAll.Qty>0 ');
    if CheckBox2.Checked=true then
    SQL.Add('   and ShoetestAll.Qty<0 ');
    //2025.12.10 Them dieu kien loc theo Brand cho khu C
    if (main.Edit2.Text='VC1') and (ComboBox1.Text<>'') then
      SQL.Add(' and kfxxzl.KHDH in (select kfdh from kfzl where kfjc = '''+ComboBox1.Text+''')');
    //=============
    if (CB1.Checked) then      //2026.06.04
    begin
      SQL.Add(' and convert(smalldatetime, convert(varchar,shoetest.Complete, 111)) between ');
      SQL.Add(' '''+FormatDateTime('yyyy/MM/dd', DTP1.Date)+ ''' and ''' +FormatDateTime('yyyy/MM/dd', DTP2.Date)+ ''' ');
    end;
    //=============
    SQL.Add('order by ShoetestAll.TestNo ');
    //FuncObj.WriteErrorLog(sql.Text);
    Active:=true;
  end;
end;

procedure TSampeFinishShoeStock.FormCreate(Sender: TObject);
var
  myYear, myMonth, myDay : Word;
  i,j,index:integer;
begin
  DTP.Date:=Date();
  DTP1.Date := Date-3;   //2026.06.04
  DTP2.Date := Date;     //2026.06.04
   // Load year-month
  DecodeDate(Date(), myYear, myMonth, myDay);
  for j:=0 to CBX2.Items.Count-1 do
  begin
    if strtoint(CBX2.Items[j])=myYear then
    begin
      CBX2.ItemIndex:=j;
      break;
    end;
  end;
  for j:=0 to CBX3.Items.Count-1 do
  begin
    if strtoint(CBX3.Items[j])=myMonth then
    begin
      CBX3.ItemIndex:=j-1;
      break;
    end;
  end;
  //2025.12.10 Them nhan hang khu C
  if (main.Edit2.Text = 'VC1') then
  begin
    Label7.Visible:=true;
    ComboBox1.Visible:=true;
  end;
  PC1.ActivePage:=TS2;
end;

procedure TSampeFinishShoeStock.Button2Click(Sender: TObject);
begin
  ExportExcel(Query1);
end;


//輸出Excel
procedure TSampeFinishShoeStock.ExportExcel(Query:TQuery);
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
              eclApp.Cells(j,i+1):=Query.Fields[i-1].Value;
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

procedure TSampeFinishShoeStock.Button4Click(Sender: TObject);
begin
  ExportExcel(Query2);
end;

procedure TSampeFinishShoeStock.Modify2Click(Sender: TObject);
begin
  with Query2 do
  begin
    requestlive:=true;
    cachedupdates:=true;
    edit;
  end;
  Save2.Enabled:=true;
  Cancel2.Enabled:=true;
end;

procedure TSampeFinishShoeStock.Cancel2Click(Sender: TObject);
begin
  with Query2 do
  begin
    active:=false;
    requestlive:=false;
    cachedupdates:=false;
    active:=true;
  end;
  Save2.Enabled:=false;
  Cancel2.Enabled:=false;
end;

procedure TSampeFinishShoeStock.Save2Click(Sender: TObject);
var i:integer;
begin
  Query2.First;
  for i:=0 to Query2.RecordCount-1 do
  begin
    case Query2.updatestatus of
      usmodified:
      begin
        with EXEQry do
        begin
          Active:=false;
          SQL.Clear;
          SQL.Add('IF NOT EXISTS (Select TestNo from ShoeTestMonth_Memo where TestNo='''+Query2.FieldByName('TestNo').Value+''') ');
          SQL.Add('Begin ');
          SQL.Add('Insert into ShoeTestMonth_Memo (TestNo, Memo, USERID, USERDATE, YN)');
          SQL.Add('Values( '''+Query2.FieldByName('TestNo').Value+''','''+Query2.FieldByName('Memo').Value+''','''+main.Edit1.Text+''',GetDate() ,1)');
          SQL.Add('End Else ');
          SQL.Add('Begin ');
          SQL.Add('Update ShoeTestMonth_Memo Set Memo='''+Query2.FieldByName('Memo').Value+''',USERID='''+main.Edit1.Text+''',USERDATE=GetDate() where TestNo='''+Query2.FieldByName('TestNo').Value+''' ');
          SQL.Add('End ');
          //FuncObj.WriteErrorLog(sql.Text);
          ExecSQL();
        end;
      end;
    end;
    Query2.Next;
  end;
  Query2.active:=false;
  Query2.cachedupdates:=false;
  Query2.requestlive:=false;
  Query2.active:=true;
  Save2.Enabled:=false;
  Cancel2.Enabled:=false;
end;

procedure TSampeFinishShoeStock.Button5Click(Sender: TObject);
var iYear,iMonth,iDay:word;
    sYear,sMonth:string;
    sDate:TDate;
    LAI,BYI,SKX,CBY,YPDHCodeList:string;
    ini:TiniFile;
    tmpList:TStringlist;
begin
  sDate:=encodedate(strtoint(CBX2.Text),strtoint(CBX3.Text),1);
  DeCodedate(sDate,iYear,iMonth,iDay);   //找庫存相關的數據
  incAMonth(iYear,iMonth,iDay,-1);
  sYear:=floattostr(iYear);
  sMonth:=floattostr(iMonth);
  if length(sMonth)=1 then
    sMonth:='0'+sMonth;
    
  //檢查是否會計月結
  with EXEQry do
  begin
    Active:=false;
    SQL.Clear;
    SQL.Add('Select top 1 KCYEAR,YN from ShoeTestMonth where KCYEAR='''+CBX2.Text+''' and KCMONTH='''+CBX3.Text+''' and IsNull(CKBH,'''')='''+main.edit2.Text+''' ');
    //FuncObj.WriteErrorLog(sql.Text);
    Active:=true;
    if FieldByName('YN').AsString='1' then
    begin
      Showmessage('Account already Month Cal.:'+CBX2.Text+'/'+CBX3.Text+'，Warehosue can''t calculate & override');
      Active:=false;
      Exit;
    end;
    Active:=false;
  end;

  with EXEQry do
  begin
    Active:=false;
    SQL.Clear;
    SQL.Add('Delete from ShoeTestMonth where KCYEAR='''+CBX2.Text+''' and KCMONTH='''+CBX3.Text+''' and IsNull(CKBH,'''')='''+main.edit2.Text+''' ');
    SQL.Add('Insert into  ShoeTestMonth (KCYEAR, KCMONTH, TestNo, Qty, CKBH, UserID, UserDate, YN) ');
    SQL.Add('Select * from ( ');
    SQL.Add('Select '''+CBX2.Text+''' as KCYEAR,'''+CBX3.Text+''' as KCMONTH, ShoetestMonth.TestNo , Sum(ShoetestMonth.Qty) as Qty,YPZL.GSDH as CKBH , '''+main.Edit1.Text+''' as UserID, GetDate() as UserDate, ''2'' as YN');
    SQL.Add('from (');
    SQL.Add('	Select TestNo,Qty,''1'' as SB');
    SQL.Add('	from ShoeTestMonth');
    SQL.Add('	where ShoeTestMonth.KCYEAR='''+sYear+''' ');
    SQL.Add('	   and ShoeTestMonth.KCMONTH='''+sMonth+''' ');
    SQL.Add('	   and IsNull(ShoeTestMonth.CKBH,'''')='''+main.edit2.Text+'''');
    SQL.Add('	union all');
    SQL.Add('	Select  shoetest.TestNo,Sum(shoetest2.qty) as Qty,''2'' as SB');
    SQL.Add('	from shoetest');
    SQL.Add('	left join (select testno,sum(qty) as qty from shoetest2 group by testno ) shoetest2 on  shoetest2.testno=shoetest.testno');
    SQL.Add('	where Convert(varchar,shoetest.complete, 111) between '''+Formatdatetime('yyyy/MM/dd',startofthemonth(sDate))+''' and '''+Formatdatetime('yyyy/MM/dd',EndOfTheMonth(sDate))+'''  ');
    SQL.Add('		    and SUBSTRING(shoetest.YPDH,4,1)=''V'' ');
    SQL.Add('	Group by shoetest.TestNo');
    SQL.Add('	union all ');
    SQL.Add('	Select  shoetest.TestNo,-1*Sum(shoetestshipping.qty) as Qty,''3'' as SB');
    SQL.Add('	from shoetest');
    SQL.Add('	left join (Select TestNO,shipdate_final,Sum(Qty) as Qty from shoetestshipping   Group by TestNO,shipdate_final ) shoetestshipping on shoetest.testno=shoetestshipping.testno');
    SQL.Add('	left join (select testno,sum(qty) as qty from shoetest2 group by testno ) shoetest2 on  shoetest2.testno=shoetest.testno');
    SQL.Add('	where Convert(varchar,shoetestshipping.shipdate_final, 111) between '''+Formatdatetime('yyyy/MM/dd',startofthemonth(sDate))+''' and '''+Formatdatetime('yyyy/MM/dd',EndOfTheMonth(sDate))+'''   and shoetest.Complete is not null');
    SQL.Add('		    and SUBSTRING(shoetest.YPDH,4,1)=''V'' ');
    SQL.Add('	Group by shoetest.TestNo  )  ShoetestMonth');
    SQL.Add('left join ShoeTest on ShoeTest.TestNo=ShoetestMonth.TestNo');
    SQL.Add('Left join YPZL on YPZL.YPDH=ShoeTest.YPDH');
    SQL.Add('Where YPZL.GSDH='''+main.edit2.Text+''' ');
    SQL.Add('Group by YPZL.GSDH, ShoetestMonth.TestNo  ) ShoeTestMonth  where Qty>0 ');
    //FuncObj.WriteErrorLog(sql.Text);
    ExecSQL();
  end;
  Showmessage('Finish');
end;

procedure TSampeFinishShoeStock.Detail1Click(Sender: TObject);
begin
  SampleFinishShoeStock_Detail:=TSampleFinishShoeStock_Detail.Create(Self);
  SampleFinishShoeStock_Detail.ShowModal();
end;

procedure TSampeFinishShoeStock.Button6Click(Sender: TObject);
begin
  SampleFinishStock_Print:=TSampleFinishStock_Print.Create(self);
  SampleFinishStock_Print.Quickrep1.prepare;
  SampleFinishStock_Print.PageN.caption:=inttostr(SampleFinishStock_Print.quickrep1.QRPrinter.pagecount);
  SampleFinishStock_Print.Quickrep1.preview;
  SampleFinishStock_Print.Free;
end;

procedure TSampeFinishShoeStock.Button7Click(Sender: TObject);
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
          //eclApp.Cells(j,2):='Converse';
          eclApp.Cells(j,2):=Query2.FieldByName('Customer').AsString;  //2025.12.10
          eclApp.Cells(j,3):=Query2.FieldByName('YPDH').AsString;
          eclApp.Cells(j,4):=Query2.FieldByName('Article').AsString;
          eclApp.Cells(j,5):=Query2.FieldByName('XieMing').AsString;
          eclApp.Cells(j,6):='';
          eclApp.Cells(j,7):=Query2.FieldByName('Qty').AsString;
          if main.Edit2.Text='CDC' then
            eclApp.Cells(j,8):='A1A2'
          else if main.Edit2.Text='VC1' then
            eclApp.Cells(j,8):='C2';
          eclApp.Cells(j,9):='';
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

end.
