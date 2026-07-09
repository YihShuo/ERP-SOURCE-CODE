unit R_Hoachat_dp;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, GridsEh, DBGridEh, DB, DBTables, Mask, DBCtrls, StdCtrls,
  OleCtrls, MSCommLib_TLB, ExtCtrls, ComCtrls, Provider, DBClient,Math,ShellApi,DateUtils,comobj,DelphiZXingQRCode,Printers;

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
    Label9: TLabel;
    Label10: TLabel;
    Label11: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    Label7: TLabel;
    Edit3: TEdit;
    Button1: TButton;
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
    cdsMaintemperature: TStringField;
    cdsMainhumidity: TStringField;
    cdsMainBatch_number: TStringField;
    cdsMainBatch_number_sol: TStringField;
    cdsMainnumber_of_spins: TStringField;
    cdsMainTong: TFloatField;
    Label20: TLabel;
    cbb3: TComboBox;
    Button8: TButton;
    Label21: TLabel;
    DBEdit5: TDBEdit;
    Label8: TLabel;
    TL: TEdit;
    QMainid: TFloatField;
    QMaincreate_time: TDateTimeField;
    QMainmaxweight_ch: TFloatField;
    QMainmaxweight_ch1: TFloatField;
    QMainmaxweight_sol: TFloatField;
    QMaincurr_weight_ch: TFloatField;
    QMaincurr_weight_ch1: TFloatField;
    QMaincurr_weight_sol: TFloatField;
    QMainevent_time: TDateTimeField;
    QMainuserID: TStringField;
    QMaininv_id: TStringField;
    QMaininv_id1: TStringField;
    QMainsol_id: TStringField;
    QMainYN: TStringField;
    QMainTyLe: TFloatField;
    QMainGSBH: TStringField;
    QMaintemperature: TStringField;
    QMainhumidity: TStringField;
    QMainBatch_number: TStringField;
    QMainBatch_number_sol: TStringField;
    QMainnumber_of_spins: TStringField;
    QMainTen_HC01: TStringField;
    QMainTen_HC02: TStringField;
    QMainTen_HC03: TStringField;
    QMaintong: TFloatField;
    QMainName: TStringField;
    DBEdit6: TDBEdit;
    Label22: TLabel;
    Label23: TLabel;
    Qtemp: TQuery;
    Button9: TButton;
    Button10: TButton;
    SetInfo: TQuery;
    Label24: TLabel;
    TL1: TEdit;
    QMainTL1: TFloatField;
    Button11: TButton;
    DBEdit1: TDBEdit;
    Button12: TButton;
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
//    procedure LockFields;
    procedure cdsMainBeforeEdit(DataSet: TDataSet);
    procedure Button8Click(Sender: TObject);
    procedure cbb3Change(Sender: TObject);
    procedure CbbGSBHChange(Sender: TObject);
    procedure Button9Click(Sender: TObject);
    procedure Button10Click(Sender: TObject);
    procedure RotateBitmapDirect(ABitMap: TBitmap);
    procedure Button11Click(Sender: TObject);
    procedure Button12Click(Sender: TObject);

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

uses ScanCheckW, Canchitiet, main1, Forluma1, QRLabel1, TONKHO1, baophe1;

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
    SQL.Add('SELECT name_vi FROM Ch_Inventory_HK where type=''1'' ');
    Open;
    while not Eof do
    begin
      cbb1.Items.Add(FieldByName('name_vi').AsString);
      Next;
    end;
    Close;
  end;

  MSComm1.CommPort := 1;
  MSComm1.Settings := '9600,N,8,1';
  MSComm1.InputLen := 0;
  MSComm1.InputMode := comInputModeText;
  MSComm1.PortOpen := True;
  MSComm1.RtsEnable := True;
  DTP1.Date := NDate;
  dspMain.UpdateMode       := upWhereKeyOnly;
  QMain.FieldByName('id').ProviderFlags               := [pfInKey, pfInWhere];
  QMain.FieldByName('curr_weight_ch').ProviderFlags   := [pfInUpdate];
  QMain.FieldByName('curr_weight_ch1').ProviderFlags   := [pfInUpdate];
  QMain.FieldByName('curr_weight_sol').ProviderFlags  := [pfInUpdate];
  QMain.FieldByName('inv_id').ProviderFlags      := [];
  QMain.FieldByName('inv_id1').ProviderFlags      := [];
  QMain.FieldByName('sol_id').ProviderFlags      := [];
  //QMain.FieldByName('sol_name_tw').ProviderFlags      := [];
 // QMain.FieldByName('inv_notes').ProviderFlags        := [];
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
    ModifySQL.Add('  curr_weight_ch  = ROUND(:curr_weight_ch, 4),');
    //ModifySQL.Add('  curr_weight_ch1  = :curr_weight_ch1,');
      // Ch? update curr_weight_ch1 n?u HC2 không r?ng
    ModifySQL.Add(
    '  curr_weight_ch1 = CASE ' +
    '    WHEN inv_id1 IS NOT NULL AND inv_id1 <> '''' ' +
    '    THEN ROUND(:curr_weight_ch1, 4) ' +
    '    ELSE curr_weight_ch1 ' +
    '  END,');

    ModifySQL.Add('  curr_weight_sol = ROUND(:curr_weight_sol, 4),');
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
   CbbGSBH.Items.Clear;
    CbbGSBH.Items.Add('Xuong_A');
    CbbGSBH.Items.Add('Xuong_B');
    CbbGSBH.ItemIndex := 0;
    DTP1Change(Sender);

 Timer1.Interval := 500; // Quét m?i 0.5 giây
  Timer1.Enabled := True;

end;

procedure TR_hoachat.DTP1Change(Sender: TObject);
var
    StartDate, EndDate: TDateTime;
    Xuong: string;
begin
    StartDate := Trunc(DTP1.Date);
    EndDate := StartDate + 1;
    Xuong := Trim(CbbGSBH.Text);

  //  if Xuong = '' then Exit;

    with QMain do
    begin
        active:=false;
        // B1: Xóa SQL cu và gán SQL m?i
        SQL.Clear;
        SQL.Add('SELECT F.*,');
        SQL.Add('    (SELECT name_vi FROM Ch_Inventory_HK WHERE id = F.inv_id) AS Ten_HC01,');
        SQL.Add('    (SELECT name_vi FROM Ch_Inventory_HK WHERE id = F.inv_id1) AS Ten_HC02,');
        SQL.Add('    (SELECT name_vi FROM Ch_Inventory_HK WHERE id = F.sol_id) AS Ten_HC03, F1.name, ');
        SQL.Add('    ISNULL(sum(ISNULL(curr_weight_ch,0)+ ISNULL(curr_weight_ch1,0)+ISNULL(curr_weight_sol,0)),0) as tong');
        SQL.Add('FROM ch_Formulation_HK F left join Ch_Formula F1 on F.inv_id=F1.hc1 AND ISNULL(F.inv_id1, '''') = ISNULL(F1.hc2, '''') and f.sol_id=F1.hc3 and F.TyLe=F1.tl3 and F.TL1=F1.tl1');
        SQL.Add('WHERE F.create_time >= :StartDate');
        SQL.Add('  AND F.create_time < :EndDate');
        SQL.Add('  AND F.GSBH = '''+Trim(CbbGSBH.Text)+'''');
        SQL.Add('group by F.id, F.create_time, F.maxweight_ch, F.maxweight_ch1, F.maxweight_sol, F.curr_weight_ch,');
        SQL.Add(' F.curr_weight_ch1, F.curr_weight_sol, F.event_time, F.userID, F.inv_id, F.inv_id1, F.sol_id, F.YN, F.TyLe, F.Tl1, F.GSBH, F.temperature, F.humidity, F.Batch_number,F.Batch_number_sol, F.number_of_spins,F1.name');
        SQL.Add('ORDER BY F.create_time DESC');
        //RequestLive := True;
        ParamByName('StartDate').AsDateTime := StartDate;
        ParamByName('EndDate').AsDateTime := EndDate;
        //ParamByName('Xuong').AsString := Xuong;
        active:=true;
    end;
    with QMain do
    begin
    cachedupdates:=true;
    requestlive:=true;
    QMain.edit;
  end;
   CbbGSBHChange(Self);
   Caption := 'Xuong: ' + Xuong + ' - Ngay: ' + DateToStr(StartDate);
end;
{procedure TR_hoachat.LockFields;
var
  i: Integer;
begin
  if QMain.FieldByName('YN').AsString = '2' then
  begin
    for i := 0 to QMain.FieldCount - 1 do
     QMain.Fields[i].ReadOnly := True;
    QMain.FieldByName('number_of_spins').ReadOnly := False;
    QMain.FieldByName('temperature').ReadOnly    := False;
    QMain.FieldByName('humidity').ReadOnly       := False;
  end;
end;   }

procedure TR_hoachat.btnCommitClick(Sender: TObject);
var
  MaxCh, MaxCh1, MaxSol: Double;
  CurrCh, CurrCh1, CurrSol: Double;
  CurrentID, ND, DA: string;
  bm: TBookmark;
begin
  if not (QMain.Active and not QMain.IsEmpty) then
  begin
    ShowMessage('Khong co du lieu!');
    Exit;
  end;
    bm := QMain.GetBookmark;   // luu dòng hi?n t?i
  // Ki?m tra di?u ki?n tru?c khi luu
  QMain.First;
  while not QMain.Eof do
  begin
    // L?y ID c?a record hi?n t?i
    CurrentID := QMain.FieldByName('id').AsString;

    // L?y giá tr? max
    MaxCh := QMain.FieldByName('maxweight_ch').AsFloat;
    MaxCh1 := QMain.FieldByName('maxweight_ch1').AsFloat;
    MaxSol := QMain.FieldByName('maxweight_sol').AsFloat;

    // L?y giá tr? hi?n t?i (curr)
    CurrCh := QMain.FieldByName('curr_weight_ch').AsFloat;
    CurrCh1 := QMain.FieldByName('curr_weight_ch1').AsFloat;
    CurrSol := QMain.FieldByName('curr_weight_sol').AsFloat;

    // Ki?m tra t?ng tru?ng
    if CurrCh > MaxCh then
    begin
      ShowMessage(Format('Loi ID %s: curr_weight_ch (%.2f) > maxweight_ch (%.2f)!',
        [CurrentID, CurrCh, MaxCh]));
      Exit;
    end;

    if CurrCh1 > MaxCh1 then
    begin
      ShowMessage(Format('Loi ID %s: curr_weight_ch1 (%.2f) > maxweight_ch1 (%.2f)!',
        [CurrentID, CurrCh1, MaxCh1]));
      Exit;
    end;

    if CurrSol > MaxSol then
    begin
      ShowMessage(Format('Loi ID %s: curr_weight_sol (%.2f) > maxweight_sol (%.2f)!',
        [CurrentID, CurrSol, MaxSol]));
      Exit;
    end;

    QMain.Next;
  end;
       // quay l?i dòng ban d?u
    QMain.GotoBookmark(bm);
  // N?u t?t c? d?u OK thì m?i luu
  try
     // Ðua dataset vào ch? d? Edit
  if not (QMain.State in [dsEdit, dsInsert]) then
    QMain.Edit;
     // Gan nhiet do va do am
    QMain.FieldByName('temperature').AsFloat := StrToFloatDef(EditND.Text, 0);
    QMain.FieldByName('humidity').AsFloat := StrToFloatDef(EditDA.Text, 0);
    QMain.Post;
    QMain.ApplyUpdates;
    QMain.Close;
    QMain.Open;

    ShowMessage('Luu du lieu thanh cong!');

  except
    on E: Exception do
    begin
      QMain.CancelUpdates;
      MessageDlg('Loi: ' + E.Message, mtWarning, [mbYes], 0);
    end;
  end;
end;
{var
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
    //LockFields;
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
end;  }

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
  R_hoachat:=nil;
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


    with Query1 do
  begin
    Close;
    SQL.Clear;
    SQL.Add('SELECT distinct name_vi FROM Ch_Inventory_HK');
    sql.Add(' WHERE ID IN (SELECT HC2 FROM CH_Formula WHERE HC1 = ''' + DBEdit1.Text + ''')');
    Open;
    cbb2.Items.Clear;
    while not Eof do
    begin
      cbb2.Items.Add(FieldByName('name_vi').AsString);
      Next;
    end;
    Close;
  end;
      with Query1 do
  begin
    Close;
    SQL.Clear;
    SQL.Add('SELECT distinct name_vi FROM Ch_Inventory_HK');
    sql.Add(' WHERE ID IN (SELECT HC3 FROM CH_Formula WHERE HC1 = ''' + DBEdit1.Text + ''')');
    Open;
    cbb3.Items.Clear;
    while not Eof do
    begin
      cbb3.Items.Add(FieldByName('name_vi').AsString);
      Next;
    end;
    Close;
  end;


  end;
    //CheckInsertCondition
end;

procedure TR_hoachat.cbb2Change(Sender: TObject);
begin
 CurrentStep := 2;
 with Query3 do
  begin
    Close;
    SQL.Clear;
    SQL.Add('SELECT id FROM Ch_Inventory_HK');
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
   // CheckInsertCondition
end;

procedure TR_hoachat.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  action:=cafree;
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
begin
{ var
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

  CheckInsertCondition;  }
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
 // phan duoi nay la dang su dung
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
  S, Line, S_So: string;
  p1, p2: Integer;
  khoi_luong: Double;
begin
  // 1. Cap nhat dong ho hien thi de biet Timer dang chay
  Edit3.Text := FormatDateTime('yyyy/MM/dd hh:nn:ss', Now);

  // 2. Tu dong kiem tra va mo cong COM 1 neu chua mo
  if not MSComm1.PortOpen then
  begin
    try
      MSComm1.PortOpen := True;
    except
      Exit; 
    end;
  end;

  // 3. Kiem tra xem co du lieu tu can gui ve hay khong
  if MSComm1.InBufferCount > 0 then
  begin
    S := MSComm1.Input; // Doc du lieu tu bo dem

    // 4. Tach tung dong bang ky tu xuong dong #10
    while Pos(#10, S) > 0 do
    begin
      Line := Copy(S, 1, Pos(#10, S) - 1);
      Delete(S, 1, Pos(#10, S));
      Line := Trim(Line);

      // 5. Tim dung dong co chua chu 'Weight' (Dinh dang can CAS)
      if Pos('Weight', Line) > 0 then
      begin
        // Tim vi tri dau ':' va chu 'kg' de lay so o giua
        p1 := Pos(':', Line);
        p2 := Pos('kg', Line);

        if (p1 > 0) and (p2 > p1) then
        begin
          // Cat lay phan so va xoa khoang trang du thua
          S_So := Trim(Copy(Line, p1 + 1, p2 - p1 - 1));
          
          // Chuan hoa dau thap phan (doi dau phay thanh dau cham)
          DecimalSeparator := '.';
          khoi_luong := StrToFloatDef(StringReplace(S_So, ',', '.', [rfReplaceAll]), 0);

          if khoi_luong > 0 then
          begin
            // Hien thong bao xac nhan (Co the xoa dong nay neu khong muon hien bang)
           // ShowMessage('Da nhan du lieu: ' + FloatToStr(khoi_luong) + ' kg');

            // Ghi truc tiep vao o dang chon tren Grid (QMain)
            if QMain.Active and (not QMain.IsEmpty) then
            begin
              if not (QMain.State in [dsEdit]) then QMain.Edit;

              if Assigned(DBGridEh1.SelectedField) then
              begin
                QMain.FieldByName(DBGridEh1.SelectedField.FieldName).AsFloat := khoi_luong;
                // QMain.Post; // Bo dau gach cheo neu muon luu luon sau khi can
              end;
            end;
          end;
          
          // Thoat vong lap ngay khi x? ly xong dong Weight
          S := '';
          Break;
        end;
      end;
    end;
  end;
end;

{procedure TR_hoachat.Timer1Timer(Sender: TObject);
var
  chuoi_kq: string;
  sl: TStringList;
  i: Integer;
  khoi_luong: Double;
begin
  // 1. Cap nhat thoi gian de biet Timer dang chay
  Edit3.Text := FormatDateTime('yyyy/MM/dd hh:nn:ss', Now);

  // 2. Kiem tra cong COM
  if not MSComm1.PortOpen then
  begin
    try
      MSComm1.PortOpen := True;
    except
      Exit; // Neu khong mo duoc thi thoat luon
    end;
  end;

  // 3. Bat dau doc du lieu neu co tin hieu trong bo dem
  if MSComm1.InBufferCount > 0 then
  begin
    chuoi_kq := MSComm1.Input;
    Memo1.Lines.Add('Raw: ' + chuoi_kq); // Xem chuoi thuc te trong Memo

    if chuoi_kq <> '' then
    begin
      sl := TStringList.Create;
      try
        sl.Text := chuoi_kq;
        khoi_luong := 0;

        // Duyet tung dong de tim chu "N.W." giong code cu cua ban
        for i := 0 to sl.Count - 1 do
        begin
          if Pos('N.W.', sl[i]) > 0 then
          begin
            // Lay con so tai vi tri thu 10 (theo logic code cu ban gui)
            khoi_luong := StrToFloatDef(Trim(Copy(sl[i], 10, 7)), 0);
            Break; 
          end;
        end;

        // 4. Neu tim thay khoi luong > 0 thi tien hanh ghi vao Grid/DBEdit
        if khoi_luong > 0 then
        begin
          // Hien thi len nhan de kiem tra nhanh
          //Label12.Caption := FloatToStr(khoi_luong) + ' kg';

          if QMain.Active and (not QMain.IsEmpty) then
          begin
            // Dua QMain vao trang thai sua
            if not (QMain.State in [dsEdit]) then QMain.Edit;

            // Kiem tra xem chuot dang click vao o nao tren Grid thi dien vao do
            if Assigned(DBGridEh1.SelectedField) then
            begin
               QMain.FieldByName(DBGridEh1.SelectedField.FieldName).AsFloat := khoi_luong;
               // So se tu dong nhay vao DBEdit2, 4 hoac 6 tuy theo o ban dang chon
            end;
          end;
        end;

      finally
        sl.Free;
      end;
    end;
  end;
end;
    }


{procedure TR_hoachat.Timer1Timer(Sender: TObject);
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
end;  }
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
type
  TDefData = record
    MaxCh: Integer;
    MaxSol: Integer;
    InvID,InvID1: string;
    SolID: string;
  end;
const
  DefRows: array[0..46] of TDefData = (
    (MaxCh: 20; MaxSol: 1; InvID: 'CH10000004';InvID1: 'HC01'; SolID: 'MIX0000003'),
    (MaxCh: 20; MaxSol: 1; InvID: 'CH10000005';InvID1: 'HC01'; SolID: 'MIX0000003'),
    (MaxCh: 20; MaxSol: 1; InvID: 'CH10000008';InvID1: 'HC01'; SolID: 'MIX0000004'),
    (MaxCh: 20; MaxSol: 0; InvID: 'CH10000009';InvID1: 'HC01'; SolID: 'MIX0000008'),
    (MaxCh: 20; MaxSol: 0; InvID: 'CH10000010';InvID1: 'HC01'; SolID: 'MIX0000008'),
    (MaxCh: 20; MaxSol: 1; InvID: 'CH10000011';InvID1: 'HC01'; SolID: 'MIX0000001'),
    (MaxCh: 20; MaxSol: 0; InvID: 'CH10000012';InvID1: 'HC01'; SolID: 'MIX0000008'),
    (MaxCh: 20; MaxSol: 1; InvID: 'CH10000013';InvID1: 'HC01'; SolID: 'MIX0000005'),
    (MaxCh: 20; MaxSol: 1; InvID: 'CH10000014';InvID1: 'HC01'; SolID: 'MIX0000005'),
    (MaxCh: 20; MaxSol: 1; InvID: 'CH10000015';InvID1: 'HC01'; SolID: 'MIX0000006'),
    (MaxCh: 20; MaxSol: 1; InvID: 'CH10000016';InvID1: 'HC01'; SolID: 'MIX0000006'),
    (MaxCh: 20; MaxSol: 1; InvID: 'CH10000017';InvID1: 'HC01'; SolID: 'MIX0000006'),
    (MaxCh: 20; MaxSol: 1; InvID: 'CH10000018';InvID1: 'HC01'; SolID: 'MIX0000006'),
    (MaxCh: 20; MaxSol: 1; InvID: 'CH10000019';InvID1: 'HC01'; SolID: 'MIX0000006'),
    (MaxCh: 20; MaxSol: 1; InvID: 'CH10000020';InvID1: 'HC01'; SolID: 'MIX0000006'),
    (MaxCh: 20; MaxSol: 1; InvID: 'CH10000021';InvID1: 'HC01'; SolID: 'MIX0000006'),
    (MaxCh: 20; MaxSol: 1; InvID: 'CH10000022';InvID1: 'HC01'; SolID: 'MIX0000007'),
    (MaxCh: 20; MaxSol: 0; InvID: 'CH10000023';InvID1: 'HC01'; SolID: 'MIX0000008'),
    (MaxCh: 20; MaxSol: 0; InvID: 'CH10000024';InvID1: 'HC01'; SolID: 'MIX0000008'),
    (MaxCh: 20; MaxSol: 1; InvID: 'CH10000025';InvID1: 'HC01'; SolID: 'MIX0000001'),
    (MaxCh: 20; MaxSol: 1; InvID: 'CH10000026';InvID1: 'HC01'; SolID: 'MIX0000005'),
    (MaxCh: 20; MaxSol: 1; InvID: 'CH10000027';InvID1: 'HC01'; SolID: 'MIX0000005'),
    (MaxCh: 20; MaxSol: 1; InvID: 'CH10000028';InvID1: 'HC01'; SolID: 'MIX0000005'),
    (MaxCh: 20; MaxSol: 1; InvID: 'CH10000029';InvID1: 'HC01'; SolID: 'MIX0000009'),
    (MaxCh: 20; MaxSol: 1; InvID: 'CH10000030';InvID1: 'HC01'; SolID: 'MIX0000010'),
    (MaxCh: 20; MaxSol: 1; InvID: 'CH10000031';InvID1: 'HC01'; SolID: 'MIX0000010'),
    (MaxCh: 20; MaxSol: 1; InvID: 'CH10000032';InvID1: 'HC01'; SolID: 'MIX0000010'),
    (MaxCh: 20; MaxSol: 1; InvID: 'CH10000026';InvID1: 'HC01'; SolID: 'MIX0000010'),
    (MaxCh: 20; MaxSol: 1; InvID: 'CH10000027';InvID1: 'HC01'; SolID: 'MIX0000010'),
    (MaxCh: 20; MaxSol: 1; InvID: 'CH10000033';InvID1: 'HC01'; SolID: 'MIX0000010'),
    (MaxCh: 20; MaxSol: 1; InvID: 'CH10000034';InvID1: 'HC01'; SolID: 'MIX0000010'),
    (MaxCh: 20; MaxSol: 1; InvID: 'CH10000035';InvID1: 'HC01'; SolID: 'MIX0000006'),
    (MaxCh: 20; MaxSol: 1; InvID: 'CH10000036';InvID1: 'HC01'; SolID: 'MIX0000006'),
    (MaxCh: 20; MaxSol: 1; InvID: 'CH10000037';InvID1: 'HC01'; SolID: 'MIX0000006'),
    (MaxCh: 20; MaxSol: 1; InvID: 'CH10000038';InvID1: 'HC01'; SolID: 'MIX0000006'),
    (MaxCh: 20; MaxSol: 1; InvID: 'CH10000039';InvID1: 'HC01'; SolID: 'MIX0000006'),
    (MaxCh: 20; MaxSol: 1; InvID: 'CH10000040';InvID1: 'HC01'; SolID: 'MIX0000006'),
    (MaxCh: 20; MaxSol: 1; InvID: 'CH10000041';InvID1: 'HC01'; SolID: 'MIX0000006'),
    (MaxCh: 20; MaxSol: 1; InvID: 'CH10000035';InvID1: 'HC01'; SolID: 'MIX0000005'),
    (MaxCh: 20; MaxSol: 1; InvID: 'CH10000036';InvID1: 'HC01'; SolID: 'MIX0000005'),
    (MaxCh: 20; MaxSol: 1; InvID: 'CH10000037';InvID1: 'HC01'; SolID: 'MIX0000005'),
    (MaxCh: 20; MaxSol: 1; InvID: 'CH10000038';InvID1: 'HC01'; SolID: 'MIX0000005'),
    (MaxCh: 20; MaxSol: 1; InvID: 'CH10000039';InvID1: 'HC01'; SolID: 'MIX0000005'),
    (MaxCh: 20; MaxSol: 1; InvID: 'CH10000040';InvID1: 'HC01'; SolID: 'MIX0000005'),
    (MaxCh: 20; MaxSol: 1; InvID: 'CH10000041';InvID1: 'HC01'; SolID: 'MIX0000005'),
    (MaxCh: 20; MaxSol: 1; InvID: 'CH10000042';InvID1: 'HC01'; SolID: 'MIX0000011'),
    (MaxCh: 20; MaxSol: 1; InvID: 'HC03';InvID1: 'HC19'; SolID: 'HC12')
    );
var
  i: Integer;
  invID, solID, invID1: string;
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
            cbb3.ItemIndex := -1; cbb2.Text := '';
            //cbbpt.ItemIndex := -1; cbbpt.Text := '';
             Exit;
       end;
  if (cbb1.ItemIndex = -1) or (cbb3.ItemIndex = -1) then
  begin
    ShowMessage('Vui long chon day du hoa chat dung dich !');
    Exit;
  end;
   ShowMessage('Vui long chon day du hoa chat dung dich !');
  invID := Trim(DBEdit1.Text);
  solID := Trim(DBEdit5.Text);
  invID1 := Trim(DBEdit3.Text);
  found := False;
  for i := Low(DefRows) to High(DefRows) do
  begin
    if (DefRows[i].InvID = invID) and (DefRows[i].InvID1 = invID1) and (DefRows[i].SolID = solID) then
    begin

      with Query1 do
      begin
        Close;
        SQL.Clear;
        SQL.Add('INSERT INTO Ch_Formulation_HK ');
        SQL.Add('(create_time, maxweight_ch, maxweight_sol, inv_id, sol_id, userID, YN, TyLe, GSBH, temperature, humidity, Batch_number, Batch_number_sol,inv_id1,maxweight_ch1 ) ');
        SQL.Add('VALUES (:CreateTime, :MaxCh, :MaxSol, :InvID, :SolID, :UserID, :YN, :TyLe, :GSBH, :temperature, :humidity, :Batch_number , :Batch_number_sol, :inv_id1, :MaxCh1 )');
        ParamByName('CreateTime').AsDateTime := Now;
        ParamByName('MaxCh').AsInteger := DefRows[i].MaxCh;
        ParamByName('MaxSol').AsInteger := DefRows[i].MaxSol;
        ParamByName('InvID').AsString := DefRows[i].InvID;
        ParamByName('SolID').AsString := DefRows[i].SolID;
        ParamByName('UserID').AsString := main.Edit1.Text;
        ParamByName('YN').AsString := '1';
        ParamByName('GSBH').AsString := CbbGSBH.Text;
        ParamByName('temperature').AsString :=EditND.Text;
        ParamByName('humidity').AsString :=EditDA.Text;
        ParamByName('Batch_number').AsString :=EditSL.Text;
        ParamByName('Batch_number_sol').AsString :=EditSLDC.Text;
        ParamByName('InvID1').AsString := DefRows[i].InvID1;
        ParamByName('MaxCh1').AsInteger := DefRows[i].MaxCh;  // Thêm dòng này
       // ParamByName('TyLe').AsFloat :=
        //StrToFloat(StringReplace(cbbpt.Text, '%', '', [])) ;
        begin
        //percentValue := StrToFloatDef(StringReplace(Tl.Text, '%', '', []), 0);
         percentValue := StrToFloat(tl.Text);
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
  cbb3.ItemIndex := -1; cbb3.Text := '';
  //cbbpt.ItemIndex := -1; cbbpt.Text := '';
 // CbbGSBH.ItemIndex := -1; CbbGSBH.Text := '';
  Tl.Text :='';
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
  if (cbb1.ItemIndex <> -1) then
  begin
    InsertDefaultData;
  end;
end;


procedure TR_hoachat.InsertSelectedData;
begin
  cdsMain.Append;
  cdsMain.FieldByName('inv_name_vi').AsString := cbb1.Text;
//  cdsMain.FieldByName('inv_name_vi').AsString := cbb2.Text;
  cdsMain.FieldByName('sol_name_vi').AsString := cbb3.Text;
  cdsMain.FieldByName('create_time').AsDateTime := DTP1.Date;
  cdsMain.FieldByName('maxweight_ch').AsInteger := 20;  // gán m?c d?nh
  cdsMain.FieldByName('maxweight_sol').AsInteger := 1;   // gán m?c d?nh
  cdsMain.FieldByName('userID').AsString := main.Edit1.text;
  cdsMain.FieldByName('YN').AsString := '1';  // gán m?c d?nh
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
   totalWeight, chWeight,chWeight1, solWeight: Double;
   eventTime, eventTimePlus: TDateTime;
  invNotes: string;
begin
  if (QMain.Active) and (QMain.RecordCount>0) then
  begin
  try
    assignfile(TxtFile,ExtractFilePath(Application.ExeName)+'CAN HC_HK.txt');
    rewrite(TxtFile);
      //cdsMain.First;
     i:=1;
      //while not cdsMain.Eof do
    //  begin

          sline:='';
          //sline:=sline+inttostr(i)+',';
          sline:=sline+QMain.fieldbyname('id').AsString+','; //±ø½X­«½Æ
          sline:=sline+QMain.fieldbyname('Name').AsString+',';
          //sline := sline + QMain.Fields[10].AsString + ',';
          //sline:=sline+QMain.fieldbyname('maxweight_ch').AsString+',';
          //sline:=sline+QMain.fieldbyname('Ten_HC02').AsString+',';
          //sline:=sline+QMain.fieldbyname('maxweight_ch1').AsString+',';
          //sline:=sline+QMain.fieldbyname('Ten_HC03').AsString+',';
          //sline:=sline+QMain.fieldbyname('maxweight_sol').AsString+',';
          //sline:=sline+QMain.fieldbyname('curr_weight_ch').AsString+',';
          //sline:=sline+QMain.fieldbyname('curr_weight_ch1').AsString+',';
          //sline:=sline+QMain.fieldbyname('curr_weight_sol').AsString +',';
          if QMain.FieldByName('curr_weight_ch').IsNull then
          chWeight := 0
        else
          chWeight := QMain.FieldByName('curr_weight_ch').AsFloat;

           if QMain.FieldByName('curr_weight_ch1').IsNull then
          chWeight1 := 0
        else
          chWeight1 := QMain.FieldByName('curr_weight_ch1').AsFloat;

        if QMain.FieldByName('curr_weight_sol').IsNull then
          solWeight := 0
        else
          solWeight := QMain.FieldByName('curr_weight_sol').AsFloat;
        totalWeight := chWeight + solWeight + chWeight1;
         FloatToStr(totalWeight);
         sline := sline + FloatToStr(totalWeight)+'kg,';
           if not QMain.FieldByName('event_time').IsNull then
          eventTime := QMain.FieldByName('event_time').AsDateTime
        else
          eventTime := 0;
       sline := sline + 'MFG:' + FormatDateTime('ddMMyy hh:nn:ss', eventTime) + ',';
       // invNotes := Trim(QMain.FieldByName('event_time').AsString);
       // eventTimePlus := eventTime;
       // if SameText(invNotes, '1H') then
        //  eventTimePlus := IncHour(eventTime, 1)
        ///else if SameText(invNotes, '2H') then
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



{procedure TR_hoachat.Button6Click(Sender: TObject);
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
end;




var
  curID: Integer;
  total: Double;
begin
  if (DBGridEh1.DataSource <> nil) and (DBGridEh1.DataSource.DataSet <> nil) then
  begin
    if not DBGridEh1.DataSource.DataSet.IsEmpty then
    begin
      curID := DBGridEh1.DataSource.DataSet.FieldByName('id').AsInteger;
      total := DBGridEh1.DataSource.DataSet.FieldByName('curr_weight_ch').AsFloat + DBGridEh1.DataSource.DataSet.FieldByName('curr_weight_ch1').AsFloat +
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
end;  }

procedure TR_hoachat.Button6Click(Sender: TObject);
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
               DBGridEh1.DataSource.DataSet.FieldByName('curr_weight_ch1').AsFloat +
               DBGridEh1.DataSource.DataSet.FieldByName('curr_weight_sol').AsFloat;

      // --- BAT DAU SUA TAI DAY ---

      // 1. Tat Timer form chinh de dung doc can
      Timer1.Enabled := False;

      if not Assigned(Chitiet) then
        Chitiet := TChitiet.Create(Self);

      Chitiet.SetID(curID);
      Chitiet.AttachMSComm(MSComm1); // Chuyen quyen dung MSComm cho form con
      Chitiet.SetKL(total);
      
      // 2. Dung ShowModal thay vi Show de khoa form chinh lai
      // Nguoi dung phai dong form con thi moi quay lai form chinh duoc
      Chitiet.ShowModal;

      // 3. Sau khi form con dong, bat lai Timer de form chinh tiep tuc can
      Timer1.Enabled := True;

      // --- KET THUC PHAN SUA ---
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

procedure TR_hoachat.Button8Click(Sender: TObject);
var
  percentValue: Double;
begin
      if trim(DBEdit5.Text)='' then
      begin
        ShowMessage('vui long nhap hoa chat 3');
         tl.SetFocus;  // Ð?t con tr? vào ô tl
          Exit;
      end;
      if trim(DBEdit1.Text)='' then
      begin
        ShowMessage('vui long nhap hoa chat 1');
         //tl.SetFocus;  // Ð?t con tr? vào ô tl
          Exit;
      end;
  if cdsMain.Active and (not cdsMain.IsEmpty) then
  begin
    cdsMain.Edit;
    //percentValue := StrToFloat(StringReplace(TL.Text, '%', '', []));
    percentValue := StrToFloat(tl.Text);

    if (100 - percentValue) <> 0 then
      cdsMain.FieldByName('TyLe').AsFloat := percentValue / 100
    else
      cdsMain.FieldByName('TyLe').AsFloat := 0;
  end;
   ////
   // ===== KI?M TRA T? H?P HÓA CH?T =====
  with Query3 do
  begin
    Close;
    SQL.Clear;
    SQL.Add('SELECT * FROM Ch_Formula');
    SQL.Add('WHERE HC1 = :HC1');
    SQL.Add('  AND HC3 = :HC3');
    
    // X? lý HC2 (có th? NULL)
    if DBEdit3.Text = '' then
      SQL.Add('  AND (HC2 IS NULL OR HC2 = '''')')
    else
      SQL.Add('  AND HC2 = :HC2');
    
    // Gán tham s? tr?c ti?p t? DBEdit
    ParamByName('HC1').AsString := DBEdit1.Text;
    ParamByName('HC3').AsString := DBEdit5.Text;
    
    if DBEdit3.Text <> '' then
      ParamByName('HC2').AsString := DBEdit3.Text;
    
    Open;
    
    if IsEmpty then
    begin
      ShowMessage('Cong thuc khong hop le!');
      Close;
      Exit;
    end;
    
    Close;
  end;
   ///
    with Query1 do
      begin
        Close;
        SQL.Clear;
        SQL.Add('INSERT INTO Ch_Formulation_HK ');
        SQL.Add('(create_time, maxweight_ch, maxweight_sol, inv_id, sol_id, userID, YN, TyLe, GSBH, temperature, humidity, Batch_number, Batch_number_sol,inv_id1,maxweight_ch1, TL1 ) ');
        SQL.Add('VALUES (:CreateTime, :MaxCh, :MaxSol, :InvID, :SolID, :UserID, :YN, :TyLe, :GSBH, :temperature, :humidity, :Batch_number , :Batch_number_sol, :invid1, :MaxCh, :TL1 )');
        ParamByName('CreateTime').AsDateTime := Now;
        ParamByName('MaxCh').AsInteger := 20;
        ParamByName('MaxSol').AsInteger := 1;
        ParamByName('InvID').AsString := DBEdit1.Text;
        ParamByName('InvID1').AsString := DBEdit3.Text;
        ParamByName('SolID').AsString := DBEdit5.Text;
        ParamByName('UserID').AsString := main.Edit1.Text;
        ParamByName('YN').AsString := '1';
        ParamByName('GSBH').AsString := CbbGSBH.Text;
        ParamByName('temperature').AsString :=EditND.Text;
        ParamByName('humidity').AsString :=EditDA.Text;
        ParamByName('Batch_number').AsString :=EditSL.Text;
        ParamByName('Batch_number_sol').AsString :=EditSLDC.Text;
        ParamByName('TyLe').value := StrToFloat(tl.Text);
        ParamByName('TL1').value := StrToFloat(tl1.Text);
        ExecSQL;
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
  DBEdit1.Text :='';
  DBEdit3.Text :='';
  DBEdit5.Text :='';
  cbb1.ItemIndex := -1;
  cbb1.Text := '';
  cbb2.ItemIndex := -1;
  cbb2.Text := '';
  cbb3.ItemIndex := -1;
  cbb3.Text := '';
   ////////
  DTP1Change(Sender);

  //CheckInsertCondition;
end;

procedure TR_hoachat.cbb3Change(Sender: TObject);
begin
 CurrentStep := 3;
 with Query3 do
  begin
    Close;
    SQL.Clear;
    SQL.Add('SELECT id FROM Ch_Inventory_HK');
    SQL.Add('WHERE name_vi = ''' + cbb3.Text + '''');
    Open;
    if not Eof then
    begin
      DBEdit5.Text := FieldByName('id').AsString;
    end
    else
    begin
      ShowMessage('Khong tim thay ID tuong ung!');
    end;
  end;
   // CheckInsertCondition
   with Query3 do
  begin
    Close;
    SQL.Clear;
    SQL.Add('SELECT ISNULL(TL3,0) AS TL3 FROM CH_Formula');
    SQL.Add('WHERE HC1= '''+DBEdit1.Text+''' AND HC3 = '''+DBEdit5.Text+'''');
    IF DBEdit3.Text<>'' THEN  SQL.Add('AND HC2= '''+DBEdit3.Text+'''');
    Open;
    if not IsEmpty then
    TL.Text := FieldByName('TL3').AsString
  else
    TL.Text := '0';
  END;
end;

procedure TR_hoachat.CbbGSBHChange(Sender: TObject);
begin
  with Qtemp do
begin
  Close;

  // Bat option cho connection
  SQL.Text := 'SET ANSI_NULLS ON; SET ANSI_WARNINGS ON;';
  ExecSQL;

  // Query chinh
  SQL.Clear;
  SQL.Add('SELECT TOP 1 [hum], [tem]');
  SQL.Add('FROM [SVR_temp].[rkmonitor].[dbo].[tbhistory]');
  SQL.Add('WHERE [devicename] = :pDevice');
  SQL.Add('ORDER BY [recordtime] DESC');

  if CbbGSBH.Text = 'Xuong_A' then
    ParamByName('pDevice').AsString := 'PhongKeoXA_L3'
  else
    ParamByName('pDevice').AsString := 'PhongKeoXB_L2';
     try
      Open;
      if not Eof then
      begin
        EditND.Text := FieldByName('tem').AsString;
        EditDA.Text := FieldByName('hum').AsString;
      end
      else
      begin
        EditND.Text := '0';
        EditDA.Text := '0';
      end;
    except
      on E: Exception do
        ShowMessage('Loi SQL: ' + E.Message);
    end;
  end;
end;

procedure TR_hoachat.Button9Click(Sender: TObject);
begin
  Forluma:=TForluma.create(self);
  Forluma.show;
end;

{procedure TR_hoachat.Button10Click(Sender: TObject);
var
  TmpBmp: TBitmap;
  chWeight, chWeight1, solWeight, totalWeight: Double;
  eventTime: TDateTime;
  sTotal: string;
  DestRect: TRect;
begin
  if (not QMain.Active) or (QMain.RecordCount <= 0) then Exit;

  // 1. Tính toán d? li?u (Gi? nguyên logic c?a b?n)
  chWeight  := QMain.FieldByName('curr_weight_ch').AsFloat;
  chWeight1 := QMain.FieldByName('curr_weight_ch1').AsFloat;
  solWeight := QMain.FieldByName('curr_weight_sol').AsFloat;
  totalWeight := chWeight + chWeight1 + solWeight;
  sTotal := FloatToStr(totalWeight) + ' kg';

  if QMain.FieldByName('event_time').IsNull then eventTime := Now
  else eventTime := QMain.FieldByName('event_time').AsDateTime;

  // 2. Kh?i t?o và c?p nh?t d? li?u vào Form QRLabel
  if not Assigned(QRLabel) then 
    Application.CreateForm(TQRLabel, QRLabel);
  
  // G?i hàm c?p nh?t d? li?u c?a b?n d? v? QR và gán Label
  QRLabel.QRUpdate('NORMAL', 
    QMain.FieldByName('id').AsString, '',
    QMain.FieldByName('Name').AsString,
    '', '', '', '', '', sTotal, '', '', '', 0, 4);

  // 3. X? lý in ?n cho Delphi 7
  TmpBmp := TBitmap.Create;
  try
    // L?y kích thu?c theo Panel1 c?a b?n
    TmpBmp.Width := QRLabel.Panel1.Width;
    TmpBmp.Height := QRLabel.Panel1.Height;
    
    // Ép Panel1 v? chính nó vào Bitmap (Bao g?m c? PaintBox và Labels)
    QRLabel.Panel1.PaintTo(TmpBmp.Canvas.Handle, 0, 0);

    // B?t d?u l?nh in
    Printer.BeginDoc;
    try
      // Tính toán vùng in d? gi? dúng t? l? tem, tránh b? méo ch?
      DestRect.Left := 0;
      DestRect.Top := 0;
      DestRect.Right := Printer.PageWidth;
      // Tính chi?u cao t? l? thu?n v?i chi?u r?ng gi?y in
      DestRect.Bottom := Trunc((TmpBmp.Height / TmpBmp.Width) * Printer.PageWidth);

      // V? ?nh ch?p t? Panel ra máy in
      Printer.Canvas.StretchDraw(DestRect, TmpBmp);
    finally
      Printer.EndDoc; // K?t thúc in, máy Zywell s? t? c?t gi?y
    end;
  finally
    TmpBmp.Free;
    // N?u b?n mu?n dóng Form QRLabel sau khi in d? gi?i phóng RAM:
    // QRLabel.Close;
  end;
end; }



procedure TR_hoachat.Button10Click(Sender: TObject);
var
  TmpBmp, RotatedBmp: TBitmap;
  eventTime, eventTimePlus: TDateTime;
  sTotal, sID, sName: string;
  DestRect: TRect;
begin
  if (QMain.Active) and (QMain.RecordCount > 0) then
  begin
    // 1. LAY DU LIEU TU SQL
    sID := QMain.FieldByName('id').AsString;

    // Dung ham chuyen doi hoac viet khong dau truc tiep
    sName := QMain.FieldByName('name').AsString;

    sTotal := QMain.FieldByName('tong').AsString + 'kg';

    if not QMain.FieldByName('event_time').IsNull then
      eventTime := QMain.FieldByName('event_time').AsDateTime
    else
      eventTime := Now;

    eventTimePlus := eventTime + (2 / 24);

    // 2. NAP DU LIEU VAO FORM QRLABEL
    if not Assigned(QRLabel) then
begin
  QRLabel := TQRLabel.Create(nil);
  QRLabel.Visible := False;
end;

    // Truyen sName vao ca ListID va Cycle de QR co du lieu ten
    QRLabel.QRUpdate('NORMAL', sID, sName, sName, sID, sName, 'N/A', 'N/A', '', sTotal, '', '', '', 0, 4);
    
    // Gan chu khong dau cho Label ngay thang
   // QRLabel.LB_DATE.Caption := 'MFG:' + FormatDateTime('ddMMyy hh:nn:ss', eventTime);
     QRLabel.LB_DATE.Caption :=
  'MFG:' + FormatDateTime('ddMMyy hh:nn:ss', eventTime) + sLineBreak +
  'EXP:' + FormatDateTime('ddMMyy hh:nn:ss', IncHour(eventTime, 2));

QRLabel.HandleNeeded;
QRLabel.Left := -2000;
QRLabel.Top := -2000;
QRLabel.Show;
QRLabel.Update;
QRLabel.Panel1.Update;
Application.ProcessMessages;
QRLabel.Hide;

    // 3. XU LY ANH VA QUAY NGANG
    TmpBmp := TBitmap.Create;
    try
      TmpBmp.Width := QRLabel.Panel1.Width;
      TmpBmp.Height := QRLabel.Panel1.Height;
      QRLabel.Panel1.PaintTo(TmpBmp.Canvas.Handle, 0, 0);

      RotatedBmp := TBitmap.Create;
      try
        RotatedBmp.Assign(TmpBmp);
        // Goi ham xoay 90 do co san trong unit QRLabel1 cua ban
        //QRLabel.RotateBitmap(RotatedBmp);

        // --- BUOC QUAN TRONG: GOI HAM XOAY ---
      RotateBitmapDirect(RotatedBmp); // Day la cho ban goi ham vua khai bao
      // --

        // 4. THUC HIEN IN RA MAY ZYWELL
        Printer.BeginDoc;
        try
          DestRect.Left := 0;
          DestRect.Top := 0;
          DestRect.Right := Printer.PageWidth;
          // Tinh toan ty le de tem in ra khong bi meo
          DestRect.Bottom := Trunc((RotatedBmp.Height / RotatedBmp.Width) * Printer.PageWidth);

          Printer.Canvas.StretchDraw(DestRect, RotatedBmp);
        finally
          Printer.EndDoc; // May in xong se tu cat giay
        end;
      finally
        RotatedBmp.Free;
      end;
    finally
      TmpBmp.Free;
    end;
  end;
end;


procedure TR_hoachat.RotateBitmapDirect(ABitMap: TBitmap);
var
  oBitmap: TBitmap;
  x, y: integer;
begin
  oBitmap := TBitmap.Create;
  try
    oBitmap.Width := ABitmap.Width;
    oBitmap.Height := ABitmap.Height;
    oBitmap.Assign(ABitmap);
    
    // Ð?o kích thu?c: R?ng thành Cao, Cao thành R?ng
    ABitmap.Height := oBitmap.Width;
    ABitmap.Width := oBitmap.Height;
    
    // Xoay t?ng di?m ?nh
    for x := 0 to oBitmap.Width - 1 do
    begin
      for y := 0 to oBitmap.Height - 1 do
      begin
        // Công th?c xoay 90 d?
        ABitmap.Canvas.Pixels[ABitmap.Width - y - 1, x] := oBitmap.Canvas.Pixels[x, y];
      end;
    end;
  finally
    oBitmap.Free;
  end;
end;

procedure TR_hoachat.Button11Click(Sender: TObject);
begin
  tonkho:=Ttonkho.create(self);
  tonkho.show;
end;

procedure TR_hoachat.Button12Click(Sender: TObject);
begin
  baophe:=Tbaophe.create(self);
  baophe.show;
end;

end.







