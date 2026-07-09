unit Canchitiet;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, ExtCtrls, DBTables, DBClient, DB, GridsEh, DBGridEh,
  Provider, OleCtrls, MSCommLib_TLB,ShellApi, Math;

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
    QChitietidDetail: TFloatField;
    QChitietlean_name: TStringField;
    QChitietF_id: TFloatField;
    QChitietcurr_weight: TFloatField;
    QChitietshift: TStringField;
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
    QChitietUSERDATE: TDateTimeField;
    cdsChitietUSERDATE: TDateTimeField;
    QChitietname_vi: TStringField;
    cdsChitietname_vi: TStringField;
    Button3: TButton;
    QChitietcurr_weight_residual: TFloatField;
    QChitietresidual_time: TDateTimeField;
    cdsChitietcurr_weight_residual: TFloatField;
    cdsChitietresidual_time: TDateTimeField;
    QChitietYN: TStringField;
    cdsChitietYN: TStringField;
    QChitietNot_valid: TIntegerField;
    cdsChitietNot_valid: TIntegerField;
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
  private
    KLtong : Double;
    { Private declarations }
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
     //procedure RejectAndRevert(Grid: TDBGridEh; F: TField; const Msg: string);


  public
    { Public declarations }
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

uses CheckLean;

{$R *.dfm}


procedure TChitiet.LoadData(const AFid: string);
begin
  try
    if cdsChitiet.RecordCount > 0 then
      cdsChitiet.Refresh;

    with QChitiet do
    begin
      Close;
      SQL.Clear;
      {SQL.Add('SELECT idDetail, lean_name, F_id, curr_weight, shift, USERDATE, a.YN, name_vi,a.curr_weight_residual,a.residual_time');
      SQL.Add('FROM Ch_Formulation_Details A');
      SQL.Add('INNER JOIN Ch_Departments B ON A.id_dept = B.id_dept');
      SQL.Add('INNER JOIN TB_DD.dbo.Ch_Formulation d ON d.id = a.F_id');
      SQL.Add('INNER JOIN TB_DD.dbo.Ch_Inventory c ON d.inv_id = c.id');}

       SQL.Add('select ');
       SQL.Add('	idDetail,');
       SQL.Add('    lean_name,');
       SQL.Add('    F_id,');
       SQL.Add('    curr_weight,');
       SQL.Add('    shift,');
       SQL.Add('    USERDATE,');
       SQL.Add('    YN,');
       SQL.Add('    name_vi,');
       SQL.Add('    curr_weight_residual,');
       SQL.Add('    residual_time,');
       SQL.Add('	(case when check_time = 0 and check_weight_residual = 0 then 1 else 0 end) as Not_valid');
       SQL.Add(' from ');
       SQL.Add(' ( ');
       SQL.Add('SELECT ');
       SQL.Add('    idDetail,');
       SQL.Add('    lean_name,');
       SQL.Add('    a.F_id,');
       SQL.Add('    curr_weight,');
       SQL.Add('    shift,');
       SQL.Add('    USERDATE,');
       SQL.Add('    a.YN,');
       SQL.Add('    name_vi,');
       SQL.Add('    a.curr_weight_residual,');
       SQL.Add('    a.residual_time,');
       SQL.Add('    CASE ');
       SQL.Add('        WHEN  CHARINDEX(''-'', shift) > 0 THEN ');
       SQL.Add('            CASE ');
       SQL.Add('                WHEN (CONVERT(time, a.residual_time )');
       SQL.Add('                     BETWEEN ');
       SQL.Add('                         CAST(LEFT(shift, CHARINDEX(''-'', shift) - 1) AS time)');
       SQL.Add('                         AND ');
       SQL.Add('                         CAST(SUBSTRING(shift, CHARINDEX(''-'', shift) + 1, 5) AS time)) ');
       SQL.Add('		THEN 1 ELSE 0 END');
       SQL.Add('    ELSE 0 END AS check_time,');
       SQL.Add('    (case when isnull(a.curr_weight_residual, 0) = 0  then 1 else 0 end) as check_weight_residual');
       SQL.Add('FROM Ch_Formulation_Details_HK A ');
       SQL.Add('INNER JOIN Ch_Departments_HK B ON A.id_dept = B.id_dept ');
       SQL.Add('INNER JOIN TB_DD.dbo.Ch_Formulation_HK d ON d.id = a.F_id');
       SQL.Add('LEFT JOIN TB_DD.dbo.Ch_Inventory_HK c ON d.inv_id = c.id');
       SQL.Add(') D');
       SQL.Add('WHERE F_id = :F_id');
       ParamByName('F_id').AsString := AFid;
       Open;
    end;

     if cdsChitiet.Active then
      cdsChitiet.Close;

    cdsChitiet.Open; 
  except
    on E: Exception do
      ShowMessage('Loi khi tai du lieu: ' + E.Message);
  end;
end;

{procedure TChitiet.ReceiveWeight(AValue: Double);
begin
  if FUpdatingFromScale then Exit; // tránh trùng l?p
  FUpdatingFromScale := True;
  try
    if not Assigned(cdsChitiet) then
    begin
     // Memo1.Lines.Add('?? cdsChitiet chua du?c gán.');
      Exit;
    end;

    if not cdsChitiet.Active then
    begin
      cdsChitiet.Open;
      if not cdsChitiet.Active then
      begin
        //Memo1.Lines.Add('?? cdsChitiet không th? m?.');
        Exit;
      end;
    end;

    if cdsChitiet.IsEmpty then
    begin
     // Memo1.Lines.Add('?? cdsChitiet r?ng, không có b?n ghi d? c?p nh?t.');
      Exit;
    end;

    cdsChitiet.DisableControls;
    try
      if not (cdsChitiet.State in [dsEdit, dsInsert]) then
        cdsChitiet.Edit;

      cdsChitiet.FieldByName('curr_weight').AsFloat := AValue;
     // cdsChitiet.FieldByName('curr_weight_residual').AsFloat := AValue;

      // Ch? post n?u dang edit ho?c insert
      if (cdsChitiet.State in [dsEdit, dsInsert]) then
        cdsChitiet.Post;
    finally
      cdsChitiet.EnableControls;
    end;

   // Memo1.Lines.Add('? Ðã c?p nh?t curr_weight = ' + FloatToStr(AValue));
  except
    on E: Exception do
    //  Memo1.Lines.Add('? L?i khi c?p nh?t curr_weight: ' + E.Message);
  end;
  FUpdatingFromScale := False;
end;
}
procedure TChitiet.ReceiveWeight(AValue: Double);
var
  CurrWeightField, ResidualField: TField;
  CurrValue: Double;
begin
  if FUpdatingFromScale then Exit; // tránh trùng l?p
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
          // curr_weight chua có ? c?p nh?t tr?ng lu?ng chính
          CurrWeightField.AsFloat := AValue;
          //Memo1.Lines.Add('? C?p nh?t curr_weight = ' + FloatToStr(AValue));
        end
        else
        begin
          // curr_weight dã có ? c?p nh?t tr?ng lu?ng du
          ResidualField.AsFloat := AValue;
          //Memo1.Lines.Add('? C?p nh?t curr_weight_residual = ' + FloatToStr(AValue));
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
      //Memo1.Lines.Add('L?i khi c?p nh?t tr?ng lu?ng: ' + E.Message);
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
    SQL.Add('SELECT COUNT(1) as RecCount FROM TB_DD.dbo.Ch_Formulation_Details_HK');
    SQL.Add('WHERE F_id = :F_id AND shift = :shift ');
    ParamByName('F_id').AsString := AFid;
    ParamByName('shift').AsString := AShift;
    Open;
    Result := Fields[0].AsInteger > 0;
    Close;
  end;
end;


procedure TChitiet.Button1Click(Sender: TObject);
begin
  if cdsChitiet.RecordCount > 0 then
    cdsChitiet.Refresh;
  try
    if CheckRecordExists(Edit1.Text, '') then
    begin
      ShowMessage('Chat nay da bat dau can truoc do roi!');
      Exit;
    end;

    with QChitiet do
    begin
      Close;
      SQL.Clear;
      SQL.Add('INSERT INTO TB_DD.dbo.Ch_Formulation_Details_HK (id_dept, F_id, curr_weight, shift, YN,curr_weight_residual)');
      SQL.Add('SELECT id_dept, :F_id, 0, :shift, 1,0  FROM TB_DD.dbo.Ch_Departments_HK');
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
  Edit1.Text := IntToStr(AID); // dua ID vào ô Edit
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
  dspChitiet.UpdateMode       := upWhereKeyOnly;
  QChitiet.FieldByName('idDetail').ProviderFlags := [pfInKey, pfInWhere];
  QChitiet.FieldByName('lean_name').ProviderFlags:= [];
  QChitiet.FieldByName('F_id').ProviderFlags     := [];
  QChitiet.FieldByName('curr_weight').ProviderFlags := [pfInUpdate];
  QChitiet.FieldByName('shift').ProviderFlags := [];
  QChitiet.FieldByName('USERDATE').ProviderFlags := [pfInUpdate];
  QChitiet.FieldByName('YN').ProviderFlags := [pfInUpdate];
  QChitiet.FieldByName('name_vi').ProviderFlags := [];
  QChitiet.FieldByName('curr_weight_residual').ProviderFlags := [pfInUpdate];
  QChitiet.FieldByName('residual_time').ProviderFlags := [pfInUpdate];
 { with UpdateSQLChitiet do
  begin
    ModifySQL.Clear;
    ModifySQL.Add('UPDATE Ch_Formulation_Details SET');
    ModifySQL.Add('  curr_weight  = :curr_weight,');
    ModifySQL.Add('  USERDATE = GETDATE(),');
    ModifySQL.Add('  YN      = 2 ');
    ModifySQL.Add('WHERE idDetail = CONVERT(bigint, :OLD_idDetail)');
    InsertSQL.Clear;
    DeleteSQL.Clear;
  end;
  cdsChitiet.Open;
end;   }
with UpdateSQLChitiet do
begin
  ModifySQL.Clear;
  ModifySQL.Add('UPDATE Ch_Formulation_Details_HK');
  ModifySQL.Add('SET');

  // n?u YN = 2 thì ch? update ph?n residual thôi
  ModifySQL.Add('  curr_weight = CASE WHEN YN <> 2 THEN :curr_weight ELSE curr_weight END,');
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

  // M?
  QChitiet.Open;
  cdsChitiet.Open;
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

  // L?y ph?n s? d?u tiên xu?t hi?n (g?m 0-9 . , + -)
  for i := 1 to Length(S) do
  begin
    ch := S[i];
    if ch in ['0'..'9', '.', ',', '+', '-'] then
      tmp := tmp + ch
    else
    begin
      // n?u tmp dã có d? li?u và g?p ký t? không ph?i s? -> break (dã l?y d?)
      if tmp <> '' then
        Break;
    end;
  end;

  if tmp = '' then Exit;

  // Chu?n hóa: b? kho?ng tr?ng, thay , => .
  numStr := StringReplace(tmp, ' ', '', [rfReplaceAll]);
  numStr := StringReplace(numStr, ',', '.', [rfReplaceAll]);

  // N?u có nhi?u d?u ch?m, ch? gi? d?u ch?m d?u tiên (lo?i b? các d?u ch?m ti?p theo)
  while Pos('..', numStr) > 0 do
    numStr := StringReplace(numStr, '..', '.', [rfReplaceAll]);

  // Dành cho Delphi 7 — không có TFormatSettings.Create
  GetLocaleFormatSettings(LOCALE_USER_DEFAULT, fs);
  fs.DecimalSeparator := '.';
  Result := TryStrToFloat(numStr, V, fs);
end;



procedure TChitiet.btnrefreshClick(Sender: TObject);
begin
  // g?i thay d?i xu?ng DB
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
////
  if not Assigned(FExtMSComm) then Exit;
  if not FExtMSComm.PortOpen then Exit;
  if FExtMSComm.InBufferCount = 0 then Exit;

  Buffer := Buffer + FExtMSComm.Input;  // nh?n thêm d? li?u

  // Chu?n hóa xu?ng dòng
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
          ReceiveWeight(WeightValue);  // dùng hàm có s?n c?a b?n
         //Memo1.Lines.Add(Format('=> Weight %.3f kg', [WeightValue]));
          Break;
        end;
      end;
    end;

  finally
    Lines.Free;
    Buffer := ''; // reset buffer
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

    // --- B?t bu?c refresh grid d? hi?n th? ngay ---
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
    // 1) Ng?ng timer/UI event
    if Assigned(Timer1) then Timer1.Enabled := False;

    // 2) T?t editor d? không còn d?y text vào Field
    if Assigned(DBGridEh1) and DBGridEh1.HandleAllocated then
      DBGridEh1.EditorMode := False;

    // 3) G? validate/s? ki?n d? không nh?y vào code khi dóng
    if Assigned(cdsChitietcurr_weight) then
      cdsChitietcurr_weight.OnValidate := nil;
    //if Assigned(cdsMaincurr_weight_sol) then
      //cdsChitietcurr_weight_residual.OnValidate := nil;
    // (n?u có BeforePost v.v… thì cung nil)

    // 4) Tháo dây UI ? dataset (d? form h?y control không còn ch?m dataset)
    if Assigned(DBGridEh1) then DBGridEh1.DataSource := nil;
    dsChitiet.DataSet := nil;

    // 5) H?y m?i ch?nh s?a và dóng datasets theo th? t?: Client ? Provider ? Query
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
        dsChitiet.DataSet := nil;        // ng?t provider
    if QChitiet.Active then QChitiet.Close;
    QChitiet.UpdateObject := nil;     // ng?t UpdateSQL d? ch?c ch?n
  except
  end;
end;


{function ParseWeight(const S: string; out V: Double): Boolean;
var
  tmp: string;
begin
  tmp := StringReplace(S, 'Weight:  ', '', [rfReplaceAll, rfIgnoreCase]);
  tmp := StringReplace(tmp, 'kg',       '', [rfReplaceAll, rfIgnoreCase]);
  tmp := Trim(tmp);
  tmp := StringReplace(tmp, '.', DecimalSeparator, [rfReplaceAll]);
  tmp := StringReplace(tmp, ',', DecimalSeparator, [rfReplaceAll]);

  Result := TryStrToFloat(tmp, V);
end;  }

procedure TChitiet.AttachMSComm(AMSComm: TMSComm);
begin
  FExtMSComm := AMSComm;
  //Memo1.Lines.Add('Ðã gán MSComm cho form chi ti?t.');
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


{procedure TChitiet.Timer1Timer(Sender: TObject);
var
  chunk, line, weightStr: string;
  weightValue: Double;
  pStart, pEnd, pLineEnd: Integer;
begin

if (FClosing) or (csDestroying in ComponentState) then Exit;
////
  if (FExtMSComm = nil) or (not FExtMSComm.PortOpen) then Exit;
  if FExtMSComm.InBufferCount = 0 then Exit;

  // Ð?c d? li?u m?i t? cân
  chunk := FExtMSComm.Input;
 // Memo1.Lines.Add(Format('[%s] Nh?n %d byte t? cân', [TimeToStr(Now), Length(chunk)]));
  if chunk = '' then Exit;
//  Memo1.Lines.Add(Format('[%s] Nh?n %d byte: "%s"', [TimeToStr(Now), Length(chunk), chunk]));

  // Ghép ph?n m?i vào buffer
  PartialBuffer := PartialBuffer + chunk;

  // Ki?m tra xem có ký t? xu?ng dòng (#13 ho?c #10) chua
  repeat
    pLineEnd := Pos(#10, PartialBuffer);
    if pLineEnd = 0 then
      pLineEnd := Pos(#13, PartialBuffer);
    if pLineEnd = 0 then
      Break; // chua d? dòng => d?i thêm

    // C?t 1 dòng hoàn ch?nh
    line := Trim(Copy(PartialBuffer, 1, pLineEnd - 1));
    Delete(PartialBuffer, 1, pLineEnd);

    // B? qua dòng tr?ng
    if line = '' then Continue;

   // Memo1.Lines.Add('Raw: ' + line);

    // Tìm và x? lý dòng có "Weight"
    pStart := Pos('Weight', line);
    pEnd := Pos('kg', line);
    if (pStart > 0) and (pEnd > pStart) then
    begin
      weightStr := Copy(line, pStart + 6, pEnd - (pStart + 6));
      weightStr := Trim(weightStr);
      weightStr := StringReplace(weightStr, ':', '', [rfReplaceAll]);
      weightStr := StringReplace(weightStr, '=', '', [rfReplaceAll]);
      weightStr := StringReplace(weightStr, ' ', '', [rfReplaceAll]);
      weightStr := StringReplace(weightStr, 'k', '', [rfReplaceAll]);
      weightStr := StringReplace(weightStr, 'g', '', [rfReplaceAll]);
      weightStr := StringReplace(weightStr, ',', '.', [rfReplaceAll]);

      // Ki?m tra chu?i h?p l?
      if (weightStr = '') or not (weightStr[1] in ['0'..'9', '-', '+']) then
      begin
       // Memo1.Lines.Add('? Chu?i không h?p l?: ' + weightStr);
        Continue;
      end;

      try
        weightValue := StrToFloat(weightStr);
        //Memo1.Lines.Add(Format('? Extracted weight = %.2f kg', [weightValue]));
        ReceiveWeight(weightValue);
      except
        on E: Exception do
         // Memo1.Lines.Add('? L?i khi convert sang s?: ' + weightStr + ' (' + E.Message + ')');
      end;
    end;
  until False;
end;
}

procedure TChitiet.Timer1Timer(Sender: TObject);
var
  chunk, line, weightStr: string;
  weightValue: Double;
  pStart, pEnd, pLineEnd: Integer;
  targetField: TField;
begin
  if (FClosing) or (csDestroying in ComponentState) then Exit;
  if (FExtMSComm = nil) or (not FExtMSComm.PortOpen) then Exit;
  if FExtMSComm.InBufferCount = 0 then Exit;

  // Ð?c d? li?u m?i t? cân
  chunk := FExtMSComm.Input;
  if chunk = '' then Exit;

  // Ghép ph?n m?i vào buffer
  PartialBuffer := PartialBuffer + chunk;

  // Ki?m tra xem có ký t? xu?ng dòng chua
  repeat
    pLineEnd := Pos(#10, PartialBuffer);
    if pLineEnd = 0 then
      pLineEnd := Pos(#13, PartialBuffer);
    if pLineEnd = 0 then
      Break; // chua d? dòng => d?i thêm

    // C?t 1 dòng hoàn ch?nh
    line := Trim(Copy(PartialBuffer, 1, pLineEnd - 1));
    Delete(PartialBuffer, 1, pLineEnd);

    if line = '' then Continue;

    // Tìm và x? lý dòng có "Weight"
    pStart := Pos('Weight', line);
    pEnd := Pos('kg', line);
    if (pStart > 0) and (pEnd > pStart) then
    begin
      weightStr := Copy(line, pStart + 6, pEnd - (pStart + 6));
      weightStr := Trim(weightStr);
      weightStr := StringReplace(weightStr, ':', '', [rfReplaceAll]);
      weightStr := StringReplace(weightStr, '=', '', [rfReplaceAll]);
      weightStr := StringReplace(weightStr, ' ', '', [rfReplaceAll]);
      weightStr := StringReplace(weightStr, 'k', '', [rfReplaceAll]);
      weightStr := StringReplace(weightStr, 'g', '', [rfReplaceAll]);
      weightStr := StringReplace(weightStr, ',', '.', [rfReplaceAll]);

      if (weightStr = '') or not (weightStr[1] in ['0'..'9', '-', '+']) then
        Continue;

      try
        weightValue := StrToFloat(weightStr);

        // ? Xác d?nh c?t dang focus trong DBGrid
        if (DBGridEh1 <> nil) and (DBGridEh1.SelectedField <> nil) then
        begin
          targetField := DBGridEh1.SelectedField;

          // Ch? c?p nh?t n?u là m?t trong hai c?t này
          if (targetField.FieldName = 'curr_weight') or
             (targetField.FieldName = 'curr_weight_residual') then
          begin
            if cdsChitiet.Active and (not cdsChitiet.IsEmpty) then
            begin
              cdsChitiet.Edit;
              targetField.AsFloat := weightValue;
              cdsChitiet.Post;
            end;
          end;
        end;

      except
        on E: Exception do
          ; // B? qua l?i convert
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
 //FClosing := True;
 /////
  SafeShutdown;
  try
    // 1. T?t Timer TRU?C d? ngan truy c?p COM khi h?y
    Timer1.Enabled := False;
    //Application.ProcessMessages;

    // 2. Ng?t liên k?t MSComm t? form cha
    if Assigned(FExtMSComm) then
    begin
     // Memo1.Lines.Add('FormClose: Ng?t liên k?t MSComm.');
      FExtMSComm.OnComm := nil;
    end;
    FExtMSComm := nil;
  except
    on E: Exception do
     // Memo1.Lines.Add('FormClose error: ' + E.Message);
  end;

  // 3. Gi?i phóng form
  Action := caFree;
  Chitiet:=nil;
end;

procedure TChitiet.btncommitClick(Sender: TObject);
var toApply: Integer;
recordID: string;
begin


     {if cdsChitiet.Active and not cdsChitiet.IsEmpty then
  begin
    recordID := cdsChitiet.FieldByName('idDetail').AsString;
    if cdsChitiet.FieldByName('YN').AsString = '2' then
    begin
      ShowMessage(Format('Ban khong the commit ban ghi ID=%s vi da commit truoc do.', [recordID]));
      Exit;
    end;
  end;   }

  try
    if cdsChitiet.State in [dsEdit, dsInsert] then cdsChitiet.Post;
    toApply := cdsChitiet.ChangeCount;
    if toApply = 0 then
    begin
      ShowMessage('Khong co thay doi nao duoc luu!');
      Exit;
    end;
    { if cdsChitiet.ApplyUpdates(0) = 0 then
    begin
      cdsChitiet.MergeChangeLog;
      ShowMessage(Format('%d row(s) changed (client)', [toApply]));
      cdsChitiet.Refresh;
    end;
    }
    if cdsChitiet.ApplyUpdates(0) = 0 then
   begin
   if cdsChitiet.Active then
    cdsChitiet.MergeChangeLog;

  ShowMessage(Format('%d row(s) changed (client)', [toApply]));

  if cdsChitiet.Active then
    cdsChitiet.Refresh;
end;
    //DTP1Change(nil);
    ShowMessage(Format('%d row(s) affected', [toApply]));
    cdsChitiet.Refresh;
  except
    on E: Exception do
    begin
      ShowMessage('Update failed: ' + E.Message);
      cdsChitiet.CancelUpdates;
    end;
  end;
end;

{var
  toApply: Integer;
begin
  try
    if cdsChitiet.State in [dsEdit, dsInsert] then cdsChitiet.Post;

    toApply := cdsChitiet.ChangeCount;
    if toApply = 0 then
    begin
      ShowMessage('Khong co thay doi nao duoc luu!');
      Exit;
    end;

    if cdsChitiet.ApplyUpdates(0) = 0 then
    begin
      cdsChitiet.MergeChangeLog;
      ShowMessage(Format('%d row(s) changed (client)', [toApply]));
      cdsChitiet.Refresh;
    end;

    ShowMessage(Format('%d row(s) affected', [toApply]));
  except
    on E: Exception do
    begin
      ShowMessage('Update failed: ' + E.Message);
      cdsChitiet.CancelUpdates;
    end;
  end;
end;    }





procedure TChitiet.Button2Click(Sender: TObject);
var i:integer;
    TxtFile:textfile;
    sline:string;
    updatsql:string;
    totalWeight, chWeight, solWeight: Double;
    eventTime, eventTimePlus: TDateTime;
    invNotes: string;
begin
  if (cdsChitiet.Active) and (cdsChitiet.RecordCount>0) then
  begin
  try
    assignfile(TxtFile,ExtractFilePath(Application.ExeName)+'CAN HC_HK_chitiet.txt');
    rewrite(TxtFile);
      cdsChitiet.First;
      i:=1;
      while not cdsChitiet.Eof do
      begin
        if cdsChitiet.FieldByName('curr_weight').AsFloat > 0 then
      begin
          sline:='';
          sline:=sline+inttostr(i)+',';
          sline:=sline+cdsChitiet.fieldbyname('idDetail').AsString+','; //±ø½X­«½Æ
          sline:=sline+cdsChitiet.fieldbyname('Lean_name').AsString+',';
          sline:=sline+cdsChitiet.fieldbyname('F_id').AsString+',';
          sline := sline + cdsChitiet.FieldByName('curr_weight').AsString + 'kg,';
          sline:=sline+cdsChitiet.fieldbyname('Shift').AsString +',';
          sline:=sline+cdsChitiet.fieldbyname('name_vi').AsString;
          append(TxtFile);
          writeln(TxtFile, sline);
         // cdsChitiet.Next;
          inc(i);
         //funcObj.WriteErrorLog(MJZLQry.Text);
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
    if fileexists(extractfilepath(application.ExeName)+'CAN HC_HK_chitiet.btw') then
    begin
      ShellExecute(Handle,'open',PChar(ExtractFilePath(Application.ExeName)+'CAN HC_HK_chitiet.btw'),nil,pchar(ExtractFilePath(Application.ExeName)),SW_SHOW);
    end else
    begin
      showmessage('Pls setup the program first. Abort');
    end;
  end;

procedure TChitiet.FormShow(Sender: TObject);
begin
 if Assigned(FExtMSComm) and FExtMSComm.PortOpen then
  begin
    //Memo1.Lines.Add('Ðang s? d?ng l?i COM dã m? t? form chính.');
    Timer1.Enabled := True;
  end ;

   // Memo1.Lines.Add('L?i: COM chua m? ho?c chua du?c gán.');
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

//var OldVal, Total, NewVal: Double;
begin
  if Sender.IsNull then Exit;

  //if Sender.AsFloat < 0 then
  //begin
    //RejectAndRevert(DBGridEh1, Sender, 'Curr Weight phai = 0');
    Exit;
  //end;
  {
  OldVal := AggFloatDef(cdsChitietAggSumCurrWeight, 0);

  if Sender.IsNull then NewVal := 0 else NewVal := Sender.AsFloat;

  Total := OldVal + NewVal;

  if Total > KLTong then
  begin
      RejectAndRevert2(DBGridEh1, Sender,
        Format('curr_weight phai = MAX (%.3f)', [KLTong]));
      Exit;
  end;}
end;


   {
procedure TChitiet.cdsChitietcurr_weightChange(Sender: TField);
var
  OldVal, Total, NewVal: Double;
begin

  OldVal := AggFloatDef(cdsChitietAggSumCurrWeight, 0);

  if Sender.IsNull then NewVal := 0 else NewVal := Sender.AsFloat;

  if Sender.AsFloat < 0 then
  begin
    ShowMessage('Curr weight phai lon hon 0');
    Sender.Value := 0;
    Exit;
  end;

  Total := OldVal + NewVal;

  if Total > KLTong then
  begin
      ShowMessage('Tong khoi luong vuot qua '+ FloatToStr(KLTong));
      Sender.Value := 0;
      Exit;
  end;
  //ShowMessage('Totals = ' + FloatToStr(Total));

end;

   }
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

  // --- Quét l?i toàn b? dataset ---
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

  // --- Ki?m tra vu?t ---
  if Total > KLTong then
  begin
    ShowMessage('Tong khoi luong vuot qua ' + FloatToStr(KLTong));
    if not (cdsChitiet.State in [dsEdit, dsInsert]) then
      cdsChitiet.Edit;  // d?m b?o có th? gán
    Sender.AsFloat := Sender.OldValue;  // rollback v? giá tr? cu
    Exit;
  end;

  //ShowMessage('Totals = ' + FloatToStr(Total));
end;



procedure TChitiet.Button3Click(Sender: TObject);
begin
  CheckLean1:=TCheckLean1.create(self);
  CheckLean1.show;
end;

procedure TChitiet.DBGridEh1GetCellParams(Sender: TObject;
  Column: TColumnEh; AFont: TFont; var Background: TColor;
  State: TGridDrawState);
begin
if cdsChitiet.FieldByName('Not_valid').value = 1  then
  begin
    DBGridEh1.canvas.font.color:=clRed;
end;
 end;
end.

