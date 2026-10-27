unit MaterialDeduction1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DB, DBTables, Menus, GridsEh, DBGridEh, ExtCtrls, ComCtrls,
  StdCtrls, DBCtrls, Buttons;

type
  TMaterialDeduction = class(TForm)
    Panel1: TPanel;
    Label11: TLabel;
    btninsert: TBitBtn;
    btnmodify: TBitBtn;
    btndelete: TBitBtn;
    btnsave: TBitBtn;
    btncancel: TBitBtn;
    btnexcel: TBitBtn;
    DBMemo1: TDBMemo;
    Panel2: TPanel;
    Label15: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label6: TLabel;
    Label7: TLabel;
    Label8: TLabel;
    Label9: TLabel;
    Label10: TLabel;
    Label12: TLabel;
    Label1: TLabel;
    Label5: TLabel;
    edt2: TEdit;
    edt1: TEdit;
    DTP1: TDateTimePicker;
    DTP2: TDateTimePicker;
    Button1: TButton;
    edt3: TEdit;
    chk1: TCheckBox;
    edt6: TEdit;
    edt7: TEdit;
    edtRy: TEdit;
    edtCustPo: TEdit;
    edtArticle: TEdit;
    GroupBox1: TGroupBox;
    chkInspection: TCheckBox;
    chkNotesting: TCheckBox;
    chkpass: TCheckBox;
    chkFail: TCheckBox;
    cboLab_Final: TComboBox;
    edtRKNO: TEdit;
    edtDefects: TEdit;
    DS_Qc: TDataSource;
    Upd_QC: TUpdateSQL;
    Pop_All: TPopupMenu;
    mnu2: TMenuItem;
    mnu4: TMenuItem;
    mnu5: TMenuItem;
    OpenLabGL1: TMenuItem;
    OpenDialog1: TOpenDialog;
    SaveDialog1: TSaveDialog;
    qry_Qc: TQuery;
    Query1: TQuery;
    qry_RY: TQuery;
    DS_RY: TDataSource;
    Upd_RY: TUpdateSQL;
    qry_QcReportID: TIntegerField;
    qry_QcDateInput: TDateTimeField;
    qry_QcCLBH: TStringField;
    qry_QcZSBH: TStringField;
    qry_QcQty: TCurrencyField;
    qry_QcNGQty: TCurrencyField;
    qry_QcDefects: TStringField;
    qry_QcDefectName: TStringField;
    qry_QcQC_FinishDate: TDateTimeField;
    qry_QcQC_Result: TStringField;
    qry_QcQC_UserID: TStringField;
    qry_QcQC_Date: TDateTimeField;
    qry_QcSendDate: TDateTimeField;
    qry_QcLab_ID: TStringField;
    qry_QcLab_Result: TStringField;
    qry_QcLab_Reject: TDateTimeField;
    qry_QcLab_UserID: TStringField;
    qry_QcLab_Date: TDateTimeField;
    qry_Qcywpm: TStringField;
    qry_Qczsywjc: TStringField;
    qry_Qcdwbh: TStringField;
    qry_RYReportID: TIntegerField;
    qry_RYRY: TStringField;
    qry_RYYN: TStringField;
    qry_RYUserID: TStringField;
    qry_RYUserDate: TDateTimeField;
    qry_RYCOUNTRY: TStringField;
    qry_RYBUYNO: TStringField;
    qry_RYARTICLE: TStringField;
    qry_RYXieMing: TStringField;
    QGetID: TQuery;
    QSig: TQuery;
    qry_QcYN: TIntegerField;
    PageControl1: TPageControl;
    TabSheet1: TTabSheet;
    Splitter3: TSplitter;
    DBGridDetail: TDBGridEh;
    PageControl3: TPageControl;
    TabSheet7: TTabSheet;
    Panel3: TPanel;
    btninsert1: TBitBtn;
    btnmodify1: TBitBtn;
    btndelete1: TBitBtn;
    btnsave1: TBitBtn;
    btncancel1: TBitBtn;
    DBGrid_RY: TDBGridEh;
    qry_QcUSERDate: TDateTimeField;
    qry_QcUSERID: TStringField;
    procedure btnmodifyClick(Sender: TObject);
    procedure btnsaveClick(Sender: TObject);
    function GetUsernameByID(const AID: string): string;
    function NewID: string;
    procedure Button1Click(Sender: TObject);
    procedure qry_QcAfterOpen(DataSet: TDataSet);
    procedure btninsertClick(Sender: TObject);
    procedure btncancelClick(Sender: TObject);
    procedure btninsert1Click(Sender: TObject);
    procedure btnmodify1Click(Sender: TObject);
    procedure btndelete1Click(Sender: TObject);
    procedure btnsave1Click(Sender: TObject);
    procedure btncancel1Click(Sender: TObject);
    procedure btndeleteClick(Sender: TObject);
    procedure DBGridDetailColumns9EditButtonClick(Sender: TObject;
      var Handled: Boolean);
    procedure FormCreate(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  MaterialDeduction: TMaterialDeduction;

implementation

uses main1, QC_MatDefect1;

{$R *.dfm}

function TMaterialDeduction.GetUsernameByID(const AID: string): string;
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

function TMaterialDeduction.NewID: string;
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
      'from QC_MaterialDeduction ' +
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

procedure TMaterialDeduction.btnmodifyClick(Sender: TObject);
begin
  if qry_Qc.FieldByName('USERDate').Value + 30 < date then
    begin
      Messagedlg('You can not modify after 30 days!!!', mtwarning, [mbyes], 0);
      abort;
    end;

  qry_Qc.requestlive := true;
  qry_Qc.cachedupdates := true;
  qry_Qc.edit;

  btnsave.Enabled := true;
  btncancel.Enabled := true;
  DBGridDetail.FieldColumns['Defects'].ButtonStyle:= cbsEllipsis;
end;

procedure TMaterialDeduction.btnsaveClick(Sender: TObject);
var i: integer;
begin
  if not QGetID.Active then QGetID.Active;
  try
    qry_Qc.first;
    for i:=1 to qry_Qc.RecordCount do
      begin
        case qry_Qc.updatestatus of
          usinserted:
            begin
              if qry_Qc.fieldbyname('CLBH').isnull then
              begin
                qry_Qc.delete;
              end else
              begin
                qry_Qc.Edit;
                qry_Qc.FieldByName('ReportID').Value := NewID;
                qry_Qc.FieldByName('QC_UserID').Value := main.Edit1.Text;
                qry_Qc.FieldByName('USERID').Value := main.Edit1.Text;
                qry_Qc.FieldByName('YN').Value := 1;
                qry_Qc.FieldByName('QC_Date').Value := FormatDateTime('yyyy-mm-dd', Now);
                Upd_QC.apply(ukinsert);
              end;
            end;
          usmodified:
             begin
               if qry_Qc.FieldByName('YN').value='0' then
                 begin
                   if messagedlg('Are you sure you want to delete?',mtconfirmation,[mbYes,mbNo],0)=mrYes then
                   begin
                    qry_Qc.Edit;
                    qry_Qc.FieldByName('QC_UserID').Value := main.Edit1.Text;
                    Upd_QC.Apply(ukdelete)
                   end;
                 end else
                 begin
                  qry_Qc.Edit;
                  {if DBGrid1.SelectedField.FieldName = 'PreparedID' then
                    //qry_Qc.FieldByName('PreparedDate').Value := FormatDateTime('yyyy-mm-dd hh:nn:ss', Now)
                  else
                    begin
                      qry_Qc.FieldByName('USERID').Value := main.Edit1.Text;
                      qry_Qc.FieldByName('USERDate').Value := FormatDateTime('yyyy-mm-dd', Now);
                    end;
                  if DBGrid1.SelectedField.FieldName = 'SCFID' then
                    begin
                      qry_Qc.FieldByName('SCFDate').Value := FormatDateTime('yyyy-mm-dd', Now);
                    end;
                  if DBGrid1.SelectedField.FieldName = 'LCFID' then
                    begin
                      qry_Qc.FieldByName('LCFDate').Value := FormatDateTime('yyyy-mm-dd', Now);
                    end;
                  if DBGrid1.SelectedField.FieldName = 'MSCFID' then
                    begin
                      qry_Qc.FieldByName('MSCFDate').Value := FormatDateTime('yyyy-mm-dd hh:nn:ss', Now);
                    end;}
                  Upd_QC.apply(ukmodify);
                 end;
              end;
        end;
        qry_Qc.next;
      end;
    qry_Qc.active:=false;
    qry_Qc.cachedupdates:=false;
    qry_Qc.requestlive:=false;
    qry_Qc.active:=true;
    btnsave.enabled:=false;
    btncancel.enabled:=false;
  except
   Messagedlg('Have wrong, can not save data!',mtwarning,[mbyes],0);
  end;
end;

procedure TMaterialDeduction.Button1Click(Sender: TObject);
begin
  with qry_Qc do
  begin
    Close;
    SQL.Clear;
    SQL.Add('SELECT QC_MaterialDeduction.*,');
    SQL.Add('       clzl.ywpm,');
    SQL.Add('       zszl.zsywjc,');
    SQL.Add('       dwbh');
    SQL.Add('FROM QC_MaterialDeduction');
    SQL.Add('INNER JOIN clzl');
    SQL.Add('  ON clzl.cldh = QC_MaterialDeduction.CLBH');
    SQL.Add('INNER JOIN zszl');
    SQL.Add('  ON zszl.zsdh = QC_MaterialDeduction.ZSBH');
    SQL.Add('WHERE 1=1');
    if edt2.Text <> '' then
      SQL.Add('AND CLBH like '''+Trim(edt2.Text)+'%'' ');
    if edt3.Text <> '' then
      SQL.Add('AND zsywjc like '''+Trim(edt3.Text)+'%'' ');
    Open;
  end;
end;

procedure TMaterialDeduction.qry_QcAfterOpen(DataSet: TDataSet);
begin
  btninsert.Enabled:=true;
  btnmodify.Enabled:=true;
  btndelete.Enabled:=true;

  if qry_Qc.RecordCount > 0 then
  begin
    btninsert1.Enabled := true;
    btnmodify1.Enabled := true;
    btndelete1.Enabled := true
  end
  else
  begin
    btninsert1.Enabled := false;
    btnmodify1.Enabled := false;
    btndelete1.Enabled := false;
  end;
  qry_RY.Active := true;
end;

procedure TMaterialDeduction.btninsertClick(Sender: TObject);
begin
  with qry_Qc do
  begin
  RequestLive :=  true;
  CachedUpdates:= true;
  Insert;
  end;
btnsave.enabled:=true;
btncancel.enabled:=true;
DBGridDetail.FieldColumns['Defects'].ButtonStyle:= cbsEllipsis;
end;

procedure TMaterialDeduction.btncancelClick(Sender: TObject);
begin
  with qry_Qc do
  begin
    CachedUpdates := false;
    RequestLive := false;
    btnsave.Enabled := false;
    btncancel.Enabled := false;
  end;
end;

procedure TMaterialDeduction.btninsert1Click(Sender: TObject);
begin
  with qry_RY do
  begin
  RequestLive :=  true;
  CachedUpdates:= true;
  Insert;
  end;
btnsave1.enabled:=true;
btncancel1.enabled:=true;
end;

procedure TMaterialDeduction.btnmodify1Click(Sender: TObject);
begin
with qry_RY do
  begin
    cachedupdates:=true;
    requestlive:=true;
    qry_RY.edit;
  end;
btnsave1.enabled:=true;
btncancel1.enabled:=true;
end;

procedure TMaterialDeduction.btndelete1Click(Sender: TObject);
begin
if messagedlg('Are you sure you want to delete?',mtconfirmation,[mbYes,mbNo],0)<>mrYes then
  begin
    abort;
  end;
with qry_RY do
  begin
    cachedupdates:=true;
    requestlive:=true;
    edit;
    fieldbyname('YN').Value:=0;
  end;
btnsave1.enabled:=true;
btncancel1.enabled:=true;
end;

procedure TMaterialDeduction.btnsave1Click(Sender: TObject);
var i: integer;
begin
  try
    qry_RY.first;
    for i:=1 to qry_RY.RecordCount do
      begin
        case qry_RY.updatestatus of
          usinserted:
            begin
              if qry_RY.fieldbyname('RY').isnull then
              begin
                qry_RY.delete;
              end else
              begin
                qry_RY.Edit;
                qry_RY.FieldByName('ReportID').Value := qry_Qc.FieldByName('ReportID').Value;
                qry_RY.FieldByName('USERID').Value := main.Edit1.Text;
                qry_RY.FieldByName('YN').Value := 1;
                qry_RY.FieldByName('USERDate').Value := FormatDateTime('yyyy-mm-dd', Now);
                Upd_RY.apply(ukinsert);
              end;
            end;
          usmodified:
             begin
               if qry_RY.FieldByName('YN').value='0' then
                 begin
                   if messagedlg('Are you sure you want to delete?',mtconfirmation,[mbYes,mbNo],0)=mrYes then
                   begin
                    qry_RY.Edit;
                    qry_RY.FieldByName('USERID').Value := main.Edit1.Text;
                    Upd_RY.Apply(ukdelete)
                   end;
                 end else
                 begin
                  qry_RY.Edit;
                  Upd_RY.apply(ukmodify);
                 end;
              end;
        end;
        qry_RY.next;
      end;
    qry_RY.active:=false;
    qry_RY.cachedupdates:=false;
    qry_RY.requestlive:=false;
    qry_RY.active:=true;
    btnsave1.enabled:=false;
    btncancel1.enabled:=false;
  except
   Messagedlg('Have wrong, can not save data!',mtwarning,[mbyes],0);
  end;
end;

procedure TMaterialDeduction.btncancel1Click(Sender: TObject);
begin
  with qry_RY do
  begin
    CachedUpdates := false;
    RequestLive := false;
    btnsave1.Enabled := false;
    btncancel1.Enabled := false;
  end;
end;

procedure TMaterialDeduction.btndeleteClick(Sender: TObject);
begin
  if qry_Qc.FieldByName('USERDate').Value + 30 < date then
    begin
      Messagedlg('You can not modify after 30 days!!!', mtwarning, [mbyes], 0);
      abort;
    end;

  if messagedlg('Are you sure you want to delete?',mtconfirmation,[mbYes,mbNo],0)<>mrYes then
    begin
      abort;
    end;
  with qry_Qc do
    begin
      cachedupdates:=true;
      requestlive:=true;
      edit;
      fieldbyname('YN').Value:=0;
    end;
  btnsave.enabled:=true;
  btncancel.enabled:=true;
end;

procedure TMaterialDeduction.DBGridDetailColumns9EditButtonClick(
  Sender: TObject; var Handled: Boolean);
begin
  QC_MatDefect:=TQC_MatDefect.create(self);
  QC_MatDefect.Show;
end;

procedure TMaterialDeduction.FormCreate(Sender: TObject);
begin
  DTP1.Date := date;
  DTP2.Date := date;
end;

procedure TMaterialDeduction.FormDestroy(Sender: TObject);
begin
  MaterialDeduction := nil;
end;

end.
