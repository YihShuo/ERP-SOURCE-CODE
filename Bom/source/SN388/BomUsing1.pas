unit BomUsing1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, GridsEh, DBGridEh, StdCtrls, DB, DBTables, Buttons, ExtCtrls, Comobj,
  DBCtrls, ComCtrls;

type
  TBomUsing = class(TForm)
    Panel1: TPanel;
    BB2: TBitBtn;
    BB3: TBitBtn;
    BB4: TBitBtn;
    BB5: TBitBtn;
    BB6: TBitBtn;
    BB7: TBitBtn;
    BB1: TBitBtn;
    bbt6: TBitBtn;
    Button1: TButton;
    PC1: TPageControl;
    TS1: TTabSheet;
    Panel2: TPanel;
    Label5: TLabel;
    BWBH: TEdit;
    Button2: TButton;
    DS1: TDataSource;
    XXZLS: TQuery;
    XXZLSXH: TStringField;
    XXZLSBWBH: TStringField;
    XXZLSBWMC: TStringField;
    XXZLSCLBH: TStringField;
    XXZLSDType: TStringField;
    XXZLSCLMC: TStringField;
    XXZLSCLZW: TStringField;
    XXZLSBWZW: TStringField;
    XXZLSDWBH: TStringField;
    XXZLSLYCC: TStringField;
    XXZLSBZ: TStringField;
    XXZLSBWLB: TStringField;
    XXZLSZSYWJC: TStringField;
    XXZLSLOSS: TFloatField;
    XXZLSCLSL: TFloatField;
    XXZLSCCQQ: TStringField;
    XXZLSCCQZ: TStringField;
    XXZLSCLZMLB: TStringField;
    XXZLSuserdate: TDateTimeField;
    DBGrid1: TDBGridEh;
    UpXXZLS: TUpdateSQL;
    temp: TQuery;
    XXZLSuserid: TStringField;
    Label1: TLabel;
    Edit1: TEdit;
    XXZLSQty: TFloatField;
    XXZLSARTICLE: TStringField;
    XXZLSDIFF: TFloatField;
    XXZLSFormula: TStringField;
    XXZLSVariance: TFloatField;
    XXZLSSize_Goc: TStringField;
    XXZLSCosting_Size: TStringField;
    TabSheet1: TTabSheet;
    Panel3: TPanel;
    Label2: TLabel;
    Label3: TLabel;
    Edit2: TEdit;
    Button3: TButton;
    Edit3: TEdit;
    DBGridEh1: TDBGridEh;
    DS2: TDataSource;
    UpdateSQL1: TUpdateSQL;
    FOB: TQuery;
    FOBCLBH: TStringField;
    FOBZWPM: TStringField;
    FOBDWBH: TStringField;
    FOBUSPrice_Calculated: TFloatField;
    Excel: TButton;
    Label4: TLabel;
    Edit4: TEdit;
    FOBDanhSachMaCon: TStringField;
    FOBYWPM: TStringField;
    procedure FormDestroy(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure Button2Click(Sender: TObject);
    procedure BB4Click(Sender: TObject);
    procedure BB5Click(Sender: TObject);
    procedure DBGrid1GetCellParams(Sender: TObject; Column: TColumnEh;
      AFont: TFont; var Background: TColor; State: TGridDrawState);
    procedure bbt6Click(Sender: TObject);
    procedure Button3Click(Sender: TObject);
    procedure ExcelClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  BomUsing: TBomUsing;

implementation

uses main1, XieXing1;

{$R *.dfm}

function EvalSimple(const Expr: string): Double;
var
  s: string;
  i: Integer;
  num: Double;
  op: Char;

  function ReadNumber: Double;
  var
    start: Integer;
    t: string;
  begin
    while (i <= Length(s)) and (s[i] = ' ') do Inc(i);
    start := i;
    while (i <= Length(s)) and (s[i] in ['0'..'9', '.', ',']) do Inc(i);
    t := Copy(s, start, i - start);
    t := StringReplace(t, ',', '.', [rfReplaceAll]);
    if t = '' then
      raise Exception.Create('Thieu so trong cong thuc');
    Result := StrToFloat(t);
  end;

begin
  s := Trim(Expr);
  if s = '' then
    raise Exception.Create('Cong thuc rong');

  i := 1;
  Result := ReadNumber;

  while i <= Length(s) do
  begin
    while (i <= Length(s)) and (s[i] = ' ') do Inc(i);
    if i > Length(s) then Break;

    op := s[i];
    if not (op in ['+','-','*','/']) then
      raise Exception.Create('Ky tu khong hop le: ' + op);
    Inc(i);

    num := ReadNumber;

    case op of
      '+': Result := Result + num;
      '-': Result := Result - num;
      '*': Result := Result * num;
      '/':
        begin
          if num = 0 then
            raise Exception.Create('Chia cho 0');
          Result := Result / num;
        end;
    end;
  end;
end;

procedure TBomUsing.FormDestroy(Sender: TObject);
begin
  BomUsing := Nil;
end;

procedure TBomUsing.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  action := cafree;
end;

procedure TBomUsing.Button2Click(Sender: TObject);
begin
  if Edit1.text = '' then
  begin
    showmessage('Please input Article');
    abort;
  end;

  with temp do
  begin
    Active := False;
    Close;
    SQL.Clear;
    SQL.Add('Insert into MaterialCBD_BomUsing');
    SQL.Add('SELECT');
    SQL.Add('  CASE');
    SQL.Add('    WHEN CHARINDEX(''-'', XXZL.ARTICLE) > 0');
    SQL.Add('    THEN LEFT(XXZL.ARTICLE, CHARINDEX(''-'', XXZL.ARTICLE) - 1)');
    SQL.Add('    ELSE XXZL.ARTICLE');
    SQL.Add('  END AS ARTICLE,');
    SQL.Add('  x.BWBH,');
    SQL.Add('  ''0'',''0'',');
    SQL.Add('  ''system'',');
    SQL.Add('  MAX(x.USERDATE)');
    SQL.Add('FROM dbo.XXZL');
    SQL.Add('LEFT JOIN XXZLS x ON XXZL.XieXing = x.XieXing');
    SQL.Add('WHERE');
    SQL.Add('  (CASE');
    SQL.Add('     WHEN CHARINDEX(''-'', XXZL.ARTICLE) > 0');
    SQL.Add('     THEN LEFT(XXZL.ARTICLE, CHARINDEX(''-'', XXZL.ARTICLE) - 1)');
    SQL.Add('     ELSE XXZL.ARTICLE');
    SQL.Add('   END) = ''' + Trim(Edit1.Text) + '''');
    SQL.Add('  AND NOT EXISTS (');
    SQL.Add('      SELECT 1');
    SQL.Add('      FROM dbo.MaterialCBD_BomUsing n');
    SQL.Add('      WHERE n.ARTICLE =');
    SQL.Add('        (CASE');
    SQL.Add('           WHEN CHARINDEX(''-'', XXZL.ARTICLE) > 0');
    SQL.Add('           THEN LEFT(XXZL.ARTICLE, CHARINDEX(''-'', XXZL.ARTICLE) - 1)');
    SQL.Add('           ELSE XXZL.ARTICLE');
    SQL.Add('         END)');
    SQL.Add('        AND n.BWBH = x.BWBH');
    SQL.Add('  )');
    SQL.Add('GROUP BY');
    SQL.Add('  (CASE');
    SQL.Add('     WHEN CHARINDEX(''-'', XXZL.ARTICLE) > 0');
    SQL.Add('     THEN LEFT(XXZL.ARTICLE, CHARINDEX(''-'', XXZL.ARTICLE) - 1)');
    SQL.Add('     ELSE XXZL.ARTICLE');
    SQL.Add('   END),');
    SQL.Add('  x.BWBH');

    ExecSQL;
  end;

with XXZLS do
begin
  Active := false;
  SQL.Clear;

  // PHAN 1: BANG TAM (CTE) BASE - Xu ly size va giu nguyen khoang trang cho Kid Size
  SQL.Add('WITH BASE AS (');
  SQL.Add('    SELECT ');
  SQL.Add('        xxzl.ARTICLE, xxzl.XieXing, xxzl.SheHao, xxzl.gender, xxzl.bzcc,');
  SQL.Add('        Costing_Size = ');
  SQL.Add('        CASE ');
  SQL.Add('            WHEN xxzl.gender IN (''Men'',''M'') THEN ''10''');
  SQL.Add('            WHEN xxzl.gender IN (''Women'',''W'') THEN ''08''');
  SQL.Add('            WHEN xxzl.gender IN (''Unisex'',''U'') THEN ''09''');
  SQL.Add('            WHEN xxzl.gender IN (''Youth'',''Y'') THEN ''05.5''');
  // Giu nguyen khoang trang o day vi ban can phan biet Kid Size
  SQL.Add('            WHEN xxzl.gender IN (''Kid'',''K'',''Children'') THEN '' 13.5''');
  SQL.Add('            ELSE xxzl.bzcc');
  SQL.Add('        END');
  SQL.Add('    FROM xxzl');
  SQL.Add(')');

  // PHAN 2: TRUY VAN CHINH
  SQL.Add('SELECT DISTINCT ');
  SQL.Add('       xxzl.ARTICLE, XXZLS.XH, XXZLS.BWBH, BWZL.ywsm AS BWMC, XXZLS.CLBH,');
  SQL.Add('       CLZL.YWPM AS CLMC, CLZL.ZWPM AS CLZW,');
  SQL.Add('       CLZL.DWBH, CLZL.LYCC, ');
  SQL.Add('       XTBWYL.CLSL AS CLSL,');
  SQL.Add('       Round(MaterialCBD_BomUsing.Qty, 4) AS Qty, ');
  SQL.Add('       MaterialCBD_BomUsing.Formula,');
  SQL.Add('       Round(MaterialCBD_BomUsing.Qty - ISNULL(XTBWYL.CLSL, XXZLS.CLSL), 4) AS DIFF,');
  SQL.Add('       XXZLS.LOSS, ZSZL.ZSYWJC, CLZL.CLZMLB,');
  SQL.Add('       XXZLS.CCQQ, XXZLS.CCQZ, XXZLS.userdate, XXZLS.BWLB,');
  SQL.Add('       XXZLS.USERID, XXZLS.USERDATE, ''Assembly'' AS DType, BWZL.zwsm AS BWZW, LBZLS.BZ,');
  SQL.Add('       xxzl.bzcc AS Size_Goc, ');
  SQL.Add('       xxzl.Costing_Size, '); 
  SQL.Add('       CASE');
  SQL.Add('         WHEN ISNULL(MaterialCBD_BomUsing.Qty, 0) = 0 THEN NULL');
  SQL.Add('         WHEN ISNULL(XTBWYL.CLSL, XXZLS.CLSL) = 0 THEN NULL');
  SQL.Add('         ELSE ((MaterialCBD_BomUsing.Qty - ISNULL(XTBWYL.CLSL, XXZLS.CLSL)) / ISNULL(XTBWYL.CLSL, XXZLS.CLSL)) * 100');
  SQL.Add('       END AS Variance');
  SQL.Add('FROM XXZLS');
  
  // PHAN 3: JOIN
  SQL.Add('LEFT JOIN BASE xxzl ON xxzl.XieXing = xxzls.XieXing AND xxzl.SheHao = xxzls.SheHao');
  SQL.Add('LEFT JOIN BWZL ON XXZLS.BWBH = BWZL.bwdh');
  SQL.Add('LEFT JOIN CLZL ON XXZLS.CLBH = CLZL.cldh');
  SQL.Add('LEFT JOIN LBZLS ON SUBSTRING(XXZLS.CLBH, 1, 1) = LBZLS.lbdh AND LBZLS.LB = ''13''');
  SQL.Add('LEFT JOIN ZSZL ON ZSZL.ZSDH = XXZLS.CSBH');
  SQL.Add('LEFT JOIN MaterialCBD_BomUsing');
  SQL.Add('  ON MaterialCBD_BomUsing.BWBH = XXZLS.BWBH');
  SQL.Add(' AND MaterialCBD_BomUsing.ARTICLE =');
  SQL.Add('     CASE');
  SQL.Add('       WHEN CHARINDEX(''-'', XXZL.ARTICLE) > 0');
  SQL.Add('         THEN LEFT(XXZL.ARTICLE, CHARINDEX(''-'', XXZL.ARTICLE) - 1)');
  SQL.Add('       ELSE XXZL.ARTICLE');
  SQL.Add('     END');
  
  // JOIN XTBWYL - Dung LTRIM de CAST duoc chuoi co khoang trang ' 13.5'
  SQL.Add('LEFT JOIN XTBWYL ');
  SQL.Add('       ON XTBWYL.XieXing = xxzl.XieXing ');
  SQL.Add('      AND XTBWYL.SheHao = xxzl.SheHao ');
  SQL.Add('      AND XTBWYL.BWBH = XXZLS.BWBH ');
  // So sanh chuoi truc tiep de lay dung Size co dau cach hoac khong
  SQL.Add('      AND XTBWYL.XTCC = xxzl.Costing_Size '); 
  
  // PHAN 4: DIEU KIEN LOC
  SQL.Add('WHERE XXZL.ARTICLE LIKE ''%' + Trim(Edit1.Text) + '%'' AND xxzls.BWBH LIKE ''%' + Trim(BWBH.Text) + '%''');
  SQL.Add('  AND (');
  SQL.Add('      XXZLS.CCQQ IS NULL OR ');
  SQL.Add('      (');
  // Dung LTRIM de xu ly so sanh so lon hon / nho hon ma khong loi 8114
  SQL.Add('          CAST(CASE WHEN ISNUMERIC(LTRIM(xxzl.Costing_Size)) = 1 THEN LTRIM(xxzl.Costing_Size) ELSE ''0'' END AS DECIMAL(10,2)) ');
  SQL.Add('          >= CAST(CASE WHEN ISNUMERIC(LTRIM(XXZLS.CCQQ)) = 1 THEN LTRIM(XXZLS.CCQQ) ELSE ''0'' END AS DECIMAL(10,2))');
  SQL.Add('          AND CAST(CASE WHEN ISNUMERIC(LTRIM(xxzl.Costing_Size)) = 1 THEN LTRIM(xxzl.Costing_Size) ELSE ''0'' END AS DECIMAL(10,2)) ');
  SQL.Add('          <= CAST(CASE WHEN ISNUMERIC(LTRIM(XXZLS.CCQZ)) = 1 THEN LTRIM(XXZLS.CCQZ) ELSE ''999'' END AS DECIMAL(10,2))');
  SQL.Add('      )');
  SQL.Add('  )');
  SQL.Add('ORDER BY XXZLS.BWBH');

  Active := true;
end;
end;
procedure TBomUsing.BB4Click(Sender: TObject);
begin
  if XXZLS.Active = true then
  begin
    with XXZLS do
    begin
      cachedupdates := true;
      requestlive := true;
      edit;
    end;
    BB5.Enabled := true;
    BB6.Enabled := true;
  end;
end;

procedure TBomUsing.BB5Click(Sender: TObject);
var
  F: string;
  V: Double;
begin
  // luu du lieu, neu co Formula thi tinh Qty = ket qua Formula
  with XXZLS do
  begin
    First;
    while not EOF do
    begin
      if UpdateStatus = usModified then
      begin
        if not (State in [dsEdit, dsInsert]) then Edit;

        // lay cong thuc tu field Formula (field nay da co: XXZLSFormula)
        F := Trim(FieldByName('Formula').AsString);

        // neu formula khong rong thi tinh Qty
        if F <> '' then
        begin
          try
            // tinh cong thuc dang don gian: + - * / (khong ngoac)
            V := EvalSimple(F);
            FieldByName('Qty').AsFloat := V;
          except
            on E: Exception do
            begin
              ShowMessage('Cong thuc khong hop le: ' + F + #13#10 + E.Message);
              Exit;
            end;
          end;
        end;

        FieldByName('USERID').AsString := Main.Edit1.Text;
        Post;

        // UpXXZLS can cap nhat ca Formula va Qty trong SQL update
        UpXXZLS.Apply(ukModify);
      end;
      Next;
    end;
  end;

  XXZLS.active := false;
  XXZLS.cachedupdates := false;
  XXZLS.requestlive := false;
  XXZLS.active := true;
  BB5.Enabled := false;
  BB6.Enabled := false;
end;

procedure TBomUsing.DBGrid1GetCellParams(Sender: TObject;
  Column: TColumnEh; AFont: TFont; var Background: TColor;
  State: TGridDrawState);
begin
  if XXZLS.FieldByName('CLSL').value > XXZLS.FieldByName('Qty').value then
    dbgrid1.canvas.font.color := clred;
end;

procedure TBomUsing.bbt6Click(Sender: TObject);
var
  eclApp, WorkBook: olevariant;
  i, j: integer;
begin
  if XXZLS.active then
  begin
    try
      eclApp := CreateOleObject('Excel.Application');
      WorkBook := CreateOleObject('Excel.Sheet');
    except
      Application.MessageBox('No Microsoft   Excel', 'Microsoft   Excel', MB_OK+MB_ICONWarning);
      Exit;
    end;
    try
      WorkBook := eclApp.workbooks.Add;
      for i := 0 to XXZLS.fieldcount-1 do
      begin
        eclApp.Cells(1,i+1) := XXZLS.fields[i].FieldName;
      end;

      XXZLS.First;
      j := 2;
      while not XXZLS.Eof do
      begin
        for i := 0 to XXZLS.fieldcount-1 do
        begin
          eclApp.Cells(j,i+1) := XXZLS.Fields[i].Value;
        end;
        XXZLS.Next;
        inc(j);
      end;
      eclapp.columns.autofit;
      eclApp.ActiveSheet.Columns[6].ColumnWidth := 50;
      eclApp.ActiveSheet.Columns[7].ColumnWidth := 50;
      showmessage('Succeed');
      eclApp.Visible := True;

    except
      on F: Exception do
        showmessage(F.Message);
    end;
  end;
end;

procedure TBomUsing.Button3Click(Sender: TObject);
var
  TyGia: Double;
begin
  // 1. Kiem tra Article
  if Trim(Edit3.Text) = '' then
  begin
    ShowMessage('Vui long nhap Article!');
    Exit;
  end;

  // 2. Chuyen doi va kiem tra ty gia tu Edit4
  TyGia := StrToFloatDef(Trim(Edit4.Text), 0); // Chuyen ve so, neu loi thi tra ve 0
  if TyGia <= 0 then
  begin
    ShowMessage('Ty gia phai la so duong va lon hon 0!');
    Edit4.SetFocus;
    Exit;
  end;

  with FOB do
  begin
    Close;
    SQL.Clear;
    
    // --- B?t bu?c ph?i có các dòng SET này d? Driver Delphi ch?y du?c FOR XML PATH ---
    SQL.Add('SET ANSI_NULLS ON;');
    SQL.Add('SET QUOTED_IDENTIFIER ON;');
    SQL.Add('SET CONCAT_NULL_YIELDS_NULL ON;');
    SQL.Add('SET ANSI_WARNINGS ON;');
    SQL.Add('SET ANSI_PADDING ON;');

    // --- C?u trúc CTE truy v?n chu?n ---
    SQL.Add('WITH ParentCLBH AS (');
    SQL.Add('  SELECT DISTINCT ISNULL(Z.cldh, XXZLS.CLBH) as MaMe');
    SQL.Add('  FROM XXZLS');
    SQL.Add('  INNER JOIN xxzl ON xxzl.XieXing = XXZLS.XieXing AND xxzl.SheHao = XXZLS.SheHao');
    SQL.Add('  INNER JOIN clzhzl Z ON XXZLS.CLBH = Z.cldh');
    SQL.Add('  WHERE xxzl.ARTICLE LIKE :ArticleParam'); 
    SQL.Add('),');
    SQL.Add('LATEST_PRICES AS (');
    SQL.Add('  SELECT T.CLBH, T.Price');
    SQL.Add('  FROM (');
    SQL.Add('    SELECT CGBJS.CLBH,');
    SQL.Add('    CASE WHEN (CGBJS.USPrice IS NULL OR CGBJS.USPrice = 0)');
    
    // S? d?ng FloatToStr d? truy?n giá tr? TyGia t? ô nh?p li?u vào SQL
    SQL.Add('         THEN (ISNULL(CGBJS.VNPrice, 0) / ' + FloatToStr(TyGia) + ')'); 
    
    SQL.Add('         ELSE CGBJS.USPrice END as Price,');
    SQL.Add('    ROW_NUMBER() OVER (PARTITION BY CGBJS.CLBH ORDER BY CGBJ.BJNO DESC, CGBJ.USERDATE DESC) as RowNum');
    SQL.Add('    FROM CGBJS');
    SQL.Add('    INNER JOIN CGBJ ON CGBJ.BJNO = CGBJS.BJNO');
    SQL.Add('    WHERE CGBJ.GSBH = ''VDH''');
    SQL.Add('  ) T WHERE T.RowNum = 1');
    SQL.Add('),');
    SQL.Add('ALL_COMPONENTS AS (');
    SQL.Add('  SELECT P.MaMe, Comp.CLBH_Related');
    SQL.Add('  FROM ParentCLBH P');
    SQL.Add('  CROSS APPLY (');
    SQL.Add('    SELECT P.MaMe as CLBH_Related UNION ALL');
    SQL.Add('    SELECT cldh1 FROM clzhzl WHERE cldh = P.MaMe');
    SQL.Add('  ) Comp');
    SQL.Add(')');
    
    // --- Câu l?nh SELECT chính và x? lý g?p chu?i mã con ---
    SQL.Add('SELECT A.MaMe AS CLBH, CLZL.ZWPM,clzl.ywpm, CLZL.DWBH,');
    SQL.Add('ROUND(SUM(ISNULL(LP.Price, 0)), 4) AS USPrice_Calculated,');
    
    // S? d?ng ki?u varchar(2000) d? Delphi nh?n di?n dúng ki?u String, không b? l?i Memo
    SQL.Add('STUFF((');
    SQL.Add('  SELECT '';'' + SubA.CLBH_Related');
    SQL.Add('  FROM ALL_COMPONENTS SubA');
    SQL.Add('  WHERE SubA.MaMe = A.MaMe');
    SQL.Add('  FOR XML PATH(''''), TYPE).value(''.'', ''varchar(2000)''), 1, 1, '''') AS DanhSachMaCon');
    
    SQL.Add('FROM ALL_COMPONENTS A');
    SQL.Add('INNER JOIN LATEST_PRICES LP ON A.CLBH_Related = LP.CLBH');
    SQL.Add('INNER JOIN CLZL ON A.MaMe = CLZL.cldh');
    SQL.Add('WHERE A.MaMe LIKE ''%' + Edit2.Text + '%'' ');
    SQL.Add('GROUP BY A.MaMe, CLZL.ZWPM,clzl.ywpm, CLZL.DWBH');
    SQL.Add('HAVING SUM(ISNULL(LP.Price, 0)) > 0');
    SQL.Add('ORDER BY A.MaMe;');

    // Gán tham s? ArticleParam an toàn cho câu l?nh
    Params.ParamByName('ArticleParam').AsString := '%' + Trim(Edit3.Text) + '%';
    
    try
      Open;
    except
      on E: Exception do
        ShowMessage('Loi SQL: ' + E.Message);
    end;
  end;
end;



procedure TBomUsing.ExcelClick(Sender: TObject);
var
  XLApp, Sheet: Variant;
  i, j: Integer;
begin
  // Kiem tra xem co du lieu hay khong
  if FOB.Active = False then Exit;
  if FOB.IsEmpty then
  begin
    ShowMessage('Khong co du lieu de xuat Excel!');
    Exit;
  end;

  try
    // Khoi tao doi tuong Excel
    XLApp := CreateOleObject('Excel.Application');
    XLApp.Workbooks.Add;
    Sheet := XLApp.Worksheets[1];
    XLApp.Visible := True; // Hien thi file Excel sau khi tao

    // 1. Tao tieu de cot (Lay theo ten truong trong SQL)
    for i := 0 to FOB.FieldCount - 1 do
    begin
      Sheet.Cells[1, i + 1] := FOB.Fields[i].FieldName;
      Sheet.Cells[1, i + 1].Font.Bold := True; // In dam tieu de
    end;

    // 2. Do du lieu tu Query FOB vao Excel
    FOB.DisableControls; // Dung cap nhat giao dien de chay nhanh hon
    try
      FOB.First;
      j := 2; // Bat dau do du lieu tu dong thu 2
      while not FOB.Eof do
      begin
        for i := 0 to FOB.FieldCount - 1 do
        begin
          // Ghi du lieu vao tung o
          Sheet.Cells[j, i + 1] := FOB.Fields[i].Value;
        end;
        FOB.Next;
        Inc(j);
      end;
    finally
      FOB.EnableControls; // Bat lai cap nhat giao dien
    end;

    // 3. Tu dong can chinh do rong cac cot cho dep
    Sheet.Columns.AutoFit;
    
    ShowMessage('Da xuat xong du lieu ra Excel!');
  except
    on E: Exception do
    begin
      // Neu co loi (vi du may chua cai Excel) thi bao loi
      ShowMessage('Loi khi xuat Excel: ' + E.Message);
      XLApp := Unassigned;
    end;
  end;
end;

end.

