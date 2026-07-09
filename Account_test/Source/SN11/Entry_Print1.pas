unit Entry_Print1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, QRCtrls, QuickRpt, ExtCtrls, QRExport, QRXMLSFilt, QRPDFFilt,
  DBTables, DB,IniFiles;

type
  TEntry_Print = class(TForm)
    QuickRep1: TQuickRep;
    PageHeaderBand1: TQRBand;
    QRDBText1: TQRDBText;
    QRDBText3: TQRDBText;
    QRSysData2: TQRSysData;
    QRLabel38: TQRLabel;
    QPage1: TQRLabel;
    DetailBand1: TQRBand;
    QRSysData1: TQRSysData;
    QRDBText5: TQRDBText;
    QRDBText6: TQRDBText;
    QRDBText7: TQRDBText;
    QRDBText8: TQRDBText;
    PageFooterBand1: TQRBand;
    QRDBText2: TQRDBText;
    QRDBText12: TQRDBText;
    QRDBText4: TQRDBText;
    QRDBText9: TQRDBText;
    QRDBText10: TQRDBText;
    QRDBText11: TQRDBText;
    SummaryBand1: TQRBand;
    QRLabel1: TQRLabel;
    QRExpr1: TQRExpr;
    QRExpr2: TQRExpr;
    QRDBText13: TQRDBText;
    QRDBText14: TQRDBText;
    QRPDFFilter1: TQRPDFFilter;
    QRXMLSFilter1: TQRXMLSFilter;
    QRTextFilter1: TQRTextFilter;
    EnDet: TQuery;
    UpdateSQL1: TUpdateSQL;
    EnDetRKNO: TStringField;
    EnDetCLBH: TStringField;
    EnDetCGBH: TStringField;
    EnDetRKSB: TStringField;
    EnDetQty: TCurrencyField;
    EnDetPaQty: TFloatField;
    EnDetUSPrice: TCurrencyField;
    EnDetUSACC: TCurrencyField;
    EnDetCostID: TStringField;
    EnDetUSERID: TStringField;
    EnDetUSERDATE: TDateTimeField;
    EnDetYN: TStringField;
    EnDetFKZT: TStringField;
    EnDetYWPM: TStringField;
    EnDetDWBH: TStringField;
    EnDetVNPrice: TCurrencyField;
    EnDetVNACC: TCurrencyField;
    EnDetCWHL: TCurrencyField;
    QRDBText15: TQRDBText;
    QRLabel2: TQRLabel;
    Query1: TQuery;
    CQCNBPTM: TQRImage;
    QRLabel4: TQRLabel;
    CQBPTM: TQRImage;
    QRLabel5: TQRLabel;
    CQK: TQRImage;
    QRLabel6: TQRLabel;
    Applicant: TQRImage;
    QRLabel7: TQRLabel;
    TM: TQRImage;
    QRLabel3: TQRLabel;
    procedure FormDestroy(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    procedure ReadIni();
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Entry_Print: TEntry_Print;

implementation

uses
  EntryPur1, FunUnit, main1;

{$R *.dfm}

procedure TEntry_Print.FormDestroy(Sender: TObject);
begin
  Entry_Print := nil;
end;

procedure TEntry_Print.ReadIni();
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

procedure TEntry_Print.FormCreate(Sender: TObject);
var
  MyIni: Tinifile;
  AppDir: string;
  arr: TStringList;
  userName: string;
begin
  AppDir:=ExtractFilePath(Application.ExeName);
  ReadIni();
  //if (main.Edit2.Text = 'VA12') or (main.Edit2.Text = 'VC2') then
  //begin
    with Query1 do
    begin
      Active := false;
      SQL.Clear;
     { SQL.Add('  select DISTINCT CGNO,CGZL.UserID,CGZL.Userdate,Busers.USERNAME from KCRK  ');
      SQL.Add('  LEFT JOIN dbo.KCRKS ON KCRKS.RKNO = KCRK.RKNO ');
      SQL.Add('  LEFT JOIN CGZL ON CGZL.CGNO=dbo.KCRK.ZSNO ');
      SQL.Add('  left join dbo.Busers on Busers.USERID = CGZL.USERID ');
      SQL.Add('   where KCRKS.RKNO=''' + EntryPur.EnMas.FieldByName('RKNO').AsString + ''' ');
    //ShowMessage(SQL.Text);
      Active := true;
      if RecordCount > 0 then
      begin
        arr := funcObj.SplitString(FieldByName('UserName').AsString, ' ');
        if arr.Count > 0 then
          userName := arr[arr.Count - 1];
        QRLabel3.Caption := userName;
      end; }
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
      SQL.Add('LEFT JOIN [UOF].[dbo].[LYN_KCRK] LYN_KCRK on LYN_KCRK.LNO=TB_WKF_TASK.DOC_NBR');
      SQL.Add('LEFT JOIN [UOF].[dbo].[TB_WKF_TASK_NODE] TB_WKF_TASK_NODE ON TB_WKF_TASK.TASK_ID=TB_WKF_TASK_NODE.TASK_ID');
      SQL.Add('LEFT JOIN [UOF].[dbo].[TB_WKF_TASK_TRIGGER_RECORD] TB_WKF_TASK_TRIGGER_RECORD ON TB_WKF_TASK_TRIGGER_RECORD.TASK_ID=TB_WKF_TASK_NODE.TASK_ID AND TB_WKF_TASK_TRIGGER_RECORD.SITE_ID = TB_WKF_TASK_NODE.SITE_ID');
      SQL.Add('LEFT JOIN [UOF].[dbo].[TB_WKF_TASK_NODE_SIGNER_INFO] TB_WKF_TASK_NODE_SIGNER_INFO ON TB_WKF_TASK_NODE_SIGNER_INFO.SITE_ID=TB_WKF_TASK_NODE.SITE_ID AND TB_WKF_TASK_NODE.NODE_SEQ=TB_WKF_TASK_NODE_SIGNER_INFO.NODE_SEQ');
      SQL.Add('LEFT JOIN [UOF].[dbo].[TB_EB_GROUP] TB_EB_GROUP ON TB_WKF_TASK_NODE_SIGNER_INFO.GROUP_ID=TB_EB_GROUP.GROUP_ID');
      SQL.Add('LEFT JOIN [UOF].[dbo].[TB_EB_EMPL_DEP] TB_EB_EMPL_DEP ON TB_EB_EMPL_DEP.GROUP_ID=TB_EB_GROUP.GROUP_ID AND TB_EB_EMPL_DEP.USER_GUID=TB_WKF_TASK_NODE.ORIGINAL_SIGNER');
      SQL.Add('LEFT JOIN [UOF].[dbo].[TB_EB_USER] TB_EB_USER ON TB_EB_USER.USER_GUID=TB_WKF_TASK_NODE.ACTUAL_SIGNER');
      SQL.Add('LEFT JOIN [UOF].[dbo].[TB_EB_USER] US ON US.USER_GUID=TB_WKF_TASK.AGENT_USER');
      SQL.Add('LEFT JOIN [UOF].[dbo].[TB_EB_GROUP] APPGROUP ON APPGROUP.GROUP_ID=TB_WKF_TASK.USER_GROUP_ID');
      SQL.Add('LEFT JOIN [UOF].[dbo].[TB_EB_JOB_TITLE] TB_EB_JOB_TITLE ON TB_EB_JOB_TITLE.TITLE_ID=TB_EB_EMPL_DEP.TITLE_ID');
      SQL.Add('WHERE ACTUAL_SIGNER IS NOT NULL AND LYN_KCRK.RKNO=''''' + EntryPur.EnMas.FieldByName('RKNO').AsString + ''''''') AS OP');
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
        CopyFile(Pchar('\\'+main.ServerIP+'\liy_erp\Images\'+Query1.FieldByName('CQCNBPTMID').AsString+'_RK.bmp'),Pchar(AppDir+'Images\'+Query1.FieldByName('CQCNBPTMID').AsString+'_RK.bmp'),false);
        if FileExists(AppDir+'Images\'+Query1.FieldByName('CQCNBPTMID').AsString+'_RK.bmp') then
        begin
          CQCNBPTM.Picture.LoadFromFile(AppDir+'Images\'+Query1.FieldByName('CQCNBPTMID').AsString+'_RK.bmp');
          if Query1.FieldByName('CQCNBPTM').AsString = '1' then QRLabel4.Caption:='代' else QRLabel4.Caption:='';
        end;
      end;
      //    chu quan bo phan
     // QRLabel5.Caption:='代';                                           
     { if Query1.FieldByName('CQBPTMID').Value <> '' then
      begin
        CopyFile(Pchar('\\'+main.ServerIP+'\liy_erp\Images\'+Query1.FieldByName('CQBPTMID').AsString+'_RK.bmp'),Pchar(AppDir+'Images\'+Query1.FieldByName('CQBPTMID').AsString+'_RK.bmp'),false);
        if FileExists(AppDir+'Images\'+Query1.FieldByName('CQBPTMID').AsString+'_RK.bmp') then
        begin
          CQBPTM.Picture.LoadFromFile(AppDir+'Images\'+Query1.FieldByName('CQBPTMID').AsString+'_RK.bmp');
          if Query1.FieldByName('CQBPTM').AsString = '1' then QRLabel5.Caption:='代' else QRLabel5.Caption:='';
        end;
      end;      }
      //     chu quan kho
      if Query1.FieldByName('CQKID').Value <> '' then
      begin
        CopyFile(Pchar('\\'+main.ServerIP+'\liy_erp\Images\'+Query1.FieldByName('CQKID').AsString+'_RK.bmp'),Pchar(AppDir+'Images\'+Query1.FieldByName('CQKID').AsString+'_RK.bmp'),false);
        if FileExists(AppDir+'Images\'+Query1.FieldByName('CQKID').AsString+'_RK.bmp') then
        begin
          CQK.Picture.LoadFromFile(AppDir+'Images\'+Query1.FieldByName('CQKID').AsString+'_RK.bmp');
          if Query1.FieldByName('CQK').AsString = '1' then QRLabel6.Caption:='代' else QRLabel6.Caption:='';
        end;
      end;
      //      nhan vien kho
      if Query1.FieldByName('ApplicantID').Value <> '' then
      begin
        CopyFile(Pchar('\\'+main.ServerIP+'\liy_erp\Images\'+Query1.FieldByName('ApplicantID').AsString+'_RK.bmp'),Pchar(AppDir+'Images\'+Query1.FieldByName('ApplicantID').AsString+'_RK.bmp'),false);
        if FileExists(AppDir+'Images\'+Query1.FieldByName('ApplicantID').AsString+'_RK.bmp') then
        begin
          Applicant.Picture.LoadFromFile(AppDir+'Images\'+Query1.FieldByName('ApplicantID').AsString+'_RK.bmp');
          if Query1.FieldByName('Applicant').AsString = '1' then QRLabel7.Caption:='代' else QRLabel7.Caption:='';
        end;
      end;
      //     nhan vien thu mua
      if Query1.FieldByName('TMID').Value <> '' then
      begin
        CopyFile(Pchar('\\'+main.ServerIP+'\liy_erp\Images\'+Query1.FieldByName('TMID').AsString+'_RK.bmp'),Pchar(AppDir+'Images\'+Query1.FieldByName('TMID').AsString+'_RK.bmp'),false);
        if FileExists(AppDir+'Images\'+Query1.FieldByName('TMID').AsString+'_RK.bmp') then
        begin
          TM.Picture.LoadFromFile(AppDir+'Images\'+Query1.FieldByName('TMID').AsString+'_RK.bmp');
          if Query1.FieldByName('TM').AsString = '1' then QRLabel3.Caption:='代' else QRLabel3.Caption:='';
        end;
      end;
    end;
  //end;
  TCurrencyField(EnDet.FieldByName('VNPrice')).DisplayFormat := EntryPur.VNPrice_DiplayFormat;
  TCurrencyField(EnDet.FieldByName('VNACC')).DisplayFormat := EntryPur.VNPrice_DiplayFormat;
  TCurrencyField(EnDet.FieldByName('Qty')).DisplayFormat := EntryPur.WH_DiplayFormat;
  QRExpr2.Mask := EntryPur.VNPrice_DiplayFormat;
  EnDet.Active := true;
end;

procedure TEntry_Print.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  Action := Cafree;
end;

end.

