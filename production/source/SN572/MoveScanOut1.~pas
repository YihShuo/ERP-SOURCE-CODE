unit MoveScanOut1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DB, DBTables, GridsEh, DBGridEh, StdCtrls, ExtCtrls, OleCtrls,
  MSCommLib_TLB;

type
  TMoveScanOut = class(TForm)
    Panel1: TPanel;
    Label1: TLabel;
    Edit1: TEdit;
    Button1: TButton;
    Edit2: TEdit;
    DBGridEh1: TDBGridEh;
    temp: TQuery;
    DS1: TDataSource;
    Query1: TQuery;
    Query1CARTONBAR: TStringField;
    Query1DDBH: TStringField;
    Query1ScanIn: TIntegerField;
    Query1USERIDIN: TStringField;
    Query1USERDATEIN: TDateTimeField;
    Query1ScanOut: TIntegerField;
    Query1USERIDOUT: TStringField;
    Query1USERDATEOUT: TDateTimeField;
    MSComm1: TMSComm;
    Label2: TLabel;
    KL: TLabel;
    Query1WeightIN: TFloatField;
    Query1WeightOut: TFloatField;
    procedure FormDestroy(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure Button1Click(Sender: TObject);
    procedure Edit2KeyPress(Sender: TObject; var Key: Char);
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  MoveScanOut: TMoveScanOut;

implementation

uses main1;

{$R *.dfm}

procedure TMoveScanOut.FormDestroy(Sender: TObject);
begin
   MoveScanOut:=nil;
end;

procedure TMoveScanOut.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
    Action := caFree;
end;

procedure TMoveScanOut.Button1Click(Sender: TObject);
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
      SQL.Add('SELECT * FROM YWCP_Move WHERE DDBH = ' + QuotedStr(Edit1.Text));
      Open; // Mo tap du lieu de hien thi len luoi (Grid)
    end;
end;

procedure TMoveScanOut.Edit2KeyPress(Sender: TObject; var Key: Char);
var
  du_lieu_raw: OleVariant;
  chuoi_kq: string;
  khoi_luong_out: Double;
  khoi_luong_in: Double;
  sl: TStringList;
  i: Integer;
  v_ma_vach: string;
begin
  if Key = #13 then
  begin
    v_ma_vach := Trim(Edit2.Text);
    if v_ma_vach = '' then Exit;

    if Trim(Edit1.Text) = '' then
    begin
      ShowMessage('Vui long nhap don hang truoc khi Scan Out');
      Edit2.Clear;
      Edit1.SetFocus;
      Exit;
    end;

    // --- 1. LAY TRONG LUONG TU CAN (OUT) ---
    khoi_luong_out := 0;
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
              khoi_luong_out := StrToFloatDef(Trim(Copy(sl[i], 10, 7)), 0);
              Break;
            end;
          end;
        finally sl.Free; end;
      end;
      KL.Caption := FloatToStr(khoi_luong_out);
    end;

    // --- 2. LAY TRONG LUONG LUC NHAP (IN) TU QTEMP ---
    khoi_luong_in := 0;
    with temp do
    begin
      Close;
      SQL.Clear;
      SQL.Add('SELECT WeightIN FROM YWCP_Move ');
      SQL.Add('WHERE CARTONBAR = ' + QuotedStr(v_ma_vach) + ' AND ScanIn = 1');
      Open;
      if not IsEmpty then
        khoi_luong_in := FieldByName('WeightIN').AsFloat;
    end;

    // --- 3. KIEM TRA SAI SO CO DINH 0.2 KG ---
    if khoi_luong_in > 0 then
    begin
      // Neu chenh lech (tuyet doi) lon hon 0.2 thi dung lai
      if Abs(khoi_luong_out - khoi_luong_in) > 0.2 then
      begin
        ShowMessage('Loi: Trong luong lech qua 0.2 kg!' + #13#10 +
                    'Nhap (WeightIN): ' + FloatToStr(khoi_luong_in) + ' kg' + #13#10 +
                    'Xuat (WeightOut): ' + FloatToStr(khoi_luong_out) + ' kg' + #13#10 +
                    'Chenh lech: ' + FloatToStr(Abs(khoi_luong_out - khoi_luong_in)) + ' kg');
        Edit2.SetFocus;
        Exit; 
      end;
    end
    else
    begin
      ShowMessage('Ma vach nay chua co du lieu trong luong nhap kho!');
      Exit;
    end;

    // --- 4. CAP NHAT DATABASE (DUNG QUERY1) ---
    with Query1 do
    begin
      Close;
      SQL.Clear;
      SQL.Add('UPDATE YWCP_Move ');
      SQL.Add('SET ScanOut = 1, ');
      SQL.Add('    USERIDOUT = ' + QuotedStr(Main.Edit1.Text) + ', ');
      SQL.Add('    USERDATEOUT = GETDATE(), ');
      SQL.Add('    WeightOut = ' + FloatToStr(khoi_luong_out)); 
      SQL.Add('WHERE CARTONBAR = ' + QuotedStr(v_ma_vach));
      SQL.Add('  AND DDBH = ' + QuotedStr(Edit1.Text));
      SQL.Add('  AND ScanIn = 1 AND ScanOut IS NULL ');
      ExecSQL;

      if RowsAffected = 0 then
        ShowMessage('Ma vach chua nhap kho hoac da Scan Out!');

      Edit2.Clear;
      Edit2.SetFocus;

      // Load lai danh sach hien thi
      SQL.Clear;
      SQL.Add('SELECT * FROM YWCP_Move WHERE DDBH = ' + QuotedStr(Edit1.Text));
      Open;
    end;
    Key := #0;
  end;
end;
procedure TMoveScanOut.FormCreate(Sender: TObject);
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
