unit Canchitiet;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, ExtCtrls, DBTables, DBClient, DB, GridsEh, DBGridEh,
  Provider, OleCtrls, MSCommLib_TLB, ShellApi, Math, Printers,DateUtils;

type
  TChitiet = class(TForm)
    Label1: TLabel;
    Edit1: TEdit;
    Panel1: TPanel;
    Button1: TButton;
    DBGridEh1: TDBGridEh;
    Query1: TQuery;
    dsChitiet: TDataSource;
    cdsChitiet: TClientDataSet;
    Timer1: TTimer;
    UpdateSQLChitiet: TUpdateSQL;
    QChitiet: TQuery;
    dspChitiet: TDataSetProvider;
    btnrefresh: TButton;
    btncommit: TButton;
    cdsChitietidDetail: TFloatField;
    cdsChitietlean_name: TStringField;
    cdsChitietF_id: TFloatField;
    cdsChitietcurr_weight: TFloatField;
    cdsChitietshift: TStringField;
    Query1RecCount: TIntegerField;
    MSComm1: TMSComm;
    Memo1: TMemo;
    Label2: TLabel;
    Button2: TButton;
    cdsChitietAggSumCurrWeight: TAggregateField;
    cdsChitietUSERDATE: TDateTimeField;
    cdsChitietname_vi: TStringField;
    Button3: TButton;
    cdsChitietcurr_weight_residual: TFloatField;
    cdsChitietresidual_time: TDateTimeField;
    cdsChitietYN: TStringField;
    cdsChitietNot_valid: TIntegerField;
    QChitietidDetail: TFloatField;
    QChitietid_dept: TStringField;
    QChitietF_id: TFloatField;
    QChitietcurr_weight: TFloatField;
    QChitietshift: TStringField;
    QChitietUSERDATE: TDateTimeField;
    QChitietYN: TStringField;
    QChitietcurr_weight_residual: TFloatField;
    QChitietresidual_time: TDateTimeField;
    QChitietname: TStringField;
    cdsChitietid_dept: TStringField;
    cdsChitietname: TStringField;
    temp: TQuery;
    IntegerField1: TIntegerField;
    Label3: TLabel;
    Label4: TLabel;
    QChitiettong: TFloatField;
    QChitietcurr: TFloatField;
    QChitietthieu: TFloatField;
    Label5: TLabel;
    Label6: TLabel;
    Label7: TLabel;
    Button4: TButton;
    Button5: TButton;
    procedure Button1Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure btnrefreshClick(Sender: TObject);
    procedure MSComm1Comm(Sender: TObject);
    procedure Timer1Timer(Sender: TObject);
    procedure FormCloseQuery(Sender: TObject; var CanClose: Boolean);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure btncommitClick(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure cdsChitietcurr_weightValidate(Sender: TField);
    procedure cdsChitietcurr_weightChange(Sender: TField);
    procedure Button3Click(Sender: TObject);
    procedure DBGridEh1GetCellParams(Sender: TObject; Column: TColumnEh;
      AFont: TFont; var Background: TColor; State: TGridDrawState);
    procedure Button4Click(Sender: TObject);
    procedure RotateBitmapDirect(ABitMap: TBitmap);
    procedure Button5Click(Sender: TObject);
  private
    KLtong: Double;
    FShuttingDown: Boolean;
    FExtMSComm: TMSComm;
    Buffer: string;
    PartialBuffer: string;
    FUpdatingFromScale: Boolean;
    FClosing: Boolean;
    procedure SafeShutdown;
    procedure LoadData(const AFid: string);
    function CheckRecordExists(const AFid, AShift: string): Boolean;
    procedure WriteWeightToField(const AFieldName: string; const AValue: Double);
    // C?p nh?t tham s? APrintDate vào ph?n khai báo Interface
    procedure InMotConTem(AID, AName, ADept, AQty: string; APrintDate: TDateTime);

  public
    procedure SetID(AID: Integer);
    procedure SetKL(KL: Double);
    procedure AttachMSComm(AMSComm: TMSComm);
    procedure ReceiveWeight(AValue: Double);
  end;

var
  Chitiet: TChitiet;
  workDate: TDateTime;
  WeightCh1, WeightCh2: string;
  FCommitMode: string;

implementation

uses CheckLean, PrintHC_CT1;

{$R *.dfm}

procedure TChitiet.LoadData(const AFid: string);
begin
  try
    with QChitiet do
    begin
      active := false;
      SQL.Clear;
      SQL.add(' SELECT  A.*, F1.name, (ISNULL(F.curr_weight_ch,0) + ISNULL(F.curr_weight_ch1,0) + ISNULL(F.curr_weight_sol,0)) AS tong,D.curr,  ');
      SQL.add('  ROUND((ISNULL(F.curr_weight_ch,0) + ISNULL(F.curr_weight_ch1,0) + ISNULL(F.curr_weight_sol,0)) - ISNULL(D.curr,0),4) AS thieu');
      SQL.add('FROM Ch_Formulation_Details_HK A');
      SQL.add('left join Ch_Formulation_HK F on A.F_id=F.id  ');
      SQL.add('left join Ch_Formula F1  on F.inv_id=F1.hc1 AND ISNULL(F.inv_id1, '''') = ISNULL(F1.hc2, '''') and f.sol_id=F1.hc3 and F.TyLe=F1.tl3 and F.TL1=F1.tl1   ');
      SQL.add('left join ( select F_id,sum(curr_weight) as curr from Ch_Formulation_Details_HK where F_id= :F_id group by F_id) D on D.F_id=A.F_id');
      SQL.Add('WHERE A.F_id = :F_id');
      ParamByName('F_id').AsString := AFid;
      active := true;
      Label2.Caption := FieldByName('tong').AsString;
      Label3.Caption := FieldByName('curr').AsString;
      Label4.Caption := FieldByName('thieu').AsString;
    end;
    with QChitiet do
    begin
      cachedupdates := true;
      requestlive := true;
      QChitiet.edit;
    end;
  except
    on E: Exception do
      ShowMessage('Loi khi tai du lieu: ' + E.Message);
  end;

  with temp do
  begin
    sql.Clear;
    sql.Add('UPDATE Ch_Formulation_Details_HK');
    sql.Add('SET yn = 1, userdate = NULL, shift = ''''');
    sql.Add('WHERE curr_weight <= 0');
    ExecSQL;
  end;
end;

procedure TChitiet.ReceiveWeight(AValue: Double);
var
  CurrWeightField, ResidualField: TField;
  CurrValue: Double;
begin
  if FUpdatingFromScale then Exit;
  FUpdatingFromScale := True;
  try
    if not Assigned(cdsChitiet) then Exit;

    if not cdsChitiet.Active then
    begin
      cdsChitiet.Open;
      if not cdsChitiet.Active then Exit;
    end;

    if cdsChitiet.IsEmpty then Exit;

    cdsChitiet.DisableControls;
    try
      if not (cdsChitiet.State in [dsEdit, dsInsert]) then
        cdsChitiet.Edit;

      CurrWeightField := cdsChitiet.FindField('curr_weight');
      ResidualField   := cdsChitiet.FindField('curr_weight_residual');

      if (CurrWeightField <> nil) and (ResidualField <> nil) then
      begin
        CurrValue := CurrWeightField.AsFloat;

        if (CurrValue = 0) or VarIsNull(CurrWeightField.Value) then
        begin
          CurrWeightField.AsFloat := AValue;
        end
        else
        begin
          ResidualField.AsFloat := AValue;
        end;
      end;

      if (cdsChitiet.State in [dsEdit, dsInsert]) then
        cdsChitiet.Post;

    finally
      cdsChitiet.EnableControls;
    end;
  except
    on E: Exception do
    begin
      // X? lý l?i
    end;
  end;

  FUpdatingFromScale := False;
end;

function TChitiet.CheckRecordExists(const AFid, AShift: string): Boolean;
begin
  with Query1 do
  begin
    Close;
    SQL.Clear;
    SQL.Add('SELECT COUNT(1) as RecCount FROM Ch_Formulation_Details_HK');
    SQL.Add('WHERE F_id = :F_id AND shift = :shift ');
    ParamByName('F_id').AsString := AFid;
    ParamByName('shift').AsString := AShift;
    Open;
    Result := Fields[0].AsInteger > 0;
    Close;
  end;
end;

procedure TChitiet.Button1Click(Sender: TObject);
var count: integer;
begin
  With temp do
  begin
    close;
    sql.Clear;
    SQL.Add(' SELECT COUNT(*) AS RecCount  FROM Ch_Formulation_Details_HK WHERE F_id = '''+edit1.Text+'''');
    open;
    Count := FieldByName('RecCount').AsInteger;
    if count > 0 then
    begin
      ShowMessage('Du lieu da ton tai khong the them.');
      LoadData(Edit1.Text);
      Exit;
    end;
  end;

  try
    with QChitiet do
    begin
      Close;
      SQL.Clear;
      SQL.Add('INSERT INTO Ch_Formulation_Details_HK (id_dept, F_id, curr_weight, shift, YN,curr_weight_residual)');
      SQL.Add('SELECT id_dept, :F_id, 0, :shift, 1,0  FROM Ch_Departments_HK where  GSBH in (select GSBH from ch_Formulation_HK where id = :F_id)');
      ParamByName('F_id').AsString := Edit1.Text;
      ParamByName('shift').AsString := '';
      ExecSQL;
      ShowMessage('Them du lieu thanh cong!');
    end;
  except
    on E: Exception do
    begin
      ShowMessage('Loi ' + E.Message);
    end;
  end;
  LoadData(Edit1.Text);
end;

procedure TChitiet.SetID(AID: Integer);
begin
  Edit1.Text := IntToStr(AID);
end;

procedure TChitiet.SetKL(KL: Double);
begin
   KLTong := KL;
   Label2.Caption := FloatToStr(KLTong);
end;

procedure TChitiet.FormCreate(Sender: TObject);
begin
  Buffer := '';
  PartialBuffer := '';
  FExtMSComm := nil;
  cdsChitietAggSumCurrWeight.Active := False;
  cdsChitietAggSumCurrWeight.Expression := 'SUM(curr_weight)';
  cdsChitietAggSumCurrWeight.GroupingLevel := 0;
  cdsChitietAggSumCurrWeight.IndexName := '';
  cdsChitietAggSumCurrWeight.ProviderFlags := [];
  cdsChitietAggSumCurrWeight.Active := True;
  dspChitiet.UpdateMode        := upWhereKeyOnly;
  QChitiet.FieldByName('idDetail').ProviderFlags := [pfInKey, pfInWhere];
  QChitiet.FieldByName('id_dept').ProviderFlags:= [];
  QChitiet.FieldByName('F_id').ProviderFlags     := [];
  QChitiet.FieldByName('curr_weight').ProviderFlags := [pfInUpdate];
  QChitiet.FieldByName('shift').ProviderFlags := [];
  QChitiet.FieldByName('USERDATE').ProviderFlags := [pfInUpdate];
  QChitiet.FieldByName('YN').ProviderFlags := [pfInUpdate];
  QChitiet.FieldByName('name').ProviderFlags := [];
  QChitiet.FieldByName('curr_weight_residual').ProviderFlags := [pfInUpdate];
  QChitiet.FieldByName('residual_time').ProviderFlags := [pfInUpdate];

  with UpdateSQLChitiet do
  begin
    ModifySQL.Clear;
    ModifySQL.Add('UPDATE Ch_Formulation_Details_HK');
    ModifySQL.Add('SET');
    ModifySQL.Add('  curr_weight = CASE WHEN YN <> 2 THEN ROUND(:curr_weight,4) ELSE curr_weight END,');
    ModifySQL.Add('  USERDATE = CASE WHEN YN <> 2 THEN GETDATE() ELSE USERDATE END,');
    ModifySQL.Add('  curr_weight_residual = :curr_weight_residual,');
    ModifySQL.Add('  residual_time = CASE WHEN YN = 2 THEN GETDATE() ELSE residual_time END,');
    ModifySQL.Add('  YN = CASE WHEN YN <> 2 THEN 2 ELSE YN END');
    ModifySQL.Add('WHERE idDetail = CONVERT(bigint, :OLD_idDetail)');
    InsertSQL.Clear;
    DeleteSQL.Clear;
  end;

  QChitiet.UpdateObject := UpdateSQLChitiet;
  dspChitiet.DataSet := QChitiet;
  cdsChitiet.ProviderName := dspChitiet.Name;
end;

function ExtractWeight(const S: string; out V: Double): Boolean;
var
  i: Integer;
  tmp, numStr: string;
  ch: Char;
  fs: TFormatSettings;
begin
  Result := False;
  V := 0;
  tmp := '';

  for i := 1 to Length(S) do
  begin
    ch := S[i];
    if ch in ['0'..'9', '.', ',', '+', '-'] then
      tmp := tmp + ch
    else
    begin
      if tmp <> '' then Break;
    end;
  end;

  if tmp = '' then Exit;

  numStr := StringReplace(tmp, ' ', '', [rfReplaceAll]);
  numStr := StringReplace(numStr, ',', '.', [rfReplaceAll]);

  while Pos('..', numStr) > 0 do
    numStr := StringReplace(numStr, '..', '.', [rfReplaceAll]);

  GetLocaleFormatSettings(LOCALE_USER_DEFAULT, fs);
  fs.DecimalSeparator := '.';
  Result := TryStrToFloat(numStr, V, fs);
end;

procedure TChitiet.btnrefreshClick(Sender: TObject);
begin
  LoadData(Edit1.Text);
end;

procedure TChitiet.MSComm1Comm(Sender: TObject);
var
  Lines: TStringList;
  i: Integer;
  Line: string;
  WeightValue: Double;
begin
  if (FClosing) or (csDestroying in ComponentState) then Exit;
  if not Assigned(FExtMSComm) then Exit;
  if not FExtMSComm.PortOpen then Exit;
  if FExtMSComm.InBufferCount = 0 then Exit;

  Buffer := Buffer + FExtMSComm.Input;
  Buffer := StringReplace(Buffer, #13, #13#10, [rfReplaceAll]);

  Lines := TStringList.Create;
  try
    Lines.Text := Buffer;
    for i := Lines.Count - 1 downto 0 do
    begin
      Line := Trim(Lines[i]);
      if Pos('Weight', Line) > 0 then
      begin
        if ExtractWeight(Line, WeightValue) then
        begin
          ReceiveWeight(WeightValue);
          Break;
        end;
      end;
    end;
  finally
    Lines.Free;
    Buffer := '';
  end;
end;

procedure RejectAndRevert(Grid: TDBGridEh; F: TField; const Msg: string);
var
  SaveValidate: TFieldNotifyEvent;
begin
  MessageDlg(Msg, mtError, [mbOK], 0);
  SaveValidate := F.OnValidate;
  F.OnValidate := nil;
  try
    if VarIsNull(F.OldValue) then
      F.Clear
    else
      F.Value := F.OldValue;
  finally
    F.OnValidate := SaveValidate;
  end;
  Grid.SelectedField := F;
  Grid.EditorMode := True;
  if Grid.InplaceEditor <> nil then
  begin
    Grid.InplaceEditor.Text := F.DisplayText;
    Grid.InplaceEditor.SelStart  := 0;
    Grid.InplaceEditor.SelLength := MaxInt;
    SendMessage(Grid.InplaceEditor.Handle, WM_KEYDOWN, VK_ESCAPE, 0);
  end;
  Abort;
end;

procedure TChitiet.WriteWeightToField(const AFieldName: string; const AValue: Double);
var
  F: TField;
  recordID: string;
begin
  if not cdsChitiet.Active or cdsChitiet.IsEmpty then Exit;

  recordID := cdsChitiet.FieldByName('idDetail').AsString;

  if cdsChitiet.FieldByName('YN').AsString = '2' then
  begin
    ShowMessage(Format('Ban khong the can lai ban ghi ID=%s vi da commit', [recordID]));
    Exit;
  end;

  F := cdsChitiet.FieldByName(AFieldName);

  cdsChitiet.DisableControls;
  try
    if not (cdsChitiet.State in [dsEdit, dsInsert]) then
      cdsChitiet.Edit;

    F.AsFloat := AValue;
    cdsChitiet.Post;

    if Assigned(DBGridEh1) then
      DBGridEh1.Refresh;
  finally
    cdsChitiet.EnableControls;
  end;
end;

procedure TChitiet.SafeShutdown;
begin
  if FShuttingDown then Exit;
  FShuttingDown := True;
  try
    if Assigned(Timer1) then Timer1.Enabled := False;

    if Assigned(DBGridEh1) and DBGridEh1.HandleAllocated then
      DBGridEh1.EditorMode := False;

    if Assigned(cdsChitietcurr_weight) then
      cdsChitietcurr_weight.OnValidate := nil;

    if Assigned(DBGridEh1) then DBGridEh1.DataSource := nil;
    dsChitiet.DataSet := nil;

    if cdsChitiet.Active then
    begin
      cdsChitiet.DisableControls;
      try
        if cdsChitiet.State in [dsEdit, dsInsert] then cdsChitiet.Cancel;
        cdsChitiet.Close;
      finally
        cdsChitiet.EnableControls;
      end;
    end;
    
    dsChitiet.DataSet := nil;
    if QChitiet.Active then QChitiet.Close;
    QChitiet.UpdateObject := nil;
  except
  end;
end;

procedure TChitiet.AttachMSComm(AMSComm: TMSComm);
begin
  FExtMSComm := AMSComm;
end;

function PosEx(const SubStr, S: string; Offset: Integer): Integer;
var
  I: Integer;
begin
  if Offset <= 0 then Offset := 1;
  for I := Offset to Length(S) - Length(SubStr) + 1 do
  begin
    if Copy(S, I, Length(SubStr)) = SubStr then
    begin
      Result := I;
      Exit;
    end;
  end;
  Result := 0;
end;

procedure TChitiet.Timer1Timer(Sender: TObject);
var
  chunk, line, s_so: string;
  weightValue: Double;
  pLineEnd, p1, p2: Integer;
begin
  if (FClosing) or (csDestroying in ComponentState) then Exit;
  if (FExtMSComm = nil) or (not FExtMSComm.PortOpen) then Exit;
  if FExtMSComm.InBufferCount = 0 then Exit;

  chunk := FExtMSComm.Input;
  if chunk = '' then Exit;

  PartialBuffer := PartialBuffer + chunk;

  repeat
    pLineEnd := Pos(#10, PartialBuffer);
    if pLineEnd = 0 then Break;

    line := Trim(Copy(PartialBuffer, 1, pLineEnd - 1));
    Delete(PartialBuffer, 1, pLineEnd);

    if line = '' then Continue;

    if Pos('Weight', line) > 0 then
    begin
      p1 := Pos(':', line);
      p2 := Pos('kg', line);

      if (p1 > 0) and (p2 > p1) then
      begin
        s_so := Trim(Copy(line, p1 + 1, p2 - p1 - 1));
        s_so := StringReplace(s_so, ',', '.', [rfReplaceAll]);
        DecimalSeparator := '.';
        
        if TryStrToFloat(s_so, weightValue) then
        begin
          if (QChitiet.Active) and (not QChitiet.IsEmpty) then
          begin
            if Assigned(DBGridEh1.SelectedField) then
            begin
              if (DBGridEh1.SelectedField.FieldName = 'curr_weight') or 
                 (DBGridEh1.SelectedField.FieldName = 'curr_weight_residual') then
              begin
                if not (QChitiet.State in [dsEdit]) then
                  QChitiet.Edit;

                QChitiet.FieldByName(DBGridEh1.SelectedField.FieldName).AsFloat := weightValue;
              end;
            end;
          end;
        end;
      end;
    end;
  until False;
end;

procedure TChitiet.FormCloseQuery(Sender: TObject; var CanClose: Boolean);
begin
  FClosing := True;
  Timer1.Enabled := False;
  CanClose := True;
end;

procedure TChitiet.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  SafeShutdown;
  try
    Timer1.Enabled := False;
    if Assigned(FExtMSComm) then
    begin
      FExtMSComm.OnComm := nil;
    end;
    FExtMSComm := nil;
  except
    on E: Exception do
      // Handle error
  end;

  Action := caFree;
  Chitiet := nil;
end;

procedure TChitiet.btncommitClick(Sender: TObject);
var
  TongDaCan, TongMax: Double;
  Bmk: TBookmark;
begin
  try
    if QChitiet.State in [dsEdit, dsInsert] then 
      QChitiet.Post;

    TongMax := StrToFloatDef(Label2.Caption, 0);
    Bmk := QChitiet.GetBookmark;
    TongDaCan := 0;
    
    try
      QChitiet.DisableControls; 
      QChitiet.First;
      while not QChitiet.Eof do
      begin
        TongDaCan := TongDaCan + QChitiet.FieldByName('curr_weight').AsFloat;
        QChitiet.Next;
      end;
    finally
      QChitiet.GotoBookmark(Bmk); 
      QChitiet.FreeBookmark(Bmk);
      QChitiet.EnableControls;
    end;

    if TongDaCan > TongMax then
    begin
      ShowMessage(Format('Loi: Tong da can (%.2f) vuot qua tong cho phep (%.2f)!', [TongDaCan, TongMax]));
      Exit;
    end;

    if not QChitiet.UpdatesPending then
    begin
      ShowMessage('Khong co thay doi nao de luu!');
      Exit;
    end;

    try
      QChitiet.ApplyUpdates; 
      QChitiet.CommitUpdates;
      ShowMessage('Luu du lieu thanh cong!');
    except
      on E: Exception do
      begin
        QChitiet.CancelUpdates;
        MessageDlg('Loi SQL: ' + E.Message, mtError, [mbOK], 0);
      end;
    end;

  except
    on E: Exception do
      ShowMessage('Loi: ' + E.Message);
  end;

  LoadData(Edit1.Text);
end;

procedure TChitiet.Button2Click(Sender: TObject);
var 
  i: integer;
  TxtFile: textfile;
  sline: string;
begin
  // --- Ðã s?a l?i c?u trúc hàm Button2Click b? du l?nh end; c?a b?n ---
  if (cdsChitiet.Active) and (cdsChitiet.RecordCount > 0) then
  begin
    try
      assignfile(TxtFile, ExtractFilePath(Application.ExeName) + 'CAN HC_HK_chitiet.txt');
      rewrite(TxtFile);
      cdsChitiet.First;
      i := 1;
      while not cdsChitiet.Eof do
      begin
        if cdsChitiet.FieldByName('curr_weight').AsFloat > 0 then
        begin
          sline := '';
          sline := sline + inttostr(i) + ',';
          sline := sline + cdsChitiet.fieldbyname('idDetail').AsString + ',';
          sline := sline + cdsChitiet.fieldbyname('id_dept').AsString + ',';
          sline := sline + cdsChitiet.fieldbyname('F_id').AsString + ',';
          sline := sline + cdsChitiet.FieldByName('curr_weight').AsString + 'kg,';
          sline := sline + cdsChitiet.fieldbyname('Shift').AsString + ',';
          sline := sline + cdsChitiet.fieldbyname('name_vi').AsString;
          append(TxtFile);
          writeln(TxtFile, sline);
          inc(i);
        end;
        cdsChitiet.Next;
      end;
      closefile(TxtFile);
    except
      begin
        closefile(TxtFile);
      end;
    end;
  end;

  if fileexists(extractfilepath(application.ExeName) + 'CAN HC_HK_chitiet.btw') then
  begin
    ShellExecute(Handle, 'open', PChar(ExtractFilePath(Application.ExeName) + 'CAN HC_HK_chitiet.btw'), nil, pchar(ExtractFilePath(Application.ExeName)), SW_SHOW);
  end 
  else
  begin
    showmessage('Pls setup the program first. Abort');
  end;
end;

procedure TChitiet.FormShow(Sender: TObject);
begin
  if Assigned(FExtMSComm) and FExtMSComm.PortOpen then
  begin
    Timer1.Enabled := True;
  end;
end;

procedure RejectAndRevert2(Grid: TDBGridEh; F: TField; const Msg: string);
var
  SaveValidate: TFieldNotifyEvent;
begin
  MessageDlg(Msg, mtError, [mbOK], 0);
  SaveValidate := F.OnValidate;
  F.OnValidate := nil;
  try
    if VarIsNull(F.OldValue) then
      F.Clear
    else
      F.Value := F.OldValue;
  finally
    F.OnValidate := SaveValidate;
  end;
  Grid.SelectedField := F;
  Grid.EditorMode := True;
  if Grid.InplaceEditor <> nil then
  begin
    Grid.InplaceEditor.Text := F.DisplayText;
    Grid.InplaceEditor.SelStart  := 0;
    Grid.InplaceEditor.SelLength := MaxInt;
    SendMessage(Grid.InplaceEditor.Handle, WM_KEYDOWN, VK_ESCAPE, 0);
  end;
  Abort;
end;

function AggFloatDef(Agg: TAggregateField; Def: Double = 0): Double;
var V: Variant;
begin
  V := Agg.Value;
  if VarIsNull(V) or VarIsEmpty(V) then Result := Def else Result := V;
end;

function AsFloatDef(F: TField; Def: Double): Double;
begin
  if (F = nil) or F.IsNull then Result := Def else Result := F.AsFloat;
end;

procedure TChitiet.cdsChitietcurr_weightValidate(Sender: TField);
begin
  if Sender.IsNull then Exit;
end;

procedure TChitiet.cdsChitietcurr_weightChange(Sender: TField);
var
  Total, NewVal: Double;
  Bmk: TBookmark;
begin
  if Sender.IsNull then
    NewVal := 0
  else
    NewVal := Sender.AsFloat;

  if NewVal < 0 then
  begin
    ShowMessage('Curr weight phai lon hon 0');
    Sender.Value := 0;
    Exit;
  end;

  Total := 0;
  Bmk := cdsChitiet.GetBookmark;
  try
    cdsChitiet.DisableControls;
    cdsChitiet.First;
    while not cdsChitiet.Eof do
    begin
      if not cdsChitiet.FieldByName('curr_weight').IsNull then
        Total := Total + cdsChitiet.FieldByName('curr_weight').AsFloat;
      cdsChitiet.Next;
    end;
  finally
    cdsChitiet.GotoBookmark(Bmk);
    cdsChitiet.FreeBookmark(Bmk);
    cdsChitiet.EnableControls;
  end;

  if Total > KLTong then
  begin
    ShowMessage('Tong khoi luong vuot qua ' + FloatToStr(KLTong));
    if not (cdsChitiet.State in [dsEdit, dsInsert]) then
      cdsChitiet.Edit;
    Sender.AsFloat := Sender.OldValue; 
    Exit;
  end;
end;

procedure TChitiet.Button3Click(Sender: TObject);
begin
  CheckLean1 := TCheckLean1.create(self);
  CheckLean1.show;
end;

procedure TChitiet.DBGridEh1GetCellParams(Sender: TObject;
  Column: TColumnEh; AFont: TFont; var Background: TColor;
  State: TGridDrawState);
begin
  if cdsChitiet.FieldByName('Not_valid').value = 1  then
  begin
    DBGridEh1.canvas.font.color := clRed;
  end;
end;

{ --- NÚT IN HÀNG LO?T --- }
procedure TChitiet.Button4Click(Sender: TObject);
var
  vID_Bulk, vName_Bulk, vDept_Bulk, vQty_Bulk: string;
begin
  if not QChitiet.Active then Exit;

  Printer.BeginDoc; 
  Printer.EndDoc;
  Sleep(300); 
  Application.ProcessMessages;

  QChitiet.First;
  while not QChitiet.Eof do
  begin
    if QChitiet.FieldByName('curr_weight').AsFloat > 0 then
    begin
      vID_Bulk   := QChitiet.FieldByName('idDetail').AsString;
      vName_Bulk := QChitiet.FieldByName('Name').AsString;
      vDept_Bulk := QChitiet.FieldByName('id_dept').AsString;
      vQty_Bulk  := FormatFloat('0.####', QChitiet.FieldByName('curr_weight').AsFloat) + 'kg';

      // Ðã c?p nh?t truy?n ngày USERDATE vào hàm
      InMotConTem(vID_Bulk, vName_Bulk, vDept_Bulk, vQty_Bulk, QChitiet.FieldByName('USERDATE').AsDateTime);

      Sleep(200);
      Application.ProcessMessages;
    end;
    QChitiet.Next;
  end;
end;

{ --- NÚT IN L? / IN NHÁP --- }
procedure TChitiet.Button5Click(Sender: TObject);
var
  vID_Single, vName_Single, vDept_Single, vQty_Single: string;
begin
  if (not QChitiet.Active) or (QChitiet.IsEmpty) then
  begin
    Printer.BeginDoc;
    Printer.Canvas.TextOut(10, 10, 'READY');
    Printer.EndDoc;
    Exit;
  end;

  vID_Single   := QChitiet.FieldByName('idDetail').AsString;
  vName_Single := QChitiet.FieldByName('Name').AsString;
  vDept_Single := QChitiet.FieldByName('id_dept').AsString;
  vQty_Single  := FormatFloat('0.####', QChitiet.FieldByName('curr_weight').AsFloat) + 'kg';

  // Ðã c?p nh?t truy?n ngày USERDATE vào hàm
  InMotConTem(vID_Single, vName_Single, vDept_Single, vQty_Single, QChitiet.FieldByName('USERDATE').AsDateTime);
end;

procedure TChitiet.RotateBitmapDirect(ABitMap: TBitmap);
var
  oBitmap: TBitmap;
  x, y: integer;
begin
  oBitmap := TBitmap.Create;
  try
    oBitmap.Width := ABitmap.Width;
    oBitmap.Height := ABitmap.Height;
    oBitmap.Assign(ABitmap);
    
    ABitmap.Height := oBitmap.Width;
    ABitmap.Width := oBitmap.Height;
    
    for x := 0 to oBitmap.Width - 1 do
    begin
      for y := 0 to oBitmap.Height - 1 do
      begin
        ABitmap.Canvas.Pixels[ABitmap.Width - y - 1, x] := oBitmap.Canvas.Pixels[x, y];
      end;
    end;
  finally
    oBitmap.Free;
  end;
end;

// --- HÀM V? VÀ Ð?Y L?NH IN (DÙNG CHUNG) ---
procedure TChitiet.InMotConTem(AID, AName, ADept, AQty: string; APrintDate: TDateTime);
var
  TmpBmp, RotatedBmp: TBitmap;
  DestRect: TRect;
  ScreenLogX, PrinterLogX: Integer;
  ZoomFactor: Double;
  sDate: string;
begin
  if not Assigned(PrintHC_CT) then
    Application.CreateForm(TPrintHC_CT, PrintHC_CT);

// Ki?m tra n?u USERDATE tr?ng (0) thì l?y ngày gi? hi?n t?i
  if APrintDate = 0 then
    sDate := 'MFG:' + FormatDateTime('ddMMyy hh:nn:ss', Now) + sLineBreak +
             'EXP:' + FormatDateTime('ddMMyy hh:nn:ss', IncHour(Now, 2))  // <-- TUY?T Ð?I KHÔNG CÓ D?U ; ? ÐÂY
  else
    sDate := 'MFG:' + FormatDateTime('ddMMyy hh:nn:ss', APrintDate) + sLineBreak +
             'EXP:' + FormatDateTime('ddMMyy hh:nn:ss', IncHour(APrintDate, 2)); // <-- D?u ; d?t ? cu?i cùng c?a kh?i If..Else
  PrintHC_CT.QRUpdate(AID, AName, ADept, AQty, 4, 2, sDate);
  // =========================================================
  // 3. M?O ÉP WINDOWS RENDER FORM Ð? CH?NG TR?NG TRANG IN Ð?U
  PrintHC_CT.HandleNeeded;
  PrintHC_CT.Left := -2000;
  PrintHC_CT.Top := -2000;
  PrintHC_CT.Show;
  PrintHC_CT.Update;
  if Assigned(PrintHC_CT.Panel2) then 
    PrintHC_CT.Panel2.Update;
  Application.ProcessMessages;
  // =========================================================

  TmpBmp := TBitmap.Create;
  try
    TmpBmp.Width := PrintHC_CT.ClientWidth;
    TmpBmp.Height := PrintHC_CT.ClientHeight;
    PrintHC_CT.PaintTo(TmpBmp.Canvas.Handle, 0, 0);

    RotatedBmp := TBitmap.Create;
    try
      RotatedBmp.Assign(TmpBmp);
      RotateBitmapDirect(RotatedBmp); 

      Printer.BeginDoc;
      try
        ScreenLogX := GetDeviceCaps(GetDC(0), LOGPIXELSX);
        PrinterLogX := GetDeviceCaps(Printer.Handle, LOGPIXELSX);
        ZoomFactor := PrinterLogX / ScreenLogX;
        DestRect.Left := 0; DestRect.Top := 0;
        DestRect.Right := Trunc(RotatedBmp.Width * ZoomFactor);
        DestRect.Bottom := Trunc(RotatedBmp.Height * ZoomFactor);
        Printer.Canvas.StretchDraw(DestRect, RotatedBmp);
      finally
        Printer.EndDoc;
      end;
    finally RotatedBmp.Free; end;
  finally TmpBmp.Free; end;
end;

end.
