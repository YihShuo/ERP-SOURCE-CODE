unit ImportCon_NO1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Buttons, ExtCtrls, GridsEh, DBGridEh,comobj, DBClient,
  DBCtrls, DB, DBTables, AppEvnts, Menus, ComCtrls;
type
  TImportCon_NO = class(TForm)
    opendialog: TOpenDialog;
    DS1: TDataSource;
    Qry: TQuery;
    UPD_Qry: TUpdateSQL;
    QryCON_NO: TStringField;
    Qryddbh: TStringField;
    Qrycartonno: TIntegerField;
    BDelRec: TQuery;
    PageControl1: TPageControl;
    TabSheet1: TTabSheet;
    Panel1: TPanel;
    Panel2: TPanel;
    BB1: TBitBtn;
    bbt1: TButton;
    BB5: TBitBtn;
    BB4: TBitBtn;
    BB6: TBitBtn;
    BB7: TBitBtn;
    Panel3: TPanel;
    Label1: TLabel;
    Label2: TLabel;
    Edit1: TEdit;
    Edit2: TEdit;
    DBGridEh1: TDBGridEh;
    TabSheet2: TTabSheet;
    Panel4: TPanel;
    cc1: TBitBtn;
    cct1: TButton;
    cc5: TBitBtn;
    cc4: TBitBtn;
    cc6: TBitBtn;
    cc7: TBitBtn;
    Panel5: TPanel;
    Label4: TLabel;
    Edit4: TEdit;
    DBGridEh2: TDBGridEh;
    DS2: TDataSource;
    Qry2: TQuery;
    UPD_Qry2: TUpdateSQL;
    Qry2CON_NO: TStringField;
    Qry2CON_DATE: TDateTimeField;
    Qry2USERID: TStringField;
    Qry2USERDATE: TDateTimeField;
    CC2: TBitBtn;
    Qry2yn: TStringField;
    CC3: TBitBtn;
    Label5: TLabel;
    DTP1: TDateTimePicker;
    DTP2: TDateTimePicker;
    CB1: TCheckBox;
    Qry2CARTONNO: TIntegerField;
    Qry2XFD: TDateTimeField;
    Qry2GSBH: TStringField;
    Qry2OB_DATE: TDateTimeField;
    Qry2truckNumber: TStringField;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormDestroy(Sender: TObject);
    procedure BB1Click(Sender: TObject);
    procedure bbt1Click(Sender: TObject);
    procedure BB5Click(Sender: TObject);
    procedure BB4Click(Sender: TObject);
    procedure BB6Click(Sender: TObject);
    procedure BB7Click(Sender: TObject);
    procedure cct1Click(Sender: TObject);
    procedure cc1Click(Sender: TObject);
    procedure CC2Click(Sender: TObject);
    procedure cc6Click(Sender: TObject);
    procedure cc7Click(Sender: TObject);
    procedure cc5Click(Sender: TObject);
    procedure cc4Click(Sender: TObject);
    procedure CC3Click(Sender: TObject);
    procedure DBGridEh2DrawColumnCell(Sender: TObject; const Rect: TRect;
      DataCol: Integer; Column: TColumnEh; State: TGridDrawState);
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  ImportCon_NO: TImportCon_NO;

implementation

uses main1;

{$R *.dfm}

procedure TImportCon_NO.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  action:=caFree;
end;

procedure TImportCon_NO.FormDestroy(Sender: TObject);
begin
   ImportCon_NO:=nil;
end;

procedure TImportCon_NO.BB1Click(Sender: TObject);
begin
   if  (edit1.Text='') and (edit2.Text='') then
   begin
      showmessage('must key in CON_NO or OrderNO');
      abort;
   end;
   with Qry do
   begin
     active:=false;
     sql.Clear;
     sql.add('select CON_NO,ddbh,cartonno from YWCP');
     sql.Add('where 1=1');
     if edit1.Text<>'' then
        sql.Add('and ddbh=  '''+edit1.Text+''' ');
     if edit2.Text<>'' then
        sql.Add('and CON_NO=  '''+edit2.Text+''' ');
     active:=true;
   end;

   bb4.Enabled:=true;
   bb5.Enabled:=true;
   bb6.enabled:=true;
   bb7.Enabled:=true;
end;

procedure TImportCon_NO.bbt1Click(Sender: TObject);
var
  MsExcel: OleVariant;
  MsExcelWorkbook: Variant;
  CON_NO, DDBH: TStringList;
  CartonNoBeginList, CartonNoEndList: TList; // 使用非泛型 TList
  j, n, i, start, rowCount: Integer;
  flag: Boolean;
  eof, cellValue: Variant;
begin
  bb4.Enabled:=true;
  bb5.enabled:=trUe;
  bb6.enabled:=trUe;
  // 初始化非泛型 TList
  CON_NO := TStringList.Create;
  DDBH := TStringList.Create;
  CartonNoBeginList := TList.Create;
  CartonNoEndList := TList.Create;
    with Qry do
    begin
      Active := False;
      SQL.Clear;
      SQL.Add('SELECT CON_NO, DDBH, CartonNo FROM YWCP');
      SQL.Add('WHERE 1=2'); // Creates empty result set
      Active := True;
    end;

  try
    if OpenDialog.Execute then
    begin
      // 初始化 Excel 應用程式
      try
        MsExcel := CreateOleObject('Excel.Application');
        MsExcel.Visible := False;
        MsExcelWorkbook := MsExcel.Workbooks.Open(OpenDialog.FileName);

        // 獲取工作表總行數
        rowCount := msExcel.WorkBooks[1].WorkSheets[1].UsedRange.Rows.Count;
        if rowCount < 2 then
        begin
          ShowMessage('Excel 檔案無效或無資料行！');
          MsExcelWorkbook.Close;
          MsExcel.Quit;
          Exit;
        end;

        n := 0;
        j := 2;
        flag := True;

        // 逐行讀取 Excel 資料
        while flag and (j <= rowCount) do
        begin
          try
            cellValue := msExcel.WorkBooks[1].WorkSheets[1].Cells[j, 1];
            if VarIsEmpty(cellValue) or VarIsNull(cellValue) or (VarToStrDef(cellValue, '') = '') then
            begin
              flag := False;
              Continue;
            end;

            CON_NO.Add(VarToStrDef(msExcel.WorkBooks[1].WorkSheets[1].Cells[j, 1], ''));
            DDBH.Add(VarToStrDef(msExcel.WorkBooks[1].WorkSheets[1].Cells[j, 2], ''));

            // 將 Integer 值存入 TList，需使用 Pointer 轉換
            CartonNoBeginList.Add(Pointer(StrToIntDef(VarToStrDef(msExcel.WorkBooks[1].WorkSheets[1].Cells[j, 3], '0'), 0)));
            CartonNoEndList.Add(Pointer(StrToIntDef(VarToStrDef(msExcel.WorkBooks[1].WorkSheets[1].Cells[j, 4], '0'), 0)));

            if Integer(CartonNoBeginList[CartonNoBeginList.Count - 1]) <= Integer(CartonNoEndList[CartonNoEndList.Count - 1]) then
              n := n + (Integer(CartonNoEndList[CartonNoEndList.Count - 1]) - Integer(CartonNoBeginList[CartonNoBeginList.Count - 1]) + 1)
            else
              n := n + 1;
          except
            on E: Exception do
            begin
              ShowMessage('讀取第 ' + IntToStr(j) + ' 行時發生錯誤: ' + E.Message);
              flag := False;
              Continue;
            end;
          end;

          j := j + 1;
        end;

        MsExcelWorkbook.Close;
        MsExcel.Quit;
      except
        on E: Exception do
        begin
          ShowMessage('Excel 處理錯誤: ' + E.Message);
          Exit;
        end;
      end;
    end;

    with Qry do
    begin
      CachedUpdates := True;
      RequestLive := True;
      Edit;
      First;
    end;

    for i := 0 to CON_NO.Count - 1 do
    begin
      if Integer(CartonNoBeginList[i]) <= Integer(CartonNoEndList[i]) then
      begin
        for start := Integer(CartonNoBeginList[i]) to Integer(CartonNoEndList[i]) do
        begin
          Qry.Insert;
          Qry.FieldByName('CON_NO').AsString := CON_NO[i];
          Qry.FieldByName('DDBH').AsString := DDBH[i];
          Qry.FieldByName('CartonNo').AsInteger := start;
          Qry.Post;
        end;
      end
      else
      begin
        Qry.Insert;
        Qry.FieldByName('CON_NO').AsString := CON_NO[i];
        Qry.FieldByName('DDBH').AsString := DDBH[i];
        Qry.FieldByName('CartonNo').AsInteger := Integer(CartonNoBeginList[i]);
        Qry.Post;
      end;
    end;

    Qry.Next;
  finally
    CON_NO.Free;
    DDBH.Free;
    CartonNoBeginList.Free;
    CartonNoEndList.Free;
  end;
end;




procedure TImportCon_NO.BB5Click(Sender: TObject);
var
  i: Integer;
begin
  try
    Qry.CachedUpdates := True;
    Qry.RequestLive := True;
    Qry.First;
    for i := 1 to Qry.RecordCount do
    begin
      case Qry.UpdateStatus of
        usModified:
        BEGIN
            UPD_Qry.Apply(ukModify);
            with BDelRec do
            begin
              active:=false;
              sql.Clear;
              SQL.Add('INSERT INTO YWCP_History (DDBH, CARTONNO, CON_NO, USERID, USERDATE)');
              SQL.Add('VALUES (' +
              QuotedStr(Qry.FieldByName('DDBH').AsString) + ', ' +
              QuotedStr(Qry.FieldByName('CARTONNO').AsString) + ', ' +
              QuotedStr(Qry.FieldByName('CON_NO').AsString) + ', ' +
              QuotedStr(Main.Edit1.Text) + ', ' +
              'getdate())');
              ExecSQL;
              Active := False;
            end;
        END;
        usinserted:
        BEGIN
            UPD_Qry.Apply(ukModify);
            with BDelRec do
            begin
              active:=false;
              sql.Clear;
              SQL.Add('INSERT INTO YWCP_History (DDBH, CARTONNO, CON_NO, USERID, USERDATE)');
              SQL.Add('VALUES (' +
              QuotedStr(Qry.FieldByName('DDBH').AsString) + ', ' +
              QuotedStr(Qry.FieldByName('CARTONNO').AsString) + ', ' +
              QuotedStr(Qry.FieldByName('CON_NO').AsString) + ', ' +
              QuotedStr(Main.Edit1.Text) + ', ' +
              'getdate())');
              ExecSQL;
              Active := False;
            end;
        END;
      end;
      Qry.Next;
    end;
    with Qry do
    begin
      Active := False;
      RequestLive := False;
      CachedUpdates := False;
      Active := True;
    end;

    bb1.Enabled := True;
    bb4.Enabled := True;
    bb5.Enabled := False;
    bb6.Enabled := False;
  except
    MessageDlg('Error: Cannot save!', mtWarning, [mbYes], 0);
  end;
end;

procedure TImportCon_NO.BB4Click(Sender: TObject);
begin
  with Qry do
  begin
    cachedupdates:=true;
    requestlive:=true;
    Qry.edit;
  end;

  bb4.Enabled:=false;
  bb5.enabled:=true;
  bb6.enabled:=true;
end;

procedure TImportCon_NO.BB6Click(Sender: TObject);
begin

  with Qry do
  begin
    active:=false;
    cachedupdates:=false;
    requestlive:=false;
    active:=true;
  end;
    bb1.Enabled:=true;
    bb4.Enabled:=true;
    bb5.Enabled:=false;
    bb6.Enabled:=false;
end;

procedure TImportCon_NO.BB7Click(Sender: TObject);
begin
   close;
end;

procedure TImportCon_NO.cct1Click(Sender: TObject);
var
  MsExcel: OleVariant;
  MsExcelWorkbook: Variant;
  CON_NO, CON_DATE: TStringList;
  j, rowCount: Integer;
  flag: Boolean;
  cellValue: Variant;
begin
  cc4.Enabled := True;
  cc5.Enabled := True;
  cc6.Enabled := True;

  // 初始化 TStringList
  CON_NO := TStringList.Create;
  CON_DATE := TStringList.Create;

  try
    with Qry2 do
    begin
      Active := False;
      SQL.Clear;
      SQL.Add('select CON_NO,CON_DATE,USERID,USERDATE from CON_PLAN');
      SQL.Add('WHERE 1=2'); // Creates empty result set
      Active := True;
    end;
    
    if OpenDialog.Execute then
    begin
      // 初始化 Excel 應用程式
      try
        MsExcel := CreateOleObject('Excel.Application');
        MsExcel.Visible := False;
        MsExcelWorkbook := MsExcel.Workbooks.Open(OpenDialog.FileName);
        
        // 獲取工作表總行數
        rowCount := MsExcel.WorkBooks[1].WorkSheets[1].UsedRange.Rows.Count;
        if rowCount < 2 then
        begin
          ShowMessage('Excel 檔案無效或無資料行！');
          MsExcelWorkbook.Close;
          MsExcel.Quit;
          Exit;
        end;
        
        j := 2; // 從第 2 行開始讀取（假設第 1 行為標題）
        flag := True;
        
        // 逐行讀取 Excel 資料
        while flag and (j <= rowCount) do
        begin
          try
            cellValue := MsExcel.WorkBooks[1].WorkSheets[1].Cells[j, 1];
            if VarIsEmpty(cellValue) or VarIsNull(cellValue) or (VarToStrDef(cellValue, '') = '') then
            begin
              flag := False;
              Continue;
            end;
            
            // 讀取 A 欄 (CON_NO)
            CON_NO.Add(VarToStrDef(MsExcel.WorkBooks[1].WorkSheets[1].Cells[j, 1], ''));
            
            // 讀取 B 欄 (DDBH)
            CON_DATE.Add(VarToStrDef(MsExcel.WorkBooks[1].WorkSheets[1].Cells[j, 2], ''));
            
          except
            on E: Exception do
            begin
              ShowMessage('讀取第 ' + IntToStr(j) + ' 行時發生錯誤: ' + E.Message);
              flag := False;
              Continue;
            end;
          end;
          j := j + 1;
        end;
        
        MsExcelWorkbook.Close;
        MsExcel.Quit;
        
      except
        on E: Exception do
        begin
          ShowMessage('Excel 處理錯誤: ' + E.Message);
          Exit;
        end;
      end;
    end;
    
    // 將資料插入 Qry
    with Qry2 do
    begin
      CachedUpdates := True;
      RequestLive := True;
      
      for j := 0 to CON_NO.Count - 1 do
      begin
        Insert;
        FieldByName('CON_NO').AsString := CON_NO[j];
        FieldByName('CON_DATE').AsString := CON_DATE[j];
        // 移除 CartonNo 相關的設定，CartonNo 欄位將使用資料庫預設值或 Null
        Post;
      end;
      
      ApplyUpdates; // 套用快取變更到資料庫
      Refresh; // 重新整理，讓 DBGridEh 更新顯示
    end;
    
    ShowMessage('匯入完成，共 ' + IntToStr(CON_NO.Count) + ' 筆資料。');
    
  finally
    CON_NO.Free;
    CON_DATE.Free;
  end;
end;

procedure TImportCon_NO.cc1Click(Sender: TObject);
begin
   with Qry2 do
   begin
     active:=false;
     sql.Clear;
     sql.add('select CON_PLAN.CON_NO,CON_PLAN.CON_DATE,CON_PLAN.USERID,CON_PLAN.USERDATE,'''' yn ,count(ywcp.CARTONNO)CARTONNO,CON_PLAN.XFD,CON_PLAN.GSBH,CON_PLAN.OB_DATE,CON_PLAN.truckNumber');
     sql.Add('from CON_PLAN');
     sql.Add('left join ywcp on ywcp.con_no=CON_PLAN.CON_NO');
     sql.Add('where 1=1 and CON_PLAN.GSBH='''+main.edit2.text+'''');
     if edit4.Text<>'' then
        sql.Add('and CON_NO=  '''+edit4.Text+''' ');
     if cb1.checked then
     begin
      sql.add('      and convert(smalldatetime,convert(varchar,CON_DATE,111)) between         ');
      sql.add('          ''' + formatdatetime('yyyy/MM/dd',DTP1.Date) + '''' + 'and ' + ''''+formatdatetime('yyyy/MM/dd',DTP2.Date) + '''');
     end;
     sql.Add('group by CON_PLAN.CON_NO,CON_PLAN.CON_DATE,CON_PLAN.USERID,CON_PLAN.USERDATE,CON_PLAN.XFD,CON_PLAN.GSBH,CON_PLAN.OB_DATE,CON_PLAN.truckNumber');
     //showmessage(sql.text);
     active:=true;
   end;
   CC1.Enabled:=FALSE;
   CC2.Enabled:=true;
   CC3.Enabled:=true;
   cc4.Enabled:=true;
   cc5.Enabled:=true;
   cc6.enabled:=true;
   cc7.Enabled:=true;
end;


procedure TImportCon_NO.CC2Click(Sender: TObject);
begin
  with Qry2 do
  begin
    cachedupdates:=true;
    requestlive:=true;
    Insert;
  end;
   CC1.Enabled:=FALSE;
   CC2.Enabled:=FALSE;
   CC3.Enabled:=FALSE;
   cc4.Enabled:=FALSE;
   cc5.Enabled:=true;
   cc6.enabled:=true;
   cc7.Enabled:=FALSE;
end;

procedure TImportCon_NO.cc6Click(Sender: TObject);
begin
  with QRY2 do
  begin
    active:=false;
    cachedupdates:=false;
    requestlive:=false;
    active:=true;
  end;
   CC1.Enabled:=true;
   CC2.Enabled:=true;
   CC3.Enabled:=true;
   cc4.Enabled:=true;
   cc5.Enabled:=FALSE;
   cc6.enabled:=FALSE;
   cc7.Enabled:=true;  
end;

procedure TImportCon_NO.cc7Click(Sender: TObject);
begin
  close;
end;

procedure TImportCon_NO.cc5Click(Sender: TObject);
var
  i: Integer;
begin
  try
    Qry2.CachedUpdates := True;
    Qry2.RequestLive := True;
    Qry2.First;
    for i := 1 to Qry2.RecordCount do
    begin
      case Qry2.UpdateStatus of
        usModified:
        BEGIN
              if Qry2.fieldbyname('YN').value='0'then
                  begin
                    UPD_Qry2.apply(ukdelete);
                  end
                else
                  begin
                    QRY2.edit;
                    QRY2.FieldByName('userID').Value:=main.edit1.text;
                    QRY2.FieldByName('userdate').Value:=Now;
                    UPD_Qry2.Apply(ukModify);
                  end;

        END;
        usinserted:
        BEGIN
            QRY2.edit;
            QRY2.FieldByName('userID').Value:=main.edit1.text;
            QRY2.FieldByName('userdate').Value:=Now;
            QRY2.FieldByName('GSBH').Value:=main.edit2.text;
            UPD_Qry2.Apply(ukinsert);
        END;
      end;
      Qry2.Next;
    end;
    with Qry2 do
    begin
      Active := False;
      RequestLive := False;
      CachedUpdates := False;
      Active := True;
    end;

   CC1.Enabled:=true;
   CC2.Enabled:=true;
   CC3.Enabled:=true;
   cc4.Enabled:=true;
   cc5.Enabled:=FALSE;
   cc6.enabled:=FALSE;
   cc7.Enabled:=true;
  except
    MessageDlg('Error: Cannot save!', mtWarning, [mbYes], 0);
  end;
end;

procedure TImportCon_NO.cc4Click(Sender: TObject);
begin
  with Qry2 do
  begin
    cachedupdates:=true;
    requestlive:=true;
    Qry2.edit;
  end;

   CC1.Enabled:=FALSE;
   CC2.Enabled:=FALSE;
   CC3.Enabled:=FALSE;
   cc4.Enabled:=FALSE;
   cc5.Enabled:=true;
   cc6.enabled:=true;
   cc7.Enabled:=FALSE;
end;

procedure TImportCon_NO.CC3Click(Sender: TObject);
begin

     with qry2 do
       begin
         cachedupdates:=true;
         requestlive:=true;
         edit;
         fieldbyname('YN').Value:='0';
       end;
   CC1.Enabled:=FALSE;
   CC2.Enabled:=FALSE;
  // CC3.Enabled:=FALSE;
   cc4.Enabled:=FALSE;
   cc5.Enabled:=true;
   cc6.enabled:=true;
   cc7.Enabled:=FALSE;
end;

procedure TImportCon_NO.DBGridEh2DrawColumnCell(Sender: TObject;
  const Rect: TRect; DataCol: Integer; Column: TColumnEh;
  State: TGridDrawState);
begin
  if qry2.FieldByName('YN').value='0' then
  begin
    dbgrideh2.canvas.font.color:=clred;
    dbgrideh2.defaultdrawcolumncell(rect,datacol,column,state);
  end;
end;

procedure TImportCon_NO.FormCreate(Sender: TObject);
begin
  DTP1.Date:=date;
  DTP2.date:=date+5;
end;

end.
