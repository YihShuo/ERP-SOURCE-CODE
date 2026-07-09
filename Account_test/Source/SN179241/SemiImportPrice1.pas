unit SemiImportPrice1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DB, Menus, DBTables, GridsEh, DBGridEh, StdCtrls, ExtCtrls,
  Buttons,comobj, ComCtrls;

type
  TSemiImportPrice = class(TForm)
    Panel1: TPanel;
    Label1: TLabel;
    Label13: TLabel;
    Edit1: TEdit;
    Button1: TButton;
    chkNoPrice: TCheckBox;
    CBX1: TComboBox;
    CBX2: TComboBox;
    Button2: TButton;
    chkPrice: TCheckBox;
    DBGridEh1: TDBGridEh;
    Query1: TQuery;
    UpdateSQL1: TUpdateSQL;
    PopupMenu1: TPopupMenu;
    Modify1: TMenuItem;
    Save1: TMenuItem;
    Cancel1: TMenuItem;
    DataSource1: TDataSource;
    SaveDialog1: TSaveDialog;
    Qtemp: TQuery;
    Query1DDBH: TStringField;
    Query1USPrice: TCurrencyField;
    Query1Memo: TStringField;
    Query1UserID: TStringField;
    Query1UserDate: TDateTimeField;
    Query1YN: TStringField;
    Label2: TLabel;
    Query1Price: TCurrencyField;
    CopyPrice1: TMenuItem;
    Query1KCYEAR: TStringField;
    Query1KCMONTH: TStringField;
    bbt5: TBitBtn;
    chkPrice_Acc: TCheckBox;
    chkNoPrice_Acc: TCheckBox;
    Button3: TButton;
    Button4: TButton;
    Panel9: TPanel;
    Label4: TLabel;
    Label10: TLabel;
    Label11: TLabel;
    Panel10: TPanel;
    Panel11: TPanel;
    ProgressBar2: TProgressBar;
    Button5: TButton;
    Button6: TButton;
    OpenDialog1: TOpenDialog;
    Qry_Import: TQuery;
    Delete1: TMenuItem;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormDestroy(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure Modify1Click(Sender: TObject);
    procedure Save1Click(Sender: TObject);
    procedure Cancel1Click(Sender: TObject);
    procedure CopyPrice1Click(Sender: TObject);
    procedure bbt5Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure DBGridEh1GetCellParams(Sender: TObject; Column: TColumnEh;
      AFont: TFont; var Background: TColor; State: TGridDrawState);
    procedure Query1AfterOpen(DataSet: TDataSet);
    procedure Button3Click(Sender: TObject);
    procedure Button4Click(Sender: TObject);
    procedure Query1AfterScroll(DataSet: TDataSet);
    procedure Button6Click(Sender: TObject);
    procedure Button5Click(Sender: TObject);
    procedure Panel11Click(Sender: TObject);
    procedure Delete1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  SemiImportPrice: TSemiImportPrice;

implementation

uses main1, ImportRYPrice1,fununit;

{$R *.dfm}

procedure TSemiImportPrice.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  action:=cafree;
end;

procedure TSemiImportPrice.FormDestroy(Sender: TObject);
begin
  SemiImportPrice:=nil;
end;

procedure TSemiImportPrice.FormCreate(Sender: TObject);
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
      CBX2.ItemIndex:=i-1;
      break;
    end;
  end;
end;

procedure TSemiImportPrice.Button1Click(Sender: TObject);
begin
  With Query1 do
  begin 
    Active:=false;
    SQL.Clear; 
    SQL.Add('  Select Cost.KCYEAR,Cost.KCMONTH,Cost.DDBH,USPrice,Memo,Price.UserID,Price.UserDate,Price.YN,RY_VNPRICE.VNPRICE as Price  ');
    SQL.Add('  From (select KCYEAR, KCMONTH, DDBH, InQty FROM CW_MatCostMonth UNION ALL select KCYEAR, KCMONTH, DDBH, 1 InQty FROM CW_MatCostMonth_Price) Cost  ');
    SQL.Add('  Left join CW_MatCostMonth_Price Price on Cost.KCYEAR=Price.KCYEAR and Cost.KCMONTH=Price.KCMonth and Cost.DDBH=Price.DDBH ');
    SQL.Add('  Left join (	Select DDBH,RY_VNPRICE.VNPRICE  ');
    SQL.Add('  			From CW_MatCostMonth left join RY_VNPRICE   ');
    SQL.Add('  			on CW_MatCostMonth.DDBH=RY_VNPRICE.RYNO  ');
    SQL.Add('  			Where KCYEAR='''+CBX1.Text+''' and KCMONTH='''+CBX2.Text+'''  ');
    SQL.Add('  			and left(DDBH,1)=''Y'' and InQty>0  ');
    SQL.Add('       Group by  DDBH,RY_VNPRICE.VNPRICE ');
    SQL.Add('  			Union all  ');
    SQL.Add('  			Select CW_MatCostMonth.DDBH,RY_VNPRICE.VNPRICE  ');
    SQL.Add('  			From CW_MatCostMonth left join CBY_Orders   ');
    SQL.Add('  			on CW_MatCostMonth.DDBH=CBY_Orders.MasterOrder  ');
    SQL.Add('  			Left join RY_VNPRICE on  CBY_Orders.workOrderId=RY_VNPRICE.RYNO  ');
    SQL.Add('  			Where KCYEAR='''+CBX1.Text+''' and KCMONTH='''+CBX2.Text+''' ');
    SQL.Add('  			and left(DDBH,3)=''CBY'' and InQty>0  ');
    SQL.Add('       Group by  CW_MatCostMonth.DDBH,RY_VNPRICE.VNPRICE ');
    SQL.Add('  			Union all  ');
    SQL.Add('  			Select  DDBH,round(sum(shoetestshipping.amount)/sum(shoetestshipping.qty),2) as VNPRICE  ');
    SQL.Add('  			From CW_MatCostMonth left join ShoeTest   ');
    SQL.Add('  			on CW_MatCostMonth.DDBH=ShoeTest.YPDH  ');
    SQL.Add('  			left join shoetestshipping on ShoeTest.TestNo=shoetestshipping.TestNo  ');
    SQL.Add('  			and YEAR(shipdate_final)='''+CBX1.Text+''' and MONTH(shipdate_final)='''+CBX2.Text+''' ');
    SQL.Add('  			Where KCYEAR='''+CBX1.Text+''' and KCMONTH='''+CBX2.Text+'''  ');
    SQL.Add('  			and left(DDBH,3) <> ''CBY''  ');
    SQL.Add('  			and SUBSTRING(DDBH,4,1)=''V''  and InQty>0   ');
    SQL.Add('  			Group by DDBH  ');
    SQL.Add('  			Union All  ');
    SQL.Add('  			Select CW_MatCostMonth.DDBH,USPrice as VNPRICE  ');
    SQL.Add('  			From CW_MatCostMonth inner join LIY_DD.dbo.OUTSOLE_PRICE Price  ');
    SQL.Add('  			on CW_MatCostMonth.DDBH=Price.RYNO  ');
    SQL.Add('  			Where KCYEAR='''+CBX1.Text+''' and KCMONTH='''+CBX2.Text+''' and InQty>0  ');
    SQL.Add('  			Group by CW_MatCostMonth.DDBH,USPrice  ');
    SQL.Add('  			 ) RY_VNPRICE on RY_VNPRICE.DDBH=Cost.DDBH  ');
    SQL.Add('  where Cost.KCYEAR='''+CBX1.Text+''' and Cost.KCMONTH='''+CBX2.Text+''' and InQty>0   ');
    if chkNoPrice.Checked then
      SQL.Add(' and RY_VNPRICE.VNPRICE is null ');
    if chkPrice.Checked then
      SQL.Add(' and RY_VNPRICE.VNPRICE is not null ');
    if chkNoPrice_Acc.Checked then
      SQL.Add(' and Price.USPrice is null  ');
    if chkPrice_Acc.Checked then
      SQL.Add(' and Price.USPrice is not null ');
    if Edit1.Text <> '' then
      SQL.Add(' and Cost.DDBH like '''+Edit1.Text+'%'' ');
    SQL.Add('  Group by Cost.KCYEAR,Cost.KCMONTH,Cost.DDBH,USPrice,Memo,Price.UserID,Price.UserDate,Price.YN,RY_VNPRICE.VNPRICE  ');
    SQL.Add('  Order by Cost.DDBH  ');
    Active:=true;
  end;
  if Query1.RecordCount > 0 then
  begin
    Modify1.Enabled:=true;  
    Delete1.Enabled:=true;
  end;

end;

procedure TSemiImportPrice.Modify1Click(Sender: TObject);
begin
  with Query1 do
  begin
     RequestLive:=true;
     CachedUpdates:=true;
     edit;
  end;
  save1.Enabled:=true;
  Cancel1.Enabled:=true;
  CopyPrice1.Enabled:=true;
end;

procedure TSemiImportPrice.Save1Click(Sender: TObject);
var i : integer;
begin
  try
    Query1.First;
    for i := 1 to Query1.RecordCount do
    begin
      case Query1.UpdateStatus of
        usModified:
        begin                   
          if (Query1.FieldByName('YN').AsString = '0') then
          begin                 
            with Qtemp do
            begin
              active:=false;
              sql.Clear;
              sql.add('insert into BDelRec ');
              sql.add('(TableName ,TNO,CLBH,OldID,DelID,DelDate)');
              sql.add('values (''CW_MatCostMonth_Price'','''+Query1.fieldbyname('DDBH').Value+'''');
              sql.add(','''+Query1.fieldbyname('KCYEAR').AsString+'*'+Query1.fieldbyname('KCMONTH').AsString+''',');
              sql.add(''''+Query1.fieldbyname('UserID').Value+''','''+main.Edit1.Text+''',getdate())');
              execsql;
              active:=false;
            end;
            UpdateSQL1.apply(ukdelete);
          end else 
          if (Query1.FieldByName('YN').AsString = '1') then
          begin
            Query1.Edit;
            Query1.FieldByName('USERID').Value := main.Edit1.text;
            Query1.FieldByName('USERDATE').Value := Now;
            UpdateSQL1.Apply(ukModify);
          end else begin
            Query1.Edit;
            Query1.FieldByName('USERID').Value := main.Edit1.Text;
            Query1.FieldByName('USERDATE').Value := Now;
            Query1.FieldByName('YN').Value := 1;
            UpdateSQL1.Apply(ukInsert);
          end;
        end;
      end;

      Query1.Next;
    end;

    Query1.Active := false;
    Query1.CachedUpdates := false;
    Query1.RequestLive := false;
    Query1.Active := true;

    Save1.Enabled := false;
    Cancel1.Enabled := false;
    CopyPrice1.Enabled :=false;

  except
    MessageDlg('Have wrong, can not save data!', mtWarning, [mbyes], 0);
  end;
end;

procedure TSemiImportPrice.Cancel1Click(Sender: TObject);
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
  CopyPrice1.Enabled := false ;
end;

procedure TSemiImportPrice.CopyPrice1Click(Sender: TObject);
var i:integer;
begin
  Query1.First;
  for i:=0 to Query1.RecordCount-1 do
  begin
    Query1.Edit;
    Query1.FieldByName('USPrice').Value:=Query1.FieldByName('Price').Value;
    Query1.Post;
    Query1.Next;
  end;
end;

procedure TSemiImportPrice.bbt5Click(Sender: TObject);
begin
   //ImportRYPrice:=TImportRYPrice.create(self);
   //ImportRYPrice.show; 
   Panel9.Visible:=true;
end;

procedure TSemiImportPrice.Button2Click(Sender: TObject);
var eclApp,WorkBook:olevariant;
    i,j:integer;
begin
  if query1.Active then
  begin
    if query1.recordcount=0 then
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
    query1.First;
    j:=2;
    while   not  query1.Eof   do
    begin
      eclApp.Cells(j,1):=j-1;
      for i:=0 to DBGridEh1.Columns.Count-1 do
      begin
         eclApp.Cells(j,i+1):=DBGridEh1.Fields[i].Value;
         eclApp.Cells.Cells.item[j,i+1].font.size:='10';
         eclApp.Cells.Cells.item[j,i+1].font.name := 'Calibri';
      end;
      query1.Next;
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

procedure TSemiImportPrice.DBGridEh1GetCellParams(Sender: TObject;
  Column: TColumnEh; AFont: TFont; var Background: TColor;
  State: TGridDrawState);
begin
  if ((not Query1.FieldByName('PRice').IsNull)  and (not Query1.FieldByName('USPRice').IsNull) and  (Query1.FieldByName('USPRice').Value <>  Query1.FieldByName('PRice').Value)) then
  begin
    DBGridEh1.canvas.font.color:=clred;
  end;
end;

procedure TSemiImportPrice.Query1AfterOpen(DataSet: TDataSet);
begin
  if query1.FieldByName('YN').AsString='5' then
  begin
    button3.Enabled:=false;
    button4.Enabled:=true;
    Modify1.Enabled:=false;
    Delete1.Enabled:=false;
    CopyPrice1.Enabled:=false;
    bbt5.Enabled:=false;
  end else
  begin
    button3.Enabled:=true;
    button4.Enabled:=false;
    Modify1.Enabled:=true;
    Delete1.Enabled:=true;
    CopyPrice1.Enabled:=true;
    bbt5.Enabled:=true;
  end;
end;

procedure TSemiImportPrice.Button3Click(Sender: TObject);
begin
  try
      with Qtemp do
      begin
        active:=false;
        sql.Clear;
        SQL.Add('UPDATE CW_MatCostMonth_Price  ');
        SQL.Add('SET YN=''5''  ');
        SQL.Add('WHERE KCYear='''+CBX1.Text+''' AND KCMonth='''+CBX2.Text+'''  ');
        execsql;
      end;
      showmessage('Already lock '+CBX1.Text+'/'+CBX2.Text );
  except
    on E:Exception do
    showmessage('Have wrong:'+E.Message);
  end;
  Query1.Active:=FALSE;
  Query1.Active:=TRUE;
end;

procedure TSemiImportPrice.Button4Click(Sender: TObject);
begin
  try
      with Qtemp do
      begin
        active:=false;
        sql.Clear;
        SQL.Add('UPDATE CW_MatCostMonth_Price  ');
        SQL.Add('SET YN=''1''  ');
        SQL.Add('WHERE KCYear='''+CBX1.Text+''' AND KCMonth='''+CBX2.Text+'''  ');
        execsql;
      end;
      showmessage('Already unlock '+CBX1.Text+'/'+CBX2.Text );
  except
    on E:Exception do
    showmessage('Have wrong:'+E.Message);
  end;
  Query1.Active:=FALSE;
  Query1.Active:=TRUE;
end;

procedure TSemiImportPrice.Query1AfterScroll(DataSet: TDataSet);
begin
  if query1.FieldByName('YN').AsString='5' then
  begin
    Modify1.Enabled:=false;     
    Delete1.Enabled:=false;
    CopyPrice1.Enabled:=false;
  end else
  begin
    Modify1.Enabled:=true;
    Delete1.Enabled:=true;
    CopyPrice1.Enabled:=true;
  end;
end;

procedure TSemiImportPrice.Button6Click(Sender: TObject);
var eclApp,WorkBook1,xlSheet1:olevariant;
begin
  try
    eclApp:=CreateOleObject('Excel.Application');
    WorkBook1:=CreateOleObject('Excel.Sheet');
  except
    Application.MessageBox('NO Microsoft   Excel','Microsoft   Excel',MB_OK+MB_ICONWarning);
    Exit;
  end;

  try
    WorkBook1:=eclApp.workbooks.Add;
    eclApp.WorkSheets[1].Activate;
    xlSheet1:=workBook1.WorkSheets[1];

    eclApp.Cells(1,1):='DDBH';
    eclApp.Cells(2,1):='Y2403-0017';
    eclApp.Cells(3,1):='Y2403-0539';

    eclApp.Cells(1,2):='USPrice';
    eclApp.Cells(2,2):='16.79';
    eclApp.Cells(3,2):='6.22';

    eclApp.Cells(1,3):='Memo';
    eclApp.Cells(2,3):='Gia xuat hang 3';
    eclApp.Cells(3,3):='Gia xuat hang 3';

    eclApp.ActiveSheet.Rows[1].font.bold :=true;

    eclApp.Caption:='ACCOUNT N17A9241 Sample File';
    eclapp.columns.autofit;       
    showmessage('Download excel SAMPLE successful.');
    eclApp.Visible:=True;

  except
    on   F:Exception   do
      showmessage(F.Message);
  end;
end;

procedure TSemiImportPrice.Button5Click(Sender: TObject);
var ExcelApp,arrData: Variant;
    Rows,Cols,i,j,count,temp: Integer;
    Error: Boolean;
begin
  if not OpenDialog1.Execute then
    abort;
  ExcelApp:=CreateOleObject('Excel.Application');
  ExcelApp.WorkBooks.Open(OpenDialog1.FileName);
  ExcelApp.WorkSheets[1].Activate;
  Rows := ExcelApp.WorkSheets[1].UsedRange.EntireRow.count;
  ProgressBar2.Position:=0;
  ProgressBar2.Max:=Rows-1;
  ProgressBar2.Refresh;

  try
    //-----Format excel-----
    ExcelApp.Columns[2].NumberFormat:='##0.00';

    //-----Start import-----
    arrData:= ExcelApp.WorkSheets[1].UsedRange.Value;
    i:=2;
    count:=0;
    temp:=0;

    while (count<3) and (i<=Rows) do
    begin
      try
        if trim(arrData[i,1])='' then
          Inc(count)
        else
        begin
          count:=1;
          with Qtemp do
          begin
            Active:=false;
            sql.Clear;
            SQL.Add('Select* from CW_MatCostMonth_Price');
            SQL.Add('Where DDBH='''+trim(arrData[i,1])+''' and KCYear='''+CBX1.Text+''' and KCMonth='''+CBX2.Text+'''  ');
            Active:=true;
            if Qtemp.RecordCount>0 then
            begin
               Qry_Import.Active:=false;
                Qry_Import.sql.Clear;
                Qry_Import.sql.Add('UPDATE CW_MatCostMonth_Price ');
                Qry_Import.sql.Add('SET USPRICE='''+trim(arrData[i,2])+''' ');
                Qry_Import.sql.Add('    ,Memo='''+trim(arrData[i,3])+''' ');
                Qry_Import.SQL.Add('    ,UserID='''+main.Edit1.Text+''' ');
                Qry_Import.sql.Add('    ,UserDate=GETDATE()');
                Qry_Import.sql.Add('WHERE DDBH='''+trim(arrData[i,1])+''' and KCYear='''+CBX1.Text+''' and KCMonth='''+CBX2.Text+''' ');
                Qry_Import.sql.Add('  and YN=''1'' ');
                Qry_Import.ExecSQL;
            end else
            begin
                Qry_Import.Active:=false;
                Qry_Import.sql.Clear;
                Qry_Import.sql.Add('INSERT INTO CW_MatCostMonth_Price(KCYear,KCMonth,DDBH,USPRICE,Memo,UserID,UserDate,YN)');
                Qry_Import.sql.Add('VALUES(');
                Qry_Import.SQL.Add('   '''+CBX1.Text+''', '''+CBX2.Text+''' ');
                Qry_Import.sql.Add('   ,'''+trim(arrData[i,1])+''' ');
                Qry_Import.sql.Add('   ,'''+trim(arrData[i,2])+''' ');
                Qry_Import.sql.Add('   ,'''+trim(arrData[i,3])+''' ');
                Qry_Import.sql.Add('   ,'''+main.Edit1.Text+''' ');
                Qry_Import.sql.Add('   ,GETDATE()');
                Qry_Import.sql.Add('   ,''1'') ');
                //funcobj.WriteErrorLog(sql.Text);
                Qry_Import.ExecSQL;
            end;
            Inc(temp);
          end;
          inc(i);
          ProgressBar2.Position:=ProgressBar2.Position+1;
          ProgressBar2.Refresh;
        end;
      except
        Error:=true;
        Break;
      end;
    end;
  finally
    ProgressBar2.Position:=0;
    ProgressBar2.Refresh;
    IntToStr(temp);
    if Error then
      MessageDlg('Error: DDBH '+trim(arrData[i,1])+'. Import '+IntToStr(temp)+' rows complete!!!',mtError,[mbOK],0)
    else
    begin
      MessageDlg('OK !!!, Import ('+IntToStr(temp)+') rercords !!', mtConfirmation,[mbOK],0);
      Qry_Import.Close;
      Panel11Click(nil);
    end;
    ExcelApp.ActiveWorkBook.Close(SaveChanges:=0);
    ExcelApp.Quit;
    ExcelApp:=Unassigned;
    arrData:=Unassigned;
  end;
  button1.Click;
end;

procedure TSemiImportPrice.Panel11Click(Sender: TObject);
begin
  Panel9.Visible:=false;
end;

procedure TSemiImportPrice.Delete1Click(Sender: TObject);
begin   
  with Query1 do
  begin
    RequestLive:=true;
    CachedUpdates:=true;
    edit;             
    fieldbyname('YN').Value:='0';
  end;
  save1.Enabled:=true;
  Cancel1.Enabled:=true;
  CopyPrice1.Enabled:=true;
end;

end.
