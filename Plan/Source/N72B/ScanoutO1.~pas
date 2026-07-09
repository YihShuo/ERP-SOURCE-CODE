unit ScanoutO1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DB, DBTables, GridsEh, DBGridEh, StdCtrls, ExtCtrls, Menus,comobj;

type
  TScanoutO = class(TForm)
    Panel3: TPanel;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    Panel1: TPanel;
    Edit1: TEdit;
    Button2: TButton;
    Edit3: TEdit;
    Button4: TButton;
    Edit2: TEdit;
    Edit4: TEdit;
    DBGrid1: TDBGridEh;
    DBGridEh1: TDBGridEh;
    DepNo: TQuery;
    DS1: TDataSource;
    Qtemp: TQuery;
    ScanData: TQuery;
    Qtemp1: TQuery;
    PopupMenu1: TPopupMenu;
    Modify: TMenuItem;
    Save: TMenuItem;
    Cancel: TMenuItem;
    UpScan: TUpdateSQL;
    Button1: TButton;
    CB1: TCheckBox;
    Button3: TButton;
    ScanDataDDBH: TStringField;
    ScanDataXieMing: TStringField;
    ScanDataXXCC: TStringField;
    ScanDataCodebar: TStringField;
    ScanDataMa_Ke: TStringField;
    ScanDataQtyIn: TIntegerField;
    ScanDataQtyOut: TIntegerField;
    ScanDataTonKho: TIntegerField;
    procedure FormDestroy(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure Button4Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure Edit1KeyPress(Sender: TObject; var Key: Char);
    procedure CancelClick(Sender: TObject);
    procedure ModifyClick(Sender: TObject);
    procedure SaveClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure Button3Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  ScanoutO: TScanoutO;

implementation
 uses main1, DepID1;
{$R *.dfm}

procedure TScanoutO.FormDestroy(Sender: TObject);
begin
   ScanoutO:=nil;
end;

procedure TScanoutO.FormClose(Sender: TObject; var Action: TCloseAction);
begin
 action:=cafree;
end;

procedure TScanoutO.Button4Click(Sender: TObject);
begin
  DepID:=TDepID.Create(self);
  DepID.ShowModal();
  DepID.Free;
end;

procedure TScanoutO.Button2Click(Sender: TObject);
var
  sWhere, sSqlMain: string;
begin
  // 1. Kiem tra dieu kien loc co ban
  if (not cb1.Checked) and (Trim(edit3.Text) = '') then
  begin
    ShowMessage('Don hang khong duoc de trong!');
    exit;
  end;

  // 2. Xay dung chuoi SQL truy van ton kho (IN - OUT)
  // Chung ta dung sub-query de tinh tong theo tung Codebar va Ma_Ke truoc
  sSqlMain := 
    'SELECT c.DDBH, d.XieMing, c.XXCC, a.Codebar, a.Ma_Ke, ' +
    'SUM(CASE WHEN a.Status = ''IN'' THEN a.Qty ELSE 0 END) AS QtyIn, ' +
    'SUM(CASE WHEN a.Status = ''OUT'' THEN a.Qty ELSE 0 END) AS QtyOut, ' +
    'SUM(CASE WHEN a.Status = ''IN'' THEN a.Qty ELSE -a.Qty END) AS TonKho ' +
    'FROM SMZL_MAKE A WITH (NOLOCK) ' + // Ch?ng Deadlock
    'LEFT JOIN smddss C WITH (NOLOCK) ON a.CODEBAR = c.CODEBAR ' +
    'LEFT JOIN smdd D WITH (NOLOCK) ON c.DDBH = d.DDBH AND c.GXLB = d.GXLB ' +
    'WHERE c.okCTS > 0 AND c.GXLB = ''O'' ';

  // 3. Them cac dieu kien loc linh hoat
  sWhere := '';
  if not cb1.Checked then
    sWhere := sWhere + 'AND c.DDBH LIKE ' + QuotedStr('%' + Trim(Edit3.Text) + '%') + ' ';
  
  if Trim(Edit4.Text) <> '' then
    sWhere := sWhere + 'AND a.Ma_Ke LIKE ' + QuotedStr('%' + Trim(Edit4.Text) + '%') + ' ';

  with ScanData do
  begin
    Active := False;
    SQL.Clear;
    SQL.Add(sSqlMain);
    SQL.Add(sWhere);

    // Gom nhom theo cac thong tin hien thi
    SQL.Add('GROUP BY c.DDBH, d.XieMing, c.XXCC, a.Codebar, a.Ma_Ke ');

    // Neu Checkbox duoc chon, chi hien thi nhung ma con ton kho
    if cb1.Checked then
      SQL.Add('HAVING SUM(CASE WHEN a.Status = ''IN'' THEN a.Qty ELSE -a.Qty END) > 0 ');

    SQL.Add('ORDER BY c.DDBH, c.XXCC, a.Ma_Ke');

    try
      Active := True;
    except
      on E: Exception do
        ShowMessage('Loi load du lieu ton kho: ' + E.Message);
    end;
  end;
end;

procedure TScanoutO.Edit1KeyPress(Sender: TObject; var Key: Char);
begin
  if Key = #13 then // Ki?m tra khi nh?n Enter
  begin
    // 1. Ki?m tra d? li?u d?u vào
    if (Trim(Edit1.Text) = '') or (Trim(Edit4.Text) = '') then
    begin
      ShowMessage('Vui lòng nh?p Mã v?ch và ch?n Mã k?!');
      Exit;
    end;

    with Qtemp do
    begin
      Close;
      SQL.Clear;
      
      // --- PH?N SQL: X? LÝ L?I FLOAT (Msg 2748) ---
      // Khai báo thêm bi?n chu?i d? ch?a giá tr? t?n kho khi báo l?i
      SQL.Add('DECLARE @DonViQty FLOAT, @TonKhoHienTai FLOAT, @DepNO VARCHAR(50);');
      SQL.Add('DECLARE @TonKhoStr VARCHAR(20);'); 

      // L?y s? lu?ng m?i don v? (Qty) t? smddss
      SQL.Add('SELECT @DonViQty = Qty FROM smddss WITH (NOLOCK) WHERE codebar = ' + QuotedStr(Edit1.Text) + ';');

      // Tính t?n kho th?c t? trên K? này (IN - OUT)
      SQL.Add('SELECT @TonKhoHienTai = ISNULL(SUM(CASE WHEN Status = ''IN'' THEN Qty ELSE -Qty END), 0), ');
      SQL.Add('       @DepNO = MAX(DepNO) '); 
      SQL.Add('FROM smzl_make WITH (NOLOCK) ');
      SQL.Add('WHERE codebar = ' + QuotedStr(Edit1.Text) + ' AND ma_ke = ' + QuotedStr(Edit4.Text) + ';');

      // Ki?m tra mã v?ch t?n t?i
      SQL.Add('IF @DonViQty IS NULL ');
      SQL.Add('BEGIN RAISERROR(''Ma vach khong ton tai trong smddss!'', 16, 1); RETURN; END;');

      // Ki?m tra d? hàng d? xu?t và X? LÝ L?I FLOAT
      SQL.Add('IF @TonKhoHienTai < @DonViQty ');
      SQL.Add('BEGIN ');
      SQL.Add('    SET @TonKhoStr = CAST(@TonKhoHienTai AS VARCHAR(20)); '); // Chuy?n Float sang Varchar
      SQL.Add('    RAISERROR(''Loi: Ke nay khong du hang de xuat! (Ton hien tai: %s)'', 16, 1, @TonKhoStr); '); // Dùng %s
      SQL.Add('    RETURN; ');
      SQL.Add('END;');

      // INSERT dòng nh?t ký OUT
      SQL.Add('INSERT INTO smzl_make (codebar, ma_ke, Qty, Status, userid, userdate, DepNO) ');
      SQL.Add('VALUES (' + QuotedStr(Edit1.Text) + ', ' + 
                           QuotedStr(Edit4.Text) + ', @DonViQty, ''OUT'', ' + 
                           QuotedStr(Main.Edit1.Text) + ', GETDATE(), @DepNO);');

      try
        ExecSQL;
        
        // Xóa ô nh?p sau khi thành công
        Edit1.Text := '';
        Edit1.SetFocus;
        // Load l?i d? li?u Grid
        Button2Click(Self);
        
      except
        on E: Exception do
        begin
          ShowMessage(E.Message);
          Edit1.SelectAll;
          Edit1.SetFocus;
        end;
      end;
    end;
    Key := #0;
  end;
end;



procedure TScanoutO.CancelClick(Sender: TObject);
begin
  with ScanData do
  begin
    active:=false;
    requestlive:=false;
    cachedupdates:=false;
    active:=true;
  end;
  Save.Enabled:=false;
  Cancel.Enabled:=false;
end;

procedure TScanoutO.ModifyClick(Sender: TObject);
begin
    with ScanData do
    begin
      requestlive:=true;
      cachedupdates:=true;
      edit;
    end;
    Save.Enabled:=true;
    Cancel.Enabled:=true;
end;

procedure TScanoutO.SaveClick(Sender: TObject);
var i:integer;
begin
  ScanData.First;
  for i:=0 to ScanData.RecordCount-1 do
  begin
    case ScanData.updatestatus of
      usmodified:
      begin
        ScanData.Edit;
        UpScan.apply(ukmodify);
      end;
    end;
    ScanData.Next;
  end;
  ScanData.active:=false;
  ScanData.cachedupdates:=false;
  ScanData.requestlive:=false;
  ScanData.active:=true;
  Save.Enabled:=false;
  Cancel.Enabled:=false;
end;

procedure TScanoutO.FormCreate(Sender: TObject);
begin
  if ((main.edit1.Text ='316118') or (main.edit1.Text='316503')) then
  begin
    Modify.Enabled:=true;
  end;
end;

procedure TScanoutO.Button1Click(Sender: TObject);
begin
edit2.Text :='';
edit4.Text :='';
end;

procedure TScanoutO.Button3Click(Sender: TObject);
var   a:string;
      eclApp,WorkBook:olevariant;
 //     xlsFileName:string;
      i,j:integer;
 begin
  if  ScanData.active  then
    begin
    try
      eclApp:=CreateOleObject('Excel.Application');
      WorkBook:=CreateOleObject('Excel.Sheet');
    except
      Application.MessageBox('No Microsoft   Excel','Microsoft   Excel',MB_OK+MB_ICONWarning);
      Exit;
    end;
    try
        WorkBook:=eclApp.workbooks.Add;
        for   i:=0   to   ScanData.fieldcount-1   do
          begin
              eclApp.Cells(1,i+1):=ScanData.fields[i].FieldName;
          end;

        ScanData.First;
        j:=2;
        while   not   ScanData.Eof   do
          begin
            for   i:=0   to  ScanData.fieldcount-1  do
            begin
              eclApp.Cells(j,i+1):=ScanData.Fields[i].Value;
            end;
          ScanData.Next;
          inc(j);
          end;
       eclapp.columns.autofit;
       showmessage('Succeed');
       eclApp.Visible:=True;

      except
        on   F:Exception   do
          showmessage(F.Message);
      end;
    end;


end;

end.
