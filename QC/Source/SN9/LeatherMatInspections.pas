unit LeatherMatInspections;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DBTables, DB, GridsEh, DBGridEh, StdCtrls, Mask, DBCtrls,
  Buttons, ExtCtrls, ComObj, ShellAPI, ComCtrls;

type
  TLeatherMatInspection = class(TForm)
    Panel1: TPanel;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label5: TLabel;
    Label7: TLabel;
    BB1: TBitBtn;
    BB2: TBitBtn;
    BB3: TBitBtn;
    BB4: TBitBtn;
    BB5: TBitBtn;
    BB6: TBitBtn;
    Button1: TButton;
    bbt6: TBitBtn;
    edtPONo: TEdit;
    bExcel: TBitBtn;
    bExF: TBitBtn;
    cbPDF: TCheckBox;
    edtTS: TEdit;
    ckUSERDate: TCheckBox;
    dtpUSERDate: TDateTimePicker;
    MenuCode: TEdit;
    edtRID: TEdit;
    dtpTime: TDateTimePicker;
    edtCont: TEdit;
    edtMatName: TEdit;
    btClear: TButton;
    ckTime: TCheckBox;
    DBGrid1: TDBGridEh;
    Query1: TQuery;
    DS1: TDataSource;
    UpSQL1: TUpdateSQL;
    Qtemp: TQuery;
    OpenDialog1: TOpenDialog;
    SaveDialog: TSaveDialog;
    QGetID: TQuery;
    QSig: TQuery;
    OpenPictureDialog1: TOpenDialog;
    Query1ReportID: TIntegerField;
    Query1Cont: TStringField;
    Query1Time: TDateTimeField;
    Query1IQty: TStringField;
    Query1MatName: TStringField;
    Query1PONo: TStringField;
    Query1ThickStand: TStringField;
    Query1Reality: TStringField;
    Query1Color: TStringField;
    Query1AA: TStringField;
    Query1BB: TStringField;
    Query1CC: TStringField;
    Query1DD: TStringField;
    Query1Grade: TStringField;
    Query1TotalSF: TFloatField;
    Query1PercentGrade: TIntegerField;
    Query1UseSF: TFloatField;
    Query1PercentNCU: TIntegerField;
    Query1CompenSF: TFloatField;
    Query1TestCon: TStringField;
    Query1IsCompen: TStringField;
    Query1CompenQty: TStringField;
    Query1SCFID: TStringField;
    Query1SCFDate: TDateTimeField;
    Query1LCFID: TStringField;
    Query1LCFDate: TDateTimeField;
    Query1PreparedID: TStringField;
    Query1PreparedDate: TDateTimeField;
    Query1USERID: TStringField;
    Query1USERDate: TDateTimeField;
    Query1MSCFID: TStringField;
    Query1MSCFDate: TDateTimeField;
    Query1YN: TIntegerField;
    btCopy: TButton;
    procedure DBGrid1KeyPress(Sender: TObject; var Key: Char);
    procedure Button1Click(Sender: TObject);
    procedure SetColumnsReadOnly;
    procedure BB1Click(Sender: TObject);
    procedure BB3Click(Sender: TObject);
    procedure BB5Click(Sender: TObject);
    procedure BB4Click(Sender: TObject);
    function NewID: string;
    procedure Query1AfterOpen(DataSet: TDataSet);
    procedure BB6Click(Sender: TObject);
    procedure DBGrid1GetCellParams(Sender: TObject; Column: TColumnEh;
      AFont: TFont; var Background: TColor; State: TGridDrawState);
    procedure BB2Click(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormDestroy(Sender: TObject);
    procedure bExcelClick(Sender: TObject);
    procedure bExFClick(Sender: TObject);
    function GetUsernameByID(const AID: string): string;
    procedure DBGrid1CellClick(Column: TColumnEh);
    procedure btClearClick(Sender: TObject);
    procedure btCopyClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  LeatherMatInspection: TLeatherMatInspection;

implementation

uses main1;

{$R *.dfm}

function TLeatherMatInspection.GetUsernameByID(const AID: string): string;
begin
  Result := '';
  if AID = '' then Exit;

  with QSig do
  begin
    Active := False;
    SQL.Clear;
    SQL.Add('select USERNAME from Busers where USERID = :USERID');
    ParamByName('USERID').AsString := AID;
    Active := True;

    if not EOF then
      Result := FieldByName('USERNAME').AsString;
  end;
end;

function TLeatherMatInspection.NewID: string;
var
  Prefix, LastID: string;
  Seq: Integer;
begin
  Prefix := FormatDateTime('yymm', Date);

  with QGetID do
  begin
    Active := false;
    SQL.Clear;
    SQL.Add(
      'select top 1 ReportID ' +
      'from QC_LeatherInspec ' +
      'where left(ReportID, 4) = :P ' +
      'order by ReportID desc');
    ParamByName('P').AsString := Prefix;
    Active := true;
  end;

  if QGetID.IsEmpty then
    Seq := 1
  else
  begin
    LastID := QGetID.FieldByName('ReportID').AsString;
    Seq := StrToInt(Copy(LastID, 5, 4)) + 1;
  end;

  Result := Prefix + FormatFloat('0000', Seq);
end;

procedure TLeatherMatInspection.SetColumnsReadOnly;
begin
  if MenuCode.Text = 'N981' then
  begin
  DBGrid1.FieldColumns['ReportID'].ReadOnly      := True;
  DBGrid1.FieldColumns['SCFID'].ReadOnly         := True;
  DBGrid1.FieldColumns['SCFDate'].ReadOnly       := True;
  DBGrid1.FieldColumns['LCFID'].ReadOnly         := True;
  DBGrid1.FieldColumns['LCFDate'].ReadOnly       := True;
  DBGrid1.FieldColumns['PreparedDate'].ReadOnly  := True;
  DBGrid1.FieldColumns['USERID'].ReadOnly        := True;
  DBGrid1.FieldColumns['USERDate'].ReadOnly      := True;
  DBGrid1.FieldColumns['MSCFID'].ReadOnly        := True;
  DBGrid1.FieldColumns['MSCFDate'].ReadOnly      := True;
  end;

  if MenuCode.Text = 'N982' then
  begin
  DBGrid1.FieldColumns['ReportID'].ReadOnly      := True;
  DBGrid1.FieldColumns['Cont'].ReadOnly          := True;
  DBGrid1.FieldColumns['Time'].ReadOnly          := True;
  DBGrid1.FieldColumns['IQty'].ReadOnly          := True;
  DBGrid1.FieldColumns['MatName'].ReadOnly       := True;
  DBGrid1.FieldColumns['PONo'].ReadOnly          := True;
  DBGrid1.FieldColumns['ThickStand'].ReadOnly    := True;
  DBGrid1.FieldColumns['Reality'].ReadOnly       := True;
  DBGrid1.FieldColumns['Color'].ReadOnly         := True;
  DBGrid1.FieldColumns['AA'].ReadOnly            := True;
  DBGrid1.FieldColumns['BB'].ReadOnly            := True;
  DBGrid1.FieldColumns['CC'].ReadOnly            := True;
  DBGrid1.FieldColumns['DD'].ReadOnly            := True;
  DBGrid1.FieldColumns['Grade'].ReadOnly         := True;
  DBGrid1.FieldColumns['TotalSF'].ReadOnly       := True;
  DBGrid1.FieldColumns['PercentGrade'].ReadOnly  := True;
  DBGrid1.FieldColumns['PercentNCU'].ReadOnly    := True;
  DBGrid1.FieldColumns['TestCon'].ReadOnly       := True;
  DBGrid1.FieldColumns['IsCompen'].ReadOnly      := True;
  DBGrid1.FieldColumns['CompenQty'].ReadOnly     := True;
  DBGrid1.FieldColumns['SCFDate'].ReadOnly       := True;
  DBGrid1.FieldColumns['LCFID'].ReadOnly         := True;
  DBGrid1.FieldColumns['LCFDate'].ReadOnly       := True;
  DBGrid1.FieldColumns['PreparedID'].ReadOnly    := True;
  DBGrid1.FieldColumns['PreparedDate'].ReadOnly  := True;
  DBGrid1.FieldColumns['USERID'].ReadOnly        := True;
  DBGrid1.FieldColumns['USERDate'].ReadOnly      := True;
  DBGrid1.FieldColumns['MSCFID'].ReadOnly        := True;
  DBGrid1.FieldColumns['MSCFDate'].ReadOnly      := True;
  end;
  if MenuCode.Text = 'N983' then
  begin
  DBGrid1.FieldColumns['ReportID'].ReadOnly      := True;
  DBGrid1.FieldColumns['Cont'].ReadOnly          := True;
  DBGrid1.FieldColumns['Time'].ReadOnly          := True;
  DBGrid1.FieldColumns['IQty'].ReadOnly          := True;
  DBGrid1.FieldColumns['MatName'].ReadOnly       := True;
  DBGrid1.FieldColumns['PONo'].ReadOnly          := True;
  DBGrid1.FieldColumns['ThickStand'].ReadOnly    := True;
  DBGrid1.FieldColumns['Reality'].ReadOnly       := True;
  DBGrid1.FieldColumns['Color'].ReadOnly         := True;
  DBGrid1.FieldColumns['AA'].ReadOnly            := True;
  DBGrid1.FieldColumns['BB'].ReadOnly            := True;
  DBGrid1.FieldColumns['CC'].ReadOnly            := True;
  DBGrid1.FieldColumns['DD'].ReadOnly            := True;
  DBGrid1.FieldColumns['Grade'].ReadOnly         := True;
  DBGrid1.FieldColumns['TotalSF'].ReadOnly       := True;
  DBGrid1.FieldColumns['PercentGrade'].ReadOnly  := True;
  DBGrid1.FieldColumns['PercentNCU'].ReadOnly    := True;
  DBGrid1.FieldColumns['TestCon'].ReadOnly       := True;
  DBGrid1.FieldColumns['IsCompen'].ReadOnly      := True;
  DBGrid1.FieldColumns['CompenQty'].ReadOnly     := True;
  DBGrid1.FieldColumns['SCFID'].ReadOnly         := True;
  DBGrid1.FieldColumns['SCFDate'].ReadOnly       := True;
  DBGrid1.FieldColumns['LCFDate'].ReadOnly       := True;
  DBGrid1.FieldColumns['PreparedID'].ReadOnly    := True;
  DBGrid1.FieldColumns['PreparedDate'].ReadOnly  := True;
  DBGrid1.FieldColumns['USERID'].ReadOnly        := True;
  DBGrid1.FieldColumns['USERDate'].ReadOnly      := True;
  DBGrid1.FieldColumns['MSCFID'].ReadOnly        := True;
  DBGrid1.FieldColumns['MSCFDate'].ReadOnly      := True;
  end;
  if MenuCode.Text = 'N984' then
  begin
  DBGrid1.FieldColumns['ReportID'].ReadOnly      := True;
  DBGrid1.FieldColumns['Cont'].ReadOnly          := True;
  DBGrid1.FieldColumns['Time'].ReadOnly          := True;
  DBGrid1.FieldColumns['IQty'].ReadOnly          := True;
  DBGrid1.FieldColumns['MatName'].ReadOnly       := True;
  DBGrid1.FieldColumns['PONo'].ReadOnly          := True;
  DBGrid1.FieldColumns['ThickStand'].ReadOnly    := True;
  DBGrid1.FieldColumns['Reality'].ReadOnly       := True;
  DBGrid1.FieldColumns['Color'].ReadOnly         := True;
  DBGrid1.FieldColumns['AA'].ReadOnly            := True;
  DBGrid1.FieldColumns['BB'].ReadOnly            := True;
  DBGrid1.FieldColumns['CC'].ReadOnly            := True;
  DBGrid1.FieldColumns['DD'].ReadOnly            := True;
  DBGrid1.FieldColumns['Grade'].ReadOnly         := True;
  DBGrid1.FieldColumns['TotalSF'].ReadOnly       := True;
  DBGrid1.FieldColumns['PercentGrade'].ReadOnly  := True;
  DBGrid1.FieldColumns['PercentNCU'].ReadOnly    := True;
  DBGrid1.FieldColumns['TestCon'].ReadOnly       := True;
  DBGrid1.FieldColumns['IsCompen'].ReadOnly      := True;
  DBGrid1.FieldColumns['CompenQty'].ReadOnly     := True;
  DBGrid1.FieldColumns['SCFID'].ReadOnly         := True;
  DBGrid1.FieldColumns['SCFDate'].ReadOnly       := True;
  DBGrid1.FieldColumns['MSCFDate'].ReadOnly      := True;
  DBGrid1.FieldColumns['LCFID'].ReadOnly         := True;
  DBGrid1.FieldColumns['LCFDate'].ReadOnly       := True;
  DBGrid1.FieldColumns['PreparedID'].ReadOnly    := True;
  DBGrid1.FieldColumns['PreparedDate'].ReadOnly  := True;
  DBGrid1.FieldColumns['USERID'].ReadOnly        := True;
  DBGrid1.FieldColumns['USERDate'].ReadOnly      := True;
  end;
end;

procedure TLeatherMatInspection.DBGrid1KeyPress(Sender: TObject;
  var Key: Char);
begin

  //chan nguoi dung nhap
  if (DBGrid1.SelectedField.FieldName = 'Grade') or (DBGrid1.SelectedField.FieldName = 'Time') then
  begin
    Key := #0;
  end;

  // Neu nhan Enter
  if Key = #13 then
  begin

    if (DBGrid1.SelectedField.FieldName = 'SCFID') and (MenuCode.Text = 'N982') and Query1.CachedUpdates then
    begin
      Query1.Edit;
      Query1.FieldByName('SCFID').AsString := main.Edit1.Text;
      Query1.Post;
    end;

    if (DBGrid1.SelectedField.FieldName = 'LCFID') and (MenuCode.Text = 'N983') and Query1.CachedUpdates then
    begin
      Query1.Edit;
      Query1.FieldByName('LCFID').AsString := main.Edit1.Text;
      Query1.Post;
    end;
    if (DBGrid1.SelectedField.FieldName = 'MSCFID') and (MenuCode.Text = 'N984') and Query1.CachedUpdates then
    begin
      Query1.Edit;
      Query1.FieldByName('MSCFID').AsString := main.Edit1.Text;
      Query1.Post;
    end;
  end;
end;

procedure TLeatherMatInspection.Button1Click(Sender: TObject);
begin
 SetColumnsReadOnly;

 if MenuCode.Text = 'N981' then
  btCopy.Visible := true;

 with Query1 do
 begin
  Active:=false;
  SQL.Clear;
  SQL.Add('SELECT ReportID, Cont, Time, IQty, MatName, PONo,');
  SQL.Add('ThickStand, Reality, Color, AA, BB, CC, DD, Grade, TotalSF, PercentGrade,');
  SQL.Add('CONVERT(numeric(18,2), TotalSF*PercentGrade/100) as UseSF, PercentNCU,');
  SQL.Add('CONVERT(numeric(18,2), (PercentGrade-PercentNCU)*TotalSF/100) as CompenSF,');
  SQL.Add('TestCon, IsCompen, CompenQty, SCFID, SCFDate, LCFID, LCFDate, PreparedID, ');
  SQL.Add('PreparedDate, USERID, USERDate, MSCFID, MSCFDate, YN');
  SQL.Add('FROM QC_LeatherInspec');
  SQL.Add('where 1=1 and YN <> 0');

  if edtPONo.Text <> '' then
  SQL.Add('and PONo like '''+edtPONo.Text+'%'' ');
  if edtRID.Text <> '' then
    SQL.Add('and ReportID like '''+edtRID.Text+'%'' ');
  if edtMatName.Text <> '' then
    SQL.Add('and MatName like '''+edtMatName.Text+'%'' ');
  if ckTime.Checked then
    SQL.Add('and CAST(Time as DATE) = '''+FormatDateTime('yyyy-mm-dd', dtpTime.Date)+''' ');
  if ckUSERDate.Checked then
    SQL.Add('and CAST(QC_ProMatFail.USERDate as DATE) = '''+FormatDateTime('yyyy-mm-dd', dtpUSERDate.Date)+''' ');
  if edtTS.Text <> '' then
    SQL.Add('and ThickStand like '''+edtTS.Text+'%'' ');

  SQL.Add('order by ReportID');
  Active:=true;
 end;

 if Query1.RecordCount >= 6 then
  begin
    bb1.Enabled := False;
    bb3.Enabled := False;
  end
  else
  begin
    bb1.Enabled := True;
    bb3.Enabled := True;
  end;
end;

procedure TLeatherMatInspection.BB1Click(Sender: TObject);
begin
  with query1 do
  begin
  RequestLive :=  true;
  CachedUpdates:= true;
  Insert;
  end;
bb4.enabled:=true;
bb5.enabled:=true;
end;

procedure TLeatherMatInspection.BB3Click(Sender: TObject);
begin
with query1 do
  begin
    cachedupdates:=true;
    requestlive:=true;
    query1.edit;
  end;
bb4.enabled:=true;
bb5.enabled:=true;
end;

procedure TLeatherMatInspection.BB5Click(Sender: TObject);
begin
  with Query1 do
  begin
    CachedUpdates := false;
    RequestLive := false;
    BB4.Enabled := false;
    BB5.Enabled := false;
    dbgrid1.ReadOnly := false;
  end;
end;

procedure TLeatherMatInspection.BB4Click(Sender: TObject);
var i: integer;
begin
  if not QGetID.Active then QGetID.Active;
  try
    query1.first;
    for i:=1 to query1.RecordCount do
      begin
        case query1.updatestatus of
          usinserted:
            begin
              if Query1.FieldByName('MatName').IsNull then
              begin
                query1.delete;
              end else
              begin
                Query1.Edit;
                Query1.FieldByName('ReportID').Value := NewID;
                Query1.FieldByName('USERID').Value := main.Edit1.Text;
                Query1.FieldByName('USERDate').Value := FormatDateTime('yyyy-mm-dd', Now);
                Query1.FieldByName('YN').Value := 1;
                upsql1.apply(ukinsert);
              end;
            end;
          usmodified:
             begin
               if query1.FieldByName('YN').value='0' then
                 begin
                   if messagedlg('Are you sure you want to delete?',mtconfirmation,[mbYes,mbNo],0)=mrYes then
                   begin
                    Query1.Edit;
                    Query1.FieldByName('USERID').Value := main.Edit1.Text;
                    UpSQL1.Apply(ukdelete)
                   end;
                 end else
                 begin
                  Query1.Edit;
                  if DBGrid1.SelectedField.FieldName = 'PreparedID' then
                    Query1.FieldByName('PreparedDate').Value := FormatDateTime('yyyy-mm-dd', Now)
                  else if MenuCode.Text = 'N981' then
                    begin
                      Query1.FieldByName('USERID').Value := main.Edit1.Text;
                      Query1.FieldByName('USERDate').Value := FormatDateTime('yyyy-mm-dd', Now);
                    end;
                  if MenuCode.Text = 'N982' then
                    begin
                      Query1.FieldByName('SCFDate').Value := FormatDateTime('yyyy-mm-dd', Now);
                    end;
                  if MenuCode.Text = 'N983' then
                    begin
                      Query1.FieldByName('LCFDate').Value := FormatDateTime('yyyy-mm-dd', Now);
                    end;
                  if MenuCode.Text = 'N984' then
                    begin
                      Query1.FieldByName('MSCFDate').Value := FormatDateTime('yyyy-mm-dd', Now);
                    end;
                  upsql1.apply(ukmodify);
                 end;
              end;
        end;
        query1.next;
      end;
    query1.active:=false;
    query1.cachedupdates:=false;
    query1.requestlive:=false;
    query1.active:=true;
    bb4.enabled:=false;
    bb5.enabled:=false;
    dbgrid1.ReadOnly := false;

    if Query1.RecordCount >= 6 then
    begin
      bb1.Enabled := False;
      bb3.Enabled := False;
    end
    else
    begin
      bb1.Enabled := True;
      bb3.Enabled := True;
    end;

  except
   Messagedlg('Have wrong, can not save data!',mtwarning,[mbyes],0);
  end;
end;

procedure TLeatherMatInspection.Query1AfterOpen(DataSet: TDataSet);
begin
  BB1.Enabled:=true;
  BB2.Enabled:=true;
  BB3.Enabled:=true;
  bbt6.Enabled:=true;
  bExcel.Enabled := true;
  bExF.Enabled := true;
end;

procedure TLeatherMatInspection.BB6Click(Sender: TObject);
begin
  Close;
end;

procedure TLeatherMatInspection.DBGrid1GetCellParams(Sender: TObject;
  Column: TColumnEh; AFont: TFont; var Background: TColor;
  State: TGridDrawState);
begin
  if Query1.FieldByName('YN').Value = '0' then
    DBGrid1.Canvas.Font.Color := clRed;
end;

procedure TLeatherMatInspection.BB2Click(Sender: TObject);
begin
if messagedlg('Are you sure you want to delete?',mtconfirmation,[mbYes,mbNo],0)<>mrYes then
  begin
    abort;
  end;
with query1 do
  begin
    cachedupdates:=true;
    requestlive:=true;
    edit;
    fieldbyname('YN').Value:=0;
  end;
bb4.enabled:=true;
bb5.enabled:=true;
end;

procedure TLeatherMatInspection.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
if query1.requestlive then
  begin
    messagedlg('You have to save data first.',mtwarning,[mbyes],0);
    action:=canone;
  end
  else
   action:=Cafree;
end;

procedure TLeatherMatInspection.FormDestroy(Sender: TObject);
begin
  LeatherMatInspection := nil;
end;

procedure TLeatherMatInspection.bExcelClick(Sender: TObject);
var
  ExcelApp, Workbook, Worksheet: OleVariant;
  Row, Col: Integer;
begin
  ExcelApp := CreateOleObject('Excel.Application');
  ExcelApp.Visible := True;

  Workbook := ExcelApp.Workbooks.Add;
  Worksheet := Workbook.Worksheets[1];

  for Col := 0 to Query1.FieldCount - 1 do
    Worksheet.Cells[1, Col + 1] := Query1.Fields[Col].FieldName;

  Row := 2;
  Query1.First;
  while not Query1.Eof do
  begin
    for Col := 0 to Query1.FieldCount - 1 do
      Worksheet.Cells[Row, Col + 1] := Query1.Fields[Col].AsString;
    Inc(Row);
    Query1.Next;
  end;
  Worksheet.Columns.AutoFit;
end;

procedure TLeatherMatInspection.bExFClick(Sender: TObject);
var
  ExcelApp, Workbook, Worksheet, borderRange, Pic, Rg, TB: OleVariant;
  StartRow, InsertRow, row: Integer;
  DuongDanFile, SaveFile, AppDir, SrcFile, DstFile: string;
  SigS, SigWMS, SigL, SigI: Boolean;
  s: WideString;
  i, p: Integer;
  r: array[0..14] of Integer;
  c: array[0..14] of Integer;
  v: array[0..14] of WideString;
  cur: WideString;
begin
  AppDir := ExtractFilePath(Application.ExeName);

  if not DirectoryExists(AppDir) then
    ForceDirectories(AppDir);

  SrcFile := '\\192.168.71.4\erp\lys_erp\A-QIP-WS011-01C.xlsx';
  DstFile := IncludeTrailingPathDelimiter(AppDir) + 'A-QIP-WS011-01C.xlsx';

  if not CopyFile(PChar(SrcFile), PChar(DstFile), False) then
    ShowMessage('Copy file that bai');

  DuongDanFile := ExtractFilePath(ParamStr(0)) + 'A-QIP-WS011-01C.xlsx';
  SaveDialog := TSaveDialog.Create(nil);
  try
    if not cbPDF.Checked then
    begin
      SaveDialog.Filter := 'Excel Files (*.xlsx)|*.xlsx';
      SaveDialog.DefaultExt := 'xlsx';
      SaveDialog.FileName := 'A-QIP-WS011-01C_' + FormatDateTime('yyyy-mm-dd_hh-nn-ss', Now) + '.xlsx';
      SaveDialog.Title := 'Chon noi luu file Excel moi';
    end else
    begin
      SaveDialog.Filter := 'PDF (*.pdf)|*.pdf';
      SaveDialog.DefaultExt := 'pdf';
      SaveDialog.FileName := 'A-QIP-WS011-01C_' + FormatDateTime('yyyy-mm-dd_hh-nn-ss', Now) + '.pdf';
      SaveDialog.Title := 'Chon noi luu file PDF moi';
    end;

    if not SaveDialog.Execute then
      Exit;

    SaveFile := SaveDialog.FileName;
  finally
    SaveDialog.Free;
  end;

  ExcelApp := CreateOleObject('Excel.Application');

  Workbook := ExcelApp.Workbooks.Open(DuongDanFile);
  Worksheet := Workbook.WorkSheets[1];

  r[0]:=2;  c[0]:=3;
  r[1]:=2;  c[1]:=9;
  r[2]:=2;  c[2]:=15;
  r[3]:=3;  c[3]:=3;
  r[4]:=4;  c[4]:=3;
  r[5]:=6;  c[5]:=3;
  r[6]:=6;  c[6]:=14;
  r[7]:=7;  c[7]:=3;
  r[8]:=8;  c[8]:=5;
  r[9]:=9; c[9]:=5;
  r[10]:=10; c[10]:=5;
  r[11]:=11; c[11]:=5;
  r[12]:=19; c[12]:=3;
  r[13]:=19; c[13]:=10;
  r[14]:=19; c[14]:=16;
  if Query1.RecordCount = 0 then Exit;

  v[0] := Query1.FieldByName('Cont').AsString;
  v[1] := FormatDateTime('dd-mm-yyyy', Query1.FieldByName('Time').AsDateTime);
  v[2] := Query1.FieldByName('IQty').AsString;
  v[3] := Query1.FieldByName('MatName').AsString;
  v[4] := Query1.FieldByName('PONo').AsString;
  v[5] := Query1.FieldByName('ThickStand').AsString;
  v[6] := Query1.FieldByName('Reality').AsString;
  v[7] := Query1.FieldByName('Color').AsString;
  v[8] := Query1.FieldByName('AA').AsString;
  v[9] := Query1.FieldByName('BB').AsString;
  v[10]:= Query1.FieldByName('CC').AsString;
  v[11]:= Query1.FieldByName('DD').AsString;
  v[12]:= Query1.FieldByName('TestCon').AsString;
  v[13]:= Query1.FieldByName('IsCompen').AsString;
  v[14]:= Query1.FieldByName('CompenQty').AsString;

  for i := 0 to 14 do
  begin
    cur := Worksheet.Cells[r[i], c[i]].Value;
    if cur = '' then
    begin
      Worksheet.Cells[r[i], c[i]].WrapText := True;
      Worksheet.Cells[r[i], c[i]].Value := v[i]
    end else
    begin
      Worksheet.Cells[r[i], c[i]].WrapText := True;
      Worksheet.Cells[r[i], c[i]].Value := cur + ' ' + v[i];
    end;
  end;


  begin
    Query1.First;
    row := 12;

    while not Query1.Eof do
    begin
      Worksheet.Cells[row, 2].Value := Query1.FieldByName('Grade').AsString;
      Worksheet.Cells[row, 5].Value := Query1.FieldByName('TotalSF').AsString + 'F';
      Worksheet.Cells[row, 8].Value := Query1.FieldByName('PercentGrade').AsString + '%';
      Worksheet.Cells[row, 11].Value := Query1.FieldByName('CompenSF').AsString + 'F';
      Worksheet.Cells[row, 16].Value := Query1.FieldByName('UseSF').AsString + 'F';
      Inc(row);
      Query1.Next;
    end;
  end;

  //Kiem tra ky KCS Super
  Query1.First;
  SigS := false;
  while not Query1.Eof do
  begin
    if (Query1.FieldByName('SCFID').AsString = '') or Query1.FieldByName('SCFID').IsNull then
      SigS := true;
  Query1.Next
  end;

  if SigS = false then
  begin
    Worksheet.Cells[24, 7].WrapText := True;
    Worksheet.Cells[24, 7].Value := GetUsernameByID(Query1.FieldByName('SCFID').AsString)
    + Chr(10) + FormatDateTime('dd-mm-yyyy', Query1.FieldByName('SCFDate').AsDateTime);
  end;

  //Kiem tra ky Warehouse Super
  Query1.First;
  SigWMS := false;
  while not Query1.Eof do
  begin
    if (Query1.FieldByName('MSCFID').AsString = '') or Query1.FieldByName('MSCFID').IsNull then
      SigWMS := true;
  Query1.Next
  end;

  if SigWMS = false then
  begin
    Worksheet.Cells[24, 1].WrapText := True;
    Worksheet.Cells[24, 1].Value := GetUsernameByID(Query1.FieldByName('MSCFID').AsString)
    + Chr(10) + FormatDateTime('dd-mm-yyyy', Query1.FieldByName('MSCFDate').AsDateTime);
  end;

  //Kiem tra ky KCS Leader
  Query1.First;
  SigL := false;
  while not Query1.Eof do
  begin
    if (Query1.FieldByName('LCFID').AsString = '') or Query1.FieldByName('LCFID').IsNull then
      SigL := true;
  Query1.Next
  end;

  if SigL = false then
  begin
    Worksheet.Cells[24, 11].WrapText := True;
    Worksheet.Cells[24, 11].Value := GetUsernameByID(Query1.FieldByName('LCFID').AsString)
    + Chr(10) + FormatDateTime('dd-mm-yyyy', Query1.FieldByName('LCFDate').AsDateTime);
  end;

  //kiem tra PreparedID
  Query1.First;
  SigI := false;
  while not Query1.Eof do
  begin
    if (Query1.FieldByName('PreparedID').AsString = '') or Query1.FieldByName('PreparedID').IsNull then
      SigI := true;
  Query1.Next
  end;

  if SigI = false then
  begin
    Worksheet.Cells[24, 15].WrapText := True;
    Worksheet.Cells[24, 15].Value := Query1.FieldByName('PreparedID').AsString
    + Chr(10) + FormatDateTime('dd-mm-yyyy', Query1.FieldByName('PreparedDate').AsDateTime);
  end;
    
  //dinh dang header
  if cbPDF.Checked then
  begin
    Worksheet.PageSetup.RightHeader := '&P / &N';
    Workbook.ExportAsFixedFormat(0, SaveFile);
    ShowMessage('Duong dan PDF: ' + SaveFile);
    ShellExecute(0, 'open', PChar(SaveFile), nil, nil, SW_SHOWNORMAL);
  end
  else
  begin
    Worksheet.PageSetup.RightHeader := '&P / &N';
    Workbook.SaveAs(SaveFile);
    ShowMessage('Duong dan Excel: ' + SaveFile);
    ExcelApp.Visible := True;
  end;

  ExcelApp := Unassigned;
  Workbook := Unassigned;
  Worksheet := Unassigned;

end;

procedure TLeatherMatInspection.DBGrid1CellClick(Column: TColumnEh);
begin
if not Query1.Active then exit;
if Query1.RecordCount = 0 then exit;
if (Query1.RecordCount > 0)  and not Query1.CachedUpdates then
  begin
    dtpTime.Date := Query1.FieldByName('Time').AsDateTime;
    //edtRID.Text := Query1.FieldByName('ReportID').AsString;
    edtPONo.Text := Query1.FieldByName('PONo').AsString;
    edtMatName.Text := Query1.FieldByName('MatName').AsString;
    edtCont.Text := Query1.FieldByName('Cont').AsString;
    dtpUSERDate.Date := Query1.FieldByName('USERDate').AsDateTime;
  end;
end;

procedure TLeatherMatInspection.btClearClick(Sender: TObject); 
begin
  edtRID.Clear;
  edtPONo.Clear;
  edtMatName.Clear;
  edtCont.Clear;
end;

procedure TLeatherMatInspection.btCopyClick(Sender: TObject);
var
  // Khai bao cac bien theo danh sach moi
  OldCont         : string;
  OldTime         : TDateTime;
  OldIQty         : string;
  OldMatName      : string;
  OldPONo         : string;
  OldThickStand   : string;
  OldReality      : string;
  OldColor        : string;
  OldAA, OldBB    : string;
  OldCC, OldDD    : string;
  OldGrade        : string;
  OldTotalSF      : Double;
  OldPercentGrade : Integer;
  OldPercentNCU   : Integer;
  OldTestCon      : string;
  OldIsCompen     : string;
  OldCompenQty    : string;
begin
  bb4.enabled := true;
  bb5.enabled := true;
  Query1.CachedUpdates := true;
  Query1.RequestLive := true;

  // --- BUOC 1: LAY DU LIEU TU DONG HIEN TAI ---
  OldCont         := Query1.FieldByName('Cont').AsString;
  OldTime         := Query1.FieldByName('Time').AsDateTime;
  OldIQty         := Query1.FieldByName('IQty').AsString;
  OldMatName      := Query1.FieldByName('MatName').AsString;
  OldPONo         := Query1.FieldByName('PONo').AsString;
  OldThickStand   := Query1.FieldByName('ThickStand').AsString;
  OldReality      := Query1.FieldByName('Reality').AsString;
  OldColor        := Query1.FieldByName('Color').AsString;
  OldAA           := Query1.FieldByName('AA').AsString;
  OldBB           := Query1.FieldByName('BB').AsString;
  OldCC           := Query1.FieldByName('CC').AsString;
  OldDD           := Query1.FieldByName('DD').AsString;
  OldGrade        := Query1.FieldByName('Grade').AsString;
  OldTotalSF      := Query1.FieldByName('TotalSF').AsFloat;
  OldPercentGrade := Query1.FieldByName('PercentGrade').AsInteger;
  OldPercentNCU   := Query1.FieldByName('PercentNCU').AsInteger;
  OldTestCon      := Query1.FieldByName('TestCon').AsString;
  OldIsCompen     := Query1.FieldByName('IsCompen').AsString;
  OldCompenQty    := Query1.FieldByName('CompenQty').AsString;

  // --- BUOC 2: TAO BAN GHI MOI VA GAN DU LIEU ---
  Query1.Append;
  Query1.FieldByName('Cont').AsString         := OldCont;
  Query1.FieldByName('Time').AsDateTime        := OldTime;
  Query1.FieldByName('IQty').AsString         := OldIQty;
  Query1.FieldByName('MatName').AsString      := OldMatName;
  Query1.FieldByName('PONo').AsString         := OldPONo;
  Query1.FieldByName('ThickStand').AsString   := OldThickStand;
  Query1.FieldByName('Reality').AsString      := OldReality;
  Query1.FieldByName('Color').AsString        := OldColor;
  Query1.FieldByName('AA').AsString           := OldAA;
  Query1.FieldByName('BB').AsString           := OldBB;
  Query1.FieldByName('CC').AsString           := OldCC;
  Query1.FieldByName('DD').AsString           := OldDD;
  Query1.FieldByName('Grade').AsString        := OldGrade;
  Query1.FieldByName('TotalSF').AsFloat       := OldTotalSF;
  Query1.FieldByName('PercentGrade').AsInteger := OldPercentGrade;
  Query1.FieldByName('PercentNCU').AsInteger  := OldPercentNCU;
  Query1.FieldByName('TestCon').AsString      := OldTestCon;
  Query1.FieldByName('IsCompen').AsString     := OldIsCompen;
  Query1.FieldByName('CompenQty').AsString    := OldCompenQty;
  Query1.Post;
end;

end.
