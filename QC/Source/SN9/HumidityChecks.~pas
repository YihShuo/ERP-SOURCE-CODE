unit HumidityChecks;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DBTables, DB, GridsEh, DBGridEh, StdCtrls, Mask, DBCtrls,
  Buttons, ExtCtrls, ComObj, ShellAPI, ComCtrls;

type
  THumidityCheck = class(TForm)
    Panel1: TPanel;
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
    bExcel: TBitBtn;
    bExF: TBitBtn;
    cbPDF: TCheckBox;
    edtZSBH: TEdit;
    ckUSERDate: TCheckBox;
    dtpUSERDate: TDateTimePicker;
    MenuCode: TEdit;
    edtRID: TEdit;
    dtpInsDate: TDateTimePicker;
    edtCont: TEdit;
    edtMatName: TEdit;
    btClear: TButton;
    ckInsDate: TCheckBox;
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
    Query1InspecDate: TDateTimeField;
    Query1Cont: TStringField;
    Query1MatName: TStringField;
    Query1Supplier: TStringField;
    Query1ArrQty: TIntegerField;
    Query1IQty: TIntegerField;
    Query1StandardRH: TStringField;
    Query1RealityRH: TStringField;
    Query1InspecID: TStringField;
    Query1Remark: TStringField;
    Query1SCFID: TStringField;
    Query1SCFDate: TDateTimeField;
    Query1LCFID: TStringField;
    Query1LCFDate: TDateTimeField;
    Query1MSCFID: TStringField;
    Query1MSCFDate: TDateTimeField;
    Query1USERID: TStringField;
    Query1USERDate: TDateTimeField;
    Query1PreparedID: TStringField;
    Query1PreparedDate: TDateTimeField;
    Query1YN: TSmallintField;
    procedure bExcelClick(Sender: TObject);
    procedure BB1Click(Sender: TObject);
    procedure BB2Click(Sender: TObject);
    procedure BB3Click(Sender: TObject);
    procedure BB5Click(Sender: TObject);
    function GetUsernameByID(const AID: string): string;
    function NewID: string;
    procedure BB4Click(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure bExFClick(Sender: TObject);
    procedure Query1AfterOpen(DataSet: TDataSet);
    procedure SetColumnsReadOnly;
    procedure DBGrid1GetCellParams(Sender: TObject; Column: TColumnEh;
      AFont: TFont; var Background: TColor; State: TGridDrawState);
    procedure DBGrid1KeyPress(Sender: TObject; var Key: Char);
    procedure BB6Click(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure Query1AfterScroll(DataSet: TDataSet);
    procedure DS1StateChange(Sender: TObject);
    procedure LockDBGrid;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  HumidityCheck: THumidityCheck;

implementation

uses main1;

{$R *.dfm}

procedure THumidityCheck.LockDBGrid;
begin
  DBGrid1.ReadOnly :=
       (not Query1.FieldByName('SCFID').IsNull)
    and (not Query1.FieldByName('LCFID').IsNull)
    and (not Query1.FieldByName('MSCFID').IsNull);
end;

procedure THumidityCheck.SetColumnsReadOnly;
begin
  if MenuCode.Text = 'N991' then
  begin
    DBGrid1.FieldColumns['ReportID'].ReadOnly      := True;
    DBGrid1.FieldColumns['SCFID'].ReadOnly         := True;
    DBGrid1.FieldColumns['SCFDate'].ReadOnly       := True;
    DBGrid1.FieldColumns['LCFID'].ReadOnly         := True;
    DBGrid1.FieldColumns['LCFDate'].ReadOnly       := True;
    DBGrid1.FieldColumns['MSCFID'].ReadOnly        := True;
    DBGrid1.FieldColumns['MSCFDate'].ReadOnly      := True;
    DBGrid1.FieldColumns['USERID'].ReadOnly        := True;
    DBGrid1.FieldColumns['USERDate'].ReadOnly      := True;
    DBGrid1.FieldColumns['PreparedID'].ReadOnly    := True;
    DBGrid1.FieldColumns['PreparedDate'].ReadOnly  := True;
    DBGrid1.FieldColumns['YN'].ReadOnly            := True;
  end;

  if MenuCode.Text = 'N992' then
  begin
    DBGrid1.FieldColumns['ReportID'].ReadOnly      := True;
    DBGrid1.FieldColumns['InspecDate'].ReadOnly    := True;
    DBGrid1.FieldColumns['Cont'].ReadOnly          := True;
    DBGrid1.FieldColumns['MatName'].ReadOnly       := True;
    DBGrid1.FieldColumns['Supplier'].ReadOnly      := True;
    DBGrid1.FieldColumns['ArrQty'].ReadOnly        := True;
    DBGrid1.FieldColumns['IQty'].ReadOnly          := True;
    DBGrid1.FieldColumns['StandardRH'].ReadOnly    := True;
    DBGrid1.FieldColumns['RealityRH'].ReadOnly     := True;
    DBGrid1.FieldColumns['InspecID'].ReadOnly      := True;
    DBGrid1.FieldColumns['Remark'].ReadOnly        := True;
    DBGrid1.FieldColumns['SCFDate'].ReadOnly       := True;
    DBGrid1.FieldColumns['LCFID'].ReadOnly         := True;
    DBGrid1.FieldColumns['LCFDate'].ReadOnly       := True;
    DBGrid1.FieldColumns['MSCFID'].ReadOnly        := True;
    DBGrid1.FieldColumns['MSCFDate'].ReadOnly      := True;
    DBGrid1.FieldColumns['USERID'].ReadOnly        := True;
    DBGrid1.FieldColumns['USERDate'].ReadOnly      := True;
    DBGrid1.FieldColumns['PreparedID'].ReadOnly    := True;
    DBGrid1.FieldColumns['PreparedDate'].ReadOnly  := True;
    DBGrid1.FieldColumns['YN'].ReadOnly            := True;
  end;

  if MenuCode.Text = 'N993' then
  begin
    DBGrid1.FieldColumns['ReportID'].ReadOnly      := True;
    DBGrid1.FieldColumns['InspecDate'].ReadOnly    := True;
    DBGrid1.FieldColumns['Cont'].ReadOnly          := True;
    DBGrid1.FieldColumns['MatName'].ReadOnly       := True;
    DBGrid1.FieldColumns['Supplier'].ReadOnly      := True;
    DBGrid1.FieldColumns['ArrQty'].ReadOnly        := True;
    DBGrid1.FieldColumns['IQty'].ReadOnly          := True;
    DBGrid1.FieldColumns['StandardRH'].ReadOnly    := True;
    DBGrid1.FieldColumns['RealityRH'].ReadOnly     := True;
    DBGrid1.FieldColumns['InspecID'].ReadOnly      := True;
    DBGrid1.FieldColumns['Remark'].ReadOnly        := True;
    DBGrid1.FieldColumns['SCFID'].ReadOnly         := True;
    DBGrid1.FieldColumns['SCFDate'].ReadOnly       := True;
    DBGrid1.FieldColumns['LCFDate'].ReadOnly       := True;
    DBGrid1.FieldColumns['MSCFID'].ReadOnly        := True;
    DBGrid1.FieldColumns['MSCFDate'].ReadOnly      := True;
    DBGrid1.FieldColumns['USERID'].ReadOnly        := True;
    DBGrid1.FieldColumns['USERDate'].ReadOnly      := True;
    DBGrid1.FieldColumns['PreparedID'].ReadOnly    := True;
    DBGrid1.FieldColumns['PreparedDate'].ReadOnly  := True;
    DBGrid1.FieldColumns['YN'].ReadOnly            := True;
  end;

  if MenuCode.Text = 'N994' then
  begin
    DBGrid1.FieldColumns['ReportID'].ReadOnly      := True;
    DBGrid1.FieldColumns['InspecDate'].ReadOnly    := True;
    DBGrid1.FieldColumns['Cont'].ReadOnly          := True;
    DBGrid1.FieldColumns['MatName'].ReadOnly       := True;
    DBGrid1.FieldColumns['Supplier'].ReadOnly      := True;
    DBGrid1.FieldColumns['ArrQty'].ReadOnly        := True;
    DBGrid1.FieldColumns['IQty'].ReadOnly          := True;
    DBGrid1.FieldColumns['StandardRH'].ReadOnly    := True;
    DBGrid1.FieldColumns['RealityRH'].ReadOnly     := True;
    DBGrid1.FieldColumns['InspecID'].ReadOnly      := True;
    DBGrid1.FieldColumns['Remark'].ReadOnly        := True;
    DBGrid1.FieldColumns['SCFID'].ReadOnly         := True;
    DBGrid1.FieldColumns['SCFDate'].ReadOnly       := True;
    DBGrid1.FieldColumns['LCFID'].ReadOnly         := True;
    DBGrid1.FieldColumns['LCFDate'].ReadOnly       := True;
    DBGrid1.FieldColumns['MSCFDate'].ReadOnly      := True;
    DBGrid1.FieldColumns['USERID'].ReadOnly        := True;
    DBGrid1.FieldColumns['USERDate'].ReadOnly      := True;
    DBGrid1.FieldColumns['PreparedID'].ReadOnly    := True;
    DBGrid1.FieldColumns['PreparedDate'].ReadOnly  := True;
    DBGrid1.FieldColumns['YN'].ReadOnly            := True;
  end;

end;


function THumidityCheck.GetUsernameByID(const AID: string): string;
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

function THumidityCheck.NewID: string;
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
      'from QC_HumidityCheck ' +
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

procedure THumidityCheck.bExcelClick(Sender: TObject);
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

procedure THumidityCheck.BB1Click(Sender: TObject);
begin
  with query1 do
  begin
  RequestLive :=  true;
  CachedUpdates:= true;
  Insert;
  end;
bb4.Enabled := true;
bb5.enabled := true;
end;

procedure THumidityCheck.BB2Click(Sender: TObject);
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

procedure THumidityCheck.BB3Click(Sender: TObject);
begin
with query1 do
  begin
    cachedupdates:=true;
    requestlive:=true;
    query1.edit;
  end;
bb4.Enabled := true;
bb5.enabled:=true;
end;

procedure THumidityCheck.BB5Click(Sender: TObject);
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

procedure THumidityCheck.BB4Click(Sender: TObject);
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
                  else if MenuCode.Text = 'N991' then
                    begin
                      Query1.FieldByName('USERID').Value := main.Edit1.Text;
                      Query1.FieldByName('USERDate').Value := FormatDateTime('yyyy-mm-dd', Now);
                    end;
                  if MenuCode.Text = 'N992' then
                    begin
                      Query1.FieldByName('SCFDate').Value := FormatDateTime('yyyy-mm-dd', Now);
                    end;
                  if MenuCode.Text = 'N993' then
                    begin
                      Query1.FieldByName('LCFDate').Value := FormatDateTime('yyyy-mm-dd', Now);
                    end;
                  if MenuCode.Text = 'N994' then
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

  except
   Messagedlg('Have wrong, can not save data!',mtwarning,[mbyes],0);
  end;
end;

procedure THumidityCheck.Button1Click(Sender: TObject);
begin
  SetColumnsReadOnly;
  with Query1 do
  begin
    Active := false;
    SQL.Clear;
    SQL.Add('select * from QC_HumidityCheck where 1=1 and YN <> 0');

    if ckInsDate.Checked then
      SQL.Add('and CAST(InspecDate as Date) = '''+FormatDateTime('yyyy-mm-dd', dtpInsDate.Date)+''' ');
    if ckUSERDate.Checked then
      SQL.Add('and CAST(USERDate as Date) = '''+FormatDateTime('yyyy-mm-dd', dtpUSERDate.Date)+''' ');
    if edtCont.Text <> '' then
      SQL.Add('and Cont like '''+edtCont.Text+'%'' ');
    if edtMatName.Text <> '' then
      SQL.Add('and MatName like '''+edtMatName.Text+'%'' ');
    if edtZSBH.Text <> '' then
      SQL.Add('and Supplier like '''+edtZSBH.Text+'%'' ');
    Active := true;
  end;
end;

procedure THumidityCheck.bExFClick(Sender: TObject);
var
  ExcelApp, Workbook, Worksheet, borderRange: OleVariant;
  StartRow, InsertRow: Integer;
  DuongDanFile, SaveFile, s, AppDir, SrcFile, DstFile: string;
  i, p: Integer;
  MaxHeight: Double;
  SigS, SigMS, SigL, SigP: Boolean;
begin

  AppDir := ExtractFilePath(Application.ExeName);

  if not DirectoryExists(AppDir) then
    ForceDirectories(AppDir);

  SrcFile := '\\192.168.71.4\erp\lys_erp\A-QIP-008C.xlsx';
  DstFile := IncludeTrailingPathDelimiter(AppDir) + 'A-QIP-008C.xlsx';

  if not CopyFile(PChar(SrcFile), PChar(DstFile), False) then
    ShowMessage('Copy file that bai');

  DuongDanFile := ExtractFilePath(ParamStr(0)) + 'A-QIP-008C.xlsx';

  StartRow := 5;

  SaveDialog := TSaveDialog.Create(nil);
  try
    if not cbPDF.Checked then
    begin
      SaveDialog.Filter := 'Excel Files (*.xlsx)|*.xlsx';
      SaveDialog.DefaultExt := 'xlsx';
      SaveDialog.FileName := 'A-QIP-008C_' + FormatDateTime('yyyy-mm-dd_hh-nn-ss', Now) + '.xlsx';
      SaveDialog.Title := 'Chon noi luu file Excel moi';
    end else
    begin
      SaveDialog.Filter := 'PDF (*.pdf)|*.pdf';
      SaveDialog.DefaultExt := 'pdf';
      SaveDialog.FileName := 'A-QIP-008C_' + FormatDateTime('yyyy-mm-dd_hh-nn-ss', Now) + '.pdf';
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
  
  Query1.First;
  InsertRow := StartRow;

  while not Query1.Eof do
  begin
    Worksheet.Rows[Format('%d:%d', [InsertRow, InsertRow])].Insert;

    borderRange := Worksheet.Range[Format('A%d:J%d', [InsertRow, InsertRow])];
    borderRange.Borders.LineStyle := 1;
    borderRange.Borders.Weight := 2;


    Worksheet.Cells[InsertRow, 1].Value := FormatDateTime('dd-mm-yyyy',Query1.FieldByName('InspecDate').AsDateTime);
    Worksheet.Cells[InsertRow, 2].Value := Query1.FieldByName('Cont').AsString;
    Worksheet.Cells[InsertRow, 3].Value := Query1.FieldByName('MatName').AsString;
    Worksheet.Cells[InsertRow, 4].Value := Query1.FieldByName('Supplier').AsString;
    Worksheet.Cells[InsertRow, 5].Value := Query1.FieldByName('ArrQty').AsString;
    Worksheet.Cells[InsertRow, 6].Value := Query1.FieldByName('IQty').AsString;
    Worksheet.Cells[InsertRow, 7].Value := Query1.FieldByName('StandardRH').AsString;
    Worksheet.Cells[InsertRow, 8].Value := Query1.FieldByName('RealityRH').AsString;
    Worksheet.Cells[InsertRow, 9].Value := Query1.FieldByName('InspecID').AsString;
    Worksheet.Cells[InsertRow, 10].Value := Query1.FieldByName('Remark').AsString;
    Worksheet.Rows[InsertRow].AutoFit;

    Inc(InsertRow);
    Query1.Next;
  end;

  Worksheet.Rows[Format('%d:%d', [InsertRow, InsertRow])].Delete;

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
    Worksheet.Cells[InsertRow + 2, 4].WrapText := True;
    Worksheet.Cells[InsertRow + 2, 4].Value := GetUsernameByID(Query1.FieldByName('SCFID').AsString)
    + Chr(10) + FormatDateTime('dd-mm-yyyy', Query1.FieldByName('SCFDate').AsDateTime);
  end;

  //Kiem tra ky Material Super
  Query1.First;
  SigMS := false;
  while not Query1.Eof do
  begin
    if (Query1.FieldByName('MSCFID').AsString = '') or Query1.FieldByName('MSCFID').IsNull then
      SigMS := true;
  Query1.Next
  end;

  if SigMS = false then
  begin
    Worksheet.Cells[InsertRow + 2, 1].WrapText := True;
    Worksheet.Cells[InsertRow + 2, 1].Value := GetUsernameByID(Query1.FieldByName('MSCFID').AsString)
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
    Worksheet.Cells[InsertRow + 2, 7].WrapText := True;
    Worksheet.Cells[InsertRow + 2, 7].Value := GetUsernameByID(Query1.FieldByName('LCFID').AsString)
    + Chr(10) + FormatDateTime('dd-mm-yyyy', Query1.FieldByName('LCFDate').AsDateTime);
  end;

  //Kiem tra ky PreparedID
  Query1.First;
  SigP := false;
  while not Query1.Eof do
  begin
    if (Query1.FieldByName('PreparedID').AsString = '') or Query1.FieldByName('PreparedID').IsNull then
      SigP := true;
  Query1.Next
  end;

  if SigP = false then
  begin
    Worksheet.Cells[InsertRow + 2, 9].WrapText := True;
    Worksheet.Cells[InsertRow + 2, 9].Value := Query1.FieldByName('PreparedID').AsString
    + Chr(10) + FormatDateTime('dd-mm-yyyy', Query1.FieldByName('PreparedDate').AsDateTime);
  end;

  if cbPDF.Checked then
  begin
    Worksheet.PageSetup.PrintTitleRows := '$1:$4';
    Worksheet.PageSetup.RightHeader := '&P / &N';
    Workbook.ExportAsFixedFormat(0, SaveFile);
    ShowMessage('Duong dan PDF: ' + SaveFile);
    ShellExecute(0, 'open', PChar(SaveFile), nil, nil, SW_SHOWNORMAL);
  end
  else
  begin
    Worksheet.PageSetup.PrintTitleRows := '$1:$4';
    Worksheet.PageSetup.RightHeader := '&P / &N';
    Workbook.SaveAs(SaveFile);
    ShowMessage('Duong dan Excel: ' + SaveFile);
    ExcelApp.Visible := True;
  end;

  ExcelApp := Unassigned;
  Workbook := Unassigned;
  Worksheet := Unassigned;

end;

procedure THumidityCheck.Query1AfterOpen(DataSet: TDataSet);
begin
  BB1.Enabled:=true;
  BB2.Enabled:=true;
  BB3.Enabled:=true;
  bbt6.Enabled:=true;
  bExcel.Enabled := true;
  bExF.Enabled := true;
end;

procedure THumidityCheck.DBGrid1GetCellParams(Sender: TObject;
  Column: TColumnEh; AFont: TFont; var Background: TColor;
  State: TGridDrawState);
begin
  if Query1.FieldByName('YN').Value = '0' then
    DBGrid1.Canvas.Font.Color := clRed;
end;

procedure THumidityCheck.DBGrid1KeyPress(Sender: TObject; var Key: Char);
begin
  // Neu nhan Enter
  if Key = #13 then
  begin

    if (DBGrid1.SelectedField.FieldName = 'SCFID') and (MenuCode.Text = 'N992') and Query1.CachedUpdates then
    begin
      Query1.Edit;
      Query1.FieldByName('SCFID').AsString := main.Edit1.Text;
      Query1.Post;
    end;

    if (DBGrid1.SelectedField.FieldName = 'LCFID') and (MenuCode.Text = 'N993') and Query1.CachedUpdates then
    begin
      Query1.Edit;
      Query1.FieldByName('LCFID').AsString := main.Edit1.Text;
      Query1.Post;
    end;
    if (DBGrid1.SelectedField.FieldName = 'MSCFID') and (MenuCode.Text = 'N994') and Query1.CachedUpdates then
    begin
      Query1.Edit;
      Query1.FieldByName('MSCFID').AsString := main.Edit1.Text;
      Query1.Post;
    end;
  end;
end;

procedure THumidityCheck.BB6Click(Sender: TObject);
begin
  Close;
end;

procedure THumidityCheck.FormDestroy(Sender: TObject);
begin
  HumidityCheck := nil;
end;

procedure THumidityCheck.FormClose(Sender: TObject;
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

procedure THumidityCheck.Query1AfterScroll(DataSet: TDataSet);
begin
  //LockDBGrid;
end;

procedure THumidityCheck.DS1StateChange(Sender: TObject);
begin
  //LockDBGrid;
end;

end.
