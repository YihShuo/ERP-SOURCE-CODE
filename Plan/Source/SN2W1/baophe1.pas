unit baophe1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DB, DBTables, GridsEh, DBGridEh, StdCtrls, ComCtrls, ExtCtrls,comobj;

type
  TBaophe = class(TForm)
    Panel1: TPanel;
    Label1: TLabel;
    Query: TButton;
    Edit1: TEdit;
    Button2: TButton;
    DBGridEh1: TDBGridEh;
    Query1: TQuery;
    DS1: TDataSource;
    Up: TUpdateSQL;
    Label2: TLabel;
    ComboBox1: TComboBox;
    Label3: TLabel;
    Label4: TLabel;
    ComboBox3: TComboBox;
    temp: TQuery;
    ComboBox2: TComboBox;
    Query3: TQuery;
    AutoIncField1: TAutoIncField;
    StringField1: TStringField;
    IntegerField1: TIntegerField;
    FloatField1: TFloatField;
    StringField2: TStringField;
    DateTimeField1: TDateTimeField;
    BooleanField1: TBooleanField;
    Query1ID: TAutoIncField;
    Query1DonVi: TStringField;
    Query1TenHoaChat: TStringField;
    Query1SoLuong: TFloatField;
    Query1NguoiNhap: TStringField;
    Query1NgayNhap: TDateTimeField;
    mofidy: TButton;
    Delete: TButton;
    Cancel: TButton;
    All: TCheckBox;
    Query2: TQuery;
    Label5: TLabel;
    BaoPhe: TPageControl;
    TabSheet1: TTabSheet;
    TabSheet2: TTabSheet;
    Panel2: TPanel;
    Label7: TLabel;
    Button1: TButton;
    cbx4: TComboBox;
    All1: TCheckBox;
    DBGridEh2: TDBGridEh;
    DS2: TDataSource;
    Query4: TQuery;
    DTP1: TDateTimePicker;
    Label6: TLabel;
    Button3: TButton;
    Button4: TButton;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormDestroy(Sender: TObject);
    procedure ComboBox1Change(Sender: TObject);
    procedure ComboBox2Change(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure QueryClick(Sender: TObject);
    procedure mofidyClick(Sender: TObject);
    procedure DeleteClick(Sender: TObject);
    procedure DBGridEh1GetCellParams(Sender: TObject; Column: TColumnEh;
      AFont: TFont; var Background: TColor; State: TGridDrawState);
    procedure CancelClick(Sender: TObject);
    procedure ComboBox3Change(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure DBGridEh2GetCellParams(Sender: TObject; Column: TColumnEh;
      AFont: TFont; var Background: TColor; State: TGridDrawState);
    procedure Button3Click(Sender: TObject);
    procedure Button4Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Baophe: TBaophe;

implementation

uses main1;

{$R *.dfm}

// Khai bao bien toan cuc de quan ly cac trang thai Them / Sua / Xoa
var
  EditID: Integer = 0; 
  IsActionDelete: Boolean = False; // True neu dang chuan bi Xoa, False neu Them hoac Sua

procedure TBaophe.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  Action := caFree;
end;

procedure TBaophe.FormDestroy(Sender: TObject);
begin
  Baophe := nil;
end;

procedure TBaophe.ComboBox1Change(Sender: TObject);
begin
  with temp do
  begin
    Active := False;
    SQL.Clear;
    SQL.Add('SELECT * FROM Ch_Departments_HK');
    SQL.Add('WHERE gsbh = ' + QuotedStr(ComboBox1.Text));
    Active := True;
    ComboBox2.text :='';
    ComboBox2.Items.Clear;

    First;
    while not Eof do
    begin
      ComboBox2.Items.Add(FieldByName('lean_name').AsString);
      Next;
    end;

    if ComboBox2.Items.Count > 0 then
      ComboBox2.ItemIndex := 0;
  end;
end;

procedure TBaophe.ComboBox2Change(Sender: TObject);
begin
  with temp do
  begin
    Active := False;
    SQL.Clear;
    
    SQL.Add('SELECT DISTINCT F1.id, F1.name');
    SQL.Add('FROM ch_Formulation_HK F');
    SQL.Add('INNER JOIN Ch_Formula F1');
    SQL.Add('  ON F.inv_id = F1.hc1');
    SQL.Add('  AND ISNULL(F.inv_id1, '''') = ISNULL(F1.hc2, '''')');
    SQL.Add('  AND F.sol_id = F1.hc3');
    SQL.Add('  AND F.TyLe = F1.tl3');
    SQL.Add('  AND F.TL1 = F1.tl1');
    SQL.Add('INNER JOIN Ch_Formulation_Details_HK FD');
    SQL.Add('  ON F.id = FD.F_id');
    SQL.Add('WHERE FD.id_dept = ' + QuotedStr(ComboBox2.Text));
    // Bo qua cac dong khong lay duoc ten cong thuc
    SQL.Add('  AND F1.name IS NOT NULL');
    SQL.Add('  AND FD.curr_weight >0');
    // Dieu kien: Chi lay du lieu pha che cua ngay hom nay
    SQL.Add('  AND CAST(F.event_time AS DATE) = CAST(GETDATE() AS DATE)');

    Active := True;
    ComboBox3.Text :='' ;
    ComboBox3.Items.Clear;
    Label5.Caption := '0'; // Reset nhan tong kg ve 0 khi doi bo phan

    First;
    while not Eof do
    begin
      ComboBox3.Items.Add(FieldByName('name').AsString);
      Next;
    end;

    if ComboBox3.Items.Count > 0 then
    begin
      ComboBox3.ItemIndex := 0;
      ComboBox3Change(Sender); // Tu dong kich hoat tinh tong cho phan tu dau tien
    end;
  end;
end;

// NUT SAVE: Gop chung viec Them Moi, Cap Nhat va Xoa mem
procedure TBaophe.Button2Click(Sender: TObject);
var
  khoi_luong, max_khoi_luong: Double;
  formula_id: Integer;
begin
  // =========================================================================
  // XU LY TRUONG HOP XOA: Kiem tra neu truoc do co nhan nut Delete
  // =========================================================================
  if IsActionDelete and (EditID > 0) then
  begin
    with temp do
    begin
      Active := False;
      SQL.Clear;
      SQL.Add('UPDATE CH_BP SET YN = 0, Userid = :pUserid, Userdate = GETDATE() WHERE ID = :pID');
      
      ParamByName('pUserid').AsString := main.Edit1.Text;
      ParamByName('pID').AsInteger := EditID;
      
      try
        ExecSQL;
        
        // Xoa trang thai sau khi thuc hien xong
        EditID := 0;
        IsActionDelete := False; 
        Edit1.Clear;
        Label5.Caption := '0';
        
        QueryClick(Sender); // Load lai luoi
      except
        on E: Exception do ShowMessage('Loi xoa du lieu: ' + E.Message);
      end;
    end;
    Exit; // Ket thuc luon tai day, khong chay phan Them/Sua ben duoi nua
  end;

  // =========================================================================
  // XU LY TRUONG HOP THEM MOI HOAC SUA (UPDATE)
  // =========================================================================
  
  if Trim(Edit1.Text) = '' then
  begin
    ShowMessage('Vui long nhap so kg!');
    Edit1.SetFocus;
    Exit;
  end;

  if Trim(ComboBox2.Text) = '' then
  begin
    ShowMessage('Vui long chon Don vi!');
    ComboBox2.SetFocus;
    Exit;
  end;

  if Trim(ComboBox3.Text) = '' then
  begin
    ShowMessage('Vui long chon Ten cong thuc!');
    ComboBox3.SetFocus;
    Exit;
  end;

  // Chuyen doi kiem tra so kg nguoi dung nhap vao o bao phe
  try
    DecimalSeparator := '.';
    khoi_luong := StrToFloat(StringReplace(Trim(Edit1.Text), ',', '.', [rfReplaceAll]));
  except
    ShowMessage('So kg nhap vao khong hop le!');
    Edit1.SetFocus;
    Exit;
  end;

  // Lay gia tri so kg toi da cho phep tu Label5 de doi chieu kiem tra vuot muc
  try
    max_khoi_luong := StrToFloat(StringReplace(Trim(Label5.Caption), ',', '.', [rfReplaceAll]));
  except
    max_khoi_luong := 0;
  end;

  // THUC HIEN KIEM TRA: Neu khoi luong bao phe nhap vao lon hon tong khoi luong goc
  if khoi_luong > max_khoi_luong then
  begin
    ShowMessage('Khong the luu! So kg bao phe (' + FloatToStr(khoi_luong) + 
                ' kg) dang vuot qua tong so kg pha che cho phep (' + FloatToStr(max_khoi_luong) + ' kg).');
    Edit1.SetFocus;
    Exit;
  end;

  with temp do 
  begin
    Active := False;
    SQL.Clear;
    SQL.Add('SELECT id FROM CH_Formula WHERE name = ' + QuotedStr(ComboBox3.Text));
    Active := True;

    if IsEmpty then
    begin
      ShowMessage('Khong tim thay ID cua cong thuc nay!');
      Exit;
    end;
    formula_id := FieldByName('id').AsInteger;
  end;

  with temp do
  begin
    Active := False;
    SQL.Clear;
    
    if EditID = 0 then
    begin
      SQL.Add('INSERT INTO CH_BP (DepID, ID_Formula, Weight, Userid, Userdate, YN)');
      SQL.Add('VALUES (:pDepID, :pID_Formula, :pWeight, :pUserid, GETDATE(), 1)');
    end
    else
    begin
      SQL.Add('UPDATE CH_BP');
      SQL.Add('SET DepID = :pDepID, ID_Formula = :pID_Formula, Weight = :pWeight,');
      SQL.Add('    Userid = :pUserid, Userdate = GETDATE()');
      SQL.Add('WHERE ID = :pID');
    end;
    
    ParamByName('pDepID').AsString := ComboBox2.Text; 
    ParamByName('pID_Formula').AsInteger := formula_id;
    ParamByName('pWeight').AsFloat := khoi_luong;
    ParamByName('pUserid').AsString := main.Edit1.Text;

    if EditID > 0 then
      ParamByName('pID').AsInteger := EditID;

    try
      ExecSQL; 
      
      Edit1.Clear;
      EditID := 0; 
      IsActionDelete := False; // Chot an toan de dam bao trang thai dung
      Label5.Caption := '0';
      
      QueryClick(Sender);
      Edit1.SetFocus;
    except
      on E: Exception do ShowMessage('Loi khi luu du lieu: ' + E.Message);
    end;
  end;
end;

procedure TBaophe.QueryClick(Sender: TObject);
begin
  with Query1 do
  begin
    Active := False;
    SQL.Clear;
    
    SQL.Add('SELECT');
    SQL.Add('  BP.ID,');
    SQL.Add('  BP.DepID AS DonVi,');
    SQL.Add('  F.name AS TenHoaChat,');
    SQL.Add('  BP.Weight AS SoLuong,');
    SQL.Add('  BP.Userid AS NguoiNhap,');
    SQL.Add('  BP.Userdate AS NgayNhap');
    SQL.Add('FROM CH_BP BP');
    SQL.Add('LEFT JOIN CH_Formula F ON BP.ID_Formula = F.id');
    
    SQL.Add('WHERE BP.YN = 1'); 
    if not all.Checked then
    begin
      if Trim(ComboBox2.Text) <> '' then
        SQL.Add('  AND BP.DepID = ' + QuotedStr(ComboBox2.Text));

      if Trim(ComboBox3.Text) <> '' then
        SQL.Add('  AND F.name = ' + QuotedStr(ComboBox3.Text));
    end;
    SQL.Add('ORDER BY BP.ID DESC'); 

    Active := True;
  end;
end;

// NUT SUA (MODIFY): Luu tru ID, cap nhat trang thai thanh Sua
procedure TBaophe.mofidyClick(Sender: TObject);
begin
  if (not Query1.Active) or (Query1.IsEmpty) then Exit;

  EditID := Query1.FieldByName('ID').AsInteger;
  IsActionDelete := False; // Huy trang thai xoa neu nguoi dung truoc do co nhan Delete

  ComboBox2.Text := Query1.FieldByName('DonVi').AsString;
  ComboBox2Change(Sender); 
  
  ComboBox3.Text := Query1.FieldByName('TenHoaChat').AsString;
  ComboBox3Change(Sender); // Kich hoat lay tong kg goc dua vao Label5 khi bam sua du lieu
  
  Edit1.Text := FloatToStr(Query1.FieldByName('SoLuong').AsFloat);
  Edit1.SetFocus;
  
  // Ep DBGrid ve lai de hien thi mau Vang
  DBGridEh1.Invalidate; 
end;

// NUT XOA (DELETE): Chi luu lai ID va doi trang thai thanh Xoa (Cho xac nhan bang nut Save)
procedure TBaophe.DeleteClick(Sender: TObject);
begin
  if (not Query1.Active) or (Query1.IsEmpty) then Exit;

  EditID := Query1.FieldByName('ID').AsInteger;
  IsActionDelete := True; // Danh dau la dang muon xoa
  
  // Ep DBGrid ve lai de hien thi mau Do
  DBGridEh1.Invalidate; 
end;

procedure TBaophe.DBGridEh1GetCellParams(Sender: TObject;
  Column: TColumnEh; AFont: TFont; var Background: TColor;
  State: TGridDrawState);
begin
  // Bo qua neu Query1 dang dong hoac khong co du lieu
  if (not Query1.Active) or Query1.IsEmpty then Exit;

  // Kiem tra ID cua dong dang ve co trung voi dong dang thao tac (EditID) khong
  if Query1.FieldByName('ID').AsInteger = EditID then
  begin
    if IsActionDelete then
    begin
      Background := clRed;      // Nen Do cho hanh dong Xoa
      AFont.Color := clWhite;   // Chu Trang cho de nhin
    end
    else
    begin
      Background := clYellow;   // Nen Vang cho hanh dong Sua
      AFont.Color := clBlack;   // Chu Den
    end;
  end;
end;

procedure TBaophe.CancelClick(Sender: TObject);
begin
  // 1. Kiem tra xem co dang o che do thao tac khong
  if (EditID = 0) and (not IsActionDelete) and (Trim(Edit1.Text) = '') then
  begin
    Exit; // Neu khong co gi de huy thi thoat luon
  end;

  // 2. Tra cac bien trang thai ve mac dinh
  EditID := 0;
  IsActionDelete := False;

  // 3. Xoa du lieu dang hien thi tren cac o nhap
  Edit1.Clear;
  ComboBox2.ItemIndex := -1;
  ComboBox2.Text := '';
  ComboBox3.ItemIndex := -1;
  ComboBox3.Text := '';
  Label5.Caption := '0';

  // 4. BAT BUOC: Ep luoi DBGrid ve lai de xoa mau Do/Vang
  DBGridEh1.Invalidate;
  
  Edit1.SetFocus;
end;

procedure TBaophe.ComboBox3Change(Sender: TObject);
begin
  if Trim(ComboBox3.Text) = '' then
  begin
    Label5.Caption := '0';
    Exit;
  end;

  with Query2 do
  begin
    Active := False;
    SQL.Clear;

    SQL.Add('SELECT F1.id, F1.name,');
    SQL.Add('  ISNULL(SUM(FD.curr_weight), 0) AS tong');
    SQL.Add('FROM ch_Formulation_HK F');
    SQL.Add('INNER JOIN Ch_Formula F1');
    SQL.Add('  ON F.inv_id = F1.hc1');
    SQL.Add('  AND ISNULL(F.inv_id1, '''') = ISNULL(F1.hc2, '''')');
    SQL.Add('  AND F.sol_id = F1.hc3');
    SQL.Add('  AND F.TyLe = F1.tl3');
    SQL.Add('  AND F.TL1 = F1.tl1');
    SQL.Add('INNER JOIN Ch_Formulation_Details_HK FD');
    SQL.Add('  ON F.id = FD.F_id');
    SQL.Add('WHERE FD.id_dept = ' + QuotedStr(ComboBox2.Text));
    SQL.Add('  AND F1.name = ' + QuotedStr(ComboBox3.Text)); // Them bo loc chinh xac theo cong thuc duoc chon
    SQL.Add('  AND FD.curr_weight > 0');
    SQL.Add('  AND CAST(F.event_time AS DATE) = CAST(GETDATE() AS DATE)');
    SQL.Add('GROUP BY F1.id, F1.name');

    Active := True;

    // Tien hanh doc du lieu tu ket qua truy van dua vao nhan hien thi giao dien
    if not IsEmpty then
      Label5.Caption := FloatToStr(FieldByName('tong').AsFloat)
    else
      Label5.Caption := '0'; // Gan mac dinh bang 0 neu cong thuc nay hom nay chua chay phoi tron
  end;
end;

procedure TBaophe.Button1Click(Sender: TObject);
var
  SqlGetCols, SqlMain, ColsStr: string;
  ChonThang, ChonNam, ChonNgay: Word;
  XuongGSBH: string;
  QueryTemp: TQuery;
  i: Integer;
begin
  // 1. Lay thoi gian va GSBH tu giao dien
  DecodeDate(DTP1.datetime, ChonNam, ChonThang, ChonNgay);
  XuongGSBH := cbx4.Text;

  // 2. Dung Query tam de quet cac ngay thuc te co du lieu trong thang
  QueryTemp := TQuery.Create(Self);
  try
    QueryTemp.DatabaseName := Query4.DatabaseName;
    QueryTemp.SQL.Add('SELECT DISTINCT DAY(UserDate) AS NgayThucTe');
    QueryTemp.SQL.Add('FROM CH_BP B');
    QueryTemp.SQL.Add('INNER JOIN Ch_Departments_HK D ON B.DepID = D.id_dept');
    QueryTemp.SQL.Add('WHERE B.yn = 1');
    
    // --- NOY THU 1: Áp dung dieu kien All1 cua ban ---
    if not All1.Checked then 
      QueryTemp.SQL.Add('  AND D.GSBH = ''' + XuongGSBH + '''');
      
    QueryTemp.SQL.Add('  AND YEAR(B.UserDate) = ' + IntToStr(ChonNam));
    QueryTemp.SQL.Add('  AND MONTH(B.UserDate) = ' + IntToStr(ChonThang));
    QueryTemp.SQL.Add('ORDER BY DAY(UserDate) ASC');
    QueryTemp.Open;

    // Tu dong sinh ra cac cot CASE WHEN dua tren ngay thuc te quet duoc
    ColsStr := '';
    while not QueryTemp.Eof do
    begin
      if ColsStr <> '' then ColsStr := ColsStr + ',' + #13#10;
      
      ColsStr := ColsStr + 
        'SUM(CASE WHEN DAY(Tmp.Ngay) = ' + QueryTemp.FieldByName('NgayThucTe').AsString + 
        ' THEN Tmp.TongPhe ELSE 0 END) AS [' + QueryTemp.FieldByName('NgayThucTe').AsString + ']';

      QueryTemp.Next;
    end;
    QueryTemp.Close;
  finally
    QueryTemp.Free;
  end;

  // Neu nguyen thang khong ai xai thi thong bao va thoat
  if ColsStr = '' then
  begin
    ShowMessage('Thang nay khong co du lieu bao phe!');
    Exit;
  end;

  // 3. Cau SELECT bao phu ben ngoai (Dung ISNULL de ep ra chu TOTAL o dong tong cong)
  Query4.Close;
  Query4.SQL.Clear;
  Query4.SQL.Add('SELECT ISNULL(Tmp.DepID, ''TOTAL'') AS [Don Vi],');
  Query4.SQL.Add(ColsStr); 
  
  // 4. Subquery gom thong tin phia trong
  Query4.SQL.Add('FROM (');
  Query4.SQL.Add('    SELECT CONVERT(date, B.UserDate) AS Ngay, B.DepID, SUM(B.Weight) AS TongPhe');
  Query4.SQL.Add('    FROM CH_BP B');
  Query4.SQL.Add('    INNER JOIN Ch_Departments_HK D ON B.DepID = D.id_dept');
  Query4.SQL.Add('    WHERE B.yn = 1');
  
  // --- NOI THU 2: Áp dung dieu kien All1 cua ban ---
  if not All1.Checked then 
    Query4.SQL.Add('      AND D.GSBH = ''' + XuongGSBH + '''');
    
  Query4.SQL.Add('      AND YEAR(B.UserDate) = ' + IntToStr(ChonNam));
  Query4.SQL.Add('      AND MONTH(B.UserDate) = ' + IntToStr(ChonThang));
  Query4.SQL.Add('    GROUP BY CONVERT(date, B.UserDate), B.DepID');
  Query4.SQL.Add(') AS Tmp');

  Query4.SQL.Add('GROUP BY Tmp.DepID WITH ROLLUP');
  Query4.SQL.Add('ORDER BY CASE WHEN Tmp.DepID IS NULL THEN 1 ELSE 0 END ASC, Tmp.DepID ASC');

  Query4.Open;

  // 5. Tu dong chinh co dinh do rong cac cot ngay
  for i := 0 to DBGridEh2.Columns.Count - 1 do
  begin
    if i > 0 then 
    begin
      DBGridEh2.Columns[i].Width := 50; 
      DBGridEh2.Columns[i].Title.Alignment := taCenter;
      DBGridEh2.Columns[i].Alignment := taRightJustify;
    end;
  end;
end;

procedure TBaophe.DBGridEh2GetCellParams(Sender: TObject;
  Column: TColumnEh; AFont: TFont; var Background: TColor;
  State: TGridDrawState);
begin
  // Dung chuan cua DBGridEh: Thay doi truc tiep bien Background va AFont truyen vao pha he thong
  if Query4.Active and (Query4.FindField('Don Vi') <> nil) then
  begin
    if Query4.FieldByName('Don Vi').AsString = 'TOTAL' then
    begin
      Background := $00E6F2FF;      // Mau xanh Soft Blue rat diu nhe
      AFont.Color := clBlack;       // Mau chu den
      AFont.Style := [fsBold];      // Chu in dam toan bo dong TOTAL
    end;
  end;
end;

procedure TBaophe.Button3Click(Sender: TObject);
var
  ExcelApp, WorkBook, Sheet: Variant;
  i, RowIndex, ColIndex, DaysInMonth: Integer;
  ChonThang, ChonNam, ChonNgay: Word;
  CurrentFloor, LineFloor: string;
  CName: string;
  LineName: string;

  // Ham phu de tu dong doi so cot thanh chu cai (vi du: 2 -> B, 28 -> AB)
  function GetExcelColName(ColNum: Integer): string;
  begin
    Result := '';
    while ColNum > 0 do
    begin
      Result := Chr(65 + (ColNum - 1) mod 26) + Result;
      ColNum := (ColNum - 1) div 26;
    end;
  end;

begin
  if not Query4.Active or Query4.IsEmpty then
  begin
    ShowMessage('Khong co du lieu de xuat Excel!');
    Exit;
  end;

  // Lay thoi gian dang chon tu DateTimePicker
  DecodeDate(DTP1.datetime, ChonNam, ChonThang, ChonNgay);
  
  // Tinh so ngay thuc te cua thang do (28, 29, 30 hoac 31 ngay)
  if ChonThang in [1, 3, 5, 7, 8, 10, 12] then DaysInMonth := 31
  else if ChonThang in [4, 6, 9, 11] then DaysInMonth := 30
  else if ((ChonNam mod 4 = 0) and (ChonNam mod 100 <> 0)) or (ChonNam mod 400 = 0) then DaysInMonth := 29
  else DaysInMonth := 28;

  try
    ExcelApp := CreateOleObject('Excel.Application');
  except
    ShowMessage('May tinh chua cai dat Microsoft Excel!');
    Exit;
  end;

  WorkBook := ExcelApp.Workbooks.Add;
  Sheet := WorkBook.ActiveSheet;
  ExcelApp.Visible := True;

  // 1. TIEU DE CHINH: Chuoi thuan tuy khong dau, tu dong map theo so Thang duoc chon
  Sheet.Cells[1, 1] := 'BAO BIEU KEO CHET' + #10 + '³ø¼o¦º½¦³øªí (' + IntToStr(ChonThang) + '¤ë)';
  Sheet.Range['A1', Sheet.Cells[1, DaysInMonth + 1]].Merge;
  Sheet.Range['A1'].RowHeight := 45;
  Sheet.Range['A1'].Font.Bold := True;
  Sheet.Range['A1'].Font.Size := 14;
  Sheet.Range['A1'].HorizontalAlignment := -4108; // Center
  Sheet.Range['A1'].VerticalAlignment := -4108;   // Center

  // 2. HEADER GIAO NHAU (A2): Ap dung khoang trang giong format ban da thu nghiem
  RowIndex := 2;
  Sheet.Cells[RowIndex, 1] := '                       NGAY' + #10 +
                              '                       ¤é' + #10 +
                              #10 +
                              'TRONG LUONG' + #10 +
                              ' ­«¶q';
  
  Sheet.Cells[RowIndex, 1].Font.Size := 9;
  Sheet.Cells[RowIndex, 1].Interior.Color := $00C6EFCE; // Mau nen xanh la nhe
  Sheet.Cells[RowIndex, 1].Borders.LineStyle := 1;
  Sheet.Cells[RowIndex, 1].WrapText := True;             // Tu dong xuong dong theo ky tu #10
  Sheet.Cells[RowIndex, 1].HorizontalAlignment := -4108; // Center
  Sheet.Cells[RowIndex, 1].VerticalAlignment := -4108;   // Center
  Sheet.Range['A2'].RowHeight := 65;                     // Do cao o vua van de day chu ve ria mép

  // Duong gach cheo ngan cach (xlDiagonalDown = 5)
  Sheet.Cells[RowIndex, 1].Borders[5].LineStyle := 1;
  Sheet.Cells[RowIndex, 1].Borders[5].Weight := 2;

  // 3. HEADER CAC COT NGAY (Chay deu tu 1 -> DaysInMonth khong bo sot o)
  for i := 1 to DaysInMonth do
  begin
    Sheet.Cells[RowIndex, i + 1] := i;
    Sheet.Cells[RowIndex, i + 1].Interior.Color := $00C6EFCE; 
    Sheet.Cells[RowIndex, i + 1].Font.Bold := True;
    Sheet.Cells[RowIndex, i + 1].HorizontalAlignment := -4108; 
    Sheet.Cells[RowIndex, i + 1].Borders.LineStyle := 1;
  end;

  // 4. DUYET DU LIEU THEO DONG (GOM THEO TANG/LAU)
  RowIndex := 3;
  CurrentFloor := '';
  
  Query4.First;
  while not Query4.Eof do
  begin
    if Query4.Fields[0].AsString = 'TOTAL' then
    begin
      Query4.Next;
      Continue;
    end;

    LineFloor := Copy(Query4.Fields[0].AsString, 1, 1);

    if LineFloor <> CurrentFloor then
    begin
      CurrentFloor := LineFloor;
      
      Sheet.Cells[RowIndex, 1] := 'LAU ' + CurrentFloor; 
      Sheet.Range[Sheet.Cells[RowIndex, 1], Sheet.Cells[RowIndex, DaysInMonth + 1]].Merge;
      Sheet.Range[Sheet.Cells[RowIndex, 1], Sheet.Cells[RowIndex, DaysInMonth + 1]].Font.Bold := True;
      Sheet.Range[Sheet.Cells[RowIndex, 1], Sheet.Cells[RowIndex, DaysInMonth + 1]].Font.Color := clWhite;
      Sheet.Range[Sheet.Cells[RowIndex, 1], Sheet.Cells[RowIndex, DaysInMonth + 1]].Interior.Color := $00DE9834; // Mau xanh lam kieu cu
      Sheet.Range[Sheet.Cells[RowIndex, 1], Sheet.Cells[RowIndex, DaysInMonth + 1]].HorizontalAlignment := -4108;
      Sheet.Range[Sheet.Cells[RowIndex, 1], Sheet.Cells[RowIndex, DaysInMonth + 1]].Borders.LineStyle := 1;
      
      Inc(RowIndex);
    end;

    // Cat chuoi chu vung de lay ten 'LINE X' thuan tuy gon ghang
    LineName := Query4.Fields[0].AsString;
    if Pos('Line', LineName) > 0 then
      LineName := 'LINE ' + Copy(LineName, Pos('Line', LineName) + 5, 2)
    else if Pos('line', LineName) > 0 then
      LineName := 'LINE ' + Copy(LineName, Pos('line', LineName) + 5, 2);
      
    Sheet.Cells[RowIndex, 1] := LineName;
    Sheet.Cells[RowIndex, 1].Borders.LineStyle := 1;

    // Dien khoi luong theo ngay thuc te neu ton tai du lieu (ngay nao khong co tu dong de trong)
    for ColIndex := 1 to DaysInMonth do
    begin
      if Query4.FindField(IntToStr(ColIndex)) <> nil then
      begin
        if Query4.FieldByName(IntToStr(ColIndex)).AsFloat <> 0 then
        begin
          Sheet.Cells[RowIndex, ColIndex + 1] := Query4.FieldByName(IntToStr(ColIndex)).AsFloat;
          if Query4.FieldByName(IntToStr(ColIndex)).AsFloat >= 1.0 then
            Sheet.Cells[RowIndex, ColIndex + 1].Font.Color := clRed;
        end;
      end;
      Sheet.Cells[RowIndex, ColIndex + 1].Borders.LineStyle := 1;
    end;

    Inc(RowIndex);
    Query4.Next;
  end;

  // 5. DONG TOTAL CUOI CUNG DUNG COONG THUC SUM CUA EXCEL
  Sheet.Cells[RowIndex, 1] := 'TOTAL';
  Sheet.Cells[RowIndex, 1].Font.Bold := True;
  Sheet.Cells[RowIndex, 1].Borders.LineStyle := 1;
  Sheet.Cells[RowIndex, 1].Interior.Color := $00E6F2FF; // Mau nen nhe phan biet dong tong

  for ColIndex := 1 to DaysInMonth do
  begin
    CName := GetExcelColName(ColIndex + 1);
    Sheet.Cells[RowIndex, ColIndex + 1] := '=SUM(' + CName + '3:' + CName + IntToStr(RowIndex - 1) + ')';
    Sheet.Cells[RowIndex, ColIndex + 1].Font.Bold := True;
    Sheet.Cells[RowIndex, ColIndex + 1].Borders.LineStyle := 1;
    Sheet.Cells[RowIndex, ColIndex + 1].Interior.Color := $00E6F2FF;
  end;

  // Bo dinh dang do rong co dinh giup cac cot ngay nh? gon gàng
  Sheet.Columns['A'].ColumnWidth := 15;
  for i := 2 to DaysInMonth + 1 do
    Sheet.Columns[GetExcelColName(i)].ColumnWidth := 5;

  ShowMessage('Xuat file Excel thanh cong!');
end;


procedure TBaophe.Button4Click(Sender: TObject);
var
  ExcelApp, WorkBook, Sheet: Variant;
  i, ColIndex, DaysInMonth: Integer;
  ChonThang, ChonNam, ChonNgay: Word;
  CName: string;
  TongNgay: Double;
  TieuDeNgay: string;

  function GetExcelColName(ColNum: Integer): string;
  begin
    Result := '';
    while ColNum > 0 do
    begin
      Result := Chr(65 + (ColNum - 1) mod 26) + Result;
      ColNum := (ColNum - 1) div 26;
    end;
  end;

begin
  if not Query4.Active or Query4.IsEmpty then
  begin
    ShowMessage('Khong co du lieu de xuat Excel!');
    Exit;
  end;

  DecodeDate(DTP1.datetime, ChonNam, ChonThang, ChonNgay);

  // Tính s? ngày th?c t? c?a tháng du?c ch?n d? ch?y d?y d? không sót ngày nào
  if ChonThang in [1, 3, 5, 7, 8, 10, 12] then DaysInMonth := 31
  else if ChonThang in [4, 6, 9, 11] then DaysInMonth := 30
  else if ((ChonNam mod 4 = 0) and (ChonNam mod 100 <> 0)) or (ChonNam mod 400 = 0) then DaysInMonth := 29
  else DaysInMonth := 28;

  try
    ExcelApp := CreateOleObject('Excel.Application');
  except
    ShowMessage('May tinh chua cai dat Microsoft Excel!');
    Exit;
  end;

  WorkBook := ExcelApp.Workbooks.Add;
  Sheet := WorkBook.ActiveSheet;
  ExcelApp.Visible := True;

  // 1. TIÊU Ð? CHÍNH (Merge r?ng ra toàn b? s? ngày trong tháng + 1 c?t TOTAL)
  Sheet.Cells[1, 1] := 'BAO BIEU KEO CHET GCDL' + #10 + '¼o½¦ÃÄ¤ô²Î­pªí(²Õ©³)';
  Sheet.Range['A1', Sheet.Cells[1, DaysInMonth + 2]].Merge; 
  Sheet.Range['A1'].RowHeight := 40;
  Sheet.Range['A1'].Font.Bold := True;
  Sheet.Range['A1'].Font.Size := 14;
  Sheet.Range['A1'].HorizontalAlignment := -4108;
  Sheet.Range['A1'].VerticalAlignment := -4108;

  // 2. HEADER C?T GIAO NHAU (A2)
  Sheet.Cells[2, 1] := 'NGAY THANG'+#10+'¤é´Á';
  Sheet.Cells[2, 1].Font.Bold := True;
  Sheet.Cells[2, 1].Font.Size := 10;
  Sheet.Cells[2, 1].HorizontalAlignment := -4108;
  Sheet.Cells[2, 1].VerticalAlignment := -4108;
  Sheet.Cells[2, 1].Borders.LineStyle := 1;
  Sheet.Range['A2'].RowHeight := 25;

  // 3. HEADER CÁC C?T NGÀY: Ch?y c? d?nh t? ngày 1 d?n h?t tháng (DaysInMonth)
  for i := 1 to DaysInMonth do
  begin
    TieuDeNgay := IntToStr(ChonThang) + '/' + IntToStr(i);
    Sheet.Cells[2, i + 1] := '''' + TieuDeNgay; // Thêm d?u nháy don d? gi? dúng d?ng chu?i x/x
    Sheet.Cells[2, i + 1].Font.Bold := True;
    Sheet.Cells[2, i + 1].HorizontalAlignment := -4108;
    Sheet.Cells[2, i + 1].Borders.LineStyle := 1;
  end;

  // Ði?n c?t TOTAL ? cu?i cùng dòng ngày
  ColIndex := DaysInMonth + 2;
  Sheet.Cells[2, ColIndex] := 'TOTAL';
  Sheet.Cells[2, ColIndex].Font.Bold := True;
  Sheet.Cells[2, ColIndex].HorizontalAlignment := -4108;
  Sheet.Cells[2, ColIndex].Borders.LineStyle := 1;


  // ==========================================================================
  // 4. DÒNG 3: DANH M?C "KEO CH?T" (T?NG H?P THEO T?NG NGÀY TRONG THÁNG)
  // ==========================================================================
  Sheet.Cells[3, 1] := 'KEO CHET' + #10 + ' ½¦¤ô¤z';
  Sheet.Cells[3, 1].Font.Bold := True;
  Sheet.Cells[3, 1].Font.Size := 10;
  Sheet.Cells[3, 1].Borders.LineStyle := 1;
  Sheet.Cells[3, 1].WrapText := True;
  Sheet.Cells[3, 1].HorizontalAlignment := -4108;
  Sheet.Range['A3'].RowHeight := 35;

  for i := 1 to DaysInMonth do
  begin
    TongNgay := 0;
    
    // Ki?m tra xem trong Query4 th?c t? có c?t ngày này không
    if Query4.FindField(IntToStr(i)) <> nil then
    begin
      Query4.First;
      while not Query4.Eof do
      begin
        if Query4.Fields[0].AsString <> 'TOTAL' then
        begin
          TongNgay := TongNgay + Query4.FieldByName(IntToStr(i)).AsFloat;
        end;
        Query4.Next;
      end;
    end;
    
    // Gán d? li?u (n?u b?ng 0 ho?c không có trong d? li?u thì d? tr?ng ô nhung v?n k? khung)
    if TongNgay = 0 then 
      Sheet.Cells[3, i + 1] := ''
    else 
    begin
      Sheet.Cells[3, i + 1] := TongNgay;
     { if TongNgay >= 1.0 then
        Sheet.Cells[3, i + 1].Font.Color := clRed; }
    end;

    Sheet.Cells[3, i + 1].Borders.LineStyle := 1;
    Sheet.Cells[3, i + 1].Font.Bold := True;
  end;

  // Ð?t công th?c SUM c?a Excel ? cu?i dòng 3
  CName := GetExcelColName(ColIndex - 1);
  Sheet.Cells[3, ColIndex] := '=SUM(B3:' + CName + '3)';
  Sheet.Cells[3, ColIndex].Font.Bold := True;
  Sheet.Cells[3, ColIndex].Borders.LineStyle := 1;


  // ==========================================================================
  // 5. DÒNG 4: DANH M?C "NUOC XU LI PHE" (K? KHUNG Ð? TR?NG)
  // ==========================================================================
  Sheet.Cells[4, 1] := 'NUOC XU LI' + #10 + '   PHE' + #10 + '³B²z¾¯³ø¼o';
  Sheet.Cells[4, 1].Font.Bold := True;
  Sheet.Cells[4, 1].Font.Size := 10;
  Sheet.Cells[4, 1].Borders.LineStyle := 1;
  Sheet.Cells[4, 1].WrapText := True;
  Sheet.Cells[4, 1].HorizontalAlignment := -4108;
  Sheet.Range['A4'].RowHeight := 45;

  for i := 2 to ColIndex do
  begin
    Sheet.Cells[4, i] := '';
    Sheet.Cells[4, i].Borders.LineStyle := 1;
  end;


  // ==========================================================================
  // 6. DÒNG 5: DANH M?C "NUOC VE SINH BINH, CO" (K? KHUNG Ð? TR?NG)
  // ==========================================================================
  Sheet.Cells[5, 1] := 'NUOC VE' + #10 + '   SINH' + #10 + 'BINH, CO' + #10 + ' ²MÏ¡¾¯²~,À¿';
  Sheet.Cells[5, 1].Font.Bold := True;
  Sheet.Cells[5, 1].Font.Size := 10;
  Sheet.Cells[5, 1].Borders.LineStyle := 1;
  Sheet.Cells[5, 1].WrapText := True;
  Sheet.Cells[5, 1].HorizontalAlignment := -4108;
  Sheet.Range['A5'].RowHeight := 55;

  for i := 2 to ColIndex do
  begin
    Sheet.Cells[5, i] := '';
    Sheet.Cells[5, i].Borders.LineStyle := 1;
  end;

  // Ð?nh d?ng l?i d? r?ng các c?t ngày nh? g?n d?u nhau
  Sheet.Columns['A'].ColumnWidth := 16;
  for i := 2 to ColIndex - 1 do
    Sheet.Columns[GetExcelColName(i)].ColumnWidth := 7;
    
  Sheet.Columns[GetExcelColName(ColIndex)].ColumnWidth := 10;

  ShowMessage('Xuat Excel bieu mau day du hoan thanh!');
end;
end.
