unit KTPScanMove1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, GridsEh, DBGridEh, StdCtrls, ExtCtrls, DB, DBTables, Buttons,
  Menus, OleCtrls, MSCommLib_TLB,StrUtils, Grids, DBGrids, IniFiles;

type
  TKTPScanMove = class(TForm)
    Panel1: TPanel;
    Label1: TLabel;
    Edit1: TEdit;
    Button1: TButton;
    DBGridEh1: TDBGridEh;
    temp: TQuery;
    Query1: TQuery;
    DS1: TDataSource;
    Edit2: TEdit;
    Query1CARTONBAR: TStringField;
    Query1DDBH: TStringField;
    Query1ScanIn: TIntegerField;
    Query1USERIDIN: TStringField;
    Query1USERDATEIN: TDateTimeField;
    Query1ScanOut: TIntegerField;
    Query1USERIDOUT: TStringField;
    Query1USERDATEOUT: TDateTimeField;
    MSComm1: TMSComm;
    KL: TLabel;
    Query1WeightIN: TFloatField;
    Query1WeightOut: TFloatField;
    Label2: TLabel;
    procedure Button1Click(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormDestroy(Sender: TObject);
    procedure Edit2KeyPress(Sender: TObject; var Key: Char);
    procedure Button2Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  KTPScanMove: TKTPScanMove;

implementation

uses main1;

{$R *.dfm}

procedure TKTPScanMove.Button1Click(Sender: TObject);
begin
    if Trim(Edit1.Text) = '' then
      begin
      ShowMessage('Vui long nhap don hang');
      Edit1.SetFocus; // Dua con tro chuot quay lai o nhap lieu
      Exit;           // Thoat khoi thu tuc, khong thuc hien cac lenh phia duoi
      end;
    with query1 do
      begin
      Close; // Dong query truoc khi thiet lap cau lenh moi
      SQL.Clear;

      // 1. Thiet lap cau lenh Insert kem dieu kien kiem tra ton tai (NOT EXISTS)
      SQL.Add('INSERT INTO YWCP_Move ');
      SQL.Add('SELECT t1.CARTONBAR, t1.DDBH, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL');
      SQL.Add('FROM YWCP t1');
      SQL.Add('WHERE t1.DDBH = ' + QuotedStr(Edit1.Text)); // Loc theo ma don hang tu Edit1
      SQL.Add('AND t1.sb = 1'); // Chi lay nhung dong co sb = 1
      SQL.Add('AND NOT EXISTS ('); // Chi insert khi CARTONBAR chua co trong YWCP_Move
      SQL.Add('    SELECT 1 FROM YWCP_Move t2 ');
      SQL.Add('    WHERE t2.CARTONBAR = t1.CARTONBAR');
      SQL.Add(')');

      ExecSQL; // Thuc thi lenh ghi du lieu vao database

      // 2. Xoa cau lenh cu de thuc hien cau lenh truy van hien thi
      SQL.Clear;
      SQL.Add('SELECT * FROM YWCP_Move WHERE DDBH = ' + QuotedStr(Edit1.Text));

      Open; // Mo tap du lieu de hien thi len luoi (Grid)
    end;
end;

procedure TKTPScanMove.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  // 1. Thiet lap hanh dong giai phong Form khi dong
  // cafreedat se giai phong bo nho cua Form ngay sau khi dong no
  Action := caFree;
end;

procedure TKTPScanMove.FormDestroy(Sender: TObject);
begin
  KTPScanMove := nil;
end;


procedure TKTPScanMove.Edit2KeyPress(Sender: TObject; var Key: Char);
var
  du_lieu_raw: OleVariant;
  chuoi_kq: string;
  khoi_luong: Double;
  sl: TStringList;
  i: Integer;
begin
  if Key = #13 then
  begin
    if Trim(Edit2.Text) = '' then Exit;
    
    if Trim(Edit1.Text) = '' then
    begin
      ShowMessage('Vui long nhap don hang');
      Edit2.Text := '';
      Edit1.SetFocus;
      Exit;
    end;

    // --- BAT DAU LAY DU LIEU TU CAN ---
    khoi_luong := 0;

    if not MSComm1.PortOpen then
      try
        MSComm1.PortOpen := True;
      except
        ShowMessage('Khong the mo cong COM!');
      end;

    if MSComm1.PortOpen then
    begin
      du_lieu_raw := MSComm1.Input;
      chuoi_kq := string(du_lieu_raw);

      if chuoi_kq <> '' then
      begin
        sl := TStringList.Create;
        try
          sl.Text := chuoi_kq;
          for i := 0 to sl.Count - 1 do
          begin
            if Pos('N.W.', sl[i]) > 0 then
            begin
              khoi_luong := StrToFloatDef(Trim(Copy(sl[i], 10, 7)), 0);
              Break;
            end;
          end;
        finally
          sl.Free;
        end;
      end;
      
      KL.Caption := FloatToStr(khoi_luong);
    end;

    // --- KIEM TRA SO KY TRUOC KHI LUU ---
    if khoi_luong < 1 then
    begin
      ShowMessage('Loi: So ky dang nho hon 1kg (' + FloatToStr(khoi_luong) + 'kg). Vui long kiem tra lai can!');
      // Reset de nguoi dung quet lai neu can
      Edit2.SetFocus; 
      Exit; // Dung moi thao tac, khong chay xuong phan Update SQL phia duoi
    end;

    // --- CAP NHAT VAO DATABASE ---
    with Query1 do
    begin
      Close;
      SQL.Clear;
      SQL.Add('UPDATE YWCP_Move ');
      SQL.Add('SET ScanIn = 1, ');
      SQL.Add('    UserIDIN = ' + QuotedStr(Main.Edit1.Text) + ', ');
      SQL.Add('    UserDateIn = GETDATE(), ');
      SQL.Add('    WeightIN = ' + FloatToStr(khoi_luong)); 
      SQL.Add(' WHERE ScanOut is null and CARTONBAR = ' + QuotedStr(Edit2.Text));

      ExecSQL;

      Edit2.Clear;
      Edit2.SetFocus;

      SQL.Clear;
      SQL.Add('SELECT * FROM YWCP_Move WHERE DDBH = ' + QuotedStr(Edit1.Text));
      Open;
    end;

    Key := #0;
  end;
end;
{procedure TKTPScanMove.Edit2KeyPress(Sender: TObject; var Key: Char);
var
  du_lieu_raw: OleVariant;
  chuoi_kq: string;
  khoi_luong: Double;
  sl: TStringList;
  i: Integer;
begin
  if Key = #13 then
  begin
    if Trim(Edit2.Text) = '' then Exit;
    
    if Trim(Edit1.Text) = '' then
    begin
      ShowMessage('Vui long nhap don hang');
      Edit2.Text := '';
      Edit1.SetFocus;
      Exit;
    end;

    // --- BAT DAU LAY DU LIEU TU CAN ---
    khoi_luong := 0;

    // Mo cong COM neu chua mo (da thiet lap o FormCreate)
    if not MSComm1.PortOpen then
      try
        MSComm1.PortOpen := True;
      except
        ShowMessage('Khong the mo cong COM!');
      end;

    if MSComm1.PortOpen then
    begin
      du_lieu_raw := MSComm1.Input;
      chuoi_kq := string(du_lieu_raw);

      if chuoi_kq <> '' then
      begin
        sl := TStringList.Create;
        try
          sl.Text := chuoi_kq;
          // Tim dong co chu N.W. de lay trong luong tinh
          for i := 0 to sl.Count - 1 do
          begin
            if Pos('N.W.', sl[i]) > 0 then
            begin
              // Cat chuoi tu vi tri 10, lay 7 ky tu nhu hinh anh ban cung cap
              khoi_luong := StrToFloatDef(Trim(Copy(sl[i], 10, 7)), 0);
              Break;
            end;
          end;
        finally
          sl.Free;
        end;
      end;

      // Hien thi so ky ra label KL de kiem tra
      KL.Caption := FloatToStr(khoi_luong);
    end;

    // --- CAP NHAT VAO DATABASE ---
    with Query1 do
    begin
      Close;
      SQL.Clear;
      SQL.Add('UPDATE YWCP_Move ');
      SQL.Add('SET ScanIn = 1, ');
      SQL.Add('    UserIDIN = ' + QuotedStr(Main.Edit1.Text) + ', ');
      SQL.Add('    UserDateIn = GETDATE(), ');
      
      // Cap nhat so ky vao cot WeightIN theo yeu cau cua ban
      SQL.Add('    WeightIN = ' + FloatToStr(khoi_luong)); 
      
      SQL.Add(' WHERE ScanOut is null and CARTONBAR = ' + QuotedStr(Edit2.Text));

      ExecSQL;

      // Reset o nhap lieu de quet ma tiep theo
      Edit2.Clear;
      Edit2.SetFocus;

      // Load lai danh sach hien thi
      SQL.Clear;
      SQL.Add('SELECT * FROM YWCP_Move WHERE DDBH = ' + QuotedStr(Edit1.Text));
      Open;
    end;

    Key := #0; // Tat tieng bip khi bam Enter
  end;
end; }

procedure TKTPScanMove.Button2Click(Sender: TObject);
var
  du_lieu_test: OleVariant;
  chuoi_kq: string;
  sl: TStringList;
  i: Integer;
  dong_nw: string;
  so_kg: string;
begin
  if not MSComm1.PortOpen then
  begin
    ShowMessage('Cong COM dang dong!');
    Exit;
  end;

  du_lieu_test := MSComm1.Input;
  chuoi_kq := string(du_lieu_test);

  if chuoi_kq <> '' then
  begin
    sl := TStringList.Create;
    try
      sl.Text := chuoi_kq;
      
      // Mac dinh khoi luong la 0 neu khong tim thay
      KL.Caption := '0.00';

      // Duyet tung dong de tim dong co chu "N.W."
      for i := 0 to sl.Count - 1 do
      begin
        if Pos('N.W.', sl[i]) > 0 then
        begin
          dong_nw := sl[i]; // Lay duoc dong: "N.W. : +  8.67 kg"
          
          // Lay con so bang cach cat chuoi (vi tri 10, lay 7 ky tu)
          so_kg := Trim(Copy(dong_nw, 10, 7));
          
          // Hien thi ket qua da loc
          KL.Caption := so_kg;
          ShowMessage('Trong luong tinh (N.W): ' + so_kg + ' kg');
          Break; // Da tim thay thi thoat vong lap
        end;
      end;
    finally
      sl.Free;
    end;
  end
  else
    ShowMessage('Khong co du lieu tu can!');
end;
procedure TKTPScanMove.FormCreate(Sender: TObject);
begin
// Thiet lap thong so truoc khi mo
  MSComm1.CommPort := 1; // Thay so 3 bang so COM thuc te cua ban
  MSComm1.Settings := '9600,N,8,1'; 
  MSComm1.InputLen := 0; // Doc het du lieu trong bo dem
  
  try
    if not MSComm1.PortOpen then
    begin
      MSComm1.PortOpen := True;
      // Hien thi len Label KL de biet da ket noi
      KL.Caption := 'COM ' + IntToStr(MSComm1.CommPort) + ' OK';
    end;
  except
    on E: Exception do
      ShowMessage('Khong the mo cong COM khi khoi dong: ' + E.Message);
  end;
end;
end.

