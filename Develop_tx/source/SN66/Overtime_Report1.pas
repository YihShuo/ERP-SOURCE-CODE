unit Overtime_Report1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DBTables, DB, StdCtrls, DBCtrls, Grids, DBGrids, Mask, ComCtrls,
  Buttons, ExtCtrls, GridsEh, DBGridEh, ShellAPI, DBGridEhImpExp, Menus, comobj,
  DateUtils,math, ADODB, iniFiles;

type
  TOvertime_Report = class(TForm)
    Splitter1: TSplitter;
    PageControl1: TPageControl;
    TabSheet1: TTabSheet;
    DBGridEh1: TDBGridEh;
    DBGridEh2: TDBGridEh;
    Panel1: TPanel;
    Label1: TLabel;
    Label5: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    DTP1: TDateTimePicker;
    DTP2: TDateTimePicker;
    Button1: TButton;
    CB1: TComboBox;
    Edit1: TEdit;
    Button2: TButton;
    Edit2: TEdit;
    CheckBox1: TCheckBox;
    TabSheet2: TTabSheet;
    Splitter2: TSplitter;
    TabSheet3: TTabSheet;
    Panel3: TPanel;
    Label11: TLabel;
    Label12: TLabel;
    Label13: TLabel;
    Label14: TLabel;
    Label15: TLabel;
    DTP5: TDateTimePicker;
    DTP6: TDateTimePicker;
    QueryMonth: TButton;
    CB3: TComboBox;
    Edit5: TEdit;
    ExcelMonth: TButton;
    Edit6: TEdit;
    CheckBox3: TCheckBox;
    DBGridEh4: TDBGridEh;
    DataSource1: TDataSource;
    dlgSave1: TSaveDialog;
    DataSource2: TDataSource;
    ADOConnection1: TADOConnection;
    ADOQTemp: TADOQuery;
    Query1: TQuery;
    Query1EmployeeID: TStringField;
    Query1EngName: TStringField;
    Query1Name: TStringField;
    Query1Department: TStringField;
    Query1WorkingTime: TFloatField;
    Query1OverTime: TFloatField;
    ADOQuery1: TADOQuery;
    ADOQuery1NV_MA: TStringField;
    ADOQuery1QT_NGAY: TDateTimeField;
    ADOQuery1CC_GIOBINHTHUONG: TFloatField;
    ADOQuery1CC_GIOTANGCA: TFloatField;
    QTemp: TQuery;
    QryMonth: TQuery;
    StringField1: TStringField;
    StringField2: TStringField;
    StringField3: TStringField;
    StringField4: TStringField;
    FloatField1: TFloatField;
    FloatField2: TFloatField;
    DSMonth: TDataSource;
    DSYear: TDataSource;
    QryYear: TQuery;
    StringField5: TStringField;
    StringField6: TStringField;
    StringField7: TStringField;
    StringField8: TStringField;
    FloatField3: TFloatField;
    FloatField4: TFloatField;
    TabSheet4: TTabSheet;
    Panel4: TPanel;
    Label16: TLabel;
    Label17: TLabel;
    Label18: TLabel;
    Label19: TLabel;
    Label20: TLabel;
    DTP7: TDateTimePicker;
    DTP8: TDateTimePicker;
    QueryYear: TButton;
    CB4: TComboBox;
    Edit7: TEdit;
    ExcelYear: TButton;
    Edit8: TEdit;
    CheckBox4: TCheckBox;
    DBGridEh5: TDBGridEh;
    Panel2: TPanel;
    Label6: TLabel;
    Label7: TLabel;
    Label8: TLabel;
    Label9: TLabel;
    Label10: TLabel;
    DTP3: TDateTimePicker;
    DTP4: TDateTimePicker;
    QueryWeek: TButton;
    CB2: TComboBox;
    Edit3: TEdit;
    ExcelWeek: TButton;
    Edit4: TEdit;
    CheckBox2: TCheckBox;
    DBGridEh3: TDBGridEh;
    DSWeek: TDataSource;
    QryWeek: TQuery;
    StringField9: TStringField;
    StringField10: TStringField;
    StringField11: TStringField;
    StringField12: TStringField;
    FloatField5: TFloatField;
    FloatField6: TFloatField;
    Label21: TLabel;
    Label22: TLabel;
    Label23: TLabel;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormCreate(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure ADOQuery1BeforeOpen(DataSet: TDataSet);
    procedure ADOQuery1AfterOpen(DataSet: TDataSet);
    procedure Button2Click(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure Query1AfterOpen(DataSet: TDataSet);
    procedure Query1AfterScroll(DataSet: TDataSet);
    procedure QueryWeekClick(Sender: TObject);
    procedure QueryMonthClick(Sender: TObject);
    procedure QueryYearClick(Sender: TObject);
    procedure DBGridEh3DrawColumnCell(Sender: TObject; const Rect: TRect;
      DataCol: Integer; Column: TColumnEh; State: TGridDrawState);
    procedure DBGridEh4DrawColumnCell(Sender: TObject; const Rect: TRect;
      DataCol: Integer; Column: TColumnEh; State: TGridDrawState);
    procedure DBGridEh5DrawColumnCell(Sender: TObject; const Rect: TRect;
      DataCol: Integer; Column: TColumnEh; State: TGridDrawState);
    procedure ExcelWeekClick(Sender: TObject);
    procedure ExcelMonthClick(Sender: TObject);
    procedure ExcelYearClick(Sender: TObject);
  private
    { Private declarations }
    sign: boolean;
    procedure ReadIni();
  public
      HrmsDBIP,HrmsDBUser,HrmsDBPass,HrmsDBName:String;
    { Public declarations }
  end;

var
  Overtime_Report: TOvertime_Report;

implementation

uses main1,fununit;

{$R *.dfm}
procedure TOvertime_Report.ReadIni();
var MyIni :Tinifile;
    AppDir:string;
begin
  ADOConnection1.Connected:=false;
  AppDir:=ExtractFilePath(Application.ExeName);
  if FileExists(AppDir+'\ComName.ini')=true then
  begin
    try
      MyIni := Tinifile.Create(AppDir+'\ComName.ini');
      HrmsDBIP:=MyIni.ReadString('HRMS','IP','192.168.23.12');
      HrmsDBName:=MyIni.ReadString('HRMS','Database','P0104-TYXUAN');
      HrmsDBUser:=MyIni.ReadString('HRMS','User','hrms');
      HrmsDBPass:=MyIni.ReadString('HRMS','Pass','123456');
      ADOConnection1.ConnectionString:='Provider=SQLOLEDB.1;Password='+HrmsDBPass+';Persist Security Info=True;User ID='+HrmsDBUser+';Initial Catalog='+HrmsDBName+';Data Source='+HrmsDBIP;
    finally
      MyIni.Free;
    end;
  end;
end;

procedure TOvertime_Report.FormCreate(Sender: TObject);
var KHU : string;
begin
  KHU:='';
  ReadIni();
  if (main.Edit2.Text = 'CDC') then
  begin
    KHU:='A';
  end else
  if (main.Edit2.Text = 'SKX') then
    KHU:='C';
  with ADOQTemp do
  begin
    Active := false;
    SQL.Clear;
    SQL.Add('SELECT DV_MA FROM ST_DONVI');
    if KHU='A' then
      SQL.Add('WHERE ((N_MA = ''KHTH'') or (X_MA_ = ''A1A2'') or (N_MA = ''KYTHUAT'')) AND KHU = '''+KHU+'''  AND DV_LocBB = 0 AND DV_TV <> 1');
    if KHU='C' then
      SQL.Add('WHERE KHU = '''+KHU+'''  AND DV_LocBB = 0 AND DV_TV <> 1 ');
    SQL.Add('ORDER BY DV_MA');
    //showmessage(sql.Text);
    //memo1.Lines:=sql;
    Active := true;

    while not Eof do
    begin
      CB1.Items.Add(FieldByName('DV_MA').AsString);
      Next;
    end;

  //Them
  with QTemp do
  begin
    active:=false;
    SQL.Clear;
    SQL.Add('SET ANSI_NULLS ON ');
    SQL.Add('SET ANSI_WARNINGS ON ');
    ExecSQL();
    sql.Clear;
    SQL.Add('SELECT DV_MA FROM [HRS].[P0104-TYXUAN].[dbo].ST_DONVI');
    if KHU='A' then
      SQL.Add('WHERE ((N_MA = ''KHTH'') or (X_MA_ = ''A1A2'') or (N_MA = ''KYTHUAT'')) AND KHU = '''+KHU+'''  AND DV_LocBB = 0 AND DV_TV <> 1');
    if KHU='C' then
      SQL.Add('WHERE KHU = '''+KHU+'''  AND DV_LocBB = 0 AND DV_TV <> 1 ');
    SQL.Add('and DV_MA IN (''A1A2 CBY'', ''A1A2 CBY. CHAT'', ''A1A2 CBY. GO'', ''A1A2 CBY. MAY'',''A1A2KHTH.KVT.PM'', ''A1A2KTh. OP'', ');
    SQL.Add(' ''A1A2KTh. PMC'', ''A1A2KTh. PMG'',''A1A2KTh. PMM'', ''A1A2KTh.A'', ''A1A2KTh.B'', ''A1A2KTh.BOM'', ''A1A2KTh.C'', ');
    SQL.Add(' ''A1A2KTh.D'', ''A1A2KTh.E'', ''A1A2KTh.F'', ''A1A2KTh.GT'', ''A1A2KTh.TEST'',''A1A2KTh.TM'', ''A1A2KTh-CE'', ''A1A2KTh-KT.A'', ');
    SQL.Add(' ''A1A2KTh-KT.B'', ''A1A2KTh-KT.E'',''A1A2KTh-KT.G'', ''A1A2KTh-PR'', ''A1A2KTh-SQ.PM'', ''A1A2QL-KHAI THAC'', ');
    SQL.Add(' ''A1A2QL-KHAI THAC GT'', ''A1A2QL-KHAI THAC KT'', ''A1A2QL-KHAI THAC PM'', ''A1A2QL-KHAI THAC PR'') ');
    SQL.Add('ORDER BY DV_MA');
    //showmessage(sql.Text);
    //memo1.Lines:=sql;
    Active := true;

    while not Eof do
    begin
      CB2.Items.Add(FieldByName('DV_MA').AsString);
      CB3.Items.Add(FieldByName('DV_MA').AsString);
      CB4.Items.Add(FieldByName('DV_MA').AsString);
      Next;
    end;
  end;

  DTP2.Date := now;
  DTP1.Date := DTP2.Date - 7;

  DTP4.Date := now;
  DTP3.Date := DTP4.Date - 7;

  DTP6.Date := now;
  DTP5.Date := EncodeDate(YearOf(DTP6.Date), MonthOf(DTP6.Date), 1);

  DTP8.Date := Now;
  DTP7.Date := EncodeDate(YearOf(DTP8.Date), 1, 1);
  pagecontrol1.ActivePage:=Tabsheet1;

  with QTemp do
  begin
    Active:=false;
    sql.Clear;
    sql.Add('SELECT name FROM sys.objects WHERE name=''fSignsToNoSigns''');
    Active:=true;
    if QTemp.RecordCount>0 then sign:=true else sign:=false;
  end;

end;
end;

procedure TOvertime_Report.FormShow(Sender: TObject);
begin
  //Panel1.SetFocus;
end;

procedure TOvertime_Report.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  Action := caFree;
end;

procedure TOvertime_Report.FormDestroy(Sender: TObject);
begin
  Overtime_Report := nil;
end;

procedure TOvertime_Report.Button1Click(Sender: TObject);
var
  IDList,KHU: string;
  NV_Ten: string;
begin

  if (main.Edit2.Text = 'CDC') then
  begin
    KHU:='A';
  end else
  if (main.Edit2.Text = 'SKX') then
    KHU:='C';
  SetCursor(Screen.Cursors[crSQLWait]);
  IDList := '';
  if (Edit2.Text <> '') then
  begin
    with QTemp do
    begin
      Active := false;
      SQL.Clear;
      SQL.Add('SELECT UserID FROM BUsers WHERE EngName LIKE ''' + Edit2.Text + '%''');
      Active := true;

      while not Eof do
      begin
        IDList := IDList + '''' + FieldByName('UserID').AsString + ''',';
        Next;
      end; 
      IDList := Copy(IDList, 1, Length(IDList)-1);
    end;
  end;
  
  with Query1 do
  begin
    active:=false;
    SQL.Clear;
    SQL.Add('SET ANSI_NULLS ON ');
    SQL.Add('SET ANSI_WARNINGS ON ');
    ExecSQL();
    sql.Clear;

    if CheckBox1.Checked then
    begin
      SQL.Add('SELECT ST_NHANVIEN.NV_Ma as EmployeeID, BUsers.EngName, CAST(dbo.fSignsToNoSigns(ST_NHANVIEN.NV_Ten) AS VARCHAR(200)) as Name, ST_DONVI.DV_MA as Department,');
      SQL.Add('SUM(ST_GIOQUETTHE_LOG.CC_GIOBINHTHUONG) AS WorkingTime, SUM(ST_GIOQUETTHE_LOG.CC_GIOTANGCA) AS OverTime ');
      SQL.Add('FROM [HRS].[P0104-TYXUAN].[dbo].ST_NHANVIEN ST_NHANVIEN');
    end
    else
    begin
      SQL.Add('SELECT ST_NHANVIEN.NV_Ma as EmployeeID, BUsers.EngName, CAST(dbo.fSignsToNoSigns(ST_NHANVIEN.NV_Ten) AS VARCHAR(200)) as Name, ST_DONVI.DV_MA as Department,');
      SQL.Add('SUM(ST_GIOQUETTHE.CC_GIOBINHTHUONG) AS WorkingTime, SUM(ST_GIOQUETTHE.CC_GIOTANGCA) AS OverTime ');
      SQL.Add('FROM [HRS].[P0104-TYXUAN].[dbo].ST_NHANVIEN ST_NHANVIEN');
    end;
    
    SQL.Add('LEFT JOIN [HRS].[P0104-TYXUAN].[dbo].ST_DONVI ST_DONVI ON ST_NHANVIEN.DV_MA = ST_DONVI.DV_MA');

    if CheckBox1.Checked then
      //SQL.Add('LEFT JOIN ST_GIOQUETTHE_LOG ON ST_NHANVIEN.NV_Ma = ST_GIOQUETTHE_LOG.NV_MA')
      SQL.Add('LEFT JOIN [HRS].[P0104-TYXUAN].[dbo].ST_GIOQUETTHE_LOG ST_GIOQUETTHE_LOG ON ST_NHANVIEN.NV_Ma = ST_GIOQUETTHE_LOG.NV_MA')
    else
      SQL.Add('LEFT JOIN [HRS].[P0104-TYXUAN].[dbo].ST_GIOQUETTHE ST_GIOQUETTHE ON ST_NHANVIEN.NV_Ma = ST_GIOQUETTHE.NV_MA');

    SQL.Add('LEFT JOIN Busers on ST_NHANVIEN.NV_MA=Busers.UserID COLLATE Chinese_Taiwan_Stroke_CI_AS');

    if KHU='A' then
      SQL.Add('WHERE ((ST_DONVI.N_MA = ''KHTH'') or (ST_DONVI.X_MA_ = ''A1A2'')or (ST_DONVI.N_MA = ''KYTHUAT'')) AND ST_DONVI.KHU = '''+KHU+''' AND ST_DONVI.DV_LocBB = 0 AND ST_DONVI.DV_TV <> 1');
    if KHU='C' then
      SQL.Add('WHERE ST_DONVI.KHU = '''+KHU+''' AND ST_DONVI.DV_LocBB = 0 AND ST_DONVI.DV_TV <> 1');

    if CheckBox1.Checked then
      SQL.Add('AND ST_GIOQUETTHE_LOG.QT_NGAY BETWEEN ''' + FormatDateTime('yyyy/MM/dd', DTP1.Date) + ''' AND ''' + FormatDateTime('yyyy/MM/dd', DTP2.Date) + '''')
    else
      SQL.Add('AND ST_GIOQUETTHE.QT_NGAY BETWEEN ''' + FormatDateTime('yyyy/MM/dd', DTP1.Date) + ''' AND ''' + FormatDateTime('yyyy/MM/dd', DTP2.Date) + '''');

    if (CB1.ItemIndex > 0) then
      SQL.Add('AND ST_DONVI.DV_MA = ''' + CB1.Text + '''');
    if (Edit1.Text <> '') then
      SQL.Add('AND ST_NHANVIEN.NV_Ma LIKE ''' + Edit1.Text + '%''');
    if (IDList <> '') then
      SQL.Add('AND ST_NHANVIEN.NV_Ma IN (' + IDList + ')');
    SQL.Add('GROUP BY ST_NHANVIEN.NV_Ma, ST_NHANVIEN.NV_Ten, ST_DONVI.DV_MA,BUsers.EngName');
    SQL.Add('ORDER BY ST_NHANVIEN.NV_Ma');
    //showmessage(sql.Text);
    //funcobj.WriteErrorLog(sql.Text);
    Active := true;
  end;
end;


procedure TOvertime_Report.Query1AfterOpen(DataSet: TDataSet);
begin
  with ADOQuery1 do
  begin
    Active := false;
    SQL.Clear;
    if CheckBox1.Checked then
    begin
      SQL.Add('SELECT NV_MA, QT_NGAY, CC_GIOBINHTHUONG, CC_GIOTANGCA FROM ST_GIOQUETTHE_LOG');
      SQL.Add('WHERE NV_MA = ''' + Query1.FieldByName('EmployeeID').AsString + ''' AND QT_NGAY BETWEEN ''' + FormatDateTime('yyyy/MM/dd', DTP1.Date) + ''' AND ''' + FormatDateTime('yyyy/MM/dd', DTP2.Date) + '''');
      SQL.Add('ORDER BY QT_NGAY');
    end else
    begin
      SQL.Add('SELECT NV_MA, QT_NGAY, CC_GIOBINHTHUONG, CC_GIOTANGCA FROM ST_GIOQUETTHE');
      SQL.Add('WHERE NV_MA = ''' + Query1.FieldByName('EmployeeID').AsString + ''' AND QT_NGAY BETWEEN ''' + FormatDateTime('yyyy/MM/dd', DTP1.Date) + ''' AND ''' + FormatDateTime('yyyy/MM/dd', DTP2.Date) + '''');
      SQL.Add('ORDER BY QT_NGAY');
    end;
    Active := true;
  end;
end;

procedure TOvertime_Report.Query1AfterScroll(DataSet: TDataSet);
begin
  with ADOQuery1 do
  begin
    Active := false;
    SQL.Clear;
    if CheckBox1.Checked then
    begin
      SQL.Add('SELECT NV_MA, QT_NGAY, CC_GIOBINHTHUONG, CC_GIOTANGCA FROM ST_GIOQUETTHE_LOG');
      SQL.Add('WHERE NV_MA = ''' + Query1.FieldByName('EmployeeID').AsString + ''' AND QT_NGAY BETWEEN ''' + FormatDateTime('yyyy/MM/dd', DTP1.Date) + ''' AND ''' + FormatDateTime('yyyy/MM/dd', DTP2.Date) + '''');
      SQL.Add('ORDER BY QT_NGAY');
    end else
    begin
      SQL.Add('SELECT NV_MA, QT_NGAY, CC_GIOBINHTHUONG, CC_GIOTANGCA FROM ST_GIOQUETTHE');
      SQL.Add('WHERE NV_MA = ''' + Query1.FieldByName('EmployeeID').AsString + ''' AND QT_NGAY BETWEEN ''' + FormatDateTime('yyyy/MM/dd', DTP1.Date) + ''' AND ''' + FormatDateTime('yyyy/MM/dd', DTP2.Date) + '''');
      SQL.Add('ORDER BY QT_NGAY');
    end;
    Active := true;
  end;
end;

procedure TOvertime_Report.ADOQuery1BeforeOpen(DataSet: TDataSet);
begin
  SetCursor(Screen.Cursors[crSQLWait]);
end;

procedure TOvertime_Report.ADOQuery1AfterOpen(DataSet: TDataSet);
begin
  SetCursor(Screen.Cursors[crDefault]);
end;

procedure TOvertime_Report.Button2Click(Sender: TObject);
var
  ExpClass:TDBGridEhExportClass;
  Ext:String;
begin
  dlgSave1.FileName := 'ex';

  if (dlgSave1.Execute) then
  begin
    case dlgSave1.FilterIndex of
      1: begin ExpClass := TDBGridEhExportAsXLS; Ext := 'xls'; end;
      2: begin ExpClass := TDBGridEhExportAsCSV; Ext := 'csv'; end;
      3: begin ExpClass := TDBGridEhExportAsHTML; Ext := 'htm'; end;
      4: begin ExpClass := TDBGridEhExportAsRTF; Ext := 'rtf'; end;
      5: begin ExpClass := TDBGridEhExportAsText; Ext := 'txt'; end;
    end;
  end
  else begin
    ExpClass := nil;
    Ext := '';
  end;

  if (ExpClass <> nil) then
  begin
    if UpperCase(Copy(dlgSave1.FileName,Length(dlgSave1.FileName)-2,3)) <> UpperCase(Ext) then
      dlgSave1.FileName := dlgSave1.FileName + '.' + Ext;
    SaveDBGridEhToExportFile(ExpClass, DBGridEh1, dlgSave1.FileName, true);
    if Application.MessageBox('Do you want to open the exported file?','Open file',MB_YESNO) = IDYES then
      ShellExecute(handle, 'open', PChar(dlgSave1.FileName), nil, nil, SW_SHOWNORMAL);
  end;
end;


//Week
procedure TOvertime_Report.QueryWeekClick(Sender: TObject);
var
  IDList,KHU: string;
begin
  if (main.Edit2.Text = 'CDC') then
  begin
    KHU:='A';
  end else
  if (main.Edit2.Text = 'SKX') then
    KHU:='C';
  SetCursor(Screen.Cursors[crSQLWait]);
  IDList := '';
  if (Edit4.Text <> '') then
  begin
    with QTemp do
    begin
      Active := false;
      SQL.Clear;
      SQL.Add('SELECT UserID FROM BUsers WHERE EngName LIKE ''' + Edit4.Text + '%''');
      Active := true;

      while not Eof do
      begin
        IDList := IDList + '''' + FieldByName('UserID').AsString + ''',';
        Next;
      end;
      IDList := Copy(IDList, 1, Length(IDList)-1);
    end;
  end;

  with QryWeek do
  begin
    active:=false;
    SQL.Clear;
    SQL.Add('SET ANSI_NULLS ON ');
    SQL.Add('SET ANSI_WARNINGS ON ');
    ExecSQL();
    sql.Clear;
    if CheckBox2.Checked then
    begin
      SQL.Add('SELECT ST_NHANVIEN.NV_Ma as EmployeeID, BUsers.EngName, CAST(dbo.fSignsToNoSigns(ST_NHANVIEN.NV_Ten) AS VARCHAR(200)) as Name, ST_DONVI.DV_MA as Department,');
      SQL.Add('SUM(ST_GIOQUETTHE_LOG.CC_GIOBINHTHUONG) AS WorkingTime, SUM(ST_GIOQUETTHE_LOG.CC_GIOTANGCA) AS OverTime ');
      SQL.Add('FROM [HRS].[P0104-TYXUAN].[dbo].ST_NHANVIEN ST_NHANVIEN');
    end
    else
    begin
      SQL.Add('SELECT ST_NHANVIEN.NV_Ma as EmployeeID, BUsers.EngName, CAST(dbo.fSignsToNoSigns(ST_NHANVIEN.NV_Ten) AS VARCHAR(200)) as Name, ST_DONVI.DV_MA as Department,');
      SQL.Add('SUM(ST_GIOQUETTHE.CC_GIOBINHTHUONG) AS WorkingTime, SUM(ST_GIOQUETTHE.CC_GIOTANGCA) AS OverTime ');
      SQL.Add('FROM [HRS].[P0104-TYXUAN].[dbo].ST_NHANVIEN ST_NHANVIEN');
    end;
    SQL.Add('LEFT JOIN [HRS].[P0104-TYXUAN].[dbo].ST_DONVI ST_DONVI ON ST_NHANVIEN.DV_MA = ST_DONVI.DV_MA');
    if CheckBox2.Checked then
      SQL.Add('LEFT JOIN [HRS].[P0104-TYXUAN].[dbo].ST_GIOQUETTHE_LOG ST_GIOQUETTHE_LOG ON ST_NHANVIEN.NV_Ma = ST_GIOQUETTHE_LOG.NV_MA')
    else
      SQL.Add('LEFT JOIN [HRS].[P0104-TYXUAN].[dbo].ST_GIOQUETTHE ST_GIOQUETTHE ON ST_NHANVIEN.NV_Ma = ST_GIOQUETTHE.NV_MA');
    SQL.Add('LEFT JOIN Busers on ST_NHANVIEN.NV_MA=Busers.UserID COLLATE Chinese_Taiwan_Stroke_CI_AS');
    if KHU='A' then
      SQL.Add('WHERE ((ST_DONVI.N_MA = ''KHTH'') or (ST_DONVI.X_MA_ = ''A1A2'')) AND ST_DONVI.KHU = '''+KHU+''' AND ST_DONVI.DV_LocBB = 0 AND ST_DONVI.DV_TV <> 1');
    if KHU='C' then
      SQL.Add('WHERE ST_DONVI.KHU = '''+KHU+''' AND ST_DONVI.DV_LocBB = 0 AND ST_DONVI.DV_TV <> 1');
    if CheckBox2.Checked then
      SQL.Add('AND ST_GIOQUETTHE_LOG.QT_NGAY BETWEEN ''' + FormatDateTime('yyyy/MM/dd', DTP3.Date) + ''' AND ''' + FormatDateTime('yyyy/MM/dd', DTP4.Date) + '''')
    else
      SQL.Add('AND ST_GIOQUETTHE.QT_NGAY BETWEEN ''' + FormatDateTime('yyyy/MM/dd', DTP3.Date) + ''' AND ''' + FormatDateTime('yyyy/MM/dd', DTP4.Date) + '''');
    if (CB2.ItemIndex > 0) then
      SQL.Add('AND ST_DONVI.DV_MA = ''' + CB2.Text + '''');
    if (Edit3.Text <> '') then
      SQL.Add('AND ST_NHANVIEN.NV_Ma LIKE ''' + Edit3.Text + '%''');
    if (IDList <> '') then
      SQL.Add('AND ST_NHANVIEN.NV_Ma IN (' + IDList + ')');
    SQL.Add('GROUP BY ST_NHANVIEN.NV_Ma, ST_NHANVIEN.NV_Ten, ST_DONVI.DV_MA,BUsers.EngName');
    SQL.Add('ORDER BY OverTime desc');
    //funcobj.WriteErrorLog(sql.Text);
    Active := true;
  end;

end;

//Month
procedure TOvertime_Report.QueryMonthClick(Sender: TObject);
var
  IDList,KHU: string;
begin
  if (main.Edit2.Text = 'CDC') then
  begin
    KHU:='A';
  end else
  if (main.Edit2.Text = 'SKX') then
    KHU:='C';
  SetCursor(Screen.Cursors[crSQLWait]);
  IDList := '';
  if (Edit6.Text <> '') then
  begin
    with QTemp do
    begin
      Active := false;
      SQL.Clear;
      SQL.Add('SELECT UserID FROM BUsers WHERE EngName LIKE ''' + Edit6.Text + '%''');
      Active := true;

      while not Eof do
      begin
        IDList := IDList + '''' + FieldByName('UserID').AsString + ''',';
        Next;
      end;
      IDList := Copy(IDList, 1, Length(IDList)-1);
    end;
  end;

  with QryMonth do
  begin
    active:=false;
    SQL.Clear;
    SQL.Add('SET ANSI_NULLS ON ');
    SQL.Add('SET ANSI_WARNINGS ON ');
    ExecSQL();
    sql.Clear;
    if CheckBox3.Checked then
    begin
      SQL.Add('SELECT ST_NHANVIEN.NV_Ma as EmployeeID, BUsers.EngName, CAST(dbo.fSignsToNoSigns(ST_NHANVIEN.NV_Ten) AS VARCHAR(200)) as Name, ST_DONVI.DV_MA as Department,');
      SQL.Add('SUM(ST_GIOQUETTHE_LOG.CC_GIOBINHTHUONG) AS WorkingTime, SUM(ST_GIOQUETTHE_LOG.CC_GIOTANGCA) AS OverTime ');
      SQL.Add('FROM [HRS].[P0104-TYXUAN].[dbo].ST_NHANVIEN ST_NHANVIEN');
    end
    else
    begin
      SQL.Add('SELECT ST_NHANVIEN.NV_Ma as EmployeeID, BUsers.EngName, CAST(dbo.fSignsToNoSigns(ST_NHANVIEN.NV_Ten) AS VARCHAR(200)) as Name, ST_DONVI.DV_MA as Department,');
      SQL.Add('SUM(ST_GIOQUETTHE.CC_GIOBINHTHUONG) AS WorkingTime, SUM(ST_GIOQUETTHE.CC_GIOTANGCA) AS OverTime ');
      SQL.Add('FROM [HRS].[P0104-TYXUAN].[dbo].ST_NHANVIEN ST_NHANVIEN');
    end;
    SQL.Add('LEFT JOIN [HRS].[P0104-TYXUAN].[dbo].ST_DONVI ST_DONVI ON ST_NHANVIEN.DV_MA = ST_DONVI.DV_MA');
    if CheckBox3.Checked then
      SQL.Add('LEFT JOIN [HRS].[P0104-TYXUAN].[dbo].ST_GIOQUETTHE_LOG ST_GIOQUETTHE_LOG ON ST_NHANVIEN.NV_Ma = ST_GIOQUETTHE_LOG.NV_MA')
    else
      SQL.Add('LEFT JOIN [HRS].[P0104-TYXUAN].[dbo].ST_GIOQUETTHE ST_GIOQUETTHE ON ST_NHANVIEN.NV_Ma = ST_GIOQUETTHE.NV_MA');
    SQL.Add('LEFT JOIN Busers on ST_NHANVIEN.NV_MA=Busers.UserID COLLATE Chinese_Taiwan_Stroke_CI_AS');
    if KHU='A' then
      SQL.Add('WHERE ((ST_DONVI.N_MA = ''KHTH'') or (ST_DONVI.X_MA_ = ''A1A2'')) AND ST_DONVI.KHU = '''+KHU+''' AND ST_DONVI.DV_LocBB = 0 AND ST_DONVI.DV_TV <> 1');
    if KHU='C' then
      SQL.Add('WHERE ST_DONVI.KHU = '''+KHU+''' AND ST_DONVI.DV_LocBB = 0 AND ST_DONVI.DV_TV <> 1');
    if CheckBox3.Checked then
      SQL.Add('AND ST_GIOQUETTHE_LOG.QT_NGAY BETWEEN ''' + FormatDateTime('yyyy/MM/dd', DTP5.Date) + ''' AND ''' + FormatDateTime('yyyy/MM/dd', DTP6.Date) + '''')
    else
      SQL.Add('AND ST_GIOQUETTHE.QT_NGAY BETWEEN ''' + FormatDateTime('yyyy/MM/dd', DTP5.Date) + ''' AND ''' + FormatDateTime('yyyy/MM/dd', DTP6.Date) + '''');
    if (CB3.ItemIndex > 0) then
      SQL.Add('AND ST_DONVI.DV_MA = ''' + CB3.Text + '''');
    if (Edit5.Text <> '') then
      SQL.Add('AND ST_NHANVIEN.NV_Ma LIKE ''' + Edit5.Text + '%''');
    if (IDList <> '') then
      SQL.Add('AND ST_NHANVIEN.NV_Ma IN (' + IDList + ')');
    SQL.Add('GROUP BY ST_NHANVIEN.NV_Ma, ST_NHANVIEN.NV_Ten, ST_DONVI.DV_MA,BUsers.EngName');
    SQL.Add('ORDER BY OverTime desc');
    //funcobj.WriteErrorLog(sql.Text);
    Active := true;
  end;
end;

//Year
procedure TOvertime_Report.QueryYearClick(Sender: TObject);
var
  IDList,KHU: string;
begin
  if (main.Edit2.Text = 'CDC') then
  begin
    KHU:='A';
  end else
  if (main.Edit2.Text = 'SKX') then
    KHU:='C';
  SetCursor(Screen.Cursors[crSQLWait]);
  IDList := '';
  if (Edit8.Text <> '') then
  begin
    with QTemp do
    begin
      Active := false;
      SQL.Clear;
      SQL.Add('SELECT UserID FROM BUsers WHERE EngName LIKE ''' + Edit8.Text + '%''');
      Active := true;

      while not Eof do
      begin
        IDList := IDList + '''' + FieldByName('UserID').AsString + ''',';
        Next;
      end;
      IDList := Copy(IDList, 1, Length(IDList)-1);
    end;
  end;

  with QryYear do
  begin
    active:=false;
    SQL.Clear;
    SQL.Add('SET ANSI_NULLS ON ');
    SQL.Add('SET ANSI_WARNINGS ON ');
    ExecSQL();
    sql.Clear;
    if CheckBox4.Checked then
    begin
      SQL.Add('SELECT ST_NHANVIEN.NV_Ma as EmployeeID, BUsers.EngName, CAST(dbo.fSignsToNoSigns(ST_NHANVIEN.NV_Ten) AS VARCHAR(200)) as Name, ST_DONVI.DV_MA as Department,');
      SQL.Add('SUM(ST_GIOQUETTHE_LOG.CC_GIOBINHTHUONG) AS WorkingTime, SUM(ST_GIOQUETTHE_LOG.CC_GIOTANGCA) AS OverTime ');
      SQL.Add('FROM [HRS].[P0104-TYXUAN].[dbo].ST_NHANVIEN ST_NHANVIEN');
    end
    else
    begin
      SQL.Add('SELECT ST_NHANVIEN.NV_Ma as EmployeeID, BUsers.EngName, CAST(dbo.fSignsToNoSigns(ST_NHANVIEN.NV_Ten) AS VARCHAR(200)) as Name, ST_DONVI.DV_MA as Department,');
      SQL.Add('SUM(ST_GIOQUETTHE.CC_GIOBINHTHUONG) AS WorkingTime, SUM(ST_GIOQUETTHE.CC_GIOTANGCA) AS OverTime ');
      SQL.Add('FROM [HRS].[P0104-TYXUAN].[dbo].ST_NHANVIEN ST_NHANVIEN');
    end;
    SQL.Add('LEFT JOIN [HRS].[P0104-TYXUAN].[dbo].ST_DONVI ST_DONVI ON ST_NHANVIEN.DV_MA = ST_DONVI.DV_MA');
    if CheckBox4.Checked then
      SQL.Add('LEFT JOIN [HRS].[P0104-TYXUAN].[dbo].ST_GIOQUETTHE_LOG ST_GIOQUETTHE_LOG ON ST_NHANVIEN.NV_Ma = ST_GIOQUETTHE_LOG.NV_MA')
    else
      SQL.Add('LEFT JOIN [HRS].[P0104-TYXUAN].[dbo].ST_GIOQUETTHE ST_GIOQUETTHE ON ST_NHANVIEN.NV_Ma = ST_GIOQUETTHE.NV_MA');
    SQL.Add('LEFT JOIN Busers on ST_NHANVIEN.NV_MA=Busers.UserID COLLATE Chinese_Taiwan_Stroke_CI_AS');
    if KHU='A' then
      SQL.Add('WHERE ((ST_DONVI.N_MA = ''KHTH'') or (ST_DONVI.X_MA_ = ''A1A2'')) AND ST_DONVI.KHU = '''+KHU+''' AND ST_DONVI.DV_LocBB = 0 AND ST_DONVI.DV_TV <> 1');
    if KHU='C' then
      SQL.Add('WHERE ST_DONVI.KHU = '''+KHU+''' AND ST_DONVI.DV_LocBB = 0 AND ST_DONVI.DV_TV <> 1');
    if CheckBox4.Checked then
      SQL.Add('AND ST_GIOQUETTHE_LOG.QT_NGAY BETWEEN ''' + FormatDateTime('yyyy/MM/dd', DTP7.Date) + ''' AND ''' + FormatDateTime('yyyy/MM/dd', DTP8.Date) + '''')
    else
      SQL.Add('AND ST_GIOQUETTHE.QT_NGAY BETWEEN ''' + FormatDateTime('yyyy/MM/dd', DTP7.Date) + ''' AND ''' + FormatDateTime('yyyy/MM/dd', DTP8.Date) + '''');
    if (CB4.ItemIndex > 0) then
      SQL.Add('AND ST_DONVI.DV_MA = ''' + CB4.Text + '''');
    if (Edit7.Text <> '') then
      SQL.Add('AND ST_NHANVIEN.NV_Ma LIKE ''' + Edit7.Text + '%''');
    if (IDList <> '') then
      SQL.Add('AND ST_NHANVIEN.NV_Ma IN (' + IDList + ')');
    SQL.Add('GROUP BY ST_NHANVIEN.NV_Ma, ST_NHANVIEN.NV_Ten, ST_DONVI.DV_MA,BUsers.EngName');
    SQL.Add('ORDER BY OverTime desc');
    //funcobj.WriteErrorLog(sql.Text);
    Active := true;
  end;
end;

procedure TOvertime_Report.DBGridEh3DrawColumnCell(Sender: TObject;
  const Rect: TRect; DataCol: Integer; Column: TColumnEh;
  State: TGridDrawState);
begin
  if (DBGridEh3.DataSource.DataSet.FieldByName('OverTime').AsFloat >= 10) then
  begin
    DBGridEh3.Canvas.Font.Color := clRed;
  end
  else
  begin
    DBGridEh3.Canvas.Font.Color := clWindowText;
  end;
  
  DBGridEh3.DefaultDrawColumnCell(Rect, DataCol, Column, State);
end;

procedure TOvertime_Report.DBGridEh4DrawColumnCell(Sender: TObject;
  const Rect: TRect; DataCol: Integer; Column: TColumnEh;
  State: TGridDrawState);
begin
  if (DBGridEh4.DataSource.DataSet.FieldByName('OverTime').AsFloat >= 35) then
  begin
    DBGridEh4.Canvas.Font.Color := clRed;
  end
  else
  begin
    DBGridEh4.Canvas.Font.Color := clWindowText;
  end;
  
  DBGridEh4.DefaultDrawColumnCell(Rect, DataCol, Column, State);
end;

procedure TOvertime_Report.DBGridEh5DrawColumnCell(Sender: TObject;
  const Rect: TRect; DataCol: Integer; Column: TColumnEh;
  State: TGridDrawState);
begin
  if (DBGridEh5.DataSource.DataSet.FieldByName('OverTime').AsFloat >= 250) then
  begin
    DBGridEh5.Canvas.Font.Color := clRed;
  end
  else
  begin
    DBGridEh5.Canvas.Font.Color := clWindowText;
  end;
  
  DBGridEh5.DefaultDrawColumnCell(Rect, DataCol, Column, State);
end;

procedure TOvertime_Report.ExcelWeekClick(Sender: TObject);
var
  ExpClass:TDBGridEhExportClass;
  Ext:String;
begin
  dlgSave1.FileName := 'ex';

  if (dlgSave1.Execute) then
  begin
    case dlgSave1.FilterIndex of
      1: begin ExpClass := TDBGridEhExportAsXLS; Ext := 'xls'; end;
      2: begin ExpClass := TDBGridEhExportAsCSV; Ext := 'csv'; end;
      3: begin ExpClass := TDBGridEhExportAsHTML; Ext := 'htm'; end;
      4: begin ExpClass := TDBGridEhExportAsRTF; Ext := 'rtf'; end;
      5: begin ExpClass := TDBGridEhExportAsText; Ext := 'txt'; end;
    end;
  end
  else begin
    ExpClass := nil;
    Ext := '';
  end;

  if (ExpClass <> nil) then
  begin
    if UpperCase(Copy(dlgSave1.FileName,Length(dlgSave1.FileName)-2,3)) <> UpperCase(Ext) then
      dlgSave1.FileName := dlgSave1.FileName + '.' + Ext;
    SaveDBGridEhToExportFile(ExpClass, DBGridEh3, dlgSave1.FileName, true);
    if Application.MessageBox('Do you want to open the exported file?','Open file',MB_YESNO) = IDYES then
      ShellExecute(handle, 'open', PChar(dlgSave1.FileName), nil, nil, SW_SHOWNORMAL);
  end;
end;

procedure TOvertime_Report.ExcelMonthClick(Sender: TObject);
var
  ExpClass:TDBGridEhExportClass;
  Ext:String;
begin
  dlgSave1.FileName := 'ex';

  if (dlgSave1.Execute) then
  begin
    case dlgSave1.FilterIndex of
      1: begin ExpClass := TDBGridEhExportAsXLS; Ext := 'xls'; end;
      2: begin ExpClass := TDBGridEhExportAsCSV; Ext := 'csv'; end;
      3: begin ExpClass := TDBGridEhExportAsHTML; Ext := 'htm'; end;
      4: begin ExpClass := TDBGridEhExportAsRTF; Ext := 'rtf'; end;
      5: begin ExpClass := TDBGridEhExportAsText; Ext := 'txt'; end;
    end;
  end
  else begin
    ExpClass := nil;
    Ext := '';
  end;

  if (ExpClass <> nil) then
  begin
    if UpperCase(Copy(dlgSave1.FileName,Length(dlgSave1.FileName)-2,3)) <> UpperCase(Ext) then
      dlgSave1.FileName := dlgSave1.FileName + '.' + Ext;
    SaveDBGridEhToExportFile(ExpClass, DBGridEh4, dlgSave1.FileName, true);
    if Application.MessageBox('Do you want to open the exported file?','Open file',MB_YESNO) = IDYES then
      ShellExecute(handle, 'open', PChar(dlgSave1.FileName), nil, nil, SW_SHOWNORMAL);
  end;
end;

procedure TOvertime_Report.ExcelYearClick(Sender: TObject);
var
  ExpClass:TDBGridEhExportClass;
  Ext:String;
begin
  dlgSave1.FileName := 'ex';

  if (dlgSave1.Execute) then
  begin
    case dlgSave1.FilterIndex of
      1: begin ExpClass := TDBGridEhExportAsXLS; Ext := 'xls'; end;
      2: begin ExpClass := TDBGridEhExportAsCSV; Ext := 'csv'; end;
      3: begin ExpClass := TDBGridEhExportAsHTML; Ext := 'htm'; end;
      4: begin ExpClass := TDBGridEhExportAsRTF; Ext := 'rtf'; end;
      5: begin ExpClass := TDBGridEhExportAsText; Ext := 'txt'; end;
    end;
  end
  else begin
    ExpClass := nil;
    Ext := '';
  end;

  if (ExpClass <> nil) then
  begin
    if UpperCase(Copy(dlgSave1.FileName,Length(dlgSave1.FileName)-2,3)) <> UpperCase(Ext) then
      dlgSave1.FileName := dlgSave1.FileName + '.' + Ext;
    SaveDBGridEhToExportFile(ExpClass, DBGridEh5, dlgSave1.FileName, true);
    if Application.MessageBox('Do you want to open the exported file?','Open file',MB_YESNO) = IDYES then
      ShellExecute(handle, 'open', PChar(dlgSave1.FileName), nil, nil, SW_SHOWNORMAL);
  end;
end;

end.
