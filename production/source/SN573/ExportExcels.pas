unit ExportExcels;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ComCtrls, StdCtrls, DB, DBTables, GridsEh, DBGridEh, ExtCtrls, ComObj;

type
  TExportExcel = class(TForm)
    Panel1: TPanel;
    Label1: TLabel;
    Edit1: TEdit;
    Button1: TButton;
    GroupBox1: TGroupBox;
    rbtIn: TRadioButton;
    rbtOut: TRadioButton;
    btExcel: TButton;
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
    Query1WeightIN: TFloatField;
    Query1WeightOut: TFloatField;
    ckUSERDATEIN: TCheckBox;
    dtpUSERDATEIN: TDateTimePicker;
    ckUSERDATEOUT: TCheckBox;
    dtpUSERDATEOUT: TDateTimePicker;
    DBGridEh2: TDBGridEh;
    DS2: TDataSource;
    Query2: TQuery;
    Query2DDBH: TStringField;
    Query2USERDATEIN: TDateTimeField;
    procedure btExcelClick(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormDestroy(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure DBGridEh2GetCellParams(Sender: TObject; Column: TColumnEh;
      AFont: TFont; var Background: TColor; State: TGridDrawState);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  ExportExcel: TExportExcel;

implementation

{$R *.dfm}

procedure TExportExcel.btExcelClick(Sender: TObject);
var
  ExcelApp, Workbook, Worksheet: Variant;
  Row: Integer;
begin
  if Query1.IsEmpty then Exit;

  ExcelApp := CreateOleObject('Excel.Application');
  ExcelApp.Visible := True;

  Workbook := ExcelApp.Workbooks.Add;
  Worksheet := Workbook.Worksheets[1];
  Worksheet.Columns[1].NumberFormat := '@';

  Row := 2;

  if rbtIn.Checked then
  begin
    // Header
    Worksheet.Cells[1,1] := 'CARTONBAR';
    Worksheet.Cells[1,2] := 'DDBH';
    Worksheet.Cells[1,3] := 'ScanIn';
    Worksheet.Cells[1,4] := 'WeightIN';
    Worksheet.Cells[1,5] := 'USERIDIN';
    Worksheet.Cells[1,6] := 'USERDATEIN';

    Query1.First;
    while not Query1.Eof do
    begin
      Worksheet.Cells[Row,1] := Query1.FieldByName('CARTONBAR').AsString;
      Worksheet.Cells[Row,2] := Query1.FieldByName('DDBH').AsString;
      Worksheet.Cells[Row,3] := Query1.FieldByName('ScanIn').AsString;
      Worksheet.Cells[Row,4] := Query1.FieldByName('WeightIN').AsString;
      Worksheet.Cells[Row,5] := Query1.FieldByName('USERIDIN').AsString;
      Worksheet.Cells[Row,6] := Query1.FieldByName('USERDATEIN').AsString;
      Inc(Row);
      Query1.Next;
    end;
  end
  else
  if rbtOut.Checked then
  begin
    // Header
    Worksheet.Cells[1,1] := 'CARTONBAR';
    Worksheet.Cells[1,2] := 'DDBH';
    Worksheet.Cells[1,3] := 'ScanOut';
    Worksheet.Cells[1,4] := 'WeightOut';
    Worksheet.Cells[1,5] := 'USERIDOUT';
    Worksheet.Cells[1,6] := 'USERDATEOUT';

    Query1.First;
    while not Query1.Eof do
    begin
      Worksheet.Cells[Row,1] := Query1.FieldByName('CARTONBAR').AsString;
      Worksheet.Cells[Row,2] := Query1.FieldByName('DDBH').AsString;
      Worksheet.Cells[Row,3] := Query1.FieldByName('ScanOut').AsString;
      Worksheet.Cells[Row,4] := Query1.FieldByName('WeightOut').AsString;
      Worksheet.Cells[Row,5] := Query1.FieldByName('USERIDOUT').AsString;
      Worksheet.Cells[Row,6] := Query1.FieldByName('USERDATEOUT').AsString;

      Inc(Row);
      Query1.Next;
    end;
  end;

  Worksheet.Columns.AutoFit;
end;

procedure TExportExcel.Button1Click(Sender: TObject);
begin
    with query1 do
      begin
      Close; // Dong query truoc khi thiet lap cau lenh moi
      SQL.Clear;
      SQL.Add('SELECT * FROM YWCP_Move WHERE DDBH LIKE ' + QuotedStr(Trim(Edit1.Text) + '%'));
      if ckUSERDATEIN.Checked then
        SQL.Add(' and CAST(USERDATEIN AS DATE) = '''+ FormatDateTime('yyyy-mm-dd', dtpUSERDATEIN.Date) +''' ');
      if ckUSERDATEOUT.Checked then
        SQL.Add(' and CAST(USERDATEOUT AS DATE) = '''+ FormatDateTime('yyyy-mm-dd', dtpUSERDATEOUT.Date) +''' ');
      Open; // Mo tap du lieu de hien thi len luoi (Grid)
    end;

   with Query2 do
  begin
    Active := False; // Dong query truoc khi sua SQL
    SQL.Clear;
    
    // Dung cau SELECT cua ban de loc nhung don hang ton kho tren 25 ngay
    SQL.Add('SELECT * FROM ( ');
    SQL.Add('  SELECT DISTINCT DDBH, MIN(USERDATEIN) AS USERDATEIN ');
    SQL.Add('  FROM YWCP_Move WITH (NOLOCK) ');
    SQL.Add('  WHERE USERDATEOUT IS NULL ');
    SQL.Add('  GROUP BY DDBH ');
    SQL.Add(') YWCP ');
    SQL.Add('WHERE USERDATEIN < GETDATE() - 25 ');
    SQL.Add('ORDER BY USERDATEIN ');

    try
      Active := True; // Mo du lieu de hien len Grid
    except
      on E: Exception do
        ShowMessage('Loi load danh sach ton lau: ' + E.Message);
    end;
  end;

end;

procedure TExportExcel.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  Action := caFree;
end;

procedure TExportExcel.FormDestroy(Sender: TObject);
begin
  ExportExcel := nil;
end;

procedure TExportExcel.FormCreate(Sender: TObject);
begin
  rbtIn.Checked := true;
end;

procedure TExportExcel.DBGridEh2GetCellParams(Sender: TObject;
  Column: TColumnEh; AFont: TFont; var Background: TColor;
  State: TGridDrawState);
begin
  // Kiem tra neu Query2 dang mo va co du lieu
  if not Query2.IsEmpty then
  begin
    // 1. To mau nen vang cho toan bo dong
    Background := clYellow; 
    
    // 2. To mau chu den de de doc tren nen vang
    AFont.Color := clBlack;
    
    // 3. Neu ban muon nhung cot quan trong nhu DDBH hien chu dam (Bold)
    if Column.FieldName = 'DDBH' then
    begin
      AFont.Style := [fsBold];
    end;
  end;
end;

end.
