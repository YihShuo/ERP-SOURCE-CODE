unit IncomeUpperMaterials;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DBTables, DB, GridsEh, DBGridEh, StdCtrls, Mask, DBCtrls,
  Buttons, ExtCtrls, ComObj, ShellAPI, ComCtrls, DBCtrlsEh;

type
  TIncomeUpperMaterial = class(TForm)
    Panel1: TPanel;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label7: TLabel;
    Label9: TLabel;
    BB1: TBitBtn;
    BB2: TBitBtn;
    BB3: TBitBtn;
    BB4: TBitBtn;
    BB5: TBitBtn;
    BB6: TBitBtn;
    Button1: TButton;
    bbt6: TBitBtn;
    edtDDBH: TEdit;
    bExcel: TBitBtn;
    bExF: TBitBtn;
    cbPDF: TCheckBox;
    edtZSBH: TEdit;
    ckUSERDate: TCheckBox;
    dtpUSERDate: TDateTimePicker;
    MenuCode: TEdit;
    edtRID: TEdit;
    dtpInsDate: TDateTimePicker;
    edtMatID: TEdit;
    edtSKU: TEdit;
    btClear: TButton;
    ckInsDate: TCheckBox;
    btConfirm: TButton;
    DBGrid1: TDBGridEh;
    Query1: TQuery;
    DS1: TDataSource;
    UpSQL1: TUpdateSQL;
    Qtemp: TQuery;
    OpenDialog1: TOpenDialog;
    SaveDialog: TSaveDialog;
    QGetID: TQuery;
    QSig: TQuery;
    ckArrDate: TCheckBox;
    dtpArrDate: TDateTimePicker;
    Query1ReportID: TIntegerField;
    Query1InspecDate: TDateTimeField;
    Query1ArrDate: TDateTimeField;
    Query1Brand: TStringField;
    Query1CLBH: TStringField;
    Query1DeReason: TStringField;
    Query1SendDate: TDateTimeField;
    Query1LabID: TStringField;
    Query1LabResult: TStringField;
    Query1Reject: TStringField;
    Query1SCFID: TStringField;
    Query1SCFDate: TDateTimeField;
    Query1LCFID: TStringField;
    Query1LCFDate: TDateTimeField;
    Query1MSCFID: TStringField;
    Query1MSCFDate: TDateTimeField;
    Query1YN: TSmallintField;
    Query1USERID: TStringField;
    Query1USERDate: TDateTimeField;
    Query1LabUID: TStringField;
    Query1LabChgDate: TDateTimeField;
    Query1PreparedID: TStringField;
    Query1PreparedDate: TDateTimeField;
    Query1Cont: TStringField;
    Label4: TLabel;
    edtBrand: TEdit;
    Panel2: TPanel;
    DBGridEh1: TDBGridEh;
    QDetail: TQuery;
    DSDetail: TDataSource;
    Query1InspecResult: TStringField;
    UpDetail: TUpdateSQL;
    QDetailRY: TStringField;
    QDetailArticle: TStringField;
    QDetailCustPO: TStringField;
    QDetailRemark: TStringField;
    QDetailYN: TStringField;
    QDetailUserID: TStringField;
    QDetailUserDate: TDateTimeField;
    QDetailXieMing: TStringField;
    QDetailNo_ID: TIntegerField;
    Query1No_ID: TIntegerField;
    Query1ZSBH: TStringField;
    Query1ywpm: TStringField;
    Query1zsywjc: TStringField;
    Query1RQty: TCurrencyField;
    Query1IQty: TCurrencyField;
    Query1DeQty: TCurrencyField;
    procedure DBGrid1CellClick(Column: TColumnEh);
    procedure Query1AfterOpen(DataSet: TDataSet);
    function GetUsernameByID(const AID: string): string;
    function NewID: string;
    procedure Button1Click(Sender: TObject);
    procedure BB1Click(Sender: TObject);
    procedure BB3Click(Sender: TObject);
    procedure BB4Click(Sender: TObject);
    procedure BB5Click(Sender: TObject);
    procedure btClearClick(Sender: TObject);
    procedure BB6Click(Sender: TObject);
    procedure DBGrid1GetCellParams(Sender: TObject; Column: TColumnEh;
      AFont: TFont; var Background: TColor; State: TGridDrawState);
    procedure FormDestroy(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure bExFClick(Sender: TObject);
    procedure WriteCellAppend(Cell: OleVariant; const Txt: WideString; NewLine: Boolean);
    procedure SetColumnsReadOnly;
    procedure DBGrid1KeyPress(Sender: TObject; var Key: Char);
    procedure bExcelClick(Sender: TObject);
    procedure BB2Click(Sender: TObject);
    procedure DBGrid1Columns0EditButtonClick(Sender: TObject;
      var Handled: Boolean);
    procedure PrintSign(
      AWorksheet: OleVariant;
      AQuery: TQuery;
      AInsertRow: Integer;
      const AIDField, ADateField: string;
      ACol: Integer;
      UseUserName: Boolean
    );
    procedure btConfirmClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  IncomeUpperMaterial: TIncomeUpperMaterial;

implementation

uses main1, N721Detail;

{$R *.dfm}

procedure TIncomeUpperMaterial.PrintSign(
  AWorksheet: OleVariant;
  AQuery: TQuery;
  AInsertRow: Integer;
  const AIDField, ADateField: string;
  ACol: Integer;
  UseUserName: Boolean
);
var
  s, SignFile: string;
  Cell, MergeCell: OleVariant;
  CellLeft, CellTop, CellWidth, CellHeight: Double;
  PicWidth, PicHeight: Double;
begin
  if AQuery.FieldByName(AIDField).IsNull
     or (Trim(AQuery.FieldByName(AIDField).AsString) = '') then
    Exit;

  Cell := AWorksheet.Cells[AInsertRow + 1, ACol];
  MergeCell := Cell.MergeArea;

  MergeCell.WrapText := True;
  MergeCell.HorizontalAlignment := -4108; // xlCenter
  MergeCell.VerticalAlignment := -4108;   // xlCenter

  s := AQuery.FieldByName(AIDField).AsString;
  s := StringReplace(s, '_', Chr(10), [rfReplaceAll]);

  if UseUserName then
  begin
    Cell.Value :=
      Chr(10) + Chr(10) + Chr(10) +
      GetUsernameByID(AQuery.FieldByName(AIDField).AsString)
      + Chr(10)
      + FormatDateTime(
          'dd-mm-yyyy',
          AQuery.FieldByName(ADateField).AsDateTime
        );

    SignFile := ExtractFilePath(Application.ExeName) +
                'Signatures\' +
                Trim(AQuery.FieldByName(AIDField).AsString) +
                '.bmp';

    if FileExists(SignFile) then
    begin
      CellLeft   := MergeCell.Left;
      CellTop    := MergeCell.Top;
      CellWidth  := MergeCell.Width;
      CellHeight := MergeCell.Height;

      PicWidth  := CellWidth * 0.4;
      PicHeight := CellHeight * 0.45;

      AWorksheet.Shapes.AddPicture(
        SignFile,
        False,
        True,
        CellLeft + (CellWidth - PicWidth) / 2, // can giua ngang
        CellTop + (CellHeight * 0.1),          // phia tren
        PicWidth,
        PicHeight
      );
    end;
  end
  else
    Cell.Value := s;
end;

procedure TIncomeUpperMaterial.SetColumnsReadOnly;
begin
if MenuCode.Text = 'N971' then
  begin
    DBGrid1.FieldColumns['ReportID'].ReadOnly := True;
    DBGrid1.FieldColumns['LabID'].ReadOnly := True;
    DBGrid1.FieldColumns['LabResult'].ReadOnly := True;
    DBGrid1.FieldColumns['Reject'].ReadOnly := True;
    DBGrid1.FieldColumns['SCFID'].ReadOnly := True;
    DBGrid1.FieldColumns['SCFDate'].ReadOnly := True;
    DBGrid1.FieldColumns['LCFID'].ReadOnly := True;
    DBGrid1.FieldColumns['LCFDate'].ReadOnly := True;
    DBGrid1.FieldColumns['MSCFID'].ReadOnly := True;
    DBGrid1.FieldColumns['MSCFDate'].ReadOnly := True;
    DBGrid1.FieldColumns['YN'].ReadOnly := True;
    DBGrid1.FieldColumns['USERID'].ReadOnly := True;
    DBGrid1.FieldColumns['USERDate'].ReadOnly := True;
    DBGrid1.FieldColumns['LabUID'].ReadOnly := True;
    DBGrid1.FieldColumns['LabChgDate'].ReadOnly := True;
    DBGrid1.FieldColumns['PreparedDate'].ReadOnly := True;
  end else if MenuCode.Text = 'N972' then
  begin
    DBGrid1.FieldColumns['ReportID'].ReadOnly := True;
    DBGrid1.FieldColumns['Cont'].ReadOnly := True;
    DBGrid1.FieldColumns['InspecDate'].ReadOnly := True;
    DBGrid1.FieldColumns['ArrDate'].ReadOnly := True;
    DBGrid1.FieldColumns['Brand'].ReadOnly := True;
    DBGrid1.FieldColumns['CLBH'].ReadOnly := True;
    DBGrid1.FieldColumns['RQty'].ReadOnly := True;
    DBGrid1.FieldColumns['IQty'].ReadOnly := True;
    DBGrid1.FieldColumns['DeReason'].ReadOnly := True;
    DBGrid1.FieldColumns['DeQty'].ReadOnly := True;
    DBGrid1.FieldColumns['InspecResult'].ReadOnly := True;
    DBGrid1.FieldColumns['SendDate'].ReadOnly := True;
    DBGrid1.FieldColumns['LabID'].ReadOnly := True;
    DBGrid1.FieldColumns['LabResult'].ReadOnly := True;
    DBGrid1.FieldColumns['Reject'].ReadOnly := True;
    DBGrid1.FieldColumns['SCFDate'].ReadOnly := True;
    DBGrid1.FieldColumns['LCFID'].ReadOnly := True;
    DBGrid1.FieldColumns['LCFDate'].ReadOnly := True;
    DBGrid1.FieldColumns['MSCFID'].ReadOnly := True;
    DBGrid1.FieldColumns['MSCFDate'].ReadOnly := True;
    DBGrid1.FieldColumns['YN'].ReadOnly := True;
    DBGrid1.FieldColumns['USERID'].ReadOnly := True;
    DBGrid1.FieldColumns['USERDate'].ReadOnly := True;
    DBGrid1.FieldColumns['LabUID'].ReadOnly := True;
    DBGrid1.FieldColumns['LabChgDate'].ReadOnly := True;
    DBGrid1.FieldColumns['PreparedID'].ReadOnly := True;
    DBGrid1.FieldColumns['PreparedDate'].ReadOnly := True;
  end else if MenuCode.Text = 'N973' then
  begin
    DBGrid1.FieldColumns['ReportID'].ReadOnly := True;
    DBGrid1.FieldColumns['Cont'].ReadOnly := True;
    DBGrid1.FieldColumns['InspecDate'].ReadOnly := True;
    DBGrid1.FieldColumns['ArrDate'].ReadOnly := True;
    DBGrid1.FieldColumns['Brand'].ReadOnly := True;
    DBGrid1.FieldColumns['CLBH'].ReadOnly := True;
    DBGrid1.FieldColumns['RQty'].ReadOnly := True;
    DBGrid1.FieldColumns['IQty'].ReadOnly := True;
    DBGrid1.FieldColumns['DeReason'].ReadOnly := True;
    DBGrid1.FieldColumns['DeQty'].ReadOnly := True;
    DBGrid1.FieldColumns['InspecResult'].ReadOnly := True;
    DBGrid1.FieldColumns['SendDate'].ReadOnly := True;
    DBGrid1.FieldColumns['LabID'].ReadOnly := True;
    DBGrid1.FieldColumns['LabResult'].ReadOnly := True;
    DBGrid1.FieldColumns['Reject'].ReadOnly := True;
    DBGrid1.FieldColumns['SCFID'].ReadOnly := True;
    DBGrid1.FieldColumns['SCFDate'].ReadOnly := True;
    DBGrid1.FieldColumns['LCFDate'].ReadOnly := True;
    DBGrid1.FieldColumns['MSCFID'].ReadOnly := True;
    DBGrid1.FieldColumns['MSCFDate'].ReadOnly := True;
    DBGrid1.FieldColumns['YN'].ReadOnly := True;
    DBGrid1.FieldColumns['USERID'].ReadOnly := True;
    DBGrid1.FieldColumns['USERDate'].ReadOnly := True;
    DBGrid1.FieldColumns['LabUID'].ReadOnly := True;
    DBGrid1.FieldColumns['LabChgDate'].ReadOnly := True;
    DBGrid1.FieldColumns['PreparedID'].ReadOnly := True;
    DBGrid1.FieldColumns['PreparedDate'].ReadOnly := True;
  end else if MenuCode.Text = 'N974' then
  begin
    DBGrid1.FieldColumns['ReportID'].ReadOnly := True;
    DBGrid1.FieldColumns['Cont'].ReadOnly := True;
    DBGrid1.FieldColumns['InspecDate'].ReadOnly := True;
    DBGrid1.FieldColumns['ArrDate'].ReadOnly := True;
    DBGrid1.FieldColumns['Brand'].ReadOnly := True;
    DBGrid1.FieldColumns['CLBH'].ReadOnly := True;
    DBGrid1.FieldColumns['RQty'].ReadOnly := True;
    DBGrid1.FieldColumns['IQty'].ReadOnly := True;
    DBGrid1.FieldColumns['DeReason'].ReadOnly := True;
    DBGrid1.FieldColumns['DeQty'].ReadOnly := True;
    DBGrid1.FieldColumns['InspecResult'].ReadOnly := True;
    DBGrid1.FieldColumns['SendDate'].ReadOnly := True;
    DBGrid1.FieldColumns['LabID'].ReadOnly := True;
    DBGrid1.FieldColumns['LabResult'].ReadOnly := True;
    DBGrid1.FieldColumns['Reject'].ReadOnly := True;
    DBGrid1.FieldColumns['SCFID'].ReadOnly := True;
    DBGrid1.FieldColumns['SCFDate'].ReadOnly := True;
    DBGrid1.FieldColumns['LCFID'].ReadOnly := True;
    DBGrid1.FieldColumns['LCFDate'].ReadOnly := True;
    DBGrid1.FieldColumns['MSCFDate'].ReadOnly := True;
    DBGrid1.FieldColumns['YN'].ReadOnly := True;
    DBGrid1.FieldColumns['USERID'].ReadOnly := True;
    DBGrid1.FieldColumns['USERDate'].ReadOnly := True;
    DBGrid1.FieldColumns['LabUID'].ReadOnly := True;
    DBGrid1.FieldColumns['LabChgDate'].ReadOnly := True;
    DBGrid1.FieldColumns['PreparedID'].ReadOnly := True;
    DBGrid1.FieldColumns['PreparedDate'].ReadOnly := True;
  end else if MenuCode.Text = 'N975' then
  begin
    DBGrid1.FieldColumns['ReportID'].ReadOnly := True;
    DBGrid1.FieldColumns['Cont'].ReadOnly := True;
    DBGrid1.FieldColumns['InspecDate'].ReadOnly := True;
    DBGrid1.FieldColumns['ArrDate'].ReadOnly := True;
    DBGrid1.FieldColumns['Brand'].ReadOnly := True;
    DBGrid1.FieldColumns['CLBH'].ReadOnly := True;
    DBGrid1.FieldColumns['Supplier'].ReadOnly := True;
    DBGrid1.FieldColumns['DDBH'].ReadOnly := True;
    DBGrid1.FieldColumns['RQty'].ReadOnly := True;
    DBGrid1.FieldColumns['IQty'].ReadOnly := True;
    DBGrid1.FieldColumns['DeReason'].ReadOnly := True;
    DBGrid1.FieldColumns['DeQty'].ReadOnly := True;
    DBGrid1.FieldColumns['InspecResult'].ReadOnly := True;
    DBGrid1.FieldColumns['SendDate'].ReadOnly := True;
    DBGrid1.FieldColumns['SCFID'].ReadOnly := True;
    DBGrid1.FieldColumns['SCFDate'].ReadOnly := True;
    DBGrid1.FieldColumns['LCFID'].ReadOnly := True;
    DBGrid1.FieldColumns['LCFDate'].ReadOnly := True;
    DBGrid1.FieldColumns['MSCFID'].ReadOnly := True;
    DBGrid1.FieldColumns['MSCFDate'].ReadOnly := True;
    DBGrid1.FieldColumns['YN'].ReadOnly := True;
    DBGrid1.FieldColumns['USERID'].ReadOnly := True;
    DBGrid1.FieldColumns['USERDate'].ReadOnly := True;
    DBGrid1.FieldColumns['LabUID'].ReadOnly := True;
    DBGrid1.FieldColumns['LabChgDate'].ReadOnly := True;
    DBGrid1.FieldColumns['PreparedID'].ReadOnly := True;
    DBGrid1.FieldColumns['PreparedDate'].ReadOnly := True;
  end;
end;

procedure TIncomeUpperMaterial.WriteCellAppend(Cell: OleVariant; const Txt: WideString; NewLine: Boolean);
var
  s: WideString;
  p: Integer;
begin
  s := VarToWideStr(Cell.Value);

  if NewLine then
  begin
    p := LastDelimiter(#10, s);
    if p = 0 then
      Cell.Characters(Length(s) + 1, 0).Text := #10 + Txt
    else
      Cell.Characters(Length(s) + 1, 0).Text := ' ' + Txt;
  end
  else
    Cell.Characters(Length(s) + 1, 0).Text := ' ' + Txt;
end;

function TIncomeUpperMaterial.GetUsernameByID(const AID: string): string;
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

function TIncomeUpperMaterial.NewID: string;
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
      'from QC_UpperMat ' +
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
    Seq := StrToInt(Copy(LastID, 5, 5)) + 1;
  end;

  Result := Prefix + FormatFloat('00000', Seq);
end;

procedure TIncomeUpperMaterial.DBGrid1CellClick(Column: TColumnEh);
begin
if not Query1.Active then exit;
if Query1.RecordCount = 0 then exit;
if (Query1.RecordCount > 0)  and not Query1.CachedUpdates then
  begin
    {dtpInsDate.Date := Query1.FieldByName('InspecDate').AsDateTime;
    //edtSKU.Text := Query1.FieldByName('Article').AsString;
    edtRID.Text := Query1.FieldByName('ReportID').AsString;
    //edtDDBH.Text := Query1.FieldByName('DDBH').AsString;
    edtMatID.Text := Query1.FieldByName('CLBH').AsString;
    //edtZSBH.Text := Query1.FieldByName('Supplier').AsString;
    edtBrand.Text := Query1.FieldByName('Brand').AsString;
    dtpUSERDate.Date := Query1.FieldByName('USERDate').AsDateTime;
    dtpArrDate.Date := Query1.FieldByName('ArrDate').AsDateTime;}
  end;
end;

procedure TIncomeUpperMaterial.Query1AfterOpen(DataSet: TDataSet);
begin
  BB1.Enabled:=true;
  BB2.Enabled:=true;
  BB3.Enabled:=true;
  bbt6.Enabled:=true;
  bExcel.Enabled := true;
  bExF.Enabled := true;
  QDetail.Active := true;
end;

procedure TIncomeUpperMaterial.Button1Click(Sender: TObject);
begin
  SetColumnsReadOnly;
  With Query1 do
  begin
    Active := false;
    SQL.Clear;
    SQL.Add('select qu.*, clzl.ywpm, zszl.zsywjc from QC_UpperMat qu');
    SQL.Add('left join clzl on clzl.cldh = qu.CLBH');
    SQL.Add('left join zszl on zszl.zsdh = qu.ZSBH');
    SQL.Add('where qu.YN <> 0 ');
    if ckInsDate.Checked then
      SQL.Add('and CAST(InspecDate as DATE) = '''+FormatDateTime('yyyy-mm-dd', dtpInsDate.Date)+''' ');
    if ckArrDate.Checked then
      SQL.Add('and CAST(ArrDate as DATE) = '''+FormatDateTime('yyyy-mm-dd', dtpArrDate.Date)+''' ');
    if edtMatID.Text <> '' then
      SQL.Add('and CLBH like '''+edtMatID.Text+'%'' ');
    if edtZSBH.Text <> '' then
      SQL.Add('and Supplier like '''+edtZSBH.Text+'%'' ');
    {if edtSKU.Text <> '' then
      SQL.Add('and DDZL.Article like '''+edtSKU.Text+'%'' ');}
    if edtRID.Text <> '' then
      SQL.Add('and ReportID like '''+edtRID.Text+'%'' ');
    if edtBrand.Text <> '' then
      SQL.Add('and Brand like '''+edtBrand.Text+'%'' ');
    if ckUSERDate.Checked then
      SQL.Add('and CAST(qu.USERDate as DATE) = '''+FormatDateTime('yyyy-mm-dd', dtpUSERDate.Date)+''' ');
    Active := true;
  end;
end;

procedure TIncomeUpperMaterial.BB1Click(Sender: TObject);
begin
  with query1 do
  begin
  RequestLive :=  true;
  CachedUpdates:= true;
  Insert;
  end;

  {with QDetail do
  begin
  RequestLive :=  true;
  CachedUpdates:= true;
  Insert;
  end;}
  
bb4.enabled:=true;
bb5.enabled:=true;
DBGrid1.FieldColumns['ReportID'].ButtonStyle := cbsEllipsis;
end;

procedure TIncomeUpperMaterial.BB3Click(Sender: TObject);
begin
with query1 do
  begin
    cachedupdates:=true;
    requestlive:=true;
    query1.edit;
  end;
bb4.enabled:=true;
bb5.enabled:=true;
//DBGrid1.SetFocus;
//DBGrid1.SelectedIndex := DBGrid1.FieldColumns['SCFID'].Index;
end;

procedure TIncomeUpperMaterial.BB4Click(Sender: TObject);
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
              if Query1.FieldByName('CLBH').IsNull then
              begin
                //query1.delete;
              end else
              begin
                Query1.Edit;
                Query1.FieldByName('ReportID').Value := NewID;
                Query1.FieldByName('USERID').Value := main.Edit1.Text;
                Query1.FieldByName('YN').Value := 1;
                Query1.FieldByName('USERDate').Value := FormatDateTime('yyyy-mm-dd', Now);
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
                  else if MenuCode.Text = 'N971' then
                    begin
                      Query1.FieldByName('USERID').Value := main.Edit1.Text;
                      Query1.FieldByName('USERDate').Value := FormatDateTime('yyyy-mm-dd', Now);
                    end;
                  {if MenuCode.Text = 'N975' then
                    begin
                      Query1.FieldByName('LabUID').Value := main.Edit1.Text;
                      Query1.FieldByName('LabChgDate').Value := FormatDateTime('yyyy-mm-dd', Now);
                    end;
                  if MenuCode.Text = 'N972' then
                    begin
                      Query1.FieldByName('SCFDate').Value := FormatDateTime('yyyy-mm-dd', Now);
                    end;
                  if MenuCode.Text = 'N973' then
                    begin
                      Query1.FieldByName('LCFDate').Value := FormatDateTime('yyyy-mm-dd', Now);
                    end;
                  if MenuCode.Text = 'N974' then
                    begin
                      Query1.FieldByName('MSCFDate').Value := FormatDateTime('yyyy-mm-dd', Now);
                    end;}
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

procedure TIncomeUpperMaterial.BB5Click(Sender: TObject);
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

procedure TIncomeUpperMaterial.btClearClick(Sender: TObject);
begin
  edtMatID.Clear;
  edtDDBH.Clear;
  edtZSBH.Clear;
  edtRID.Clear;
  edtSKU.Clear;
  edtBrand.Clear;
end;

procedure TIncomeUpperMaterial.BB6Click(Sender: TObject);
begin
  Close;
end;

procedure TIncomeUpperMaterial.DBGrid1GetCellParams(Sender: TObject;
  Column: TColumnEh; AFont: TFont; var Background: TColor;
  State: TGridDrawState);
begin
  if Query1.FieldByName('YN').Value = '0' then
    DBGrid1.Canvas.Font.Color := clRed;
end;

procedure TIncomeUpperMaterial.FormDestroy(Sender: TObject);
begin
  IncomeUpperMaterial := nil;
end;

procedure TIncomeUpperMaterial.FormClose(Sender: TObject;
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

procedure TIncomeUpperMaterial.bExFClick(Sender: TObject);
var
  ExcelApp, Workbook, Worksheet, borderRange: OleVariant;
  StartRow, InsertRow: Integer;
  DuongDanFile, SaveFile, AppDir, SrcFile, DstFile: string;
  s: WideString;
  i, p: Integer;
  MaxHeight: Double;
  SigS, SigMS, SigL, SigP: Boolean;
begin
  {AppDir := ExtractFilePath(Application.ExeName);

  if not DirectoryExists(AppDir) then
    ForceDirectories(AppDir);

  SrcFile := '\\192.168.71.4\erp\lys_erp\A-QIP-WS001-01D.xlsx';
  DstFile := IncludeTrailingPathDelimiter(AppDir) + 'A-QIP-WS001-01D.xlsx';

  if not CopyFile(PChar(SrcFile), PChar(DstFile), False) then
    ShowMessage('Copy file that bai');}

  DuongDanFile := ExtractFilePath(ParamStr(0)) + 'A-QIP-WS001-01D.xlsx';

  StartRow := 5;

  SaveDialog := TSaveDialog.Create(nil);
  try
    if not cbPDF.Checked then
    begin
      SaveDialog.Filter := 'Excel Files (*.xlsx)|*.xlsx';
      SaveDialog.DefaultExt := 'xlsx';
      SaveDialog.FileName := 'A-QIP-WS001-01D_' + FormatDateTime('yyyy-mm-dd_hh-nn-ss', Now) + '.xlsx';
      SaveDialog.Title := 'Chon noi luu file Excel moi';
    end else
    begin
      SaveDialog.Filter := 'PDF (*.pdf)|*.pdf';
      SaveDialog.DefaultExt := 'pdf';
      SaveDialog.FileName := 'A-QIP-WS001-01D_' + FormatDateTime('yyyy-mm-dd_hh-nn-ss', Now) + '.pdf';
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

  //hang 2
  for i := 1 to 20 do
  begin
    case i of
      1: WriteCellAppend(Worksheet.Cells[2,i],
          Query1.FieldByName('Cont').AsString,
          False);

      2: WriteCellAppend(Worksheet.Cells[2,i],
          FormatDateTime('dd-mm-yyyy', Query1.FieldByName('ArrDate').AsDateTime),
          True);

      5: WriteCellAppend(Worksheet.Cells[2,i],
          FormatDateTime('dd-mm-yyyy', Query1.FieldByName('InspecDate').AsDateTime),
          True);

      9: WriteCellAppend(Worksheet.Cells[2,i],
          Query1.FieldByName('Brand').AsString,
          True);

      12: WriteCellAppend(Worksheet.Cells[2,i],
          Query1.FieldByName('zsywjc').AsString,
          True);
    end;
  end;

  QDetail.First;
  InsertRow := StartRow;

  while not QDetail.Eof do
  begin
    Worksheet.Rows[Format('%d:%d', [InsertRow, InsertRow])].Insert;

    borderRange := Worksheet.Range[Format('A%d:N%d', [InsertRow, InsertRow])];
    borderRange.Borders.LineStyle := 1;
    borderRange.Borders.Weight := 2;


    Worksheet.Cells[InsertRow, 1].Value := Query1.FieldByName('ywpm').AsString;
    Worksheet.Cells[InsertRow, 2].Value := QDetail.FieldByName('XieMing').AsString;
    Worksheet.Cells[InsertRow, 3].Value := QDetail.FieldByName('Article').AsString;
    Worksheet.Cells[InsertRow, 4].Value := Query1.FieldByName('CLBH').AsString;
    Worksheet.Cells[InsertRow, 5].Value := QDetail.FieldByName('RY').AsString;
    {Worksheet.Cells[InsertRow, 6].Value := Query1.FieldByName('RQty').AsString;
    Worksheet.Cells[InsertRow, 7].Value := Query1.FieldByName('IQty').AsString;
    Worksheet.Cells[InsertRow, 8].Value := Query1.FieldByName('DeQty').AsString;
    Worksheet.Cells[InsertRow, 9].Value := Query1.FieldByName('DeReason').AsString;
    Worksheet.Cells[InsertRow, 10].Value := Query1.FieldByName('InspecResult').AsString;

    if Trim(Query1.FieldByName('SendDate').AsString) <> '' then
      Worksheet.Cells[InsertRow, 11].Value := FormatDateTime('dd-mm-yyyy', Query1.FieldByName('SendDate').AsDateTime)
    else
      Worksheet.Cells[InsertRow, 11].Value := '';

    Worksheet.Cells[InsertRow, 12].Value := Query1.FieldByName('LabID').AsString;
    Worksheet.Cells[InsertRow, 13].Value := Query1.FieldByName('LabResult').AsString;
    Worksheet.Cells[InsertRow, 14].Value := Query1.FieldByName('Reject').AsString;}
    Worksheet.Rows[InsertRow].AutoFit;

    Inc(InsertRow);
    QDetail.Next;
  end;

  Worksheet.Cells[5, 6].Value := Query1.FieldByName('RQty').AsString;
  Worksheet.Cells[5, 7].Value := Query1.FieldByName('IQty').AsString;
  Worksheet.Cells[5, 8].Value := Query1.FieldByName('DeQty').AsString;
  Worksheet.Cells[5, 9].Value := Query1.FieldByName('DeReason').AsString;
  Worksheet.Cells[5, 10].Value := Query1.FieldByName('InspecResult').AsString;

  if Trim(Query1.FieldByName('SendDate').AsString) <> '' then
    Worksheet.Cells[5, 11].Value := FormatDateTime('dd-mm-yyyy', Query1.FieldByName('SendDate').AsDateTime)
  else
    Worksheet.Cells[5, 11].Value := '';

  Worksheet.Cells[5, 12].Value := Query1.FieldByName('LabID').AsString;
  Worksheet.Cells[5, 13].Value := Query1.FieldByName('LabResult').AsString;
  Worksheet.Cells[5, 14].Value := Query1.FieldByName('Reject').AsString;

  Worksheet.Rows[Format('%d:%d', [InsertRow, InsertRow])].Delete;

  PrintSign(Worksheet, Query1, InsertRow, 'MSCFID', 'MSCFDate', 1, True);
  PrintSign(Worksheet, Query1, InsertRow, 'SCFID',  'SCFDate',  3, True);
  PrintSign(Worksheet, Query1, InsertRow, 'LCFID',  'LCFDate',  6, True);
  PrintSign(Worksheet, Query1, InsertRow, 'PreparedID', 'PreparedDate', 11, True);

  //Kiem tra ky KCS Super
  {Query1.First;
  SigS := false;
  while not Query1.Eof do
  begin
    if (Query1.FieldByName('SCFID').AsString = '') or Query1.FieldByName('SCFID').IsNull then
      SigS := true;
  Query1.Next
  end;

  if SigS = false then
  begin
    Worksheet.Cells[InsertRow + 1, 4].WrapText := True;
    Worksheet.Cells[InsertRow + 1, 4].Value := GetUsernameByID(Query1.FieldByName('SCFID').AsString)
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
    Worksheet.Cells[InsertRow + 1, 1].WrapText := True;
    Worksheet.Cells[InsertRow + 1, 1].Value := GetUsernameByID(Query1.FieldByName('MSCFID').AsString)
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
    Worksheet.Cells[InsertRow + 1, 7].WrapText := True;
    Worksheet.Cells[InsertRow + 1, 7].Value := GetUsernameByID(Query1.FieldByName('LCFID').AsString)
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
    Worksheet.Cells[InsertRow + 1, 12].WrapText := True;
    Worksheet.Cells[InsertRow + 1, 12].Value := Query1.FieldByName('PreparedID').AsString
    + Chr(10) + FormatDateTime('dd-mm-yyyy', Query1.FieldByName('PreparedDate').AsDateTime);
  end;}

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

procedure TIncomeUpperMaterial.DBGrid1KeyPress(Sender: TObject;
  var Key: Char);
begin
  // khong cho go vao o Brand
  if DBGrid1.SelectedField.FieldName = 'Brand' then
  begin
    // chan het ky tu ngoai tru Enter de mo picklist
    Key := #0;
  end;

  // Neu nhan Enter
  if Key = #13 then
  begin

    if (DBGrid1.SelectedField.FieldName = 'SCFID') and (MenuCode.Text = 'N972') and Query1.CachedUpdates then
    begin
      Query1.Edit;
      Query1.FieldByName('SCFID').AsString := main.Edit1.Text;
      Query1.FieldByName('SCFDate').Value := FormatDateTime('yyyy-mm-dd', Now);
      Query1.Post;
    end;

    if (DBGrid1.SelectedField.FieldName = 'LCFID') and (MenuCode.Text = 'N973') and Query1.CachedUpdates then
    begin
      Query1.Edit;
      Query1.FieldByName('LCFID').AsString := main.Edit1.Text;
      Query1.FieldByName('LCFDate').Value := FormatDateTime('yyyy-mm-dd', Now);
      Query1.Post;
    end;

    if (DBGrid1.SelectedField.FieldName = 'MSCFID') and (MenuCode.Text = 'N974') and Query1.CachedUpdates then
    begin
      Query1.Edit;
      Query1.FieldByName('MSCFID').AsString := main.Edit1.Text;
      Query1.FieldByName('MSCFDate').Value := FormatDateTime('yyyy-mm-dd', Now);
      Query1.Post;
    end;

    if (DBGrid1.SelectedField.FieldName = 'CLBH') then
    begin
      // Chi lam neu Query1 dang bat CachedUpdates
      if Query1.CachedUpdates then
      begin
        Qtemp.Close;
        Qtemp.SQL.Clear;
        Qtemp.SQL.Add('select ywpm as MatName from clzl where cldh = :CLBH');
        Qtemp.ParamByName('CLBH').AsString := DBGrid1.SelectedField.AsString;
        Qtemp.Open;

        if not Qtemp.IsEmpty then
        begin
          Query1.Edit;
          Query1.FieldByName('MatName').AsString := Qtemp.FieldByName('MatName').AsString;
          Query1.Post;
        end else
        begin
          Query1.Edit;
          Query1.FieldByName('MatName').AsString := '';
          Query1.Post;
        end;
      end;
    end;

    if (DBGrid1.SelectedField.FieldName = 'DDBH') then
    begin
      if Query1.CachedUpdates then
      begin
        Qtemp.Close;
        Qtemp.SQL.Clear;
        Qtemp.SQL.Add('select DDZL.DDBH, DDZL.ARTICLE, DDZL.Pairs, xxzl.XieMing from DDZL ');
        Qtemp.SQL.Add('left join xxzl on xxzl.XieXing = DDZL.XieXing and xxzl.SheHao = DDZL.SheHao ');
        Qtemp.SQL.Add('where DDZL.DDBH = :DDBH');
        Qtemp.ParamByName('DDBH').AsString := DBGrid1.SelectedField.AsString;
        Qtemp.Open;

        if not Qtemp.IsEmpty then
        begin
          Query1.Edit;
          Query1.FieldByName('ARTICLE').AsString := Qtemp.FieldByName('ARTICLE').AsString;
          Query1.FieldByName('XieMing').AsString := Qtemp.FieldByName('XieMing').AsString;
          Query1.Post;
        end else
        begin
          Query1.Edit;
          Query1.FieldByName('ARTICLE').AsString := '';
          Query1.FieldByName('XieMing').AsString := '';
          Query1.Post;
        end;
      end;
    end;
  end;
end;

procedure TIncomeUpperMaterial.bExcelClick(Sender: TObject);
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

procedure TIncomeUpperMaterial.BB2Click(Sender: TObject);
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

procedure TIncomeUpperMaterial.DBGrid1Columns0EditButtonClick(
  Sender: TObject; var Handled: Boolean);
begin
if N721Detail1 <> nil then
  N721Detail1.show
else
  begin
    N721Detail1 := TN721Detail1.Create(self);
    N721Detail1.show;
  end;
end;

procedure TIncomeUpperMaterial.btConfirmClick(Sender: TObject);
begin
  Query1.RequestLive := true;
  Query1.CachedUpdates := true;
  BB4.Enabled := true;
  BB5.Enabled := true;

  if not Query1.Active then
    Query1.Open;
  Query1.DisableControls;
  try
    Query1.First; // quay ve dong dau
    while not Query1.Eof do
    begin
      if MenuCode.Text = 'N972' then
      begin
        Query1.Edit;
        Query1.FieldByName('SCFID').AsString := Main.Edit1.Text;
        Query1.FieldByName('SCFDate').Value := FormatDateTime('yyyy-mm-dd', Now);
        Query1.Post; // Post chi vao cache, chua xuong SQL
        Query1.Next;
      end else if MenuCode.Text = 'N973' then
      begin
        Query1.Edit;
        Query1.FieldByName('LCFID').AsString := Main.Edit1.Text;
        Query1.FieldByName('LCFDate').Value := FormatDateTime('yyyy-mm-dd', Now);
        Query1.Post; // Post chi vao cache, chua xuong SQL
        Query1.Next;
      end else if MenuCode.Text = 'N974' then
      begin
        Query1.Edit;
        Query1.FieldByName('MSCFID').AsString := Main.Edit1.Text;
        Query1.FieldByName('MSCFDate').Value := FormatDateTime('yyyy-mm-dd', Now);
        Query1.Post; // Post chi vao cache, chua xuong SQL
        Query1.Next;
      end;
    end;
  finally
    Query1.EnableControls;
  end;
end;

end.
