unit R_Hoachat_dp;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, GridsEh, DBGridEh, DB, DBTables, Mask, DBCtrls, StdCtrls,
  OleCtrls, MSCommLib_TLB, ExtCtrls, ComCtrls, Provider, DBClient,Math,ShellApi,DateUtils,comobj;

type
  TR_hoachat = class(TForm)
    Query1: TQuery;
    dsMain: TDataSource;
    Panel1: TPanel;
    Label2: TLabel;
    Label4: TLabel;
    btnCommit: TButton;
    Button3: TButton;
    Panel3: TPanel;
    Button2: TButton;
    DBGridEh1: TDBGridEh;
    QMain: TQuery;
    Timer1: TTimer;
    DTP1: TDateTimePicker;
    cdsMain: TClientDataSet;
    dspMain: TDataSetProvider;
    UpdateSQL1: TUpdateSQL;
    Panel2: TPanel;
    Label8: TLabel;
    Label9: TLabel;
    Label10: TLabel;
    Label11: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    Label7: TLabel;
    Edit3: TEdit;
    Button1: TButton;
    DBEdit1: TDBEdit;
    DBEdit2: TDBEdit;
    DBEdit3: TDBEdit;
    DBEdit4: TDBEdit;
    Label1: TLabel;
    cbb1: TComboBox;
    Label3: TLabel;
    cbb2: TComboBox;
    MSComm1: TMSComm;
    Query3: TQuery;
    Memo1: TMemo;
    Button4: TButton;
    Button5: TButton;
    Button6: TButton;
    Button7: TButton;
    Label12: TLabel;
    cbbpt: TComboBox;
    QMainid: TStringField;
    QMaincreate_time: TDateTimeField;
    QMaininv_name_vi: TStringField;
    QMaininv_name_tw: TStringField;
    QMainmaxweight_ch: TFloatField;
    QMainsol_name_vi: TStringField;
    QMainsol_name_tw: TStringField;
    QMainmaxweight_sol: TFloatField;
    QMaininv_notes: TStringField;
    QMaincurr_weight_ch: TFloatField;
    QMaincurr_weight_sol: TFloatField;
    QMainevent_time: TDateTimeField;
    QMainuserID: TStringField;
    QMainYN: TStringField;
    QMainTyLe: TFloatField;
    cdsMainid: TStringField;
    cdsMaincreate_time: TDateTimeField;
    cdsMaininv_name_vi: TStringField;
    cdsMaininv_name_tw: TStringField;
    cdsMainmaxweight_ch: TFloatField;
    cdsMainsol_name_vi: TStringField;
    cdsMainsol_name_tw: TStringField;
    cdsMainmaxweight_sol: TFloatField;
    cdsMaininv_notes: TStringField;
    cdsMaincurr_weight_ch: TFloatField;
    cdsMaincurr_weight_sol: TFloatField;
    cdsMainevent_time: TDateTimeField;
    cdsMainuserID: TStringField;
    cdsMainYN: TStringField;
    cdsMainTyLe: TFloatField;
    Label13: TLabel;
    CbbGSBH: TComboBox;
    Label14: TLabel;
    EditND: TEdit;
    Label15: TLabel;
    Label16: TLabel;
    EditDA: TEdit;
    Label17: TLabel;
    Label18: TLabel;
    EditSL: TEdit;
    Label19: TLabel;
    EditSLDC: TEdit;
    QMaintemperature: TStringField;
    QMainhumidity: TStringField;
    QMainBatch_number: TStringField;
    QMainBatch_number_sol: TStringField;
    cdsMaintemperature: TStringField;
    cdsMainhumidity: TStringField;
    cdsMainBatch_number: TStringField;
    cdsMainBatch_number_sol: TStringField;
    QMainnumber_of_spins: TStringField;
    QMainTong: TFloatField;
    cdsMainnumber_of_spins: TStringField;
    cdsMainTong: TFloatField;
    procedure FormCreate(Sender: TObject);
    procedure DTP1Change(Sender: TObject);
    procedure btnCommitClick(Sender: TObject);
    procedure Button3Click(Sender: TObject);
    procedure cdsMaincurr_weight_chValidate(Sender: TField);
    procedure cdsMaincurr_weight_solValidate(Sender: TField);
    procedure FormCloseQuery(Sender: TObject; var CanClose: Boolean);
    procedure FormDestroy(Sender: TObject);
    procedure cbb1Change(Sender: TObject);
    procedure cbb2Change(Sender: TObject);
    procedure MSComm1Comm(Sender: TObject);
    procedure Timer1Timer(Sender: TObject);
    procedure cbb1Enter(Sender: TObject);
    procedure cbb2Enter(Sender: TObject);
    procedure InsertDefaultData;
    procedure CheckInsertCondition;
    procedure InsertSelectedData;
    procedure Button4Click(Sender: TObject);
    procedure Button5Click(Sender: TObject);
    procedure Button6Click(Sender: TObject);
    procedure Button7Click(Sender: TObject);
    procedure cdsMainBeforePost(DataSet: TDataSet);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure cbbptChange(Sender: TObject);
    procedure LockFields;
    procedure cdsMainBeforeEdit(DataSet: TDataSet);


  private
    { Private declarations }
    ActiveWeigh: Integer;
    CurrentStep: Integer;
    FShuttingDown: Boolean;
    procedure SafeShutdown;
    procedure WriteWeightToField(const AFieldName: string; const AValue: Double);
    procedure SetGridReadOnly(AValue: Boolean);
  public
    { Public declarations }
  end;

var
  R_hoachat: TR_hoachat;
  workDate: TDateTime;
  WeightCh1, WeightCh2: string;
  Buffer: string;

implementation

uses ScanCheck, Canchitiet;

{$R *.dfm}

procedure TR_hoachat.FormCreate(Sender: TObject);
    var
  NDate: TDate;
begin


  with Query1 do
  begin
    Active := False;
    SQL.Text := 'select getdate() as NDate';
    Active := True;
    NDate := FieldByName('NDate').AsDateTime;
    Active := False;
  end;
 cbb1.Items.Clear;
  with Query1 do
  begin
    Close;
    SQL.Clear;
    SQL.Add('SELECT name_vi FROM Ch_Inventory_HK');
    Open;
    while not Eof do
    begin
      cbb1.Items.Add(FieldByName('name_vi').AsString);
      Next;
    end;
    Close;
  end;
    with Query1 do
  begin
    Close;
    SQL.Clear;
    SQL.Add('SELECT name_vi FROM Ch_Solvents_HK');
    Open;

    while not Eof do
    begin
      cbb2.Items.Add(FieldByName('name_vi').AsString);
      Next;
    end;

    Close;
  end;
  MSComm1.CommPort := 3;
  MSComm1.Settings := '9600,N,8,1';
  MSComm1.InputLen := 0;
  MSComm1.InputMode := comInputModeText;
  MSComm1.PortOpen := True;
  DTP1.Date := NDate;
  dspMain.UpdateMode       := upWhereKeyOnly;
  QMain.FieldByName('id').ProviderFlags               := [pfInKey, pfInWhere];
  QMain.FieldByName('curr_weight_ch').ProviderFlags   := [pfInUpdate];
  QMain.FieldByName('curr_weight_sol').ProviderFlags  := [pfInUpdate];
  QMain.FieldByName('inv_name_vi').ProviderFlags      := [];
  QMain.FieldByName('inv_name_tw').ProviderFlags      := [];
  QMain.FieldByName('sol_name_vi').ProviderFlags      := [];
  QMain.FieldByName('sol_name_tw').ProviderFlags      := [];
  QMain.FieldByName('inv_notes').ProviderFlags        := [];
  QMain.FieldByName('create_time').ProviderFlags      := [];
  QMain.FieldByName('event_time').ProviderFlags       := [];
  QMain.FieldByName('userID').ProviderFlags           := [pfInUpdate];
  QMain.FieldByName('YN').ProviderFlags           := [];
  QMain.FieldByName('temperature').ProviderFlags      := [pfInUpdate];
  QMain.FieldByName('humidity').ProviderFlags         := [pfInUpdate];
  QMain.FieldByName('Batch_number').ProviderFlags     := [];
  QMain.FieldByName('Batch_number_sol').ProviderFlags := [];
  (QMain.FieldByName('create_time') as TDateTimeField).DisplayFormat := 'yyyy-mm-dd';
  (QMain.FieldByName('event_time') as TDateTimeField).DisplayFormat := 'yyyy-mm-dd hh:nn:ss';
  with UpdateSQL1 do
  begin
    ModifySQL.Clear;
    ModifySQL.Add('UPDATE ch_Formulation_HK SET');
    ModifySQL.Add('  curr_weight_ch  = :curr_weight_ch,');
    ModifySQL.Add('  curr_weight_sol = :curr_weight_sol,');
    ModifySQL.Add('  temperature      = :temperature,');
    ModifySQL.Add('  humidity         = :humidity,');
     ModifySQL.Add(
    '  number_of_spins = ' +
    '    CASE ' +
    '      WHEN :number_of_spins IS NOT NULL ' +
    '      THEN :number_of_spins ' +
    '      ELSE number_of_spins ' +
    '    END,');
    //ModifySQL.Add('  number_of_spins = 0,');
    ModifySQL.Add('  event_time      = GETDATE(), ');
    ModifySQL.Add('  YN      = 2');
    ModifySQL.Add('WHERE id = CONVERT(bigint, :OLD_id)');
    InsertSQL.Clear;
    DeleteSQL.Clear;
  end;
  cdsMain.Open;
end;

procedure TR_hoachat.DTP1Change(Sender: TObject);
var
  StartDate, EndDate: TDateTime;
begin
  StartDate := Trunc(DTP1.Date);
  EndDate   := StartDate + 1;
 if cdsMain.RecordCount > 0 then
    cdsMain.Refresh;
 with QMain do
   begin
    Close;
    ParamByName('StartDate').AsDateTime := StartDate;
    ParamByName('EndDate').AsDateTime   := EndDate;
    Open;
   end;
   if not cdsMain.Active then
    cdsMain.Open
   else
    cdsMain.Refresh;
end;

procedure TR_hoachat.LockFields;
var
  i: Integer;
begin
  if cdsMain.FieldByName('YN').AsString = '2' then
  begin
    for i := 0 to cdsMain.FieldCount - 1 do
     cdsMain.Fields[i].ReadOnly := True;
    cdsMain.FieldByName('number_of_spins').ReadOnly := False;
    cdsMain.FieldByName('temperature').ReadOnly    := False;
    cdsMain.FieldByName('humidity').ReadOnly       := False;
  end;
end;



procedure TR_hoachat.btnCommitClick(Sender: TObject);
{var toApply: Integer;
    recordID: string;
begin
  if cdsMain.Active and not cdsMain.IsEmpty then
  begin
    recordID := cdsMain.FieldByName('id').AsString;
    if cdsMain.FieldByName('YN').AsString = '2' then
    begin
      ShowMessage(Format('Ban khong the commit ban ghi ID=%s vi da commit truoc do.', [recordID]));
      Exit;
    end;
  end;


  try
    if cdsMain.State in [dsEdit, dsInsert] then cdsMain.Post;
    toApply := cdsMain.ChangeCount;
    if toApply = 0 then
    begin
      ShowMessage('Khong co thay doi nao duoc luu!');
      Exit;
    end;
    cdsMain.ApplyUpdates(0);
    DTP1Change(nil);
    ShowMessage(Format('%d row(s) affected', [toApply]));
    cdsMain.Refresh;
  except
    on E: Exception do
    begin
      ShowMessage('Update failed: ' + E.Message);
      cdsMain.CancelUpdates;
    end;
  end;
end;    }


var
  toApply: Integer;
  isFinalCommit: Boolean;
begin
  if not (cdsMain.Active and not cdsMain.IsEmpty) then Exit;
  isFinalCommit := cdsMain.FieldByName('YN').AsString = '2';
  if not isFinalCommit then
  begin
    if not cdsMain.FieldByName('number_of_spins').IsNull then
    begin
      ShowMessage('Chi duoc nhap number of spins sau khi da commit!');
      cdsMain.DisableControls;
      try
        cdsMain.FieldByName('number_of_spins').Clear;
      finally
        cdsMain.EnableControls;
      end;

      Abort;
    end;
  end
  else
  begin
    {if not FieldChanged(cdsMain.FieldByName('number_of_spins')) then
    begin
      ShowMessage('Ban chua nhap number of spins!');
      Exit;
    end;}
  end;
  if cdsMain.State in [dsEdit, dsInsert] then
    cdsMain.Post;

  toApply := cdsMain.ChangeCount;
  if toApply = 0 then
  begin
    ShowMessage('Khong co thay doi nao duoc luu!');
    Exit;
  end;

  try
    cdsMain.ApplyUpdates(0);
    LockFields;
     cdsMain.Close;
  QMain.Close;
  QMain.Open;
  cdsMain.Open;
    ShowMessage(Format('%d row(s) affected', [toApply]));
  except
    on E: Exception do
    begin
      cdsMain.CancelUpdates;
      ShowMessage('Update failed: ' + E.Message);
    end;
  end;
end;

procedure TR_hoachat.Button3Click(Sender: TObject);
begin
  if MessageDlg('Ban co muon reset lai bang?', mtConfirmation, [mbYes, mbNo], 0) = mrYes then
  begin
    cdsMain.EmptyDataSet;
    {
    cdsMain.CancelUpdates;
    cdsMain.Refresh;
    }
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



function AsFloatDef(F: TField; Def: Double): Double;
begin
  if (F = nil) or F.IsNull then Result := Def else Result := F.AsFloat;
end;

procedure TR_hoachat.cdsMaincurr_weight_chValidate(Sender: TField);
var
  maxv: Double;
begin
  if Sender.IsNull then Exit;

  if Sender.AsFloat < 0 then
  begin
  Panel2.Color := clRed;
    Application.ProcessMessages;
    RejectAndRevert(DBGridEh1, Sender, 'Curr Weight CH phai = 0');
    Exit;
  end;

  maxv := AsFloatDef(cdsMain.FieldByName('maxweight_ch'), MaxDouble);
  if Sender.AsFloat > maxv then
  begin
  Panel2.Color := clRed;
    Application.ProcessMessages;
    RejectAndRevert(DBGridEh1, Sender,
      Format('Curr Weight CH phai = MAX (%.3f)', [maxv]));
    Exit;
  end;
end;

procedure TR_hoachat.cdsMaincurr_weight_solValidate(Sender: TField);
var
  maxv: Double;
begin
  if Sender.IsNull then Exit;

  if Sender.AsFloat < 0 then
  begin
  Panel2.Color := clRed;
    Application.ProcessMessages;
    RejectAndRevert(DBGridEh1, Sender, 'Curr Weight Sol phai = 0');
    Exit;
  end;

  maxv := AsFloatDef(cdsMain.FieldByName('maxweight_sol'), MaxDouble);
  if Sender.AsFloat > maxv then
  begin
    Panel2.Color := clRed;
    Application.ProcessMessages;
    RejectAndRevert(DBGridEh1, Sender,
      Format('Curr Weight Sol phai = MAX (%.3f)', [maxv]));
    Exit;
 end
  else
  begin
    Panel2.Color := clBtnFace;
  end;
end;





procedure TR_hoachat.SafeShutdown;
begin
  if FShuttingDown then Exit;
  FShuttingDown := True;
  try
    if Assigned(Timer1) then Timer1.Enabled := False;
    if Assigned(DBGridEh1) and DBGridEh1.HandleAllocated then
      DBGridEh1.EditorMode := False;
    if Assigned(cdsMaincurr_weight_ch) then
      cdsMaincurr_weight_ch.OnValidate := nil;
    if Assigned(cdsMaincurr_weight_sol) then
      cdsMaincurr_weight_sol.OnValidate := nil;
    if Assigned(DBGridEh1) then DBGridEh1.DataSource := nil;
    dsMain.DataSet := nil;
    if cdsMain.Active then
    begin
      cdsMain.DisableControls;
      try
        if cdsMain.State in [dsEdit, dsInsert] then cdsMain.Cancel;
        cdsMain.Close;
      finally
        cdsMain.EnableControls;
      end;
    end;
    dspMain.DataSet := nil;
    if QMain.Active then QMain.Close;
    QMain.UpdateObject := nil;
  except
  end;
end;

procedure TR_hoachat.FormCloseQuery(Sender: TObject;
  var CanClose: Boolean);
begin
  SafeShutdown;
  CanClose := True;
   if MSComm1.PortOpen then
    MSComm1.PortOpen := False;
end;

procedure TR_hoachat.FormDestroy(Sender: TObject);
begin
  SafeShutdown;
end;

procedure TR_hoachat.cbb1Change(Sender: TObject);
begin
CurrentStep := 1;
 with Query3 do
  begin
    Close;
    SQL.Clear;
    SQL.Add('SELECT id FROM Ch_Inventory_HK');
    SQL.Add('WHERE name_vi = ''' + cbb1.Text + '''');
    Open;

    if not Eof then
    begin
      DBEdit1.Text := FieldByName('id').AsString;
    end
    else
    begin
      ShowMessage('Khong tim thay ID tuong ung!');
    end;
   // ShowMessage(SQL.Text);
    Active := True;
  end;
    CheckInsertCondition
end;

procedure TR_hoachat.cbb2Change(Sender: TObject);
begin
 CurrentStep := 2;
 with Query3 do
  begin
    Close;
    SQL.Clear;
    SQL.Add('SELECT id FROM Ch_Solvents_HK');
    SQL.Add('WHERE name_vi = ''' + cbb2.Text + '''');
    Open;
    if not Eof then
    begin
      DBEdit3.Text := FieldByName('id').AsString;
    end
    else
    begin
      ShowMessage('Khong tim thay ID tuong ung!');
    end;
  end;
    CheckInsertCondition
end;

procedure TR_hoachat.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  action:=caHide;
//  R_hoachat:=nil;
end;

procedure TR_hoachat.cbbptChange(Sender: TObject);

 {if cdsMain.Active and (not cdsMain.IsEmpty) then
  begin
    // L?y giá tr? % trong combobox (ví d? '1.5%' ? 0.015)
    cdsMain.Edit;
    cdsMain.FieldByName('TyLe').AsFloat :=
      StrToFloat(StringReplace(cbbpt.Text, '%', '', [])) ;

    // Tính l?i tr?ng lu?ng ch?t 2
  //  cdsMain.FieldByName('curr_weight_sol').AsFloat :=
     // cdsMain.FieldByName('curr_weight_ch').AsFloat *
    //  cdsMain.FieldByName('TyLe').AsFloat;
  end;
   CheckInsertCondition }

 var
  percentValue: Double;
begin
  if cdsMain.Active and (not cdsMain.IsEmpty) then
  begin
    cdsMain.Edit;
    percentValue := StrToFloat(StringReplace(cbbpt.Text, '%', '', []));
    if (100 - percentValue) <> 0 then
      cdsMain.FieldByName('TyLe').AsFloat := percentValue / (100 - percentValue)
    else
      cdsMain.FieldByName('TyLe').AsFloat := 0;
  end;

  CheckInsertCondition;
end;



function ExtractWeight(const S: string; out V: Double): Boolean;
var
  tmp: string;
begin
  V := 0;
  tmp := S;

  tmp := StringReplace(tmp, 'Line:', '', [rfReplaceAll, rfIgnoreCase]);
  tmp := StringReplace(tmp, 'Weight', '', [rfReplaceAll, rfIgnoreCase]);
  tmp := StringReplace(tmp, ':', '', [rfReplaceAll]);
  tmp := StringReplace(tmp, 'kg', '', [rfReplaceAll, rfIgnoreCase]);
  tmp := StringReplace(tmp, 'g', '', [rfReplaceAll, rfIgnoreCase]);
  tmp := StringReplace(tmp, #13, '', [rfReplaceAll]);
  tmp := StringReplace(tmp, #10, '', [rfReplaceAll]);
  tmp := Trim(tmp);
  tmp := StringReplace(tmp, ',', DecimalSeparator, [rfReplaceAll]);
  tmp := StringReplace(tmp, '.', DecimalSeparator, [rfReplaceAll]);
  Result := TryStrToFloat(tmp, V);
end;

procedure TR_hoachat.MSComm1Comm(Sender: TObject);
{var
  rawData, line, cleanData: string;
  weightValue: Double;
begin
  if MSComm1.CommEvent = comEvReceive then
  begin
    rawData := MSComm1.Input;         // ð?c d? li?u m?i
    Buffer := Buffer + rawData;       // n?i thêm vào buffer
    Memo1.Lines.Add(rawData);         // log ð? xem

    // Ki?m tra n?u buffer ð? có "Weight" và "kg"
    if (Pos(' Weight', Buffer) > 0) and (Pos('kg', Buffer) > 0) then
    begin
      // L?y ra ph?n c?n thi?t
      line := Copy(Buffer, Pos(' Weight', Buffer), MaxInt);
      line := Trim(line);

      // Xóa ch? Weight và kg
      cleanData := StringReplace(line, ' Weight', '', [rfIgnoreCase]);
      cleanData := StringReplace(cleanData, ':       ', '', [rfReplaceAll]);
      cleanData := StringReplace(cleanData, 'kg', '', [rfIgnoreCase]);
      cleanData := Trim(cleanData);

      if TryStrToFloat(cleanData, weightValue) then
      begin
        ShowMessage('Tr?ng lý?ng: ' + FloatToStr(weightValue));
      end;

      // Reset buffer ð? chu?n b? cho l?n sau
      Buffer := '';
    end;
  end;
end;}

var
  rawData: string;
  Lines: TStringList;
  i: Integer;
  weightValue: Double;
begin
  if MSComm1.CommEvent = comEvReceive then
  begin
    rawData := MSComm1.Input;
    Buffer := Buffer + rawData;
    if Pos('kg', Buffer) > 0 then
    begin
      Lines := TStringList.Create;
      try
        Lines.Text := Buffer;
        for i := Lines.Count - 1 downto 0 do
        begin
          if (Pos('kg', Lines[i]) > 0) or (Pos('Weight', Lines[i]) > 0) then
          begin
            if ExtractWeight(Lines[i], weightValue) then
            begin
              if cdsMain.Active then
              begin
                cdsMain.Edit;
                cdsMain.FieldByName('curr_weight_ch').AsFloat := weightValue;
                cdsMain.Post;
              end;
            end;
            Break;
          end;
        end;
      finally
        Lines.Free;
      end;
      Buffer := '';
    end;
  end;
end;



procedure TR_hoachat.Timer1Timer(Sender: TObject);
var
  S, Line, Tmp: string;
  mTime: string;
  weightValue: Double;
begin
  if StrToInt(FormatDateTime('hh', Now)) < 7 then
    workDate := Now - 1
  else
    workDate := Now;

  mTime := FormatDateTime('yyyy/MM/dd hh:mm:ss', Now);
  Edit3.Text := mTime;
  if MSComm1.PortOpen and (MSComm1.InBufferCount > 0) then
  begin
    S := MSComm1.Input;
    while Pos(#10, S) > 0 do
    begin
      Line := Trim(Copy(S, 1, Pos(#10, S) - 1));
      Delete(S, 1, Pos(#10, S));

      if Line <> '' then
      begin
        if Pos('Weight', Line) > 0 then
        begin
          Tmp := StringReplace(Line, 'Weight :', '', [rfReplaceAll, rfIgnoreCase]);
          Tmp := StringReplace(Tmp, 'kg', '', [rfReplaceAll, rfIgnoreCase]);
          Tmp := Trim(Tmp);

         if TryStrToFloat(Tmp, weightValue) then
           begin
             if cdsMain.Active then
                begin
                 cdsMain.Edit;
                   if Assigned(DBGridEh1.SelectedField) then
                       begin
                          if DBGridEh1.SelectedField.FieldName = 'curr_weight_ch' then
                          cdsMain.FieldByName('curr_weight_ch').AsFloat := weightValue
                         else if DBGridEh1.SelectedField.FieldName = 'curr_weight_sol' then
                         cdsMain.FieldByName('curr_weight_sol').AsFloat := weightValue;
                         end;
                         cdsMain.Post;
                       end;
                end;
        end;
      end;
    end;
  end;
end;
procedure TR_hoachat.cbb1Enter(Sender: TObject);
begin
ActiveWeigh := 1;
end;

procedure TR_hoachat.cbb2Enter(Sender: TObject);
begin
 ActiveWeigh := 2;
end;



procedure TR_hoachat.WriteWeightToField(const AFieldName: string; const AValue: Double);
var
  F: TField;
  recordID: string;
begin
  if not cdsMain.Active or cdsMain.IsEmpty then Exit;

  recordID := cdsMain.FieldByName('id' ).AsString;

  if cdsMain.FieldByName('YN').AsString = '2' then
  begin
    ShowMessage(Format('Ban khong the can lai ban ghi ID=%s vi da commit (YN=2).', [recordID]));
    Exit;
  end;


  F := cdsMain.FieldByName(AFieldName);
  cdsMain.DisableControls;
  try
    if not (cdsMain.State in [dsEdit, dsInsert]) then
      cdsMain.Edit;

    F.AsFloat := AValue;
    if Assigned(DBGridEh1) then
    begin
      DBGridEh1.SelectedField := F;
      DBGridEh1.EditorMode    := True;
    end;
  finally
    cdsMain.EnableControls;
  end;
end;


function ParseWeight(const S: string; out V: Double): Boolean;
var
  tmp: string;
begin
  tmp := StringReplace(S, ' Weight :       ', '', [rfReplaceAll, rfIgnoreCase]);
  tmp := StringReplace(tmp, 'kg',       '', [rfReplaceAll, rfIgnoreCase]);
  tmp := Trim(tmp);
  tmp := StringReplace(tmp, '.', DecimalSeparator, [rfReplaceAll]);
  tmp := StringReplace(tmp, ',', DecimalSeparator, [rfReplaceAll]);

  Result := TryStrToFloat(tmp, V);
end;


procedure TR_hoachat.InsertDefaultData;
{type
  TDefData = record
    MaxCh: Integer;
    MaxSol: Integer;
    InvID: string;
    SolID: string;
  end;
const
  DefRows: array[0..4] of TDefData = (
    (MaxCh: 1000; MaxSol: 20; InvID: 'CH10000000'; SolID: 'MIX0000000'),
    (MaxCh: 1000; MaxSol: 30; InvID: 'CH10000001'; SolID: 'MIX0000001'),
    (MaxCh: 1000; MaxSol: 40; InvID: 'CH10000002'; SolID: 'MIX0000001'),
    (MaxCh: 1000; MaxSol: 50; InvID: 'CH10000004'; SolID: 'MIX0000002'),
    (MaxCh: 1000; MaxSol: 20; InvID: 'CH10000003'; SolID: 'MIX0000000')
  );
var
  idx1, idx2: Integer;
begin
  if (cbb1.ItemIndex < 0) and (cbb2.ItemIndex < 0) then
  begin
    ShowMessage('Vui long chon chat!');
    Exit;
  end;

  idx1 := cbb1.ItemIndex;
  idx2 := cbb2.ItemIndex;
  if (idx1 >= Low(DefRows)) and (idx2 <= High(DefRows)) then
  begin
    with Query1 do
    begin
      Close;
      SQL.Clear;
      SQL.Add('INSERT INTO Ch_Formulation ' +
              '(create_time, maxweight_ch, maxweight_sol, inv_id, sol_id, userID) ' +
              'VALUES (:CreateTime, :MaxCh, :MaxSol, :InvID, :SolID, ''System'')');
      ParamByName('CreateTime').Value := Now;
      ParamByName('MaxCh').Value := DefRows[idx1].MaxCh;
      ParamByName('MaxSol').Value := DefRows[idx2].MaxSol;
      ParamByName('InvID').Value := DefRows[idx1].InvID;
      ParamByName('SolID').Value := DefRows[idx2].SolID;
      ExecSQL;
    end;

     cbb1.ItemIndex := -1;
     cbb1.Text := '';
     cbb2.ItemIndex := -1;
     cbb2.Text := '';
  end;
end;  }

type
  TDefData = record
    MaxCh: Integer;
    MaxSol: Integer;
    InvID: string;
    SolID: string;
  end;
const
  DefRows: array[0..46] of TDefData = (//(MaxCh: 20; MaxSol: 1; InvID: 'CH10000004'; SolID: 'MIX0000001'));
   // (MaxCh: 20; MaxSol: 1; InvID: 'CH10000001'; SolID: 'MIX0000001'),
    //(MaxCh: 20; MaxSol: 1; InvID: 'CH10000002'; SolID: 'MIX0000002'),
    //(MaxCh: 20; MaxSol: 1; InvID: 'CH10000003'; SolID: 'MIX0000002'),
    (MaxCh: 20; MaxSol: 1; InvID: 'CH10000004'; SolID: 'MIX0000003'),
    (MaxCh: 20; MaxSol: 1; InvID: 'CH10000005'; SolID: 'MIX0000003'),
   // (MaxCh: 20; MaxSol: 1; InvID: 'CH10000006'; SolID: 'MIX0000003'),
   // (MaxCh: 20; MaxSol: 1; InvID: 'CH10000007'; SolID: 'MIX0000003'),
    (MaxCh: 20; MaxSol: 1; InvID: 'CH10000008'; SolID: 'MIX0000004'),
    (MaxCh: 20; MaxSol: 0; InvID: 'CH10000009'; SolID: 'MIX0000008'),
    (MaxCh: 20; MaxSol: 0; InvID: 'CH10000010'; SolID: 'MIX0000008'),
    (MaxCh: 20; MaxSol: 1; InvID: 'CH10000011'; SolID: 'MIX0000001'),
    (MaxCh: 20; MaxSol: 0; InvID: 'CH10000012'; SolID: 'MIX0000008'),
    (MaxCh: 20; MaxSol: 1; InvID: 'CH10000013'; SolID: 'MIX0000005'),
    (MaxCh: 20; MaxSol: 1; InvID: 'CH10000014'; SolID: 'MIX0000005'),
    (MaxCh: 20; MaxSol: 1; InvID: 'CH10000015'; SolID: 'MIX0000006'),
    (MaxCh: 20; MaxSol: 1; InvID: 'CH10000016'; SolID: 'MIX0000006'),
    (MaxCh: 20; MaxSol: 1; InvID: 'CH10000017'; SolID: 'MIX0000006'),
    (MaxCh: 20; MaxSol: 1; InvID: 'CH10000018'; SolID: 'MIX0000006'),
    (MaxCh: 20; MaxSol: 1; InvID: 'CH10000019'; SolID: 'MIX0000006'),
    (MaxCh: 20; MaxSol: 1; InvID: 'CH10000020'; SolID: 'MIX0000006'),
    (MaxCh: 20; MaxSol: 1; InvID: 'CH10000021'; SolID: 'MIX0000006'),
    (MaxCh: 20; MaxSol: 1; InvID: 'CH10000022'; SolID: 'MIX0000007'),
    (MaxCh: 20; MaxSol: 0; InvID: 'CH10000023'; SolID: 'MIX0000008'),
    (MaxCh: 20; MaxSol: 0; InvID: 'CH10000024'; SolID: 'MIX0000008'),
    (MaxCh: 20; MaxSol: 1; InvID: 'CH10000025'; SolID: 'MIX0000001'),
    (MaxCh: 20; MaxSol: 1; InvID: 'CH10000026'; SolID: 'MIX0000005'),
    (MaxCh: 20; MaxSol: 1; InvID: 'CH10000027'; SolID: 'MIX0000005'),
    (MaxCh: 20; MaxSol: 1; InvID: 'CH10000028'; SolID: 'MIX0000005'),
    (MaxCh: 20; MaxSol: 1; InvID: 'CH10000029'; SolID: 'MIX0000009'),
    (MaxCh: 20; MaxSol: 1; InvID: 'CH10000030'; SolID: 'MIX0000010'),
    (MaxCh: 20; MaxSol: 1; InvID: 'CH10000031'; SolID: 'MIX0000010'),
    (MaxCh: 20; MaxSol: 1; InvID: 'CH10000032'; SolID: 'MIX0000010'),
    (MaxCh: 20; MaxSol: 1; InvID: 'CH10000026'; SolID: 'MIX0000010'),
    (MaxCh: 20; MaxSol: 1; InvID: 'CH10000027'; SolID: 'MIX0000010'),
    (MaxCh: 20; MaxSol: 1; InvID: 'CH10000033'; SolID: 'MIX0000010'),
    (MaxCh: 20; MaxSol: 1; InvID: 'CH10000034'; SolID: 'MIX0000010'),
    (MaxCh: 20; MaxSol: 1; InvID: 'CH10000035'; SolID: 'MIX0000006'),
    (MaxCh: 20; MaxSol: 1; InvID: 'CH10000036'; SolID: 'MIX0000006'),
    (MaxCh: 20; MaxSol: 1; InvID: 'CH10000037'; SolID: 'MIX0000006'),
    (MaxCh: 20; MaxSol: 1; InvID: 'CH10000038'; SolID: 'MIX0000006'),
    (MaxCh: 20; MaxSol: 1; InvID: 'CH10000039'; SolID: 'MIX0000006'),
    (MaxCh: 20; MaxSol: 1; InvID: 'CH10000040'; SolID: 'MIX0000006'),
    (MaxCh: 20; MaxSol: 1; InvID: 'CH10000041'; SolID: 'MIX0000006'),
    (MaxCh: 20; MaxSol: 1; InvID: 'CH10000035'; SolID: 'MIX0000005'),
    (MaxCh: 20; MaxSol: 1; InvID: 'CH10000036'; SolID: 'MIX0000005'),
    (MaxCh: 20; MaxSol: 1; InvID: 'CH10000037'; SolID: 'MIX0000005'),
    (MaxCh: 20; MaxSol: 1; InvID: 'CH10000038'; SolID: 'MIX0000005'),
    (MaxCh: 20; MaxSol: 1; InvID: 'CH10000039'; SolID: 'MIX0000005'),
    (MaxCh: 20; MaxSol: 1; InvID: 'CH10000040'; SolID: 'MIX0000005'),
    (MaxCh: 20; MaxSol: 1; InvID: 'CH10000041'; SolID: 'MIX0000005'),
    (MaxCh: 20; MaxSol: 1; InvID: 'CH10000042'; SolID: 'MIX0000011'),
    (MaxCh: 20; MaxSol: 1; InvID: 'CH10000043'; SolID: 'MIX0000006')
    );
var
  i: Integer;
  invID, solID: string;
  found: Boolean;
    percentValue, realRatio: Double;
     formattedRatio: String;
begin

    if Trim(CbbGSBH.Text) = '' then
      begin
            ShowMessage('Vui long chon xuong!');
            CbbGSBH.SetFocus;
            cbb1.ItemIndex := -1; cbb1.Text := '';
            cbb2.ItemIndex := -1; cbb2.Text := '';
            cbbpt.ItemIndex := -1; cbbpt.Text := '';
             Exit;
       end;
 {if Trim(EditND.Text) = '' then
    begin
     ShowMessage('Vui long nhap nhiet do !');
     EditND.SetFocus;
     Exit;
    end;

   if Trim(EditDA.Text) = '' then
    begin
    ShowMessage('Vui long nhap do am !');
    EditDA.SetFocus;
    Exit;
   end;   }

   if Trim(EditSL.Text) = '' then
    begin
     ShowMessage('Vui long nhap so lo keo !');
     EditSL.SetFocus;
     Exit;
    end;

  if (cbb1.ItemIndex = -1) or (cbb2.ItemIndex = -1) then
  begin
    ShowMessage('Vui long chon day du hoa chat dung dich !');
    Exit;
  end;

  invID := Trim(DBEdit1.Text);
  solID := Trim(DBEdit3.Text);

  found := False;
  for i := Low(DefRows) to High(DefRows) do
  begin
    if (DefRows[i].InvID = invID) and (DefRows[i].SolID = solID) then
    begin

      with Query1 do
      begin
        Close;
        SQL.Clear;
        SQL.Add('INSERT INTO Ch_Formulation_HK ');
        SQL.Add('(create_time, maxweight_ch, maxweight_sol, inv_id, sol_id, userID, YN, TyLe, GSBH, temperature, humidity, Batch_number, Batch_number_sol) ');
        SQL.Add('VALUES (:CreateTime, :MaxCh, :MaxSol, :InvID, :SolID, :UserID, :YN, :TyLe, :GSBH, :temperature, :humidity, :Batch_number , :Batch_number_sol)');
        ParamByName('CreateTime').AsDateTime := Now;
        ParamByName('MaxCh').AsInteger := DefRows[i].MaxCh;
        ParamByName('MaxSol').AsInteger := DefRows[i].MaxSol;
        ParamByName('InvID').AsString := DefRows[i].InvID;
        ParamByName('SolID').AsString := DefRows[i].SolID;
        ParamByName('UserID').AsString := 'System';
        ParamByName('YN').AsString := '1';
        ParamByName('GSBH').AsString := CbbGSBH.Text;
        ParamByName('temperature').AsString :=EditND.Text;
        ParamByName('humidity').AsString :=EditDA.Text;
        ParamByName('Batch_number').AsString :=EditSL.Text;
        ParamByName('Batch_number_sol').AsString :=EditSLDC.Text;
       // ParamByName('TyLe').AsFloat :=
        //StrToFloat(StringReplace(cbbpt.Text, '%', '', [])) ;
        begin
        percentValue := StrToFloatDef(StringReplace(cbbpt.Text, '%', '', []), 0);
          if (100 - percentValue) <> 0 then
            realRatio := percentValue / (100 - percentValue)
          else
             realRatio := 0;
              //ParamByName('TyLe').AsFloat := RoundTo(realRatio, -4);
                formattedRatio := Copy(FormatFloat('0.0000000000', realRatio), 1, Pos('.', FormatFloat('0.0000000000', realRatio)) + 4);
                ParamByName('TyLe').AsFloat := StrToFloat(formattedRatio);
         //ParamByName('TyLe').AsFloat := realRatio;
         end;
        ExecSQL;
      end;

      found := True;
      Break;
    end;
  end;

  if not found then
  begin
    ShowMessage('Dung dich phoi khong hop le !');
    Exit;
  end;

  // reset combobox sau khi insert
  cbb1.ItemIndex := -1; cbb1.Text := '';
  cbb2.ItemIndex := -1; cbb2.Text := '';
  cbbpt.ItemIndex := -1; cbbpt.Text := '';
 // CbbGSBH.ItemIndex := -1; CbbGSBH.Text := '';

  //if cdsMain.Active then
   // cdsMain.Refresh;

  if cdsMain.Active then
begin
  try
    if cdsMain.ChangeCount > 0 then
      cdsMain.ApplyUpdates(0);

    cdsMain.DisableControls;
    cdsMain.Close;
    cdsMain.Open;
  finally
    cdsMain.EnableControls;
  end;
end;

  ShowMessage('Success!');
  EditND.Clear;
  EditDA.Clear;
  EditSL.Clear;
  EditSLDC.Clear;
  EditND.Text := '';
  EditDA.Text := '';
  EditSL.Text := '';
  EditSLDC.Text := '';
end;


procedure TR_hoachat.CheckInsertCondition;
begin
  if (cbb1.ItemIndex <> -1) and (cbb2.ItemIndex <> -1) and (cbbpt.ItemIndex <> -1) then
  begin
    InsertDefaultData;
  end;
end;


procedure TR_hoachat.InsertSelectedData;
begin
  if (cbb1.ItemIndex = -1) or (cbb2.ItemIndex = -1) then Exit;

  cdsMain.Append;
  cdsMain.FieldByName('inv_name_vi').AsString := cbb1.Text;
  cdsMain.FieldByName('sol_name_vi').AsString := cbb2.Text;
  cdsMain.FieldByName('create_time').AsDateTime := DTP1.Date;
  cdsMain.FieldByName('maxweight_ch').AsInteger := 20;  // gán m?c d?nh
  cdsMain.FieldByName('maxweight_sol').AsInteger := 1;   // gán m?c d?nh
  cdsMain.FieldByName('userID').AsString := 'System';
  cdsMain.FieldByName('YN').AsString := '1';  // gán m?c d?nh
//  cdsMain.FieldByName('TyLe').AsFloat :=
  //    StrToFloat(StringReplace(cbbpt.Text, '%', '', [])) ;
  cdsMain.Post;
  cbb1.ItemIndex := -1;
  cbb1.Text := '';
  cbb2.ItemIndex := -1;
  cbb2.Text := '';
end;

procedure TR_hoachat.Button4Click(Sender: TObject);
var i:integer;
    TxtFile:textfile;
    sline:string;
    updatsql:string;
   totalWeight, chWeight, solWeight: Double;
   eventTime, eventTimePlus: TDateTime;
  invNotes: string;
begin
  if (cdsMain.Active) and (cdsMain.RecordCount>0) then
  begin
  try
    assignfile(TxtFile,ExtractFilePath(Application.ExeName)+'CAN HC_HK.txt');
    rewrite(TxtFile);
      //cdsMain.First;
     i:=1;
      //while not cdsMain.Eof do
    //  begin
          sline:='';
          sline:=sline+inttostr(i)+',';
          sline:=sline+cdsMain.fieldbyname('id').Value+','; //±ø½X­«½Æ
          sline:=sline+cdsMain.fieldbyname('inv_name_vi').AsString+',';
          sline:=sline+cdsMain.fieldbyname('inv_name_tw').AsString+',';
          sline:=sline+cdsMain.fieldbyname('maxweight_ch').AsString+',';
          sline:=sline+cdsMain.fieldbyname('sol_name_vi').AsString+',';
          sline:=sline+cdsMain.fieldbyname('sol_name_tw').AsString+',';
          sline:=sline+cdsMain.fieldbyname('maxweight_sol').AsString+',';
          sline:=sline+cdsMain.fieldbyname('curr_weight_ch').AsString+',';
          sline:=sline+cdsMain.fieldbyname('curr_weight_sol').AsString +',';
           if cdsMain.FieldByName('curr_weight_ch').IsNull then
          chWeight := 0
        else
          chWeight := cdsMain.FieldByName('curr_weight_ch').AsFloat;

        if cdsMain.FieldByName('curr_weight_sol').IsNull then
          solWeight := 0
        else
          solWeight := cdsMain.FieldByName('curr_weight_sol').AsFloat;
        totalWeight := chWeight + solWeight;
         FloatToStr(totalWeight);
         sline := sline + FloatToStr(totalWeight)+'kg,';
           if not cdsMain.FieldByName('event_time').IsNull then          
          eventTime := cdsMain.FieldByName('event_time').AsDateTime
        else
          eventTime := 0;
       sline := sline + 'MFG:' + FormatDateTime('ddMMyy hh:nn:ss', eventTime) + ',';
        invNotes := Trim(cdsMain.FieldByName('inv_notes').AsString);
        eventTimePlus := eventTime;
        if SameText(invNotes, '1H') then
          eventTimePlus := IncHour(eventTime, 1)
        else if SameText(invNotes, '2H') then
          eventTimePlus := IncHour(eventTime, 2);
       sline := sline + 'EXP:' + FormatDateTime('ddMMyy hh:nn:ss', eventTimePlus);
          append(TxtFile);
          writeln(TxtFile, sline);
      //  cdsMain.Next;
       // inc(i);
         //funcObj.WriteErrorLog(MJZLQry.Text);
    //  end;
      closefile(TxtFile);
  except
  //  begin
      closefile(TxtFile);
  //  end;
  end;
end;
    if fileexists(extractfilepath(application.ExeName)+'CAN HC_HK.btw') then
    begin
      ShellExecute(Handle,'open',PChar(ExtractFilePath(Application.ExeName)+'CAN HC_HK.btw'),nil,pchar(ExtractFilePath(Application.ExeName)),SW_SHOW);
    end else
    begin
      showmessage('Pls setup the program first. Abort');
    end;
  end;

procedure TR_hoachat.Button5Click(Sender: TObject);
begin
  CheckScan:=TCheckScan.create(self);
  CheckScan.show;
end;
procedure TR_hoachat.SetGridReadOnly(AValue: Boolean);
var
  i: Integer;
begin
  for i := 0 to DBGridEh1.Columns.Count - 1 do
    DBGridEh1.Columns[i].ReadOnly := AValue;
end;



procedure TR_hoachat.Button6Click(Sender: TObject);
{var
  curID: Integer;
  total: Double;
begin
  if (DBGridEh1.DataSource <> nil) and (DBGridEh1.DataSource.DataSet <> nil) then
  begin
    if not DBGridEh1.DataSource.DataSet.IsEmpty then
    begin
      curID := DBGridEh1.DataSource.DataSet.FieldByName('id').AsInteger;
      total := DBGridEh1.DataSource.DataSet.FieldByName('curr_weight_ch').AsFloat +DBGridEh1.DataSource.DataSet.FieldByName('curr_weight_sol').AsFloat ;
       if Assigned(Chitiet) then
      begin
        Chitiet.Free;
        Chitiet := nil;
      end;

      Chitiet := TChitiet.Create(nil);
      Chitiet.SetID(curID);
      Chitiet.AttachMSComm(MSComm1);
      Chitiet.SetKL(total);
      Chitiet.Show;
    end
    else
      ShowMessage('Khong co du lieu trong luoi!');
  end
  else
    ShowMessage('DBGrid chua gan DataSource!');
end;  }

var
  curID: Integer;
  total: Double;
begin
  if (DBGridEh1.DataSource <> nil) and (DBGridEh1.DataSource.DataSet <> nil) then
  begin
    if not DBGridEh1.DataSource.DataSet.IsEmpty then
    begin
      curID := DBGridEh1.DataSource.DataSet.FieldByName('id').AsInteger;
      total := DBGridEh1.DataSource.DataSet.FieldByName('curr_weight_ch').AsFloat +
               DBGridEh1.DataSource.DataSet.FieldByName('curr_weight_sol').AsFloat;

      if not Assigned(Chitiet) then
        Chitiet := TChitiet.Create(Self);

      Chitiet.SetID(curID);
      Chitiet.AttachMSComm(MSComm1);
      Chitiet.SetKL(total);
      Chitiet.Show;
    end
    else
      ShowMessage('Khong co du lieu trong luoi!');
  end
  else
    ShowMessage('DBGrid chua gan DataSource!');
end;


procedure TR_hoachat.Button7Click(Sender: TObject);
var eclApp,WorkBook:olevariant;
    i,j:integer;
begin
  if cdsMain.Active then
  begin
    if cdsMain.recordcount=0 then
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
    cdsMain.First;
    j:=2;
    while not cdsMain.Eof   do
    begin
      eclApp.Cells(j,1):=j-1;
      for i:=0 to DBGridEh1.Columns.Count-1 do
      begin
         eclApp.Cells(j,i+1):=DBGridEh1.Fields[i].Value;
         eclApp.Cells.Cells.item[j,i+1].font.size:='10';
         eclApp.Cells.Cells.item[j,i+1].font.name := 'Calibri';
      end;
      cdsMain.Next;
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



procedure TR_hoachat.cdsMainBeforePost(DataSet: TDataSet);
begin
  if DataSet.FieldByName('YN').AsString <> '1' then
    Exit;
    if DataSet.FieldByName('curr_weight_sol').ReadOnly then
    Exit;
    DataSet.FieldByName('curr_weight_sol').AsFloat :=
    DataSet.FieldByName('TyLe').AsFloat *
    DataSet.FieldByName('curr_weight_ch').AsFloat;
end;



procedure TR_hoachat.cdsMainBeforeEdit(DataSet: TDataSet);
begin
if DataSet.FieldByName('YN').AsString = '2' then
  begin
    if DataSet.FieldByName('number_of_spins').ReadOnly then
      Abort;
  end;
end;

end.
