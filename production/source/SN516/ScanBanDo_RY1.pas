unit ScanBanDo_RY1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DB, DBTables, GridsEh, DBGridEh, ExtCtrls, StdCtrls, Menus,ComObj,
  Buttons;

type
  TScanBanDo_RY = class(TForm)
    YWCPMas: TQuery;
    YWCPDet: TQuery;
    DS1: TDataSource;
    DS2: TDataSource;
    YWCPMasDDBH: TStringField;
    YWCPMasPairs: TIntegerField;
    YWCPMasKVBH: TStringField;
    YWCPMasKCBH: TStringField;
    Panel1: TPanel;
    Panel2: TPanel;
    Splitter1: TSplitter;
    Label1: TLabel;
    QryBtn: TButton;
    Label2: TLabel;
    RYEdit: TEdit;
    KVBHEdit: TEdit;
    YWCPDetCARTONBAR: TStringField;
    YWCPDetKVBH: TStringField;
    YWCPDetQty: TIntegerField;
    Panel3: TPanel;
    DBGrid2: TDBGridEh;
    Panel4: TPanel;
    BB4: TBitBtn;
    BB5: TBitBtn;
    BB6: TBitBtn;
    upMas: TUpdateSQL;
    upDet: TUpdateSQL;
    PopupMenu1: TPopupMenu;
    SetKVBH1: TMenuItem;
    ExeQuery: TQuery;
    Panel5: TPanel;
    Panel6: TPanel;
    DBGrid1: TDBGridEh;
    BA4: TBitBtn;
    BA5: TBitBtn;
    BA6: TBitBtn;
    PopupMenu2: TPopupMenu;
    SetKVBH2: TMenuItem;
    YWCPMasStatus: TStringField;
    YWCPMasStatusdate: TDateTimeField;
    YWCPMasStatus1: TStringField;
    YWCPMasStatus1date: TDateTimeField;
    Button1: TButton;
    OpenDialog1: TOpenDialog;
    RB1: TRadioButton;
    RB2: TRadioButton;
    procedure QryBtnClick(Sender: TObject);
    procedure BB4Click(Sender: TObject);
    procedure BB6Click(Sender: TObject);
    procedure BB5Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure BA4Click(Sender: TObject);
    procedure BA5Click(Sender: TObject);
    procedure BA6Click(Sender: TObject);
    procedure SetKVBH1Click(Sender: TObject);
    procedure SetKVBH2Click(Sender: TObject);
    procedure DBGrid1DrawColumnCell(Sender: TObject; const Rect: TRect;
      DataCol: Integer; Column: TColumnEh; State: TGridDrawState);
    procedure Button1Click(Sender: TObject);
  private
    IsFresh:boolean;
    { Private declarations }
  public
    KCBH:string;
    { Public declarations }
  end;

var
  ScanBanDo_RY: TScanBanDo_RY;

implementation
  uses FunUnit, ScanBanDo1;
{$R *.dfm}

procedure TScanBanDo_RY.QryBtnClick(Sender: TObject);
begin
  //
  with YWCPMas do
  begin
    Active:=false;
    SQL.Clear;
    SQL.Add('Select DDBH,KCBH,KVBH,SUM(Qty) as Pairs,Status, Statusdate, Status1, Status1date from YWCP ');
    SQL.Add('where KCBH='''+KCBH+'''and SB=1 ');
    if KVBHEdit.Text<>'' then
    SQL.Add('  and KVBH='''+KVBHEdit.Text+''' ');
    if RYEdit.Text<>'' then
      SQL.Add(' and DDBH like '''+RYEdit.Text+'%'' ');
    SQL.Add('Group by DDBH,KCBH,KVBH,Status, Statusdate, Status1, Status1date ');
    SQL.Add('order by DDBH');
    Active:=true;
  end;
  YWCPDet.Active:=true;
  //
end;

procedure TScanBanDo_RY.BB4Click(Sender: TObject);
begin
  //
  with YWCPDet do
  begin
    cachedupdates:=true;
    edit;
  end;
  SetKVBH2.Enabled:=true;
  BB5.Enabled:=true;
  BB6.Enabled:=true;
  //  
end;

procedure TScanBanDo_RY.BB6Click(Sender: TObject);
begin
  with YWCPDet do
  begin
    active:=false;
    requestlive:=false;
    cachedupdates:=false;
    active:=true;
  end;
  SetKVBH2.Enabled:=false;
  BB5.enabled:=false;
  BB6.enabled:=false;
end;

procedure TScanBanDo_RY.BB5Click(Sender: TObject);
var i:integer;
begin
  try
    YWCPDet.first;
    for i:=1 to YWCPDet.RecordCount do
    begin
      case YWCPDet.updatestatus of
          usmodified:
          begin
            upDet.apply(ukmodify);
          end;
       end;
       YWCPDet.next;
    end;
    YWCPDet.active:=false;
    YWCPDet.cachedupdates:=false;
    YWCPDet.requestlive:=false;
    YWCPDet.active:=true;
    SetKVBH2.Enabled:=false;
    BB5.enabled:=false;
    BB6.enabled:=false;
    IsFresh:=true;
    showmessage('Succeed.');
  except
    Messagedlg('Have wrong, can not save data!',mtwarning,[mbyes],0);
  end;
end;

procedure TScanBanDo_RY.FormCreate(Sender: TObject);
begin
  IsFresh:=false;
  
  // 1. NGAN CHAN Delphi tu dong cap nhat lai format theo Windows 
  Application.UpdateFormatSettings := False;
  
  // 2. CHI can thiep vao dinh dang GIO de chan cac loi phat sinh hien thi tren Grid
  {$IFDEF UNICODE}
    FormatSettings.LongTimeFormat := 'HH:mm:ss';
    FormatSettings.ShortTimeFormat := 'HH:mm:ss';
    FormatSettings.TimeAMString := '';
    FormatSettings.TimePMString := '';
  {$ELSE}
    LongTimeFormat := 'HH:mm:ss';
    ShortTimeFormat := 'HH:mm:ss';
    TimeAMString := '';
    TimePMString := '';
  {$ENDIF}

  // 3. Chi dung khoa chinh de update ngam, bo qua viec tu dong dua ngay thang vao cau lenh WHERE
  YWCPMas.UpdateMode := upWhereKeyOnly;
  YWCPDet.UpdateMode := upWhereKeyOnly;
  
  // 4. Ep SQL Server trong phien ket noi nay doc dinh dang ngay theo kieu Ngay/Thang/Nam (dmy)
  try
    with ExeQuery do
    begin
      Active := false;
      SQL.Clear;
      SQL.Add('SET DATEFORMAT dmy');
      ExecSQL;
    end;
  except
    // Bo qua ngoai le
  end;
end;

procedure TScanBanDo_RY.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  if   IsFresh=true then ScanBanDo.GetYWCPDate();
end;

procedure TScanBanDo_RY.BA4Click(Sender: TObject);
begin
  //
  with YWCPMas do
  begin
    cachedupdates:=true;
    edit;
  end;
  SetKVBH1.Enabled:=true;
  BA5.Enabled:=true;
  BA6.Enabled:=true;
end;

procedure TScanBanDo_RY.BA5Click(Sender: TObject);
var
  SavedID: string;
begin
  try
    // Tam thoi tat luoi chi tiet de xu ly muot hon
    YWCPDet.Active := false;
    YWCPMas.First;

    // Duyet qua danh sach cac ban ghi
    while not YWCPMas.Eof do
    begin
      if YWCPMas.UpdateStatus = usModified then
      begin
        
        // 1. Kiem tra neu nhap thong tin Lan 2 nhung thong tin Lan 1 lai trong
        if (not YWCPMas.FieldByName('Status1').IsNull and (Trim(YWCPMas.FieldByName('Status1').AsString) <> '')) or 
           (not YWCPMas.FieldByName('Status1date').IsNull) then
        begin
          if (YWCPMas.FieldByName('Status').IsNull) or (Trim(YWCPMas.FieldByName('Status').AsString) = '') or 
             (YWCPMas.FieldByName('Statusdate').IsNull) then
          begin
            ShowMessage('Loi tai don ' + YWCPMas.FieldByName('DDBH').AsString + ': Chua kiem lan 1, khong duoc phep nhap kiem lan 2!');
            Exit; // Dung tien trinh de nguoi dung sua lai
          end;
        end;

        // 2. Kiem tra so sanh xem ngay lan 2 co nho hon lan 1 khong
        if (not YWCPMas.FieldByName('Statusdate').IsNull) and (not YWCPMas.FieldByName('Status1date').IsNull) then
        begin
          if Trunc(YWCPMas.FieldByName('Status1date').AsDateTime) < Trunc(YWCPMas.FieldByName('Statusdate').AsDateTime) then
          begin
            ShowMessage('Loi tai don ' + YWCPMas.FieldByName('DDBH').AsString + ': Ngay kiem lan 2 khong duoc nho hon lan 1. Vui long kiem tra lai!');
            Exit; 
          end;
        end;

        with ExeQuery do
        begin
          Active := false;
          SQL.Clear;
          SQL.Add('UPDATE YWCP SET ');
          SQL.Add('  KVBH = ''' + YWCPMas.FieldByName('KVBH').AsString + ''', ');
          
          // CHI LAY NGAY (yyyymmdd), KHONG LAY GIO de tranh loi tren luoi hien thi
          if YWCPMas.FieldByName('Statusdate').IsNull or (Trim(YWCPMas.FieldByName('Statusdate').AsString) = '') then
            SQL.Add('  Statusdate = NULL, ')
          else
            SQL.Add('  Statusdate = ''' + FormatDateTime('yyyymmdd', YWCPMas.FieldByName('Statusdate').AsDateTime) + ''', '); 
            
          SQL.Add('  Status1 = ''' + YWCPMas.FieldByName('Status1').AsString + ''', ');     
          
          if YWCPMas.FieldByName('Status1date').IsNull or (Trim(YWCPMas.FieldByName('Status1date').AsString) = '') then
            SQL.Add('  Status1date = NULL, ')
          else
            SQL.Add('  Status1date = ''' + FormatDateTime('yyyymmdd', YWCPMas.FieldByName('Status1date').AsDateTime) + ''', '); 
            
          SQL.Add('  Status = ''' + YWCPMas.FieldByName('Status').AsString + ''' ');
          SQL.Add('WHERE DDBH = ''' + YWCPMas.FieldByName('DDBH').AsString + ''' ');
          ExecSQL;
        end;
      end;
      
      YWCPMas.Next;
    end;

    SavedID := YWCPMas.FieldByName('DDBH').AsString;
    YWCPMas.DisableControls;
    try
      QryBtnClick(Sender); 
      if SavedID <> '' then 
        YWCPMas.Locate('DDBH', SavedID, []);
    finally
      YWCPMas.EnableControls;
    end;

    YWCPDet.Active := true;
    SetKVBH1.Enabled := false;
    BA5.Enabled := false;
    BA6.Enabled := false;
    IsFresh := true;
    
    ShowMessage('Succeed.');
  except
    on E: Exception do 
      MessageDlg('Co loi xay ra, khong the luu du lieu!' + #13#10 + 'Chi tiet: ' + E.Message, mtError, [mbOK], 0);
  end;
end;

procedure TScanBanDo_RY.BA6Click(Sender: TObject);
begin
  with YWCPMas do
  begin
    active:=false;
    requestlive:=false;
    cachedupdates:=false;
    active:=true;
  end;
  SetKVBH1.Enabled:=false;
  BA5.enabled:=false;
  BA6.enabled:=false;
end;

procedure TScanBanDo_RY.SetKVBH1Click(Sender: TObject);
var KVBH:string;
    i:integer;
    bm:Tbookmark;
    bookmarklist:tbookmarklistEh;
begin
  //
  KVBH:=inputbox('Please Input KVBH','vi du:A01.. / B01..','');
  if length(KVBH)=3 then
  begin
    YWCPMas.disablecontrols;
    bm:=YWCPMas.getbookmark;
    bookmarklist:=DBGrid1.selectedrows;
      try
        for i:=0 to bookmarklist.count-1 do
        begin
           YWCPMas.gotobookmark(pointer(bookmarklist[i]));
           YWCPMas.Edit;
           YWCPMas.FieldByName('KVBH').Value:=KVBH;
           YWCPMas.Post;
        end;
      finally
        begin
          YWCPMas.gotobookmark(bm);
          YWCPMas.freebookmark(bm);
          YWCPMas.enablecontrols;
          showmessage('Xong roi!');
        end;
      end;
  end;
end;

procedure TScanBanDo_RY.SetKVBH2Click(Sender: TObject);
var KVBH:string;
    i:integer;
    bm:Tbookmark;
    bookmarklist:tbookmarklistEh;
begin
  //
  KVBH:=inputbox('Please Input KVBH','vi du:A01.. / B01..','');
  if length(KVBH)=3 then
  begin
    YWCPDet.disablecontrols;
    bm:=YWCPDet.getbookmark;
    bookmarklist:=DBGrid2.selectedrows;
      try
        for i:=0 to bookmarklist.count-1 do
        begin
           YWCPDet.gotobookmark(pointer(bookmarklist[i]));
           YWCPDet.Edit;
           YWCPDet.FieldByName('KVBH').Value:=KVBH;
           YWCPDet.Post;
        end;
      finally
        begin
          YWCPDet.gotobookmark(bm);
          YWCPDet.freebookmark(bm);
          YWCPDet.enablecontrols;
          showmessage('Xong roi!');
        end;
      end;
  end;

end;

procedure TScanBanDo_RY.DBGrid1DrawColumnCell(Sender: TObject;
  const Rect: TRect; DataCol: Integer; Column: TColumnEh;
  State: TGridDrawState);
begin
   if Column.FieldName = 'Status' then
  begin
    if YWCPMas.FieldByName('Status').Value = 'Pass' then
      DBGrid1.Canvas.Brush.Color := clGreen
    else if YWCPMas.FieldByName('Status').Value = 'False' then
      DBGrid1.Canvas.Brush.Color := clRed;
    DBGrid1.DefaultDrawColumnCell(Rect, DataCol, Column, State);
  end;

     if Column.FieldName = 'Status1' then
  begin
    if YWCPMas.FieldByName('Status1').Value = 'Pass' then
      DBGrid1.Canvas.Brush.Color := clGreen
    else if YWCPMas.FieldByName('Status1').Value = 'False' then
      DBGrid1.Canvas.Brush.Color := clRed;
    DBGrid1.DefaultDrawColumnCell(Rect, DataCol, Column, State);
  end;
end;

procedure TScanBanDo_RY.Button1Click(Sender: TObject);
var
  OpenDialog: TOpenDialog;
  ExcelApp: OleVariant;
  HoiLuaChon, DongHienTai, SoDonBiBoQua: Integer;
  ExcelFile, MaDDBH, SavedID: string;
  DlgForm: TForm; 
  BtnYes, BtnNo: TButton;
  DaKiemLan1: Boolean;
begin
  // 1. Khoi tao hop thoai chon file Excel
  OpenDialog := TOpenDialog.Create(Self);
  try
    OpenDialog.Title := 'Chon file Excel de Import';
    OpenDialog.Filter := 'Excel Files (*.xls;*.xlsx)|*.xls;*.xlsx';
    if not OpenDialog.Execute then Exit;
    ExcelFile := OpenDialog.FileName;
  finally
    OpenDialog.Free;
  end;

  // 2. TAO THONG BAO VA DOI CHU NUT THANH 'LAN 1', 'LAN 2'
  DlgForm := CreateMessageDialog('Ban muon Import Excel cho lan nao?', mtConfirmation, [mbYes, mbNo, mbCancel]);
  try
    DlgForm.Caption := 'Xac nhan Import';
    
    BtnYes := TButton(DlgForm.FindComponent('Yes'));
    if BtnYes <> nil then BtnYes.Caption := 'Lan 1';
    
    BtnNo := TButton(DlgForm.FindComponent('No'));
    if BtnNo <> nil then BtnNo.Caption := 'Lan 2';

    HoiLuaChon := DlgForm.ShowModal;
  finally
    DlgForm.Free;
  end;

  if (HoiLuaChon = mrCancel) or (HoiLuaChon = mrNone) then Exit;

  // 3. Bat dau mo Excel va doc du lieu de Update
  try
    try
      ExcelApp := CreateOleObject('Excel.Application');
      ExcelApp.Visible := False; 
      ExcelApp.Workbooks.Open(ExcelFile);
    except
      MessageDlg('May tinh cua ban chua cai Excel hoac file dang bi loi!', mtError, [mbOK], 0);
      Exit;
    end;

    Screen.Cursor := crHourGlass; 
    YWCPDet.Active := false;

    DongHienTai := 1; 
    SoDonBiBoQua := 0; 

    while ExcelApp.Cells[DongHienTai, 1].Value <> '' do
    begin
      MaDDBH := Trim(VarToStr(ExcelApp.Cells[DongHienTai, 1].Value));

      if MaDDBH <> '' then
      begin
        // --- NGUOI DUNG CHON NUT 'LAN 1' (mrYes) ---
        if HoiLuaChon = mrYes then
        begin
          with ExeQuery do
          begin
            Active := false;
            SQL.Clear;
            SQL.Add('UPDATE YWCP SET ');
            if RB1.Checked then
                SQL.Add('  Status = ''Pass'', ')
              else
                SQL.Add('  Status = ''False'', ');
            // CAST(GETDATE() AS DATE) de loai bo hoan toan Gio/Phut/Giay
            SQL.Add('  Statusdate = CAST(GETDATE() AS DATE) ');
            SQL.Add('WHERE DDBH = ''' + MaDDBH + ''' ');
            ExecSQL;
          end;
        end
        
        // --- NGUOI DUNG CHON NUT 'LAN 2' (mrNo) ---
        else if HoiLuaChon = mrNo then
        begin
          // KIEM TRA XEM LAN 1 DA DUOC CHECK HAY CHU_A
          DaKiemLan1 := False;
          with ExeQuery do
          begin
            Active := false;
            SQL.Clear;
            SQL.Add('SELECT Status FROM YWCP WHERE DDBH = ''' + MaDDBH + ''' ');
            Active := true;
            
            if (RecordCount > 0) and (not FieldByName('Status').IsNull) and (FieldByName('Status').AsString = 'Pass') then
              DaKiemLan1 := True;
          end;

          if not DaKiemLan1 then
          begin
            Inc(SoDonBiBoQua); 
            Inc(DongHienTai);
            Continue; 
          end;

          // NEU DA DAT DIEU KIEN KIEM LAN 1 THI TIEN HANH UPDATE LAN 2
          with ExeQuery do
          begin
            Active := false;
            SQL.Clear;
            SQL.Add('UPDATE YWCP SET ');
            if RB1.Checked then
                SQL.Add('  Status1 = ''Pass'', ')
              else
                SQL.Add('  Status1 = ''False'', ');
            // CAST(GETDATE() AS DATE) de loai bo hoan toan Gio/Phut/Giay
            SQL.Add('  Status1date = CAST(GETDATE() AS DATE) '); 
            SQL.Add('WHERE DDBH = ''' + MaDDBH + ''' ');
            ExecSQL;
          end;
        end;
      end;

      Inc(DongHienTai);
    end;

    // Dong Excel sau khi xu ly xong
    ExcelApp.Workbooks.Close;
    ExcelApp.Quit;
    ExcelApp := Unassigned;

    // --- LAM MOI LAI GIAO DIEN LUOI ---
    SavedID := YWCPMas.FieldByName('DDBH').AsString;
    YWCPMas.DisableControls;
    try
      QryBtnClick(Sender); 
      if SavedID <> '' then 
        YWCPMas.Locate('DDBH', SavedID, []);
    finally
      YWCPMas.EnableControls;
    end;

    YWCPDet.Active := true;
    IsFresh := true;
    Screen.Cursor := crDefault; 
    
    // Thong bao ket qua chi tiet ra man hinh
    if (HoiLuaChon = mrNo) and (SoDonBiBoQua > 0) then
      ShowMessage('Import hoan thanh!' + #13#10 + 
                  '- Tong so dong da quet: ' + IntToStr(DongHienTai - 1) + #13#10 +
                  '- So don bi BO QUA vi chua kiem Lan 1: ' + IntToStr(SoDonBiBoQua))
    else
      ShowMessage('Import tu Excel va update thanh cong! Tong so dong da quet: ' + IntToStr(DongHienTai - 1));

  except
    on E: Exception do
    begin
      Screen.Cursor := crDefault;
      if not VarIsEmpty(ExcelApp) then
      begin
        ExcelApp.Quit;
        ExcelApp := Unassigned;
      end;
      MessageDlg('Co loi xay ra trong qua trinh Import Excel!' + #13#10 + 'Chi tiet: ' + E.Message, mtError, [mbOK], 0);
    end;
  end;
end;

end.
