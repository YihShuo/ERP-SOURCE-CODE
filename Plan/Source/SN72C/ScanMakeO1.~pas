unit ScanMakeO1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DB, DBTables, StdCtrls, ExtCtrls, GridsEh, DBGridEh;

type
  TScanMakeO = class(TForm)
    DBGridEh1: TDBGridEh;
    Panel1: TPanel;
    Label4: TLabel;
    Label5: TLabel;
    Edit3: TEdit;
    Edit4: TEdit;
    Button1: TButton;
    Edit5: TEdit;
    Qtemp3: TQuery;
    Query1: TQuery;
    Qtemp: TQuery;
    ScanData: TQuery;
    DS1: TDataSource;
    Label1: TLabel;
    Edit1: TEdit;
    Button2: TButton;
    Button3: TButton;
    ScanDataID: TFloatField;
    ScanDataCODEBAR: TStringField;
    ScanDataMA_KE: TStringField;
    ScanDataQty: TIntegerField;
    ScanDataStatus: TStringField;
    ScanDataUSERID: TStringField;
    ScanDataUSERDATE: TDateTimeField;
    ScanDataDEPNO: TStringField;
    ScanDataYSBH: TStringField;
    ScanDataXieMing: TStringField;
    ScanDataxxcc: TStringField;
    Qlimit: TQuery;
    ScanDataDDBH: TStringField;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormDestroy(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure Edit3KeyPress(Sender: TObject; var Key: Char);
    procedure Button2Click(Sender: TObject);
    procedure Button3Click(Sender: TObject);
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
    SL_Limit: TStringList;
  public
    { Public declarations }
  end;

var
  ScanMakeO: TScanMakeO;

implementation

uses MaKe1, main1;

{$R *.dfm}

procedure TScanMakeO.FormClose(Sender: TObject; var Action: TCloseAction);
begin
     action:=cafree;
end;

procedure TScanMakeO.FormDestroy(Sender: TObject);
begin
   // 1. Giai phong bien SL_Limit ra khoi RAM
  if Assigned(SL_Limit) then
  begin
    SL_Limit.Free;
    SL_Limit := nil;
  end;

  // 2. Gan nil cho Form nhu ban dang co
  ScanMakeO := nil;
end;

procedure TScanMakeO.Button1Click(Sender: TObject);
begin
  MAKE:=TMAKE.Create(self);
  MAKE.ShowModal();
  MAKE.Free;
end;

procedure TScanMakeO.Edit3KeyPress(Sender: TObject; var Key: Char);
var
  sKhuVuc: string;
begin
  if Key = #13 then 
  begin
    if (Trim(Edit3.Text) = '') or (Trim(Edit4.Text) = '') or (Trim(Edit1.Text) = '') then Exit;

    // Lay ky tu khu vuc (E0516 -> E)
    sKhuVuc := UpperCase(Copy(Trim(Edit4.Text), 1, 1));

    with ScanData do
    begin
      Close;
      SQL.Clear;
      
      // 1. KHAI BAO BIEN SQL
      SQL.Add('DECLARE @DonViQty FLOAT, @MaxLimitCodebar FLOAT, @LimitKeDB FLOAT; ');
      SQL.Add('DECLARE @TotalHienTai FLOAT, @DepNO VARCHAR(50); ');
      SQL.Add('DECLARE @MaxStr VARCHAR(20), @LimitStr VARCHAR(20), @CurStr VARCHAR(20); ');

      // 2. LAY CAC THONG SO GOC (Dung NOLOCK de nhanh)
      SQL.Add('SELECT @LimitKeDB = ISNULL(Limit, 0) FROM MAKE WITH (NOLOCK) WHERE MAKE = ' + QuotedStr(sKhuVuc) + ' AND DONVI = ''SQ''; ');
      SQL.Add('SELECT @DonViQty = ISNULL(Qty, 0), @MaxLimitCodebar = (ISNULL(Qty, 0) * ISNULL(okCTS, 0)) FROM smddss WITH (NOLOCK) WHERE codebar = ' + QuotedStr(Edit3.Text) + '; ');
      SQL.Add('SELECT TOP 1 @DepNO = DepNO FROM smzl WITH (NOLOCK) WHERE codebar = ' + QuotedStr(Edit3.Text) + ' ORDER BY ScanDate DESC; ');

      // 3. KIEM TRA MA VACH
      SQL.Add('IF @DonViQty IS NULL OR @DonViQty = 0 BEGIN RAISERROR(''Loi: Ma vach khong hop le!'', 16, 1); RETURN; END; ');

      // 4. LOGIC CHAN VUOT MA VACH (Qty * okCTS)
      SQL.Add('SELECT @TotalHienTai = ISNULL(SUM(CASE WHEN Status = ''IN'' THEN Qty ELSE -Qty END), 0) FROM smzl_make WITH (NOLOCK) WHERE codebar = ' + QuotedStr(Edit3.Text) + '; ');
      SQL.Add('IF (@TotalHienTai + @DonViQty) > @MaxLimitCodebar ');
      SQL.Add('BEGIN SET @MaxStr = CAST(@MaxLimitCodebar AS VARCHAR(20)); RAISERROR(''Ma vach vuot gioi han quet (%s)!'', 16, 1, @MaxStr); RETURN; END; ');

      // 5. LOGIC QUAN TRONG: CHAN FULL KE
      // Dung phep tinh SUM moi nhat va chan ngay neu (Hien tai + Sap quet) > Limit
      SQL.Add('SELECT @TotalHienTai = ISNULL(SUM(CASE WHEN Status = ''IN'' THEN Qty ELSE -Qty END), 0) FROM smzl_make WITH (NOLOCK) WHERE ma_ke LIKE ' + QuotedStr(sKhuVuc + '%') + '; ');
      
      SQL.Add('IF (@TotalHienTai + @DonViQty) > @LimitKeDB ');
      SQL.Add('BEGIN ');
      SQL.Add('    SET @LimitStr = CAST(@LimitKeDB AS VARCHAR(20)); ');
      SQL.Add('    SET @CurStr = CAST(@TotalHienTai AS VARCHAR(20)); ');
      // Hien thi loi chi tiet de ban kiem tra con so
      SQL.Add('    RAISERROR(''Khu vuc %s FULL! (Dang co: %s, Toi da: %s). Khong cho quet tiep!'', 16, 1, ' + QuotedStr(sKhuVuc) + ', @CurStr, @LimitStr); ');
      SQL.Add('    RETURN; ');
      SQL.Add('END; ');

      // 6. INSERT (Chi thuc hien khi vuot qua tat ca cac IF o tren)
      SQL.Add('INSERT INTO smzl_make (codebar, ma_ke, Qty, Status, userid, userdate, DepNO) ');
      SQL.Add('VALUES (' + QuotedStr(Edit3.Text) + ', ' + QuotedStr(Edit4.Text) + ', @DonViQty, ''IN'', ' + 
                           QuotedStr(main1.Main.Edit1.Text) + ', GETDATE(), @DepNO); ');

      try
        ExecSQL;
        Edit3.Clear; Edit3.SetFocus;
        Button2Click(Self); // Refresh lai grid
      except
        on E: Exception do
        begin
          ShowMessage(E.Message); // Hien thi loi tu RAISERROR
          Edit3.SelectAll;
        end;
      end;
    end;
    Key := #0;
  end;
end;

procedure TScanMakeO.Button2Click(Sender: TObject);
begin
  with ScanData do
  begin
    Close;
    SQL.Clear;
    // 1. Phan SQL co ban (Join cac bang)
    SQL.Add('select a.*, smdd.YSBH, smdd.XieMing,b.xxcc,b.ddbh ');
    SQL.Add('from SMZL_MAKE A ');
    SQL.Add('left join SMDDSS B on A.CODEBAR = b.CODEBAR ');
    SQL.Add('left join smdd on smdd.DDBH = b.DDBH and smdd.GXLB = b.GXLB ');
    SQL.Add('left join MAKE on MAKE.make = a.MA_KE and make.DONVI = ''SQ'' ');
    
    // 2. Bat dau phan dieu kien loc linh hoat
    SQL.Add('where 1=1 and status=''IN'' '); // Dung 1=1 de cac dieu kien sau deu co the dung 'and'
    // Kiem tra Ma Ke (Edit4): Neu khac rong thi moi them vao SQL
    if Trim(Edit4.Text) <> '' then
      SQL.Add('  and a.MA_KE = ' + QuotedStr(Edit4.Text));
    // Kiem tra YSBH (Edit1): Neu khac rong thi moi them vao SQL
    if Trim(Edit1.Text) <> '' then
      SQL.Add('  and smdd.YSBH = ' + QuotedStr(Edit1.Text));

    // 3. Sap xep du lieu
    SQL.Add('order by a.CODEBAR desc');

    try
      Open;
    except
      on E: Exception do
        ShowMessage('Loi load du lieu: ' + E.Message);
    end;
  end;
end;

procedure TScanMakeO.Button3Click(Sender: TObject);
begin
edit5.Text :='';
edit4.Text :='';
end;

procedure TScanMakeO.FormShow(Sender: TObject);
begin
  if not Assigned(SL_Limit) then
    SL_Limit := TStringList.Create;
  
  SL_Limit.Clear;

  with Qlimit do
  begin
    Close;
    SQL.Text := 'SELECT MAKE, Limit FROM MAKE WITH (NOLOCK) WHERE DONVI = ''SQ'' AND Limit IS NOT NULL';
    try
      Open;
      while not Eof do
      begin
        // Luu dang: A=100, B=200
        SL_Limit.Values[FieldByName('MAKE').AsString] := FieldByName('Limit').AsString;
        Next;
      end;
      Close;
    except
      on E: Exception do ShowMessage('Loi nap gioi han: ' + E.Message);
    end;
  end;
  Edit3.SetFocus;
end;

end.
