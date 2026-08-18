unit N721Detail;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DB, DBTables, GridsEh, DBGridEh, StdCtrls, Buttons, ComCtrls;

type
  TN721Detail1 = class(TForm)
    DBGridEh1: TDBGridEh;
    Qmc: TQuery;
    DataSource1: TDataSource;
    btSearch: TBitBtn;
    QmcNo_ID: TIntegerField;
    QmcGSBH: TStringField;
    QmcCLBH: TStringField;
    QmcCGNO: TStringField;
    QmcRKNO: TStringField;
    QmcDateInput: TDateTimeField;
    QmcHours: TStringField;
    QmcLB: TIntegerField;
    QmcZSBH: TStringField;
    QmcRY: TStringField;
    QmcArticle: TStringField;
    QmcCustPO: TStringField;
    QmcQty: TCurrencyField;
    QmcRemark: TStringField;
    QmcTracking: TStringField;
    QmcSampleSent: TBooleanField;
    QmcQC_Check: TStringField;
    QmcRandomQty: TCurrencyField;
    QmcDefectQty: TCurrencyField;
    QmcQC_Reason: TStringField;
    QmcPer_Defect: TBooleanField;
    QmcQC_FinishDate: TDateTimeField;
    QmcSettlement: TStringField;
    QmcFile_Name: TStringField;
    QmcQC_Date: TDateTimeField;
    QmcQC_USERID: TStringField;
    QmcLab_Check: TStringField;
    QmcLab_Reason: TStringField;
    QmcLab_Num: TStringField;
    QmcLab_Result: TStringField;
    QmcDefectName: TStringField;
    QmcLab_FinishDate: TDateTimeField;
    QmcLab_PDM_ID: TStringField;
    QmcPDM_File_Name: TStringField;
    QmcFile_Name_Lab: TStringField;
    QmcComparision: TStringField;
    QmcLab_DateRemark: TDateTimeField;
    QmcLab_ConfirmDate: TDateTimeField;
    QmcLab_UserID: TStringField;
    QmcLab_Date: TDateTimeField;
    QmcFinal_Remark: TStringField;
    QmcFinal_Status: TStringField;
    QmcUserDate: TDateTimeField;
    QmcUserID: TStringField;
    QmcYN: TStringField;
    QmcMaterialName: TStringField;
    QmcSupplierName: TStringField;
    QmcDWBH: TStringField;
    QmcZSYWJC: TStringField;
    QmcManagerCheck: TBooleanField;
    QmcManagerID: TStringField;
    QmcManagerCFMDate: TDateTimeField;
    QmcMaterialTestDate: TDateTimeField;
    QmcQC_Method: TStringField;
    QmcUninspectedMaterials: TBooleanField;
    Qmcrys: TQuery;
    edCLBH: TEdit;
    Label1: TLabel;
    Label2: TLabel;
    edZSBH: TEdit;
    Label3: TLabel;
    edCGNO: TEdit;
    Label4: TLabel;
    edRKNO: TEdit;
    Label5: TLabel;
    edSID: TEdit;
    Label6: TLabel;
    edRY: TEdit;
    ckDateInput: TCheckBox;
    dtpRD: TDateTimePicker;
    btInsertAll: TButton;
    procedure btSearchClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormDestroy(Sender: TObject);
    procedure DBGridEh1DblClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure btInsertAllClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  N721Detail1: TN721Detail1;

implementation

uses main1, IncomeUpperMaterials;

{$R *.dfm}

procedure TN721Detail1.btSearchClick(Sender: TObject);
begin
  with Qmc do
    begin
      active := false;
      sql.Clear;
      SQL.Add('Select top 3000 ');
      SQL.Add('       mc.No_ID,mc.GSBH,mc.CLBH,mc.CGNO,mc.RKNO,mc.DateInput,mc.Hours ,mc.LB,mc.ZSBH,mc.RY,mc.Article,mc.CustPO,mc.Qty,mc.Remark,mc.Tracking,mc.SampleSent,');
      SQL.Add('       mc.QC_Check, mc.RandomQty, ISNULL(mc.DefectQty, Leather_GradePX.DefectQty) as DefectQty, ');
      SQL.Add('       mc.QC_Reason,mc.Per_Defect,mc.QC_FinishDate,mc.Settlement,mc.File_Name,mc.QC_Date,mc.QC_USERID,');
      SQL.Add('       mc.Lab_Check,mc.Lab_Reason,mc.Lab_Num,mc.Lab_Result,mc.DefectName,mc.Lab_FinishDate,mc.Lab_PDM_ID,mc.PDM_File_Name,mc.File_Name_Lab,mc.Comparision,');
      SQL.Add('       mc.Lab_DateRemark,mc.Lab_ConfirmDate,mc.Lab_UserID,mc.Lab_Date,mc.Final_Remark,mc.Final_Status,mc.UserDate,mc.UserID,mc.YN,      ');
      SQL.Add('       clzl.YWPM as MaterialName,ZSZL.ZSYWJC as SupplierName,clzl.DWBH,ZSZL.ZSYWJC,mc.ManagerCheck,mc.ManagerID,mc.ManagerCFMDate, mc.MaterialTestDate, mc.QC_Method, mc.UninspectedMaterials ');
      sql.Add('from MaterialQCcheck mc');
      sql.Add('left join clzl on clzl.CLDH = mc.CLBH');
      sql.Add('left Join ZSZL on ZSZL.ZSDH =mc.ZSBH');
      sql.Add('left join MaterialQCcheck_RY on mc.No_ID = MaterialQCcheck_RY.No_ID');
      sql.Add('left join Leather_QC on Leather_QC.ReportID = mc.No_ID');
      sql.Add('left join (select ISNULL(SUM(DeQty),0) as DefectQty, No_ID from Leather_GradeP group by No_ID) Leather_GradePX on Leather_QC.No_ID = Leather_GradePX.No_ID');
      sql.Add('where mc.GSBH='''+main.Edit2.Text+''' ');

      if ckDateInput.Checked then
        SQL.Add('and CAST(mc.DateInput as date) =  '''+FormatDateTime('yyyy-mm-dd', dtpRD.Date)+''' ');

      if edRY.Text <> '' then
        SQL.Add('and mc.RY like ''%'+edRY.Text+'%'' ');
      if edSID.Text <> '' then
        SQL.Add('and mc.No_ID = '''+edSID.Text+''' ');
      if edCLBH.Text <> '' then
        SQL.Add('and mc.CLBH = '''+edCLBH.Text+''' ');
      if edZSBH.Text <> '' then
        SQL.Add('and mc.ZSBH = '''+edZSBH.Text+''' ');
      if edCGNO.Text <> '' then
        SQL.Add('and mc.CGNO = '''+edCGNO.Text+''' ');
      if edRKNO.Text <> '' then
        SQL.Add('and mc.RKNO = '''+edRKNO.Text+''' ');

      SQL.Add('group by mc.No_ID,mc.GSBH,mc.CLBH,mc.CGNO,mc.RKNO,mc.DateInput,mc.Hours ,mc.LB,mc.ZSBH,mc.RY,mc.Article,mc.CustPO,mc.Qty,mc.Remark,mc.Tracking,mc.SampleSent,');
      SQL.Add('       mc.QC_Check,mc.RandomQty,mc.DefectQty,mc.QC_Reason,mc.Per_Defect,mc.QC_FinishDate,mc.Settlement,mc.File_Name,mc.QC_Date,mc.QC_USERID,');
      SQL.Add('       mc.Lab_Check,mc.Lab_Reason,mc.Lab_Num,mc.Lab_Result,mc.DefectName,mc.Lab_FinishDate,mc.Lab_PDM_ID,mc.PDM_File_Name,mc.File_Name_Lab,mc.Comparision,');
      SQL.Add('       mc.Lab_DateRemark,mc.Lab_ConfirmDate,mc.Lab_UserID,mc.Lab_Date,mc.Final_Remark,mc.Final_Status,mc.UserDate,mc.UserID,mc.YN, mc.MaterialTestDate, ');
      SQL.Add('       clzl.YWPM,ZSZL.ZSYWJC,clzl.DWBH,ZSZL.ZSYWJC,mc.ManagerCheck,mc.ManagerID,mc.ManagerCFMDate, Leather_GradePX.DefectQty, mc.QC_Method, mc.UninspectedMaterials ');
      sql.Add('order by mc.Userdate desc,mc.CLBH,LB asc');
      active := true;
    end;
end;

procedure TN721Detail1.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  action := Cafree;
end;

procedure TN721Detail1.FormDestroy(Sender: TObject);
begin
  N721Detail1 := nil;
end;

procedure TN721Detail1.DBGridEh1DblClick(Sender: TObject);
begin
  if Qmc.Active=false then exit;
  if Qmc.RecordCount=0 then exit;

  if Assigned(IncomeUpperMaterial) then
  begin
    if IncomeUpperMaterial.Query1.RequestLive then
    begin
      with IncomeUpperMaterial.Query1 do
      begin
        Edit;
        FieldByName('Cont').AsString := Qmc.FieldByName('Remark').AsString;
        FieldByName('ArrDate').AsString := Qmc.FieldByName('DateInput').AsString;
        FieldByName('InspecDate').AsString := Qmc.FieldByName('QC_FinishDate').AsString;
        FieldByName('ZSBH').AsString := Qmc.FieldByName('ZSBH').AsString;
        FieldByName('CLBH').AsString := Qmc.FieldByName('CLBH').AsString;
        FieldByName('RQty').AsString := Qmc.FieldByName('Qty').AsString;
        FieldByName('IQty').AsString := Qmc.FieldByName('RandomQty').AsString;
        FieldByName('Brand').AsString := 'HOKA';
        FieldByName('DeQty').AsString := Qmc.FieldByName('DefectQty').AsString;
        FieldByName('DeReason').AsString := Qmc.FieldByName('DefectName').AsString;
        FieldByName('InspecResult').AsString := Qmc.FieldByName('QC_Check').AsString;
        FieldByName('SendDate').AsString := Qmc.FieldByName('MaterialTestDate').AsString;
        FieldByName('LabID').AsString := Qmc.FieldByName('Lab_PDM_ID').AsString;
        FieldByName('LabResult').AsString := Qmc.FieldByName('Final_Status').AsString;
        FieldByName('No_ID').AsString := Qmc.FieldByName('No_ID').AsString;
      end;

      {with Qmcrys do
      begin
        SQL.Clear;
        Active := False;
        SQL.Add('select * from MaterialQCcheck_RY where No_ID = ''' + Qmc.FieldByName('No_ID').AsString + ''' ');
        Active := True;

        Edit;
        FieldByName('RY').AsString := Qmc.FieldByName('RY').AsString;
        FieldByName('Article').AsString := Qmc.FieldByName('Article').AsString;
        FieldByName('CustPO').AsString := Qmc.FieldByName('CustPO').AsString;
        FieldByName('Remark').AsString := Qmc.FieldByName('Remark').AsString;
        FieldByName('YN').AsString := Qmc.FieldByName('YN').AsString;
      end;}

    end;
  end;
  N721Detail1.Close;
end;

procedure TN721Detail1.FormCreate(Sender: TObject);
begin
 dtpRD.Date := Now;
end;

procedure TN721Detail1.btInsertAllClick(Sender: TObject);
begin
  if Qmc.Active=false then exit;
  if Qmc.RecordCount=0 then exit;

  if Assigned(IncomeUpperMaterial) then
  begin
    if IncomeUpperMaterial.Query1.RequestLive then
    begin
      with IncomeUpperMaterial.Query1 do
      begin
          Qmc.First;
          while not Qmc.Eof do
          begin
            Append;
            FieldByName('Cont').AsString := Qmc.FieldByName('Remark').AsString;
            FieldByName('ArrDate').AsString := Qmc.FieldByName('DateInput').AsString;
            FieldByName('InspecDate').AsString := Qmc.FieldByName('QC_FinishDate').AsString;
            FieldByName('ZSBH').AsString := Qmc.FieldByName('ZSBH').AsString;
            FieldByName('CLBH').AsString := Qmc.FieldByName('CLBH').AsString;
            FieldByName('RQty').AsString := Qmc.FieldByName('Qty').AsString;
            FieldByName('IQty').AsString := Qmc.FieldByName('RandomQty').AsString;
            FieldByName('DeQty').AsString := Qmc.FieldByName('DefectQty').AsString;
            FieldByName('Brand').AsString := 'HOKA';
            FieldByName('DeReason').AsString := Qmc.FieldByName('DefectName').AsString;
            FieldByName('InspecResult').AsString := Qmc.FieldByName('QC_Check').AsString;
            FieldByName('SendDate').AsString := Qmc.FieldByName('MaterialTestDate').AsString;
            FieldByName('LabID').AsString := Qmc.FieldByName('Lab_PDM_ID').AsString;
            FieldByName('LabResult').AsString := Qmc.FieldByName('Final_Status').AsString;
            FieldByName('No_ID').AsString := Qmc.FieldByName('No_ID').AsString;
            Post;
            Qmc.Next;
          end;
      end;
    end;
  end;
  N721Detail1.Close;
end;

end.


