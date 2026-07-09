unit EntryCheck_PrintFormat1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, QRCtrls, QuickRpt, ExtCtrls, QRExport, QRXMLSFilt, QRPDFFilt,
  DBTables, DB,IniFiles;

type
  TEntryCheck_PrintFormat = class(TForm)
    qckrp1: TQuickRep;
    qrbndPageHeaderBand1: TQRBand;
    qrlbl23: TQRLabel;
    QRSysData1: TQRSysData;
    qrlbl24: TQRLabel;
    qrlblPage1: TQRLabel;
    qrlbl25: TQRLabel;
    qrlbl8: TQRLabel;
    qrlbl9: TQRLabel;
    qrdbtxtDWBH1: TQRDBText;
    qrlbl10: TQRLabel;
    qrlbl11: TQRLabel;
    qrdbtxtCWHL: TQRDBText;
    qrbndDetailBand1: TQRBand;
    qrdbtxtCLBH: TQRDBText;
    qrdbtxtYWPM: TQRDBText;
    qrdbtxtCNO: TQRDBText;
    QRShape1: TQRShape;
    QRShape3: TQRShape;
    QRShape4: TQRShape;
    QRShape5: TQRShape;
    qrdbtxtDWBH: TQRDBText;
    QRShape14: TQRShape;
    qrdbtxtPaQty: TQRDBText;
    qrdbtxtQty: TQRDBText;
    qrdbtxtCWBH: TQRDBText;
    qrdbtxtUSPrice: TQRDBText;
    QRShape15: TQRShape;
    QRShape16: TQRShape;
    QRShape17: TQRShape;
    QRShape18: TQRShape;
    qrdbtxtUSACC: TQRDBText;
    QRExpr1: TQRExpr;
    qrbndTitleBand1: TQRBand;
    qrlbl26: TQRLabel;
    qrlbl27: TQRLabel;
    qrlbl28: TQRLabel;
    QRShape2: TQRShape;
    qrlbl29: TQRLabel;
    QRShape6: TQRShape;
    QRShape7: TQRShape;
    QRShape8: TQRShape;
    QRShape9: TQRShape;
    qrlbl30: TQRLabel;
    qrlbl31: TQRLabel;
    qrlbl32: TQRLabel;
    QRShape21: TQRShape;
    qrlbl33: TQRLabel;
    QRShape22: TQRShape;
    qrlbl34: TQRLabel;
    QRShape23: TQRShape;
    qrlbl35: TQRLabel;
    QRShape24: TQRShape;
    qrlbl36: TQRLabel;
    qrlbl37: TQRLabel;
    qrlbl1: TQRLabel;
    qrlbl2: TQRLabel;
    qrlbl3: TQRLabel;
    qrlbl4: TQRLabel;
    qrlbl5: TQRLabel;
    qrlbl6: TQRLabel;
    qrlbl7: TQRLabel;
    qrbndPageFooterBand2: TQRBand;
    Query1: TQuery;
    QRBand1: TQRBand;
    QRLabel1: TQRLabel;
    QRExpr2: TQRExpr;
    QRShape10: TQRShape;
    QRShape11: TQRShape;
    QRShape12: TQRShape;
    QRShape19: TQRShape;
    QRShape20: TQRShape;
    QRShape25: TQRShape;
    QRExpr3: TQRExpr;
    QRExpr4: TQRExpr;
    qrlbl22: TQRLabel;
    qrlbl13: TQRLabel;
    CQCNBPTM: TQRImage;
    QRLabel4: TQRLabel;
    CQBPTM: TQRImage;
    qrlbl15: TQRLabel;
    qrlbl14: TQRLabel;
    QRLabel5: TQRLabel;
    CQK: TQRImage;
    QRLabel6: TQRLabel;
    qrlbl17: TQRLabel;
    qrlbl16: TQRLabel;
    qrlbl18: TQRLabel;
    qrlbl19: TQRLabel;
    Applicant: TQRImage;
    QRLabel7: TQRLabel;
    QRLabel3: TQRLabel;
    TM: TQRImage;
    qrlbl21: TQRLabel;
    qrlbl20: TQRLabel;
    QRLabel2: TQRLabel;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormDestroy(Sender: TObject);
    procedure FormCreate(Sender: TObject);
  private      
    procedure ReadIni();
    { Private declarations }
  public
    { Public declarations }
  end;

var
  EntryCheck_PrintFormat: TEntryCheck_PrintFormat;

implementation   

uses
  EntryCheck1, FunUnit, main1;

{$R *.dfm}  
function   DaysOfItsMonth(ADate:   TDateTime):   Word;
var
   Y,M,D:Word;
begin
    DecodeDate(ADate,Y,M,D);
    ADate:=EncodeDate(Y,M,1);
    Result:=Trunc(IncMonth(ADate,1)-ADate);
end;

procedure TEntryCheck_PrintFormat.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  action:=Cafree;
end;

procedure TEntryCheck_PrintFormat.ReadIni();
var
  MyIni: Tinifile;
  AppDir: string;
begin
  AppDir := ExtractFilePath(Application.ExeName);
  if FileExists(AppDir + '\ComName.ini') = true then
  begin
    try
      MyIni := Tinifile.Create(AppDir + '\ComName.ini');
    finally
      MyIni.Free;
    end;
  end;
end;

procedure TEntryCheck_PrintFormat.FormDestroy(Sender: TObject);
begin
  EntryCheck_PrintFormat:=nil;
end;

procedure TEntryCheck_PrintFormat.FormCreate(Sender: TObject); 
var
  MyIni: Tinifile;
  AppDir: string;
  arr: TStringList;
  userName: string;             
  sDate,eDate:Tdate;
begin
  AppDir:=ExtractFilePath(Application.ExeName);
  ReadIni();
  SDate:=EncodeDate(strtoint(EntryCheck.CBX1.Text), strtoint(EntryCheck.CBX2.Text), 1);
  EDate:=EncodeDate(strtoint(EntryCheck.CBX4.Text), strtoint(EntryCheck.CBX5.Text), 1);
  EDate:=EncodeDate(strtoint(EntryCheck.CBX4.Text), strtoint(EntryCheck.CBX5.Text),DaysOfItsMonth(EDate));
  with Query1 do
    begin
      Active := false;
      SQL.Clear;
      SQL.Add('SELECT MAX(APPID) AS ApplicantID,');
      SQL.Add('MAX(APPNAME) AS Applicant,');
      SQL.Add('MAX(CAST(BEGIN_TIME AS DATE)) AS ApplicantDate,');
      SQL.Add('MAX(CASE WHEN SITE_CODE = ''CQK'' THEN ACCOUNT END) AS CQKID,');
      SQL.Add('MAX(CASE WHEN SITE_CODE = ''CQK'' THEN NAME END) AS CQK,');
      SQL.Add('MAX(CASE WHEN SITE_CODE = ''CQK'' THEN FINISH_TIME END) AS CQKDate,');
      SQL.Add('MAX(CASE WHEN SITE_CODE = '''' THEN ACCOUNT END) AS TMID,');
      SQL.Add('MAX(CASE WHEN SITE_CODE = '''' THEN NAME END) AS TM,');
      SQL.Add('MAX(CASE WHEN SITE_CODE = '''' THEN FINISH_TIME END) AS TMDate,');
      SQL.Add('MAX(CASE WHEN SITE_CODE = ''CQBPTM'' THEN ACCOUNT END) AS CQBPTMID,');
      SQL.Add('MAX(CASE WHEN SITE_CODE = ''CQBPTM'' THEN NAME END) AS CQBPTM,');
      SQL.Add('MAX(CASE WHEN SITE_CODE = ''CQBPTM'' THEN FINISH_TIME END) AS CQBPTMDate,');
      SQL.Add('MAX(CASE WHEN SITE_CODE = ''CQCNBPTM'' THEN ACCOUNT END) AS CQCNBPTMID,');
      SQL.Add('MAX(CASE WHEN SITE_CODE = ''CQCNBPTM'' THEN NAME END) AS CQCNBPTM,');
      SQL.Add('MAX(CASE WHEN SITE_CODE = ''CQCNBPTM'' THEN FINISH_TIME END) AS CQCNBPTMDate');
      SQL.Add('FROM (  SELECT * FROM OPENQUERY([UOFWEB],');
      SQL.Add('''SELECT SUBSTRING(TB_EB_USER.ACCOUNT, PATINDEX(''''%[0-9]%'''', TB_EB_USER.ACCOUNT), LEN(TB_EB_USER.ACCOUNT)) ACCOUNT,');
      SQL.Add('case when TB_WKF_TASK_NODE.ACTUAL_SIGNER<>TB_WKF_TASK_NODE.ORIGINAL_SIGNER then ''''1'''' else '''''''' end as NAME,');
      SQL.Add('CAST(FINISH_TIME AS DATE) FINISH_TIME, TB_EB_GROUP.GROUP_NAME, TITLE_NAME, SUBSTRING(US.ACCOUNT, PATINDEX(''''%[0-9]%'''', US.ACCOUNT), LEN(US.ACCOUNT)) APPID, CAST([UOF].[dbo].fSignsToNoSigns(US.NAME) AS VARCHAR(200)) as APPNAME,');
      SQL.Add('TB_WKF_TASK.BEGIN_TIME, ROW_NUMBER() OVER (PARTITION BY FINISH_TIME ORDER BY FINISH_TIME DESC) AS RowID, TB_WKF_TASK_TRIGGER_RECORD.SITE_CODE, TB_EB_GROUP.LEV, APPGROUP.LEV APPGROUP_LEV, APPGROUP.GROUP_NAME APPGROUP');
      SQL.Add('FROM [UOF].[dbo].[TB_WKF_TASK] TB_WKF_TASK');
      SQL.Add('LEFT JOIN [UOF].[dbo].[LYN_KCRK_INV] LYN_KCRK on LYN_KCRK.LNO=TB_WKF_TASK.DOC_NBR');
      SQL.Add('LEFT JOIN [UOF].[dbo].[TB_WKF_TASK_NODE] TB_WKF_TASK_NODE ON TB_WKF_TASK.TASK_ID=TB_WKF_TASK_NODE.TASK_ID');
      SQL.Add('LEFT JOIN [UOF].[dbo].[TB_WKF_TASK_TRIGGER_RECORD] TB_WKF_TASK_TRIGGER_RECORD ON TB_WKF_TASK_TRIGGER_RECORD.TASK_ID=TB_WKF_TASK_NODE.TASK_ID AND TB_WKF_TASK_TRIGGER_RECORD.SITE_ID = TB_WKF_TASK_NODE.SITE_ID');
      SQL.Add('LEFT JOIN [UOF].[dbo].[TB_WKF_TASK_NODE_SIGNER_INFO] TB_WKF_TASK_NODE_SIGNER_INFO ON TB_WKF_TASK_NODE_SIGNER_INFO.SITE_ID=TB_WKF_TASK_NODE.SITE_ID AND TB_WKF_TASK_NODE.NODE_SEQ=TB_WKF_TASK_NODE_SIGNER_INFO.NODE_SEQ');
      SQL.Add('LEFT JOIN [UOF].[dbo].[TB_EB_GROUP] TB_EB_GROUP ON TB_WKF_TASK_NODE_SIGNER_INFO.GROUP_ID=TB_EB_GROUP.GROUP_ID');
      SQL.Add('LEFT JOIN [UOF].[dbo].[TB_EB_EMPL_DEP] TB_EB_EMPL_DEP ON TB_EB_EMPL_DEP.GROUP_ID=TB_EB_GROUP.GROUP_ID AND TB_EB_EMPL_DEP.USER_GUID=TB_WKF_TASK_NODE.ORIGINAL_SIGNER');
      SQL.Add('LEFT JOIN [UOF].[dbo].[TB_EB_USER] TB_EB_USER ON TB_EB_USER.USER_GUID=TB_WKF_TASK_NODE.ACTUAL_SIGNER');
      SQL.Add('LEFT JOIN [UOF].[dbo].[TB_EB_USER] US ON US.USER_GUID=TB_WKF_TASK.AGENT_USER');
      SQL.Add('LEFT JOIN [UOF].[dbo].[TB_EB_GROUP] APPGROUP ON APPGROUP.GROUP_ID=TB_WKF_TASK.USER_GROUP_ID');
      SQL.Add('LEFT JOIN [UOF].[dbo].[TB_EB_JOB_TITLE] TB_EB_JOB_TITLE ON TB_EB_JOB_TITLE.TITLE_ID=TB_EB_EMPL_DEP.TITLE_ID');
      SQL.Add('WHERE ACTUAL_SIGNER IS NOT NULL AND LYN_KCRK.Invoice=''''' + EntryCheck.cbInvoice.Text + ''''' ');
      SQL.Add('AND LYN_KCRK.StartDate=''''' + formatdatetime('yyyy/MM/dd',sdate) + ''''' AND LYN_KCRK.EndDate=''''' + formatdatetime('yyyy/MM/dd',edate) + ''''''') AS OP');
      SQL.Add(') AS ApproveDataBPM');
      //ShowMessage(SQL.Text);
      Active := true;
    end;
    if (Query1.RecordCount>0) and (Query1.FieldByName('Applicant').AsString <> '') then
    begin
      if Query1.FieldByName('CQCNBPTM').AsString = '1' then QRLabel4.Caption:='代' else QRLabel4.Caption:='';
      if Query1.FieldByName('CQBPTM').AsString = '1' then QRLabel5.Caption:='代' else QRLabel5.Caption:='';
      if Query1.FieldByName('CQK').AsString = '1' then QRLabel6.Caption:='代' else QRLabel6.Caption:='';
      if Query1.FieldByName('Applicant').AsString = '1' then QRLabel7.Caption:='代' else QRLabel7.Caption:='';
      if Query1.FieldByName('TM').AsString = '1' then QRLabel3.Caption:='代' else QRLabel3.Caption:='';
      if(not DirectoryExists(AppDir+'Images\'))  then ForceDirectories(AppDir+'Images\');

      //   chu quan bo phan cao nhat
      if Query1.FieldByName('CQCNBPTMID').Value <> '' then
      begin
        CopyFile(Pchar('\\'+main.ServerIP+'\liy_erp\Images\'+Query1.FieldByName('CQCNBPTMID').AsString+'.bmp'),Pchar(AppDir+'Images\'+Query1.FieldByName('CQCNBPTMID').AsString+'.bmp'),false);
        if FileExists(AppDir+'Images\'+Query1.FieldByName('CQCNBPTMID').AsString+'.bmp') then
        begin
          CQCNBPTM.Picture.LoadFromFile(AppDir+'Images\'+Query1.FieldByName('CQCNBPTMID').AsString+'.bmp');
          if Query1.FieldByName('CQCNBPTM').AsString = '1' then QRLabel4.Caption:='代' else QRLabel4.Caption:='';
        end;
      end;
      //    chu quan bo phan
     // QRLabel5.Caption:='代';                                           
    {  if ADOQuery.FieldByName('CQBPTMID').Value <> '' then
      begin
        CopyFile(Pchar('\\'+main.ServerIP+'\liy_erp\Images\'+ADOQuery.FieldByName('CQBPTMID').AsString+'_RK.bmp'),Pchar(AppDir+'Images\'+ADOQuery.FieldByName('CQBPTMID').AsString+'_RK.bmp'),false);
        if FileExists(AppDir+'Images\'+ADOQuery.FieldByName('CQBPTMID').AsString+'_RK.bmp') then
        begin
          CQBPTM.Picture.LoadFromFile(AppDir+'Images\'+ADOQuery.FieldByName('CQBPTMID').AsString+'_RK.bmp');
          if ADOQuery.FieldByName('CQBPTM').AsString = '1' then QRLabel5.Caption:='代' else QRLabel5.Caption:='';
        end;
      end else
      begin
        CopyFile(Pchar('\\'+main.ServerIP+'\liy_erp\Images\'+ADOQuery.FieldByName('CQBPTMID').AsString+'_RK.bmp'),Pchar(AppDir+'Images\'+ADOQuery.FieldByName('CQBPTMID').AsString+'_RK.bmp'),false);
        if FileExists(AppDir+'Images\'+ADOQuery.FieldByName('CQBPTMID').AsString+'_RK.bmp') then
        begin
          CQBPTM.Picture.LoadFromFile(AppDir+'Images\'+ADOQuery.FieldByName('CQBPTMID').AsString+'_RK.bmp');
          if ADOQuery.FieldByName('CQBPTM').AsString = '1' then QRLabel5.Caption:='代' else QRLabel5.Caption:='';
        end;
      end;       }
      //     chu quan kho
      if Query1.FieldByName('CQKID').Value <> '' then
      begin
        CopyFile(Pchar('\\'+main.ServerIP+'\liy_erp\Images\'+Query1.FieldByName('CQKID').AsString+'.bmp'),Pchar(AppDir+'Images\'+Query1.FieldByName('CQKID').AsString+'.bmp'),false);
        if FileExists(AppDir+'Images\'+Query1.FieldByName('CQKID').AsString+'.bmp') then
        begin
          CQK.Picture.LoadFromFile(AppDir+'Images\'+Query1.FieldByName('CQKID').AsString+'.bmp');
          if Query1.FieldByName('CQK').AsString = '1' then QRLabel6.Caption:='代' else QRLabel6.Caption:='';
        end;
      end;
      //      nhan vien kho
      if Query1.FieldByName('ApplicantID').Value <> '' then
      begin
        CopyFile(Pchar('\\'+main.ServerIP+'\liy_erp\Images\'+Query1.FieldByName('ApplicantID').AsString+'.bmp'),Pchar(AppDir+'Images\'+Query1.FieldByName('ApplicantID').AsString+'.bmp'),false);
        if FileExists(AppDir+'Images\'+Query1.FieldByName('ApplicantID').AsString+'.bmp') then
        begin
          Applicant.Picture.LoadFromFile(AppDir+'Images\'+Query1.FieldByName('ApplicantID').AsString+'.bmp');
          if Query1.FieldByName('Applicant').AsString = '1' then QRLabel7.Caption:='代' else QRLabel7.Caption:='';
        end;
      end;
      //     nhan vien thu mua
      if Query1.FieldByName('TMID').Value <> '' then
      begin
        CopyFile(Pchar('\\'+main.ServerIP+'\liy_erp\Images\'+Query1.FieldByName('TMID').AsString+'.bmp'),Pchar(AppDir+'Images\'+Query1.FieldByName('TMID').AsString+'.bmp'),false);
        if FileExists(AppDir+'Images\'+Query1.FieldByName('TMID').AsString+'.bmp') then
        begin
          TM.Picture.LoadFromFile(AppDir+'Images\'+Query1.FieldByName('TMID').AsString+'.bmp');
          if Query1.FieldByName('TM').AsString = '1' then QRLabel3.Caption:='代' else QRLabel3.Caption:='';
        end;
      end;
    end;
end;

end.
