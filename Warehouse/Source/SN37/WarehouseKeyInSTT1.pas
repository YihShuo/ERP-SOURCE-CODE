unit WarehouseKeyInSTT1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DBTables, DB, GridsEh, DBGridEh, StdCtrls, Buttons, ExtCtrls ,dateutils, iniFiles,
  Menus,comobj;

type
  TWarehouseKeyInSTT = class(TForm)
    Panel1: TPanel;
    BB2: TBitBtn;
    BB3: TBitBtn;
    BB4: TBitBtn;
    BB5: TBitBtn;
    BB6: TBitBtn;
    BB7: TBitBtn;
    BB1: TBitBtn;
    BBT1: TBitBtn;
    BBT2: TBitBtn;
    BBT3: TBitBtn;
    BBT4: TBitBtn;
    bbt6: TBitBtn;
    Panel2: TPanel;
    Panel3: TPanel;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Edit1: TEdit;
    Edit2: TEdit;
    Button1: TButton;
    DBGridEh1: TDBGridEh;
    Query1: TQuery;
    DS1: TDataSource;
    UpSQL1: TUpdateSQL;
    Query2: TQuery;
    Label4: TLabel;
    CBX1: TComboBox;
    Label6: TLabel;
    CBX2: TComboBox;
    CBX3: TComboBox;
    Query3: TQuery;
    Label5: TLabel;
    Edit3: TEdit;
    Query1CLBH: TStringField;
    Query1ywpm: TStringField;
    Query1dwbh: TStringField;
    Query1CKBH: TStringField;
    Query1kcbh: TStringField;
    Query1KCYEAR: TStringField;
    Query1KCMONTH: TStringField;
    Query1STT: TStringField;
    Query1Memo: TStringField;
    Query1UserID: TStringField;
    Query1UserDate: TDateTimeField;
    Query1YN: TStringField;
    CheckBox1: TCheckBox;
    CheckBox2: TCheckBox;
    Button2: TButton;
    Label7: TLabel;
    ComboBox1: TComboBox;
    Label8: TLabel;
    ComboBox2: TComboBox;
    temp: TQuery;
    OpenDialog1: TOpenDialog;
    bbt7: TBitBtn;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormDestroy(Sender: TObject);
    procedure BB1Click(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure BB4Click(Sender: TObject);
    procedure BB5Click(Sender: TObject);
    procedure BB6Click(Sender: TObject);
    procedure bbt6Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure bbt7Click(Sender: TObject);
  private
    AppDir:string;
    { Private declarations }
    procedure readini();
  public
    WH_Decimal:String;
    WH_DiplayFormat:String;
    { Public declarations }
    IsHide_Warehouse_XT:String;
  end;

var
  WarehouseKeyInSTT: TWarehouseKeyInSTT;

implementation

uses main1,fununit;

{$R *.dfm}
procedure TWarehouseKeyInSTT.readini();
var MyIni :Tinifile;
    AppDir:string;
begin
  //
  IsHide_Warehouse_XT:='N';
  //倉庫小位數
  WH_Decimal:='2';
  WH_DiplayFormat:='#,##0.00';
  AppDir:=ExtractFilePath(Application.ExeName);
  if FileExists(AppDir+'\ComName.ini')=true then
  begin
    try
      MyIni := Tinifile.Create(AppDir+'\ComName.ini');
      //倉庫小位數
      WH_Decimal:=MyIni.ReadString('Warehouse','Decimal','2');
      WH_DiplayFormat:=MyIni.ReadString('Warehouse','DiplayFormat','#,##0.00');
      //隱藏XT
      IsHide_Warehouse_XT:=MyIni.ReadString('ERP','IsHide_Warehouse_XT','N');
    finally
      MyIni.Free;
    end;
  end;
 //
end;

procedure TWarehouseKeyInSTT.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  action:=cafree;
end;

procedure TWarehouseKeyInSTT.FormDestroy(Sender: TObject);
begin
  WarehouseKeyInSTT:=nil;
end;

procedure TWarehouseKeyInSTT.BB1Click(Sender: TObject);
begin
  Panel3.Visible:=true;
end;

procedure TWarehouseKeyInSTT.Button1Click(Sender: TObject);
var iYear,iMonth,iDay:word;
    sYear,sMonth:String;
    sDate:TDate;
begin
  sDate := EncodeDate(StrToInt(CBX1.Text), StrToInt(CBX2.Text), 1);
  DecodeDate(sDate, iYear, iMonth, iDay); //找庫存相關的數據
  IncAMonth(iYear, iMonth, iDay, -1);
  sYear := FloatToStr(iYear);
  sMonth := FloatToStr(iMonth);
  if (Length(sMonth) = 1) then
    sMonth := '0' + sMonth;
  with Query1 do
  begin
    active:=false;
    sql.Clear;
    sql.Add('select KCZLS.clbh as CLBH,clzl.ywpm,clzl.dwbh,kczls.CKBH,KCZLS.kcbh,Mat.KCYEAR,Mat.KCMONTH,Mat.STT,Mat.Memo,Mat.UserID,Mat.UserDate,Mat.YN ');
    sql.Add('from kczls left join KCCLMONTH_Mat_Order Mat ');
    sql.Add('on kczls.clbh=Mat.CLBH and kczls.CKBH=Mat.CKBH and Mat.KCYEAR='''+CBX1.Text+''' and Mat.KCMONTH='''+CBX2.Text+'''  ');
    sql.Add('left join clzl on kczls.CLBH=clzl.cldh ');
    sql.Add('where KCZLS.CKBH='''+CBX3.Text+'''  ');
    if edit1.Text <> '' then
       sql.Add(' and  KCZLS.CLBH like '''+edit1.Text+'%'' ');
    if edit2.Text <> '' then
       sql.Add(' and  clzl.YWPM like ''%'+edit2.Text+'%'' ');
    if edit3.Text <> '' then
       sql.Add(' and  kczls.kcbh like '''+edit3.Text+'%'' ');
    if checkbox2.Checked then
       sql.Add(' and  kczls.kcqty > 0');
    if checkbox1.Checked then
    begin
      sql.Add('and Exists (  Select  CLBH from (   ');
      sql.Add('             	 Select  KCCLMONTH.CLBH from KCCLMONTH where CKBH ='''+CBX3.Text+'''  and KCYEAR='''+sYear+''' and KCMONTH='''+sMonth+''' ');
      sql.Add('             	 union all   ');
      sql.Add('                Select  CGZLS.CLBH from CGZL,CGZLS where CGZL.CGNO=CGZLS.CGNO and CGZL.GSBH='''+main.Edit2.Text+''' and Convert(smalldatetime,Convert(varchar,CGZL.USERDate)) between   ');
      sql.Add('                        '''+Formatdatetime('yyyy/MM/dd',startofthemonth(sDate))+''' and '''+Formatdatetime('yyyy/MM/dd',endofthemonth(sDate))+''' ');
      sql.Add('                union all   ');
      sql.Add('                Select  JGZLS.CLBH from JGZL,JGZLS where JGZL.JGNO=JGZLS.JGNO and JGZL.CKBH ='''+CBX3.Text+'''    and Convert(smalldatetime,Convert(varchar,JGZL.USERDate)) between   ');
      sql.Add('                        '''+Formatdatetime('yyyy/MM/dd',startofthemonth(sDate))+''' and '''+Formatdatetime('yyyy/MM/dd',endofthemonth(sDate))+''' ');
      sql.Add('                union all   ');
      sql.Add('                Select  KCLLS.CLBH from KCLL,KCLLS where KCLL.LLNO=KCLLS.LLNO and KCLL.CKBH ='''+CBX3.Text+'''   and Convert(smalldatetime,Convert(varchar,KCLL.CFMDate)) between  ');
      sql.Add('                        '''+Formatdatetime('yyyy/MM/dd',startofthemonth(sDate))+''' and '''+Formatdatetime('yyyy/MM/dd',endofthemonth(sDate))+''' ');
      sql.Add('       	 ) CLBHAll  where CLBHAll.CLBH=KCZLS.CLBH Group by CLBH)   ');
   end;
   sql.Add('Order by KCZLS.CLBH');
   //funcobj.WriteErrorLog(sql.Text);
   active:=true;
  end;
  if query1.RecordCount >0 then
  begin
    BB4.Enabled := true;
    bbt6.Enabled := true;
  end;
  
end;

procedure TWarehouseKeyInSTT.FormCreate(Sender: TObject);
var
  myYear, myMonth, myDay : Word;
  i,j,m:integer;
begin
  with query2 do
  begin
    active:=false;
    sql.Clear;
    sql.add('select CKBH from KCCK ');
    sql.add('where GSBH='+''''+main.Edit2.Text+'''');
    sql.add('order by CKBH');
    active:=true;
    CBX3.Items.Clear;
    while not eof do
    begin
      CBX3.Items.Add(fieldbyname('CKBH').AsString);
      next;
    end;
    CBX3.ItemIndex:=0;
    active:=false;
  end;
  // Load year-month
  DecodeDate(Date(), myYear, myMonth, myDay);
  for i:=0 to CBX1.Items.Count-1 do
  begin
    if strtoint(CBX1.Items[i])=myYear then
    begin
      CBX1.ItemIndex:=i;
      ComboBox1.ItemIndex:=i;
      break;
    end;
  end;
 for i := 0 to CBX2.Items.Count - 1 do
begin
  if TryStrToInt(CBX2.Items[i], m) and (m = myMonth) then
  begin
    // CBX2 = th嫕g hi?n t?i
    CBX2.ItemIndex := i;

    // ComboBox2 di tru?c 1 th嫕g
    if i < ComboBox2.Items.Count - 1 then
      ComboBox2.ItemIndex := i + 1
    else
     begin
      ComboBox2.ItemIndex := 0;
      ComboBox1.ItemIndex := ComboBox1.ItemIndex + 1; // tang nam
    end;
    Break;
  end;
end;

  AppDir:=ExtractFilePath(Application.ExeName);
  readini();
end;

procedure TWarehouseKeyInSTT.BB4Click(Sender: TObject);
begin
  with query1 do
  begin
    cachedupdates:=true;
    requestlive:=true;
    query1.edit;
  end;
  bb5.enabled:=true;
  bb6.enabled:=true;
end;

procedure TWarehouseKeyInSTT.BB5Click(Sender: TObject);
var
  NDate: TDate;
  i: integer;
begin
  with query2 do
  begin
    Active := false;
    SQL.Clear;
    SQL.Add('SELECT GETDATE() AS NDate');
    Active := true;

    NDate := FieldByName('NDate').Value;
    Active := false;
  end;

  try
    Query1.First;
    for i := 1 to Query1.RecordCount do
    begin
      case Query1.UpdateStatus of
        usModified, usInserted:
        begin
          Query1.Edit;
          Query1.FieldByName('KCYEAR').Value := CBX1.Text;
          Query1.FieldByName('KCMONTH').Value := CBX2.Text;
          Query1.FieldByName('USERID').Value := main.Edit1.text;
          Query1.FieldByName('USERDATE').Value := NDate;

          if (Query1.FieldByName('YN').AsString = '1') then
          begin
            UpSQL1.Apply(ukModify);
          end
          else begin
            Query1.FieldByName('YN').Value := '1';
            UpSQL1.Apply(ukInsert);
          end;
        end;
      end;

      Query1.Next;
    end;
    Query1.Active := false;
    Query1.CachedUpdates := false;
    Query1.RequestLive := false;
    Query1.Active := true;
    BB5.Enabled := false;
    BB6.Enabled := false;
  except
    MessageDlg('Have wrong, can not save data!', mtWarning, [mbyes], 0);
  end;

end;

procedure TWarehouseKeyInSTT.BB6Click(Sender: TObject);
begin
  with query1 do
  begin
    active:=false;
    cachedupdates:=false;
    requestlive:=false;
    active:=true;
  end;
  bb5.enabled:=false;
  bb6.enabled:=false;
end;


procedure TWarehouseKeyInSTT.bbt6Click(Sender: TObject);
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
         if ((DBGridEh1.Fields[i].FieldName = 'KCMONTH') or (DBGridEh1.Fields[i].FieldName = 'STT')) then
            eclApp.Cells(j,i+1):= #39 + DBGridEh1.Fields[i].Value
         else
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

procedure TWarehouseKeyInSTT.Button2Click(Sender: TObject);
begin
  with temp do
  begin
    // 1) DELETE
      Active := False;
      SQL.Clear;
      SQL.Add('delete from KCCLMONTH_Mat_Order');
      SQL.Add('where KCYEAR = :Y and KCMONTH = :M and CKBH = :CKBH_DEL');
      ParamByName('Y').AsString := ComboBox1.Text;
      ParamByName('M').AsString := ComboBox2.Text;
      ParamByName('CKBH_DEL').AsString := CBX3.Text;
      ExecSQL;
    SQL.Clear;
    SQL.Add('insert into KCCLMONTH_Mat_Order');
    SQL.Add('(KCYEAR, KCMONTH, CKBH, CLBH, STT, Memo, UserID, UserDate, YN)');
    SQL.Add('select :Y, :M, CKBH, CLBH, STT, Memo, :EditVal, :UserDate,1 as YN');
    SQL.Add('from KCCLMONTH_Mat_Order mat');
    SQL.Add('where mat.KCYEAR = :Y2');
    SQL.Add('and mat.KCMONTH = :M2');
    SQL.Add('and mat.CKBH = :CKBH');

    ParamByName('Y').AsString := ComboBox1.Text;
    ParamByName('M').AsString := ComboBox2.Text;
    ParamByName('EditVal').AsString := Main.Edit1.Text;
    ParamByName('UserDate').AsDate := Date;

    ParamByName('Y2').AsString := CBX1.Text;
    ParamByName('M2').AsString := CBX2.Text;
    ParamByName('CKBH').AsString := CBX3.Text;

    ExecSQL;
   end;
end;

procedure TWarehouseKeyInSTT.bbt7Click(Sender: TObject);
var
  eclApp, Sheet: OleVariant;
  SelectedFileName, Material, Warehouse, STT, Memo: string;
  Col, Row, id_Mat, id_WH, id_STT, id_Memo: integer;
begin
  try
    if (OpenDialog1.Execute) then
    begin
      SelectedFileName := ExtractFileName(OpenDialog1.FileName);
      try
        eclApp := CreateOleObject('Excel.Application');
        eclApp.workbooks.Open(OpenDialog1.FileName);

        Sheet := eclApp.WorkSheets[1];
        eclapp.Columns.Autofit;

        Row := 1;
        Col := 1;
        while (Sheet.Cells[Row, Col].Text <> '') do
        begin
          if (UpperCase(Sheet.Cells[Row, Col]) = 'CLBH') then
            id_Mat := Col
          else if (UpperCase(Sheet.Cells[Row, Col]) = 'CKBH') then
            id_WH := Col
          else if (UpperCase(Sheet.Cells[Row, Col]) = 'STT') then
            id_STT := Col
          else if (UpperCase(Sheet.Cells[Row, Col]) = 'MEMO') then
            id_Memo := Col;

          Inc(Col);
        end;

        if (id_Mat > 0) AND (id_WH > 0) AND (id_STT > 0) then
        begin
          if (MessageDlg('Are you sure you want to update the material information for [' + CBX1.Text + '/' + CBX2.Text + ']?', mtConfirmation, [mbYes, mbNo], 0) = mrYes) then
          begin
            with Query1 do
            begin
              Active := false;
              SQL.Clear;
              SQL.Add('SELECT KCZLS.CLBH, CLZL.YWPM, CLZL.DWBH, KCZLS.CKBH, KCZLS.KCBH, Mat.KCYEAR, Mat.KCMONTH, Mat.STT, Mat.Memo, Mat.UserID, Mat.UserDate, Mat.YN FROM KCZLS');
              SQL.Add('LEFT JOIN KCCLMONTH_Mat_Order AS Mat ON KCZLS.CLBH = Mat.CLBH AND KCZLS.CKBH = Mat.CKBH AND Mat.KCYEAR = '''' AND Mat.KCMONTH = ''''');
              SQL.Add('LEFT JOIN CLZL ON KCZLS.CLBH = CLZL.CLDH');
              SQL.Add('WHERE 1 = 0');

              RequestLive := true;
              CachedUpdates := true;
              Active := true;
            end;

            Row := 2;
            while (Sheet.Cells[Row, id_Mat].Text <> '') AND (Sheet.Cells[Row, id_WH].Text <> '') AND (Sheet.Cells[Row, id_STT].Text <> '') do
            begin
              Material := Sheet.Cells[Row, id_Mat].Text;
              Warehouse := Sheet.Cells[Row, id_WH].Text;
              STT := Sheet.Cells[Row, id_STT].Text;
              if (id_Memo > 0) then
                Memo := Sheet.Cells[Row, id_Memo].Text;

              with temp do
              begin
                Active := false;
                SQL.Clear;
                SQL.Add('SELECT KCZLS.CLBH, KCZLS.YWPM, KCZLS.DWBH, KCZLS.KCBH, Mat.CKBH, Mat.STT, Mat.Memo, Mat.UserID, Mat.UserDate, Mat.YN FROM (');
                SQL.Add('  SELECT KCZLS.CKBH, KCZLS.KCBH, KCZLS.CLBH, CLZL.YWPM, CLZL.DWBH FROM KCZLS');
                SQL.Add('  LEFT JOIN CLZL ON CLZL.CLDH = KCZLS.CLBH');
                SQL.Add('  WHERE KCZLS.CKBH = ''' + Warehouse + ''' AND KCZLS.CLBH = ''' + Material + '''');
                SQL.Add(') AS KCZLS');
                SQL.Add('LEFT JOIN (');
                SQL.Add('  SELECT CKBH, CLBH, STT, Memo, UserID, UserDate, YN FROM KCCLMONTH_Mat_Order');
                SQL.Add('  WHERE KCYEAR = ''' + CBX1.Text + ''' AND KCMONTH = ''' + CBX2.Text + ''' AND CKBH = ''' + Warehouse + ''' AND CLBH = ''' + Material + '''');
                SQL.Add(') AS Mat ON Mat.CKBH = KCZLS.CKBH AND Mat.CLBH = KCZLS.CLBH');
                Active := true;
              end;

              if (temp.RecordCount > 0) then
              begin
                with Query1 do
                begin
                  Append;
                  FieldByName('CLBH').Value := Material;
                  FieldByName('YWPM').Value := temp.FieldByName('YWPM').AsString;
                  FieldByName('DWBH').Value := temp.FieldByName('DWBH').AsString;
                  FieldByName('CKBH').Value := Warehouse;
                  FieldByName('KCBH').Value := temp.FieldByName('KCBH').AsString;
                  FieldByName('KCYEAR').Value := CBX1.Text;
                  FieldByName('KCMONTH').Value := CBX2.Text;
                  FieldByName('STT').Value := STT;
                  FieldByName('Memo').Value := Memo;
                  FieldByName('UserID').Value := temp.FieldByName('UserID').Value;
                  FieldByName('UserDate').Value := temp.FieldByName('UserDate').Value;
                  if (temp.FieldByName('YN').AsString = '1') then
                    FieldByName('YN').Value := '1';
                end;
              end
              else begin
                ShowMessage(
                  'The following material cannot be found.' + #13#10 + #13#10 +
                  'Material ID: [' + Material + ']' + #13#10 +
                  'Warehouse: [' + Warehouse + ']' + #13#10 +
                  'Shelves: [' + temp.FieldByName('KCBH').AsString + ']'
                );
              end;

              Inc(Row);
            end;
          end
          else begin
            eclApp.DisplayAlerts := false;
            eclApp.WorkBooks.Close;
            eclApp.Quit;
            Exit;
          end;
        end
        else begin
          eclApp.DisplayAlerts := false;
          eclApp.WorkBooks.Close;
          eclApp.Quit;
          ShowMessage('Unacceptable Excel Format.');
          Exit;
        end;

        Query1.First;
        BB5.Enabled := true;
        BB6.Enabled := true;
        eclApp.DisplayAlerts := false;
        eclApp.WorkBooks.Close;
        eclApp.Quit;
        ShowMessage('Completed');
      except on F:Exception do
        begin
          eclApp.DisplayAlerts := false;
          eclApp.WorkBooks.Close;
          eclApp.Quit;
          ShowMessage(F.Message);
          Exit;
        end;
      end;
    end;
  except on F:Exception do
    begin
      ShowMessage(F.Message);
      Exit;
    end;
  end;
end;

end.
