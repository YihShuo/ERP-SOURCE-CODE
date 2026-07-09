unit UsageRecord1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Buttons, ExtCtrls, GridsEh, DBGridEh, DB, DBTables, Comobj,
  ComCtrls;

type
  TUsageRecord = class(TForm)
    dbgrdh_XTBWYL_Record: TDBGridEh;
    pnl: TPanel;
    btnQuery: TBitBtn;
    btnModify: TBitBtn;
    btnSave: TBitBtn;
    btnCancel: TBitBtn;
    btnExit: TBitBtn;
    btnDownloadSample: TButton;
    btnImport: TButton;
    btnExportExcel: TBitBtn;
    qry_XTBWYL_Record: TQuery;
    updtsql_XTBWYL_Record: TUpdateSQL;
    ds_XTBWYL_Record: TDataSource;
    dlgOpen1: TOpenDialog;
    qry_Temp: TQuery;
    progressBar: TProgressBar;
    Panel1: TPanel;
    edt_XieXing: TEdit;
    edt_SheHao: TEdit;
    lbl_XieXing: TLabel;
    lbl_SheHao: TLabel;
    btn_Qry: TButton;
    lbl_From: TLabel;
    lbl_To: TLabel;
    dtpDTP1: TDateTimePicker;
    dtpDTP2: TDateTimePicker;
    chk_Date: TCheckBox;
    qry_ExportRecordUsage: TQuery;
    strngfld_XTBWYL_RecordVersion: TStringField;
    strngfld_XTBWYL_RecordXieXing: TStringField;
    strngfld_XTBWYL_RecordSheHao: TStringField;
    strngfld_XTBWYL_RecordBWBH: TStringField;
    strngfld_XTBWYL_RecordXTCC: TStringField;
    fltfld_XTBWYL_RecordCLSL: TFloatField;
    strngfld_XTBWYL_RecordUSERID: TStringField;
    dtmfld_XTBWYL_RecordUSERDATE: TDateTimeField;
    strngfld_XTBWYL_RecordRemark: TStringField;
    strngfld_XTBWYL_RecordYN: TStringField;
    strngfld_XTBWYL_RecordXieMing: TStringField;
    strngfld_XTBWYL_RecordDaoMH: TStringField;
    strngfld_XTBWYL_RecordYWSM: TStringField;
    strngfld_XTBWYL_RecordCLDH: TStringField;
    strngfld_XTBWYL_RecordYWPM: TStringField;
    strngfld_XTBWYL_RecordDWBH: TStringField;
    strngfld_XTBWYL_RecordDescription: TStringField;
    strngfld_XTBWYL_RecordMaterial: TStringField;
    strngfld_XTBWYL_RecordMaterialDescription: TStringField;
    strngfld_XTBWYL_RecordUnit: TStringField;
    strngfld_XTBWYL_RecordArticleNO: TStringField;
    Button1: TButton;
    procedure FormDestroy(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure btnImportClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure btnCancelClick(Sender: TObject);
    procedure btnQueryClick(Sender: TObject);
    procedure btnSaveClick(Sender: TObject);
    procedure btn_QryClick(Sender: TObject);
    procedure btnExportExcelClick(Sender: TObject);
    procedure dbgrdh_XTBWYL_RecordDrawColumnCell(Sender: TObject; const Rect: TRect; DataCol: Integer; Column: TColumnEh; State: TGridDrawState);
    procedure btnModifyClick(Sender: TObject);
    procedure btnExitClick(Sender: TObject);
    procedure btnDownloadSampleClick(Sender: TObject);
    procedure Button1Click(Sender: TObject);
  private
    { Private declarations }
    procedure ApplyFilters(empty: Boolean);
  public
    { Public declarations }
  end;

function SortByInteger(List: TStringList; Index1, Index2: Integer): Integer;

var
  UsageRecord: TUsageRecord;
  NDate: TDate;

implementation

uses
  main1;

{$R *.dfm}

procedure TUsageRecord.FormDestroy(Sender: TObject);
begin
  UsageRecord := nil;
end;

procedure TUsageRecord.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  Action := caFree;
end;

procedure TUsageRecord.btnImportClick(Sender: TObject);
var
  excelApp, arrData: Variant;
  xieXing, sheHao, version, bwbh, xtcc: string;
  clsl: Double;
  rows, i, j, insertedCount, totalInsertedCount, maxCol, xtccStartCol: Integer;
  sheetIdx, sheetCount, errCode: Integer;
  xtccHeaders: array of string;
  y, m, a: string;
  tempVal: Real;
begin
  if not dlgOpen1.Execute then
    Exit;

  try
    excelApp := CreateOleObject('Excel.Application');
  except
    Application.MessageBox('NO Microsoft Excel', 'Microsoft Excel', MB_OK + MB_ICONWarning);
    Exit;
  end;

  try
    excelApp.WorkBooks.Open(dlgOpen1.FileName);

    with qry_Temp do
    begin
      active := false;
      sql.Clear;
      sql.Add('select year(getdate()) as FY,month(getdate()) as FM ,getdate() as NDate');
      active := true;
      y := fieldbyname('FY').asstring;
      m := fieldbyname('FM').asstring;
      Ndate := fieldbyname('NDate').value;
      active := false;
    end;

    with qry_XTBWYL_Record do
    begin

      if not Active then
      begin
        SQL.Clear;
        ApplyFilters(True);  
        Open;
      end;
      RequestLive := True;
      CachedUpdates := True;
      First;
    end;

    totalInsertedCount := 0;
    sheetCount := excelApp.WorkSheets.Count;
    progressBar.Visible := True;

    for sheetIdx := 1 to sheetCount do
    begin
      excelApp.WorkSheets[sheetIdx].Activate;

      if excelApp.WorkSheets[sheetIdx].UsedRange.Rows.count <= 2 then
        Continue;

      rows := excelApp.WorkSheets[sheetIdx].UsedRange.Rows.count;
      arrData := excelApp.WorkSheets[sheetIdx].UsedRange.Value;

      if Trim(VarToStr(arrData[1, 1])) <> 'MODEL#' then
      begin
        Application.MessageBox(PChar('MODEL#: ' + Trim(VarToStr(arrData[1, 1])) + ' at sheet '+ VarToStr(excelApp.WorkSheets[sheetIdx].Name)), 'Wrong Format', MB_OK + MB_ICONWarning);
        qry_XTBWYL_Record.RequestLive := False;
        qry_XTBWYL_Record.CachedUpdates := False;
        Exit;
      end;
      if Trim(VarToStr(arrData[1, 3])) <> 'Color :' then
      begin
        Application.MessageBox(PChar('Color :' + Trim(VarToStr(arrData[1, 3])) + ' at sheet '+ VarToStr(excelApp.WorkSheets[sheetIdx].Name)), 'Wrong Format', MB_OK + MB_ICONWarning);
        qry_XTBWYL_Record.RequestLive := False;
        qry_XTBWYL_Record.CachedUpdates := False;
        Exit;
      end;
      if Trim(VarToStr(arrData[1, 5])) <> 'Usage' then
      begin
        Application.MessageBox(PChar('Usage' + Trim(VarToStr(arrData[1, 5])) + ' at sheet '+ VarToStr(excelApp.WorkSheets[sheetIdx].Name)), 'Wrong Format', MB_OK + MB_ICONWarning);
        qry_XTBWYL_Record.RequestLive := False;
        qry_XTBWYL_Record.CachedUpdates := False;
        Exit;
      end;
      if Trim(VarToStr(arrData[1, 6])) <> 'Production Usage' then
      begin
        Application.MessageBox(PChar('Production Usage' + Trim(VarToStr(arrData[1, 6])) + ' at sheet '+ VarToStr(excelApp.WorkSheets[sheetIdx].Name)), 'Wrong Format', MB_OK + MB_ICONWarning);
        qry_XTBWYL_Record.RequestLive := False;
        qry_XTBWYL_Record.CachedUpdates := False;
        Exit;
      end;
      if Trim(VarToStr(arrData[2, 1])) <> 'Part#' then
      begin
        Application.MessageBox(PChar('Part#' + Trim(VarToStr(arrData[2, 1])) + ' at sheet '+ VarToStr(excelApp.WorkSheets[sheetIdx].Name)), 'Wrong Format', MB_OK + MB_ICONWarning);
        qry_XTBWYL_Record.RequestLive := False;
        qry_XTBWYL_Record.CachedUpdates := False;
        Exit;
      end;

      xieXing := Trim(VarToStr(arrData[1, 2]));
      sheHao := Trim(VarToStr(arrData[1, 4]));
      version := Trim(VarToStr(arrData[1, 6]));

      if xieXing = '' then
        Continue;
      if sheHao = '' then
        Continue;

      maxCol := VarArrayHighBound(arrData, 2);
      xtccStartCol := 2;
      SetLength(xtccHeaders, 0);
      for j := xtccStartCol to maxCol do
      begin
        xtcc := Trim(VarToStr(arrData[2, j]));
        Val(xtcc, tempVal, errCode);
        if xtcc = '' then
        begin
          Continue;
        end
        else if errCode <> 0 then
        begin
          qry_XTBWYL_Record.RequestLive := False;
          qry_XTBWYL_Record.CachedUpdates := False;
          Application.MessageBox(PChar('XTCC: ' + xtcc), 'Wrong Format', MB_OK + MB_ICONWarning);
          Exit;
        end;

        SetLength(xtccHeaders, Length(xtccHeaders) + 1);
        xtccHeaders[Length(xtccHeaders) - 1] := xtcc;
      end;

      if Length(xtccHeaders) = 0 then
        Continue;

      insertedCount := 0;

      progressBar.Min := 0;
      progressBar.Max := rows - 2;
      progressBar.Position := 0;
      Application.ProcessMessages;

      with qry_Temp do
      begin
        active := false;
        sql.Clear;
        sql.Add('select Version from XTBWYL_Record where Version like ' + '''' + y + m + '%' + '''');
        sql.add('order by Version');
        active := true;
        if recordcount > 0 then
        begin
          last;
          a := fieldbyname('Version').AsString;
          a := copy(a, 7, 5);
        end
        else
        begin
          a := '00000';
        end;
        active := false;
      end;
      a := inttostr(strtoint(a) + 1);
      while length(a) < 5 do
      begin
        a := '0' + a;
      end;
      a := y + m + a;

      for i := 3 to rows do
      begin
        progressBar.Position := i - 2;
        Application.ProcessMessages;

        bwbh := Trim(VarToStr(arrData[i, 1]));
        if bwbh = '' then
          Continue;

        for j := 0 to Length(xtccHeaders) - 1 do
        begin
          try
            clsl := StrToFloat(VarToStr(arrData[i, xtccStartCol + j]));
          except
            Application.MessageBox(PChar('CLSL must be number: ' +  VarToStr(arrData[i, xtccStartCol + j])), 'Wrong format', MB_OK + MB_ICONWarning);
            Exit;
          end;

          if clsl > 0 then
          begin
            xtcc := xtccHeaders[j];
            if (Length(xtcc) >= 2) and (xtcc[1] = '0') and (xtcc[2] in ['0'..'9']) then
              xtcc := Copy(xtcc, 2, Length(xtcc));

            qry_XTBWYL_Record.Insert;
            qry_XTBWYL_Record.FieldByName('Version').AsString := a;
            qry_XTBWYL_Record.FieldByName('XieXing').AsString := xieXing;
            qry_XTBWYL_Record.FieldByName('SheHao').AsString := sheHao;
            qry_XTBWYL_Record.FieldByName('BWBH').AsString := bwbh;
            qry_XTBWYL_Record.FieldByName('XTCC').AsString := xtcc;
            qry_XTBWYL_Record.FieldByName('CLSL').AsFloat := clsl;
            qry_XTBWYL_Record.FieldByName('USERID').AsString := main.edit1.text;
            qry_XTBWYL_Record.FieldByName('USERDATE').AsDateTime := Date;
            qry_XTBWYL_Record.FieldByName('YN').AsString := '2';
            qry_XTBWYL_Record.FieldByName('Remark').AsString := '';
            qry_XTBWYL_Record.Post;
            Inc(insertedCount);
          end;
        end;
      end;

      totalInsertedCount := totalInsertedCount + insertedCount;
    end;

    Application.MessageBox(PChar('Import success! ' + IntToStr(totalInsertedCount) + ' rows.'), 'Success', MB_OK + MB_ICONInformation);
    btnSave.Enabled := True;
    btnCancel.Enabled := True;
    if totalInsertedCount > 0 then
    begin
      btnExportExcel.Enabled := True;
    end;
  finally
    progressBar.Visible := False;
    excelApp.ActiveWorkBook.Close(SaveChanges := 0);
    excelApp.Quit;
    excelApp := Unassigned;
    arrData := Unassigned;
    if qry_XTBWYL_Record.Active then
      qry_XTBWYL_Record.First;
  end;
end;

procedure TUsageRecord.FormCreate(Sender: TObject);
begin
  with qry_Temp do
  begin
    active := false;
    sql.Clear;
    sql.add('select getdate() as NDate ');
    active := true;
    NDate := fieldbyname('NDate').Value;
    active := false;
  end;
  dtpDTP2.Date := NDate;
  dtpDTP1.Date := NDate - 7;
end;

procedure TUsageRecord.btnCancelClick(Sender: TObject);
begin
  qry_XTBWYL_Record.RequestLive := False;
  qry_XTBWYL_Record.CachedUpdates := False;
  btnSave.Enabled := False;
  btnCancel.Enabled := False;
end;

procedure TUsageRecord.btnQueryClick(Sender: TObject);
begin
  Panel1.Visible := True;
end;

procedure TUsageRecord.btnSaveClick(Sender: TObject);
begin
  try
    with qry_XTBWYL_Record do
    begin
      Database.StartTransaction;
      First;
      while not Eof do
      begin
        case UpdateStatus of
          usInserted:
            begin
              Edit;
              FieldByName('YN').AsString := '1';
            end;
        end;
        Next;
      end;
      ApplyUpdates;
      Database.Commit;
      First;
    end;
  except
    qry_XTBWYL_Record.Database.Rollback;
  end;

  btnSave.Enabled := False;
  btnCancel.Enabled := False;
end;

procedure TUsageRecord.ApplyFilters(empty: Boolean);
begin
  with qry_XTBWYL_Record do
  begin
    Close;
    SQL.Clear;

    SQL.Add('  select max(xxzl.XieMing) as XieMing,  ');
    SQL.Add('               xtbwyl_record.XieXing,  ');
    SQL.Add('               max(xxzl.daomh)             as DaoMH,  ');
    SQL.Add('               Version,  ');
    SQL.Add('               xtbwyl_record.BWBH,  ');
    SQL.Add('               xtbwyl_record.SheHao,  ');
    SQL.Add('               xtbwyl_record.XTCC,  ');
    SQL.Add('               max(xtbwyl_record.clsl)     as CLSL,  ');
    SQL.Add('               max(xtbwyl_record.USERID)   as UserId,  ');
    SQL.Add('               max(xtbwyl_record.USERDATE) as UserDate,  ');
    SQL.Add('               max(xtbwyl_record.YN)                     as YN,  ');
    SQL.Add('               max(xtbwyl_record.remark)   as Remark,  ');
    SQL.Add('               max(bwzl.ywsm)              as YWSM,  ');
    SQL.Add('               max(CLZL.cldh)              as CLDH,  ');
    SQL.Add('               max(CLZL.ywpm)              as YWPM,  ');
    SQL.Add('               max(clzl.dwbh)              as DWBH,  ');
    SQL.Add('               max(BWZL.YWSM) as Description,  ');
    SQL.Add('               max(CLZL.cldh) as Material,  ');
    SQL.Add('               max(CLZL.YWPM) as MaterialDescription,  ');
    SQL.Add('               max(CLZL.dwbh) as Unit,  ');
    SQL.Add('               max(xxzl.ARTICLE) as ArticleNO  ');
    SQL.Add('        from xtbwyl_record  ');
    SQL.Add('                 left join xxzl on xxzl.XieXing = xtbwyl_record.XieXing and xxzl.SheHao = xtbwyl_record.SheHao  ');
    SQL.Add('                 left join xxzls on xxzls.XieXing = xxzl.XieXing and xxzls.SheHao = xxzl.SheHao and xxzls.BWBH = xtbwyl_record.BWBH ');
    SQL.Add('                 left join bwzl on bwzl.bwdh = xxzls.bwbh  ');
    SQL.Add('                 left join clzl on clzl.cldh = xxzls.CLBH  ');

    if empty then SQL.Add('                 where 1=0  ')
    else SQL.Add('                 where 1=1  ');
    
    if edt_XieXing.Text <> '' then
      SQL.Add('AND xtbwyl_record.XieXing LIKE :XieXing');

    if edt_SheHao.Text <> '' then
      SQL.Add('AND xtbwyl_record.SheHao LIKE :SheHao');

    if chk_Date.Checked then
      SQL.Add('AND CONVERT(smalldatetime, CONVERT(varchar, xtbwyl_record.USERDATE, 111)) BETWEEN :DateFrom AND :DateTo');

    SQL.Add('group by xtbwyl_record.BWBH, Version, xtbwyl_record.XieXing, xtbwyl_record.SheHao, xtbwyl_record.XTCC  ');

    SQL.Add('ORDER BY Version DESC');

    if edt_XieXing.Text <> '' then
      ParamByName('XieXing').AsString := edt_XieXing.Text + '%';

    if edt_SheHao.Text <> '' then
      ParamByName('SheHao').AsString := edt_SheHao.Text + '%';

    if chk_Date.Checked then
    begin
      ParamByName('DateFrom').AsString := FormatDateTime('yyyy/MM/dd', dtpDTP1.Date);
      ParamByName('DateTo').AsString := FormatDateTime('yyyy/MM/dd', dtpDTP2.Date);
    end;
  end;
end;

procedure TUsageRecord.btn_QryClick(Sender: TObject);
begin
  with qry_XTBWYL_Record do
  begin
    ApplyFilters(False);
    RequestLive := False;
    CachedUpdates := False;
    Open;
    if recordcount > 0 then
    begin
      btnExportExcel.Enabled := True;
      btnModify.Enabled := True;
    end;
  end;
  btnSave.Enabled := False;
  btnCancel.Enabled := False;
end;

procedure TUsageRecord.btnExportExcelClick(Sender: TObject);
var
  excelApp, WorkSheet, CellRange, topRangeData: Variant;
  slGroups, slModels, slXtcc: TStringList;
  groupIdx, row, col, lastRow, lastCol: Integer;
  xieXing, sheHao, groupKey, version: string;
  artName, artNo, cutDie, materialNo, materialDesc, unitName, description: string;
  bk: TBookmark;
  WorkBook: olevariant;
const
  xlCenter = -4108;
  xlLeft = -4131;
  xlContinuous = 1;
begin

  if not qry_XTBWYL_Record.Active then
  begin
    Application.MessageBox('Query first.', 'Info', MB_OK + MB_ICONInformation);
    Exit;
  end;

  if qry_XTBWYL_Record.RecordCount = 0 then
  begin
    Application.MessageBox('No data to export.', 'Info', MB_OK + MB_ICONInformation);
    Exit;
  end;

  try
    excelApp := CreateOleObject('Excel.Application');
  except
    Application.MessageBox('NO Microsoft Excel', 'Microsoft Excel', MB_OK + MB_ICONWarning);
    Exit;
  end;

  slGroups := TStringList.Create;
  slModels := TStringList.Create;
  slXtcc := TStringList.Create;
  try
    slGroups.Sorted := True;
    slGroups.Duplicates := dupIgnore;

    bk := qry_XTBWYL_Record.GetBookmark;
    try
      WorkBook := excelApp.workbooks.Add;
      qry_XTBWYL_Record.DisableControls;
      qry_XTBWYL_Record.First;
      while not qry_XTBWYL_Record.Eof do
      begin
        xieXing := qry_XTBWYL_Record.FieldByName('XieXing').AsString;
        sheHao := qry_XTBWYL_Record.FieldByName('SheHao').AsString;
        if xieXing <> '' then
          slGroups.Add(xieXing + #9 + sheHao);
        qry_XTBWYL_Record.Next;
      end;

      excelApp.Visible := False;

      for groupIdx := 0 to slGroups.Count - 1 do
      begin
        groupKey := slGroups[groupIdx];
        xieXing := Copy(groupKey, 1, Pos(#9, groupKey) - 1);
        sheHao := Copy(groupKey, Pos(#9, groupKey) + 1, Length(groupKey));

        slModels.Clear;
        slModels.Sorted := True;
        slModels.Duplicates := dupIgnore;

        slXtcc.Clear;
        slXtcc.Sorted := True;
        slXtcc.Duplicates := dupIgnore;

        version := '';
        artName := '';
        artNo := '';
        cutDie := '';

        qry_XTBWYL_Record.First;
        while not qry_XTBWYL_Record.Eof do
        begin
          if (qry_XTBWYL_Record.FieldByName('XieXing').AsString = xieXing) and (qry_XTBWYL_Record.FieldByName('SheHao').AsString = sheHao) then
          begin
            if version = '' then
            begin
              version := qry_XTBWYL_Record.FieldByName('Version').AsString;
              artName := qry_XTBWYL_Record.FieldByName('XieMing').AsString;
              artNo := qry_XTBWYL_Record.FieldByName('ArticleNO').AsString;
              cutDie := qry_XTBWYL_Record.FieldByName('DaoMH').AsString;
            end;
            slModels.Add(qry_XTBWYL_Record.FieldByName('BWBH').AsString);
            slXtcc.Add(qry_XTBWYL_Record.FieldByName('XTCC').AsString);
          end;
          qry_XTBWYL_Record.Next;
        end;

        if groupIdx = 0 then
        begin
          excelApp.WorkSheets[1].Activate;
          WorkSheet := excelApp.WorkSheets[1];
        end
        else
        begin
          WorkSheet := excelApp.WorkSheets.Add(EmptyParam, excelApp.WorkSheets[excelApp.WorkSheets.Count]);
        end;

        WorkSheet.Name := Copy(xieXing + '_' + sheHao, 1, 31);

        WorkSheet.Rows['1:2'].Insert;

        WorkSheet.Cells[1, 4] := 'ART. NAME: ' + artName;
        WorkSheet.Cells[2, 4] := 'ART. NO: ' + artNo;
        WorkSheet.Cells[2, 5] := 'CUT DIE: ' + cutDie;

        WorkSheet.Cells[3, 1] := 'MODEL#';
        WorkSheet.Cells[3, 2] := xieXing;
        WorkSheet.Cells[3, 3] := 'Color :';
        WorkSheet.Cells[3, 4] := sheHao;
        WorkSheet.Cells[3, 5] := 'Usage';
        WorkSheet.Cells[3, 6] := 'Production Usage';

        WorkSheet.Cells[4, 1] := 'Part#/Description';
        WorkSheet.Range['A4', 'B4'].Merge;
        WorkSheet.Cells[4, 2] := '';
        WorkSheet.Cells[4, 3] := 'Material#';
        WorkSheet.Cells[4, 4] := 'Material description';
        WorkSheet.Cells[4, 5] := 'Unit';

        slXtcc.Sorted := False;
        slXtcc.CustomSort(SortByInteger);
        for col := 0 to slXtcc.Count - 1 do
          WorkSheet.Cells[4, 6 + col] := slXtcc[col];

        if slXtcc.Count > 0 then
          lastCol := 6 + slXtcc.Count - 1
        else
          lastCol := 6;

        for row := 0 to slModels.Count - 1 do
        begin
          WorkSheet.Cells[5 + row, 1] := slModels[row];

          description := '';
          materialNo := '';
          materialDesc := '';
          unitName := '';
          qry_XTBWYL_Record.First;
          while not qry_XTBWYL_Record.Eof do
          begin
            if (qry_XTBWYL_Record.FieldByName('XieXing').AsString = xieXing) and (qry_XTBWYL_Record.FieldByName('SheHao').AsString = sheHao) and (qry_XTBWYL_Record.FieldByName('BWBH').AsString = slModels[row]) then
            begin
              description := qry_XTBWYL_Record.FieldByName('YWSM').AsString;
              materialNo := qry_XTBWYL_Record.FieldByName('CLDH').AsString;
              materialDesc := qry_XTBWYL_Record.FieldByName('YWPM').AsString;
              unitName := qry_XTBWYL_Record.FieldByName('DWBH').AsString;
              Break;
            end;
            qry_XTBWYL_Record.Next;
          end;

          WorkSheet.Cells[5 + row, 2] := description;
          WorkSheet.Cells[5 + row, 3] := materialNo;
          WorkSheet.Cells[5 + row, 4] := materialDesc;
          WorkSheet.Cells[5 + row, 5] := unitName;

          for col := 0 to slXtcc.Count - 1 do
          begin
            qry_XTBWYL_Record.First;
            while not qry_XTBWYL_Record.Eof do
            begin
              if (qry_XTBWYL_Record.FieldByName('XieXing').AsString = xieXing) and (qry_XTBWYL_Record.FieldByName('SheHao').AsString = sheHao) and (qry_XTBWYL_Record.FieldByName('BWBH').AsString = slModels[row]) and (qry_XTBWYL_Record.FieldByName('XTCC').AsString = slXtcc[col]) then
              begin
                WorkSheet.Cells[5 + row, 6 + col] := '''' + qry_XTBWYL_Record.FieldByName('CLSL').AsString;
                Break;
              end;
              qry_XTBWYL_Record.Next;
            end;
          end;
        end;

        lastRow := 4 + slModels.Count;

        WorkSheet.Range[WorkSheet.Cells[5, 1], WorkSheet.Cells[4 + slModels.Count, 1]].Interior.Color := RGB(146, 208, 80);
        WorkSheet.Range['B3', 'B3'].Interior.Color := RGB(146, 208, 80);
        WorkSheet.Range['D3', 'D3'].Interior.Color := RGB(146, 208, 80);

        WorkSheet.Range[WorkSheet.Cells[5, 6], WorkSheet.Cells[lastRow, lastCol]].Interior.Color := RGB(0, 176, 240);
        WorkSheet.Range[WorkSheet.Cells[4, 6], WorkSheet.Cells[4, lastCol]].Interior.Color := RGB(146, 208, 80);

        CellRange := WorkSheet.Range[WorkSheet.Cells[3, 1], WorkSheet.Cells[3, 6]];
        CellRange.Font.Bold := True;
        CellRange.Font.Size := 10;
        CellRange.HorizontalAlignment := xlLeft;

        CellRange := WorkSheet.Range[WorkSheet.Cells[4, 1], WorkSheet.Cells[4, lastCol]];
        CellRange.Font.Bold := True;
        CellRange.Font.Size := 10;
        CellRange.HorizontalAlignment := xlLeft;

        if lastRow >= 5 then
        begin
          CellRange := WorkSheet.Range[WorkSheet.Cells[5, 1], WorkSheet.Cells[lastRow, lastCol]];
          CellRange.Font.Size := 10;
          CellRange.Borders.LineStyle := xlContinuous;

          WorkSheet.Range[WorkSheet.Cells[5, 1], WorkSheet.Cells[lastRow, 1]].HorizontalAlignment := xlLeft;
          WorkSheet.Range[WorkSheet.Cells[5, 2], WorkSheet.Cells[lastRow, 2]].HorizontalAlignment := xlLeft;
          WorkSheet.Range[WorkSheet.Cells[5, 3], WorkSheet.Cells[lastRow, lastCol]].HorizontalAlignment := xlCenter;
          WorkSheet.Range[WorkSheet.Cells[5, 6], WorkSheet.Cells[lastRow, lastCol]].NumberFormat := '0.00';
        end;

        topRangeData := WorkSheet.Range[WorkSheet.Cells[1, 1], WorkSheet.Cells[3, lastCol]].Value;
        WorkSheet.Range[WorkSheet.Cells[1, 1], WorkSheet.Cells[3, lastCol]].ClearContents;
        WorkSheet.Range[WorkSheet.Cells[4, 1], WorkSheet.Cells[lastRow, lastCol]].EntireColumn.AutoFit;
        WorkSheet.Range[WorkSheet.Cells[1, 1], WorkSheet.Cells[3, lastCol]].Value := topRangeData;

        WorkSheet.Range[WorkSheet.Cells[3, 4], WorkSheet.Cells[lastRow, 4]].HorizontalAlignment := xlLeft;

        qry_Temp.Close;
        Application.ProcessMessages;
      end;
    finally
      qry_XTBWYL_Record.EnableControls;
      qry_XTBWYL_Record.GotoBookmark(bk);
      qry_XTBWYL_Record.FreeBookmark(bk);
    end;

    excelApp.Visible := True;
    Application.MessageBox('Export successful!', 'Success', MB_OK + MB_ICONInformation);
  finally
    slGroups.Free;
    slModels.Free;
    slXtcc.Free;
  end;
end;

function SortByInteger(List: TStringList; Index1, Index2: Integer): Integer;
var
  Val1, Val2: Double;
  OldSeparator: Char;
begin
  OldSeparator := DecimalSeparator;
  try
    Val1 := StrToFloat(List[Index1]);
    Val2 := StrToFloat(List[Index2]);

    if Val1 < Val2 then
      Result := -1
    else if Val1 > Val2 then
      Result := 1
    else
      Result := 0;
  finally
    DecimalSeparator := OldSeparator;
  end;
end;

procedure TUsageRecord.dbgrdh_XTBWYL_RecordDrawColumnCell(Sender: TObject; const Rect: TRect; DataCol: Integer; Column: TColumnEh; State: TGridDrawState);
begin
  if qry_XTBWYL_Record.FieldByName('YN').value = '0' then
  begin
    dbgrdh_XTBWYL_Record.canvas.font.color := clred;
    dbgrdh_XTBWYL_Record.defaultdrawcolumncell(Rect, DataCol, Column, State);
  end
  else if qry_XTBWYL_Record.FieldByName('YN').value = '2' then
  begin
    dbgrdh_XTBWYL_Record.canvas.font.color := clGreen;
    dbgrdh_XTBWYL_Record.defaultdrawcolumncell(Rect, DataCol, Column, State);
  end;
end;

procedure TUsageRecord.btnModifyClick(Sender: TObject);
begin
  qry_XTBWYL_Record.RequestLive := True;
  qry_XTBWYL_Record.CachedUpdates := True;
  btnSave.Enabled := True;
  btnCancel.Enabled := True;
end;

procedure TUsageRecord.btnExitClick(Sender: TObject);
begin
  Close;
end;

procedure TUsageRecord.btnDownloadSampleClick(Sender: TObject);
var
  excelApp: Variant;
  appDir, samplePath, filePath: string;
begin
  appDir := ExtractFilePath(Application.ExeName);
  filePath := 'Additional\BOM_SN57_Sample.xlsx';
  samplePath := appDir + filePath;

  if not DirectoryExists(appDir + 'Additional') then
    ForceDirectories(appDir + 'Additional');

  CopyFile(PChar('\\' + main.ServerIP + '\liy_erp\' + filePath), PChar(samplePath), False);

  if not FileExists(samplePath) then
  begin
    Application.MessageBox('Sample file not found.', 'Error', MB_OK + MB_ICONWarning);
    Exit;
  end;

  try
    excelApp := CreateOleObject('Excel.Application');
    excelApp.DisplayAlerts := False;
  except
    Application.MessageBox('NO Microsoft Excel', 'Microsoft Excel', MB_OK + MB_ICONWarning);
    Exit;
  end;

  excelApp.Visible := True;
  excelApp.WorkBooks.Open(samplePath);
end;

procedure TUsageRecord.Button1Click(Sender: TObject);
var
  excelApp, arrData: Variant;
  xieXing, sheHao, version, bwbh, xtcc: string;
  clsl: Double;
  rows, i, j, insertedCount, totalInsertedCount, maxCol, xtccStartCol: Integer;
  sheetIdx, sheetCount, errCode: Integer;
  xtccHeaders: array of string;
  y, m, a: string;
  tempVal: Real;
begin
  if not dlgOpen1.Execute then
    Exit;

  try
    excelApp := CreateOleObject('Excel.Application');
    excelApp.Visible := False; // Hide Excel during execution
  except
    Application.MessageBox('Microsoft Excel is not installed!', 'Error', MB_OK + MB_ICONWarning);
    Exit;
  end;

  try
    excelApp.WorkBooks.Open(dlgOpen1.FileName);

    // STEP 1: CREATE NEW VERSION (Get current year and month)
    with qry_Temp do
    begin
      active := false;
      sql.Clear;
      sql.Add('select year(getdate()) as FY, month(getdate()) as FM, getdate() as NDate');
      active := true;
      y := fieldbyname('FY').asstring;
      m := fieldbyname('FM').asstring;
      // Add leading zero if month < 10 (e.g., 5 -> 05)
      if Length(m) = 1 then m := '0' + m; 
      Ndate := fieldbyname('NDate').value;
      active := false;
    end;

    // STEP 2: PREPARE QUERY FOR INSERT
    with qry_XTBWYL_Record do
    begin
      if not Active then
      begin
        SQL.Clear;
        ApplyFilters(True);  
        Open;
      end;
      RequestLive := True;
      CachedUpdates := True;
      First;
    end;

    totalInsertedCount := 0;
    sheetCount := excelApp.WorkSheets.Count;
    progressBar.Visible := True;

    // Loop through Sheets
    for sheetIdx := 1 to sheetCount do
    begin
      excelApp.WorkSheets[sheetIdx].Activate;

      // FIX "EMPTY ROW" ERROR: Auto calculate last row/col and force array from A1 (Cells[1,1])
      rows := excelApp.WorkSheets[sheetIdx].UsedRange.Row + excelApp.WorkSheets[sheetIdx].UsedRange.Rows.Count - 1;
      maxCol := excelApp.WorkSheets[sheetIdx].UsedRange.Column + excelApp.WorkSheets[sheetIdx].UsedRange.Columns.Count - 1;
      
      if rows < 5 then Continue; // Skip if sheet does not have enough data up to row 5

      arrData := excelApp.WorkSheets[sheetIdx].Range[
        excelApp.WorkSheets[sheetIdx].Cells[1, 1], 
        excelApp.WorkSheets[sheetIdx].Cells[rows, maxCol]
      ].Value;

      // STEP 3: CHECK FORMAT (Header at row 3 and 4)
      if Trim(VarToStr(arrData[3, 1])) <> 'MODEL#' then
      begin
        Application.MessageBox(PChar('Wrong format! Cannot find MODEL# at [A3], Sheet: '+ VarToStr(excelApp.WorkSheets[sheetIdx].Name)), 'Wrong Format', MB_OK + MB_ICONWarning);
        Continue;
      end;
      if Trim(VarToStr(arrData[4, 1])) <> 'Part#/Description' then
      begin
        Application.MessageBox(PChar('Wrong format! Cannot find Part#/Description at [A4], Sheet: '+ VarToStr(excelApp.WorkSheets[sheetIdx].Name)), 'Wrong Format', MB_OK + MB_ICONWarning);
        Continue;
      end;

      // Get XieXing and SheHao at row 3
      xieXing := Trim(VarToStr(arrData[3, 2]));
      sheHao := Trim(VarToStr(arrData[3, 4]));
      if (xieXing = '') or (sheHao = '') then Continue;

      // STEP 4: GET SIZE LIST (XTCC) FROM ROW 4 (Start from column F = 6)
      xtccStartCol := 6; 
      SetLength(xtccHeaders, 0);
      for j := xtccStartCol to maxCol do
      begin
        xtcc := Trim(VarToStr(arrData[4, j]));
        Val(xtcc, tempVal, errCode);
        if xtcc = '' then Continue;
        
        SetLength(xtccHeaders, Length(xtccHeaders) + 1);
        xtccHeaders[Length(xtccHeaders) - 1] := xtcc;
      end;

      if Length(xtccHeaders) = 0 then Continue;

      // CREATE SEQUENCE NUMBER FOR VERSION (y+m+a)
      with qry_Temp do
      begin
        active := false;
        sql.Clear;
        sql.Add('select Version from XTBWYL_Record where Version like ' + '''' + y + m + '%' + '''');
        sql.add('order by Version');
        active := true;
        if recordcount > 0 then
        begin
          last;
          a := fieldbyname('Version').AsString;
          a := copy(a, 7, 5); // Get last 5 digits
        end
        else
        begin
          a := '00000';
        end;
        active := false;
      end;
      a := inttostr(strtoint(a) + 1);
      while length(a) < 5 do a := '0' + a;
      version := y + m + a; // Example: 20260500001

      // STEP 5: READ DATA FROM ROW 5 ONWARDS
      insertedCount := 0;
      progressBar.Min := 0;
      progressBar.Max := rows - 4;
      progressBar.Position := 0;

      for i := 5 to rows do
      begin
        progressBar.Position := i - 4;
        Application.ProcessMessages;

        bwbh := Trim(VarToStr(arrData[i, 1])); // Get Part# (BWBH) at Column A
        if bwbh = '' then Continue;

        // Loop through Size columns (starting from column F = 6)
        for j := 0 to Length(xtccHeaders) - 1 do
        begin
          if Trim(VarToStr(arrData[i, xtccStartCol + j])) = '' then Continue; // Skip if cell is empty

          try
            clsl := StrToFloat(VarToStr(arrData[i, xtccStartCol + j]));
          except
            Application.MessageBox(PChar('Data error CLSL at row ' + IntToStr(i) + ': ' + VarToStr(arrData[i, xtccStartCol + j])), 'Data Error', MB_OK + MB_ICONWarning);
            Exit;
          end;

          // If quantity > 0 then Insert into DB
          if clsl > 0 then
          begin
            xtcc := xtccHeaders[j];
            // Remove leading zero if exists (e.g., '07' -> '7') based on old logic
            if (Length(xtcc) >= 2) and (xtcc[1] = '0') and (xtcc[2] in ['0'..'9']) then
              xtcc := Copy(xtcc, 2, Length(xtcc));

            qry_XTBWYL_Record.Insert;
            qry_XTBWYL_Record.FieldByName('Version').AsString := version;
            qry_XTBWYL_Record.FieldByName('XieXing').AsString := xieXing;
            qry_XTBWYL_Record.FieldByName('SheHao').AsString  := sheHao;
            qry_XTBWYL_Record.FieldByName('BWBH').AsString    := bwbh;
            qry_XTBWYL_Record.FieldByName('XTCC').AsString    := xtcc;
            qry_XTBWYL_Record.FieldByName('CLSL').AsFloat     := clsl;
            
            // Note: main.edit1.text is the logged in user from your main form
            qry_XTBWYL_Record.FieldByName('USERID').AsString  := main.edit1.text; 
            qry_XTBWYL_Record.FieldByName('USERDATE').AsDateTime := Date;
            qry_XTBWYL_Record.FieldByName('YN').AsString      := '2'; // 2 = Pending save status (display in green)
            qry_XTBWYL_Record.FieldByName('Remark').AsString  := '';
            qry_XTBWYL_Record.Post;
            
            Inc(insertedCount);
          end;
        end;
      end;

      totalInsertedCount := totalInsertedCount + insertedCount;
    end; // End Sheet loop

    if totalInsertedCount > 0 then
    begin
      Application.MessageBox(PChar('Import successful! Added ' + IntToStr(totalInsertedCount) + ' rows.'), 'Information', MB_OK + MB_ICONInformation);
      btnSave.Enabled := True;
      btnCancel.Enabled := True;
      btnExportExcel.Enabled := True;
    end
    else
    begin
      Application.MessageBox('No data imported. Please check the Excel file.', 'Information', MB_OK + MB_ICONWarning);
    end;

  finally
    // STEP 6: CLEAN UP MEMORY AND CLOSE EXCEL
    progressBar.Visible := False;
    excelApp.ActiveWorkBook.Close(SaveChanges := 0);
    excelApp.Quit;
    excelApp := Unassigned;
    arrData := Unassigned;
    
    if qry_XTBWYL_Record.Active then
      qry_XTBWYL_Record.First;
  end;
end;

end.

