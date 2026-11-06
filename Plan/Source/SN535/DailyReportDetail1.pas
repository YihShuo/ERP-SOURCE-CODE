(*unit DailyReportDetail1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DB, DBTables, GridsEh, DBGridEh, StdCtrls, ComCtrls, ExtCtrls, fununit,
  ADODB, Comobj, Dateutils, iniFiles;

type
  TDailyReportDetail = class(TForm)
    Panel1: TPanel;
    Label2: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    Label1: TLabel;
    Label9: TLabel;
    Label10: TLabel;
    Button1: TButton;
    DTP1: TDateTimePicker;
    Edit1: TEdit;
    CB1: TComboBox;
    DBGridEh1: TDBGridEh;
    Query1: TQuery;
    Qtemp: TQuery;
    DataSource1: TDataSource;
    Button2: TButton;
    ExeQuery: TQuery;
    Qtemp1: TQuery;
    CBHuman: TCheckBox;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormDestroy(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure DBGridEh1DrawColumnCell(Sender: TObject; const Rect: TRect;
      DataCol: Integer; Column: TColumnEh; State: TGridDrawState);
    procedure Button2Click(Sender: TObject);
  private
    AppDir: string;
    HrmsDBIP, HrmsDBUser, HrmsDBPass, HrmsDBName: string;
    procedure ReadIni();
    procedure CreateHRM_Connect();
    procedure CreateHRM_DisConnect();
    { Private declarations }
  public
    { Public declarations }
  end;

var
  DailyReportDetail: TDailyReportDetail;
  NDate: TDate;

implementation

uses main1;

{$R *.dfm}

procedure TDailyReportDetail.ReadIni();
var
  MyIni: Tinifile;
  AppDir: string;
begin
  AppDir := ExtractFilePath(Application.ExeName);
  if FileExists(AppDir + '\ComName.ini') = true then
  begin
    try
      MyIni := Tinifile.Create(AppDir + '\ComName.ini');
      HrmsDBIP := MyIni.ReadString('HRMS', 'IP', '192.168.23.12');
      HrmsDBName := MyIni.ReadString('HRMS', 'Database', 'P0104-TYXUAN');
      HrmsDBUser := MyIni.ReadString('HRMS', 'User', 'hrms');
      HrmsDBPass := MyIni.ReadString('HRMS', 'Pass', '123456');
    finally
      MyIni.Free;
    end;
  end;
end;

procedure TDailyReportDetail.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  action := cafree;
end;

procedure TDailyReportDetail.FormDestroy(Sender: TObject);
begin
  //CreateHRM_DisConnect();
  DailyReportDetail := nil;
end;

procedure TDailyReportDetail.FormCreate(Sender: TObject);
var
  i: integer;
begin

  AppDir := ExtractFilePath(Application.ExeName);
  with Qtemp do
  begin
    active := false;
    sql.Clear;
    sql.add('select GSDH from BGSZL order by GSDH');
    active := true;
    for i := 1 to recordcount do
    begin
      CB1.Items.Add(fieldbyname('GSDH').asstring);
      next;
    end;
    CB1.Text := main.edit2.Text;
    active := false;
    sql.Clear;
    sql.add('Select convert(smalldatetime,convert(varchar,getdate(),111)) as NDate ');
    active := true;
    NDate := fieldbyname('NDate').value;
    active := false;
  end;
  DTP1.Date := NDate;
  ReadIni();
  //CreateHRM_Connect();
end;

procedure TDailyReportDetail.CreateHRM_Connect();
begin
  //
  with ExeQuery do
  begin
    Active := false;
    SQL.Clear;
    SQL.Add('--//[1] Create Linkserver');
    SQL.Add('set ansi_nulls on ');
    SQL.Add('set ansi_warnings on ');
    SQL.Add(' ');
    SQL.Add('if  not exists(select *  from   master..sysservers  where  srvname= ''HumanDB'') ');
    SQL.Add('Exec sp_addlinkedserver');
    SQL.Add('   @server=''HumanDB'', --//linkserver name.');
    SQL.Add('   @srvproduct='''', --//¤@¯ë´y­z');
    SQL.Add('   @provider=''SQLOLEDB'', --//OLEDB Provider name, check BOL for more providers');
    SQL.Add('   @datasrc=''' + HrmsDBIP + ''', --//»·ºÝServer Name  192.168.11.100\sql2k8');
    SQL.Add('   @catalog=''' + HrmsDBName + ''' --//default database for linkserver');
    //SQL.Add('GO');
    SQL.Add('');
    SQL.Add('--//[2]Add linked server login');
    SQL.Add('Exec sp_addlinkedsrvlogin');
    SQL.Add('@useself=''false'', --//false=¨Ï¥Î»·ºÝ¨Ï¥ÎªÌ/±K½Xµn¤J');
    SQL.Add(' --//true=¨Ï¥Î¥»¦aºÝ¨Ï¥ÎªÌ/±K½X³s½u»·ºÝSERVER                        ');
    SQL.Add('@rmtsrvname=''HumanDB'', --//Linked server name');
    SQL.Add('@rmtuser=''' + HrmsDBUser + ''' , --//»·ºÝµn¤J¨Ï¥ÎªÌ');
    SQL.Add('@rmtpassword=''' + HrmsDBPass + ''' --//»·ºÝµn¤J¨Ï¥ÎªÌ±K½X');
    //SQL.Add('GO');
    ExecSQL();
  end;
  //
end;

//Ãö³¬HRM³s½u
procedure TDailyReportDetail.CreateHRM_DisConnect();
begin
  with ExeQuery do
  begin
    Active := false;
    SQL.Clear;
    SQL.Add('if exists(select *  from   master..sysservers  where  srvname= ''HumanDB'') begin');
    SQL.Add('Exec sp_droplinkedsrvlogin ''HumanDB'',Null ');
    SQL.Add('Exec sp_dropserver ''HumanDB'',''droplogins'' ');
    SQL.Add('end');
    ExecSQL();
  end;
end;

procedure TDailyReportDetail.Button1Click(Sender: TObject);
var
  j, k, h: integer;
begin

  with Query1 do
  begin
    active := false;
    sql.Clear;
    SQL.Add('set ansi_nulls on ');
    SQL.Add('set ansi_warnings on ');
    sql.Add('if object_id(''tempdb..#Scbbdata'') is not null');
    sql.Add(' begin   ');
    sql.Add('   drop table #Scbbdata ');
    sql.Add(' end');
    //
    if formatdatetime('yyyy/MM/dd', DTP1.Date) = formatdatetime('yyyy/MM/dd', NDate) then
    begin
      sql.Add('if object_id(''tempdb..#LKTT'') is not null');
      sql.Add(' begin ');
      sql.Add('  drop table #LKTT ');
      sql.Add(' end ');
      sql.Add('if object_id(''tempdb..#LKTT'') is  null');
      sql.Add(' begin ');
      sql.Add('  CREATE TABLE [tempdb].[#LKTT](');
      sql.Add('	 [DepNo] [varchar](10) NOT NULL,');
      sql.Add('	 [GXLB] [varchar](2) NOT NULL,');
      sql.Add('	 [DepName] [varchar](50) NULL,');
      sql.Add('	 [QtyTT] [float] NULL,');
      sql.Add('  ) ON [PRIMARY] ');
      sql.Add(' end ');
      sql.Add('truncate table #LKTT ');
      sql.Add('insert  into #LKTT ');
      sql.Add('select LKTT.DepNo,LKTT.GXLB,LKTT.DepName,sum(LKTT.QtyTT)as QtyTT');
      sql.Add('           from (select SCBB.DepNo,SCBBS.GXLB,BDepartment.DepName,isnull(sum(Convert(float,SCBBS.Qty)),0) as QtyTT');
      sql.Add('                 from SCBB');
      sql.Add('                 left join SCBBS on  SCBB.ProNo=SCBBS.ProNo');
      sql.Add('                 left join BDepartment on BDepartment.ID=SCBB.DepNo');
      sql.Add('                 where  convert(smalldatetime,convert(varchar,SCBB.SCDate,111))');
      sql.Add('                        between ''' + formatdatetime('yyyy/MM/dd', startofthemonth(DTP1.date)) + ''' and  ''' +
        formatdatetime('yyyy/MM/dd', DTP1.Date) + '''');
      sql.Add('                 and BDepartment.GSBH=' + '''' + CB1.text + '''');
      sql.Add('                 and BDepartment.DepName like ' + '''' + '%' + edit1.Text + '%' + '''');
      sql.Add('                 and (SCBBS.GXLB=''A'' or SCBBS.GXLB=''C'' or SCBBS.GXLB=''S'' or SCBBS.GXLB=''O'')');
      sql.Add('                 Group by SCBB.DepNo,SCBBS.GXLB,BDepartment.DepName');
      sql.Add('                 Union all');
      sql.Add('                 select SMZL.DepNo,SMDDSS.GXLB,BDepartment.DepName,isnull(sum(Convert(float,SMZL.CTS*SMDDSS.Qty)),0) as QtyTT');
      sql.Add('                 from SMZL');
      sql.Add('                 left join SMDDSS on  SMZL.CODEBAR=SMDDSS.CODEBAR');
      sql.Add('                 left join BDepartment on BDepartment.ID=SMZL.DepNo');
      sql.Add('                 left join SMDD on SMDD.DDBH=SMDDSS.DDBH and SMDD.GXLB=SMDDSS.GXLB');
      sql.Add('                 where  convert(smalldatetime,convert(varchar,SMZL.USERDATE,111)) ');
      sql.Add('                        between ''' + formatdatetime('yyyy/MM/dd', DTP1.date) + ''' and  ''' +
        formatdatetime('yyyy/MM/dd', DTP1.Date) + '''');
      sql.Add('                 and BDepartment.GSBH=' + '''' + CB1.text + '''');
      sql.Add('                 and BDepartment.DepName like ' + '''' + '%' + edit1.Text + '%' + '''');
      sql.Add('                 and (SMDDSS.GXLB=''A'' or SMDDSS.GXLB=''C'' or SMDDSS.GXLB=''S'' or SMDDSS.GXLB=''O'')');
      sql.Add('                 Group by SMZL.DepNo,SMDDSS.GXLB,BDepartment.DepName)LKTT ');
      sql.Add('           Group by LKTT.DepNo,LKTT.GXLB,LKTT.DepName ');
    end;
    //

    if formatdatetime('yyyy/MM/dd', DTP1.Date) = formatdatetime('yyyy/MM/dd', NDate) then
    begin
      sql.Add(' select SL.*,LKMT.QtyMT,#LKTT.QtyTT');
      sql.Add(' into #Scbbdata');
      sql.Add(' from ( ');
      sql.add('       select convert(varchar,SMZL.USERDATE,111) as SCDate ,SMZL.DepNo,SMDDSS.GXLB,BDepartment.DepName,isnull(sum(Convert(float,SMZL.CTS*SMDDSS.Qty)),0) as Qty,isnull(SCBZCL.Qty,0) as bzQty,');
      sql.add('              Convert(float,SCRL.SCGS) as SCGS,null as SDGS,isnull(sum(SMZL.CTS*SMDDSS.Qty),0)/SCRL.SCGS  as AvgQty');
      sql.add('       from SMZL');
      sql.add('       left join SMDDSS on  SMZL.CODEBAR=SMDDSS.CODEBAR');
      sql.add('       left join BDepartment on BDepartment.ID=SMZL.DepNo');
      sql.add('       left join SCBZCL on SCBZCL.BZDate=convert(smalldatetime,convert(varchar,SMZL.USERDATE,111)) and SCBZCL.DepNo=SMZL.DepNo');
      sql.add('       left join SMDD on SMDD.DDBH=SMDDSS.DDBH and SMDD.GXLB=SMDDSS.GXLB');
      sql.add('       left join SCRL on SCRL.SCYEAR=Year(SMZL.USERDATE) and SCRL.SCMONTH=Month(SMZL.USERDATE) and SCRL.SCDay=Day(SMZL.USERDATE ) ');
      sql.add('                      and SCRL.DepNO=SMZL.DepNO');
      sql.add('       where  convert(smalldatetime,convert(varchar,SMZL.USERDATE,111))=''' + formatdatetime('yyyy/MM/dd',
        DTP1.Date) + '''');
      sql.add('       and BDepartment.GSBH=' + '''' + CB1.text + '''');
      sql.add('       and BDepartment.DepName like ' + '''' + '%' + edit1.Text + '%' + '''');
      sql.add('       and (SMDDSS.GXLB=''A'' or SMDDSS.GXLB=''C'' or SMDDSS.GXLB=''S'' or SMDDSS.GXLB=''O'')');
      sql.add('       Group by convert(varchar,SMZL.USERDATE,111) ,SMZL.DepNo,SMDDSS.GXLB,BDepartment.DepName ,SCBZCL.Qty,SCRL.SCGS ) SL');
      sql.Add('left join #LKTT  on #LKTT.DepNo COLLATE DATABASE_DEFAULT =SL.DepNo COLLATE DATABASE_DEFAULT and #LKTT.GXLB COLLATE DATABASE_DEFAULT =SL.GXLB COLLATE DATABASE_DEFAULT ');
    end
    else
    begin
      sql.Add(' select SL.*,LKMT.QtyMT,LKTT.QtyTT');
      sql.Add(' into #Scbbdata');
      sql.Add(' from (');
      sql.Add('       Select convert(varchar,SCBB.SCDate,111) as SCDate ,SCBB.DepNo,SCBBS.GXLB,BDepartment.DepName,isnull(sum(Convert(float,SCBBS.Qty)),0) as Qty,isnull(SCBZCL.Qty,0) as bzQty,');
      sql.Add('              Convert(float,SCRL.SCGS) as SCGS,null as SDGS,isnull(sum(SCBBS.Qty),0)/SCRL.SCGS  as AvgQty');
      sql.Add('       from SCBB');
      sql.Add('       left join SCBBS on  SCBB.ProNo=SCBBS.ProNo');
      sql.Add('       left join BDepartment on BDepartment.ID=SCBB.DepNo');
      sql.Add('       left join SCBZCL on SCBZCL.BZDate=SCBB.SCDate and SCBZCL.DepNo=SCBB.DepNo');
      sql.Add('       left join DDZL on DDZl.DDBH=SCBBS.SCBH');
      sql.Add('       left join SCXXCL on SCXXCL.XieXing=DDZL.XieXing and SCXXCL.SheHao=DDZL.SheHao and SCXXCL.GXLB=SCBBS.GXLB and SCXXCL.BZLB=SCBBS.BZLB');
      sql.Add('       left join SCRL on SCRL.SCYEAR=Year(SCBB.SCDate) and SCRL.SCMONTH=Month(SCBB.SCDate) and SCRL.SCDay=Day(SCBB.SCDate )');
      sql.Add('                      and SCRL.DepNO=SCBB.DepNO');
      sql.Add('       where  convert(smalldatetime,convert(varchar,SCBB.SCDate,111))=''' + formatdatetime('yyyy/MM/dd', DTP1.Date)
        + '''');
      sql.Add('       and SCBB.GSBH=' + '''' + CB1.text + '''');
      sql.Add('       and BDepartment.DepName like ' + '''' + '%' + edit1.Text + '%' + '''');
      sql.Add('       and (SCBBS.GXLB=''A'' or SCBBS.GXLB=''C'' or SCBBS.GXLB=''S''or SCBBS.GXLB=''O'')');
      sql.Add('       Group by convert(varchar,SCBB.SCDate,111) ,SCBB.DepNo,SCBBS.GXLB,BDepartment.DepName ,SCBZCL.Qty,SCRL.SCGS ) SL');
      sql.Add(' left join (select SCBB.DepNo,SCBBS.GXLB,BDepartment.DepName,isnull(sum(Convert(float,SCBBS.Qty)),0) as QtyTT');
      sql.Add('            from SCBB');
      sql.Add('            left join SCBBS on  SCBB.ProNo=SCBBS.ProNo');
      sql.Add('            left join BDepartment on BDepartment.ID=SCBB.DepNo');
      sql.Add('            where  convert(smalldatetime,convert(varchar,SCBB.SCDate,111))');
      sql.Add('                   between ''' + formatdatetime('yyyy/MM/dd', startofthemonth(DTP1.date)) + ''' and  ''' +
        formatdatetime('yyyy/MM/dd', DTP1.Date) + '''');
      sql.Add('            and BDepartment.GSBH=' + '''' + CB1.text + '''');
      sql.Add('            and BDepartment.DepName like ' + '''' + '%' + edit1.Text + '%' + '''');
      sql.Add('            and (SCBBS.GXLB=''A'' or SCBBS.GXLB=''C'' or SCBBS.GXLB=''S''or SCBBS.GXLB=''O'')');
      sql.Add('            Group by SCBB.DepNo,SCBBS.GXLB,BDepartment.DepName ) LKTT on LKTT.DepNo=SL.DepNo and LKTT.GXLB=SL.GXLB');
    end;
    //
    sql.Add(' left join( select SCBZCL.Depno,Bdepartment.GXLB,Bdepartment.Depname,isnull(sum(qty),0) as QtyMT');
    sql.Add('	           from SCBZCL left join bdepartment on SCBZCL.Depno=Bdepartment.id');
    sql.Add('	           where convert(smalldatetime,convert(varchar,SCBZCL.bzdate,111)) between');
    sql.Add('                  ''' + formatdatetime('yyyy/MM/dd', startofthemonth(DTP1.date)) + ''' and  ''' +
      formatdatetime('yyyy/MM/dd', DTP1.Date) + '''');
    sql.Add('            and bdepartment.GSBH=' + '''' + CB1.text + '''');
    sql.Add('            and BDepartment.DepName like ' + '''' + '%' + edit1.Text + '%' + '''');
    sql.Add('            and (bdepartment.GXLB=''A'' or bdepartment.GXLB=''C'' or bdepartment.GXLB=''S'' or bdepartment.GXLB=''O'')');
    sql.Add('            group by SCBZCL.Depno,Bdepartment.GXLB,Bdepartment.Depname )LKMT on LKMT.DepNo=SL.DepNo and LKMT.GXLB=SL.GXLB');

    sql.Add('select DepName as ''³æ¦ì'',SCGS as ''¤W¯Z®É¶¡'',RY1 as ''­q³æ1'',RY2 as ''­q³æ2'',RY3 as ''­q³æ3'',RY4 as ''­q³æ4'',RY5 as ''­q³æ5'',RY6 as ''­q³æ6'',RY7 as ''­q³æ7'',RY8 as ''­q³æ8'' ,RY9 as ''­q³æ9'',RY10 as ''­q³æ10'',');
    sql.Add('       RY11 as ''­q³æ11'',RY12 as ''­q³æ12'',RY13 as ''­q³æ13'',RY14 as ''­q³æ14'',RY15 as ''­q³æ15'',');
   // if CB1.Text = 'VC2' then
      sql.Add('       RY16 as ''­q³æ16'',RY17 as ''­q³æ17'',RY18 as ''­q³æ18'',RY19 as ''­q³æ19'',RY20 as ''­q³æ20'',RY21 as ''­q³æ21'',RY22 as ''­q³æ22'',RY23 as ''­q³æ23'',RY24 as ''­q³æ24'',RY25 as ''­q³æ25'',');
    sql.Add('       RY26 as ''­q³æ26'',RY27 as ''­q³æ27'',RY28 as ''­q³æ28'',RY29 as ''­q³æ29'',RY30 as ''­q³æ30'',');
    sql.Add('       Qty1 as ''²£¶q1'',Qty2 as ''²£¶q2'',Qty3 as ''²£¶q3'',Qty4 as ''²£¶q4'',Qty5 as ''²£¶q5'',Qty6 as ''²£¶q6'',Qty7 as ''²£¶q7'',Qty8 as ''²£¶q8'',Qty9 as ''²£¶q9'',Qty10 as ''²£¶q10'' ,');
    sql.Add('       Qty11 as ''²£¶q11'',Qty12 as ''²£¶q12'',Qty13 as ''²£¶q13'',Qty14 as ''²£¶q14'',Qty15 as ''²£¶q15'',');
    //if CB1.Text = 'VC2' then
      sql.Add('       Qty16 as ''²£¶q16'',Qty17 as ''²£¶q17'',Qty18 as ''²£¶q18'',Qty19 as ''²£¶q19'',Qty20 as ''²£¶q20'',Qty21 as ''²£¶q21'',Qty22 as ''²£¶q22'',Qty23 as ''²£¶q23'',Qty24 as ''²£¶q24'',Qty25 as ''²£¶q25'',');
     sql.Add('       Qty26 as ''²£¶q26'',Qty27 as ''²£¶q27'',Qty28 as ''²£¶q28'',Qty29 as ''²£¶q29'',Qty30 as ''²£¶q30'',');
    sql.Add('       BzQty as ''¥Ø¼Ð²£¶q'',Qty as ''¹ê»Ú²£¶q'',LackQty as ''DELAY'',Rate as ''¹F¦¨²v'' ,QtyMT,QtyTT,RateLK,AvgQty as ''¥­§¡¤@¤p®ÉÂù¼Æ'',Substring(''' + formatdatetime('yyyy/MM/dd', DTP1.Date) + ''',6,5) as ''¥Í²£¤é'' ');
    sql.Add('from (select SCBB.SCDate,case when SCBB.GXLB=''A'' then 3 when  SCBB.GXLB=''O'' then 4 when  SCBB.GXLB=''S'' then 2  when SCBB.GXLB=''C'' then 1 end as GXLB ,SCBB.DepNo ,SCBB.DepName ,SCBB.Qty ,SCBB.bzQty ,SCBB.Qty-SCBB.BzQty as LackQty,');
    sql.Add('             (case when SCBB.bzQty <> 0 then Convert(varchar,round(SCBB.Qty/convert(float,SCBB.BzQty)*100,0))+''%'' end) Rate,SCGS,round(AvgQty,0) as AvgQty,');
    sql.Add('             SCBB.QtyMT,SCBB.QtyTT,(case when SCBB.QtyMT <> 0 then Convert(varchar,round(SCBB.QtyTT/convert(float,SCBB.QtyMT)*100,0))+''%'' end) RateLK,');
    sql.Add('             RYList.RY1,RYList.RY2,RYList.RY3,RYList.RY4,RYList.RY5,RYList.RY6,RYList.RY7,RYList.RY8,RYList.RY9,RYList.RY10,RYList.RY11,RYList.RY12,RYList.RY13,RYList.RY14,RYList.RY15,');
   // if CB1.Text = 'VC2' then
      sql.Add('             RYList.RY16,RYList.RY17,RYList.RY18,RYList.RY19,RYList.RY20,RYList.RY21,RYList.RY22,RYList.RY23,RYList.RY24,RYList.RY25,');
      sql.Add('             RYList.RY26,RYList.RY27,RYList.RY28,RYList.RY29,RYList.RY30,');
    sql.Add('             RYList.Qty1,RYList.Qty2,RYList.Qty3,RYList.Qty4,RYList.Qty5,RYList.Qty6,RYList.Qty7,RYList.Qty8,RYList.Qty9,RYList.Qty10,RYList.Qty11,RYList.Qty12,RYList.Qty13,RYList.Qty14,RYList.Qty15');
   // if CB1.Text = 'VC2' then
      sql.Add('             ,RYList.Qty16,RYList.Qty17,RYList.Qty18,RYList.Qty19,RYList.Qty20,RYList.Qty21,RYList.Qty22,RYList.Qty23,RYList.Qty24,RYList.Qty25');
      sql.Add('             ,RYList.Qty26,RYList.Qty27,RYList.Qty28,RYList.Qty29,RYList.Qty30');
    sql.Add('      from (select * from #Scbbdata where #Scbbdata.GXLB=''C''');
    sql.Add('            Union all');
    sql.Add('            select SCDate ,''zTotal'' as DepNo,''C'' as GXLB,''zTotal'' as  DepName,isnull(sum(Qty),0) as Qty,isnull(sum(bzQty),0) as bzQty,null as SCGS,null as SDGS,isnull(sum(Qty),0)/isnull(sum(SCGS),0)  as AvgQty');
    sql.Add('            ,isnull(sum(QtyMT),0) as QtyMT,isnull(sum(QtyTT),0) as QtyTT');
    sql.Add('            from #Scbbdata where #Scbbdata.GXLB=''C''');
    sql.Add('            Group by SCDate');
    sql.Add('            Union all');
    sql.Add('            select * from #Scbbdata where #Scbbdata.GXLB=''S''');
    sql.Add('            Union all');
    sql.Add('            select SCDate ,''zTotal'' as DepNo,''S'' as GXLB,''zTotal'' as  DepName,isnull(sum(Qty),0) as Qty,isnull(sum(bzQty),0) as bzQty,null as SCGS,null as SDGS,isnull(sum(Qty),0)/isnull(sum(SCGS),0)  as AvgQty');
    sql.Add('            ,isnull(sum(QtyMT),0) as QtyMT,isnull(sum(QtyTT),0) as QtyTT');
    sql.Add('            from #Scbbdata where #Scbbdata.GXLB=''S''');
    sql.Add('            Group by SCDate');
    sql.Add('            Union all');
    sql.Add('            select * from #Scbbdata where #Scbbdata.GXLB=''O''');
    sql.Add('            Union all');
    sql.Add('            select SCDate ,''zTotal'' as DepNo,''O'' as GXLB,''zTotal'' as  DepName,isnull(sum(Qty),0) as Qty,isnull(sum(bzQty),0) as bzQty,null as SCGS,null as SDGS,isnull(sum(Qty),0)/isnull(sum(SCGS),0)  as AvgQty');
    sql.Add('            ,isnull(sum(QtyMT),0) as QtyMT,isnull(sum(QtyTT),0) as QtyTT');
    sql.Add('            from #Scbbdata where #Scbbdata.GXLB=''O''');
    sql.Add('            Group by SCDate');
    sql.Add('            Union all');
    sql.Add('            select * from #Scbbdata where #Scbbdata.GXLB=''A''');
    sql.Add('            Union all');
    sql.Add('            select SCDate ,''zTotal'' as DepNo,''A'' as GXLB,''zTotal'' as  DepName,isnull(sum(Qty),0) as Qty,isnull(sum(bzQty),0) as bzQty,null as SCGS,null as SDGS,isnull(sum(Qty),0)/isnull(sum(SCGS),0)  as AvgQty');
    sql.Add('            ,isnull(sum(QtyMT),0) as QtyMT,isnull(sum(QtyTT),0) as QtyTT');
    sql.Add('            from #Scbbdata where #Scbbdata.GXLB=''A''');
    sql.Add('            Group by SCDate ) SCBB');
    sql.Add('      left join (');
    sql.Add('                 select SCDate,DepNo,');
    sql.Add('                        Max(Case when RYNo=1 then SCBH end) as RY1,');
    sql.Add('                        Max(Case when RYNo=2 then SCBH end) as RY2,');
    sql.Add('                        Max(Case when RYNo=3 then SCBH end) as RY3,');
    sql.Add('                        Max(Case when RYNo=4 then SCBH end) as RY4,');
    sql.Add('                        Max(Case when RYNo=5 then SCBH end) as RY5,');
    sql.Add('                        Max(Case when RYNo=6 then SCBH end) as RY6,');
    sql.Add('                        Max(Case when RYNo=7 then SCBH end) as RY7,');
    sql.Add('                        Max(Case when RYNo=8 then SCBH end) as RY8,');
    sql.Add('                        Max(Case when RYNo=9 then SCBH end) as RY9,');
    sql.Add('                        Max(Case when RYNo=10 then SCBH end) as RY10,');
    sql.Add('                        Max(Case when RYNo=11 then SCBH end) as RY11,');
    sql.Add('                        Max(Case when RYNo=12 then SCBH end) as RY12,');
    sql.Add('                        Max(Case when RYNo=13 then SCBH end) as RY13,');
    sql.Add('                        Max(Case when RYNo=14 then SCBH end) as RY14,');
    sql.Add('                        Max(Case when RYNo=15 then SCBH end) as RY15,');
    //if CB1.Text = 'VC2' then
   // begin
      sql.Add('                        Max(Case when RYNo=16 then SCBH end) as RY16,');
      sql.Add('                        Max(Case when RYNo=17 then SCBH end) as RY17,');
      sql.Add('                        Max(Case when RYNo=18 then SCBH end) as RY18,');
      sql.Add('                        Max(Case when RYNo=19 then SCBH end) as RY19,');
      sql.Add('                        Max(Case when RYNo=20 then SCBH end) as RY20,');
      sql.Add('                        Max(Case when RYNo=21 then SCBH end) as RY21,');
      sql.Add('                        Max(Case when RYNo=22 then SCBH end) as RY22,');
      sql.Add('                        Max(Case when RYNo=23 then SCBH end) as RY23,');
      sql.Add('                        Max(Case when RYNo=24 then SCBH end) as RY24,');
      sql.Add('                        Max(Case when RYNo=25 then SCBH end) as RY25,');
      sql.Add('                        Max(Case when RYNo=26 then SCBH end) as RY26,');
      sql.Add('                        Max(Case when RYNo=27 then SCBH end) as RY27,');
      sql.Add('                        Max(Case when RYNo=28 then SCBH end) as RY28,');
      sql.Add('                        Max(Case when RYNo=29 then SCBH end) as RY29,');
      sql.Add('                        Max(Case when RYNo=30 then SCBH end) as RY30,');
    //end;
    sql.Add('                        Max(Case when RYNo=1 then Convert(float,Qty) end) as Qty1,');
    sql.Add('                        Max(Case when RYNo=2 then Convert(float,Qty) end) as Qty2,');
    sql.Add('                        Max(Case when RYNo=3 then Convert(float,Qty) end) as Qty3,');
    sql.Add('                        Max(Case when RYNo=4 then Convert(float,Qty) end) as Qty4,');
    sql.Add('                        Max(Case when RYNo=5 then Convert(float,Qty) end) as Qty5,');
    sql.Add('                        Max(Case when RYNo=6 then Convert(float,Qty) end) as Qty6,');
    sql.Add('                        Max(Case when RYNo=7 then Convert(float,Qty) end) as Qty7,');
    sql.Add('                        Max(Case when RYNo=8 then Convert(float,Qty) end) as Qty8,');
    sql.Add('                        Max(Case when RYNo=9 then Convert(float,Qty) end) as Qty9,');
    sql.Add('                        Max(Case when RYNo=10 then Convert(float,Qty) end) as Qty10,');
    sql.Add('                        Max(Case when RYNo=11 then Convert(float,Qty) end) as Qty11,');
    sql.Add('                        Max(Case when RYNo=12 then Convert(float,Qty) end) as Qty12,');
    sql.Add('                        Max(Case when RYNo=13 then Convert(float,Qty) end) as Qty13,');
    sql.Add('                        Max(Case when RYNo=14 then Convert(float,Qty) end) as Qty14,');
    sql.Add('                        Max(Case when RYNo=15 then Convert(float,Qty) end) as Qty15,');
   // if CB1.Text = 'VC2' then
   // begin
      sql.Add('                        Max(Case when RYNo=16 then Convert(float,Qty) end) as Qty16,');
      sql.Add('                        Max(Case when RYNo=17 then Convert(float,Qty) end) as Qty17,');
      sql.Add('                        Max(Case when RYNo=18 then Convert(float,Qty) end) as Qty18,');
      sql.Add('                        Max(Case when RYNo=19 then Convert(float,Qty) end) as Qty19,');
      sql.Add('                        Max(Case when RYNo=20 then Convert(float,Qty) end) as Qty20,');
      sql.Add('                        Max(Case when RYNo=21 then Convert(float,Qty) end) as Qty21,');
      sql.Add('                        Max(Case when RYNo=22 then Convert(float,Qty) end) as Qty22,');
      sql.Add('                        Max(Case when RYNo=23 then Convert(float,Qty) end) as Qty23,');
      sql.Add('                        Max(Case when RYNo=24 then Convert(float,Qty) end) as Qty24,');
      sql.Add('                        Max(Case when RYNo=25 then Convert(float,Qty) end) as Qty25,');
      sql.Add('                        Max(Case when RYNo=26 then Convert(float,Qty) end) as Qty26,');
      sql.Add('                        Max(Case when RYNo=27 then Convert(float,Qty) end) as Qty27,');
      sql.Add('                        Max(Case when RYNo=28 then Convert(float,Qty) end) as Qty28,');
      sql.Add('                        Max(Case when RYNo=29 then Convert(float,Qty) end) as Qty29,');
      sql.Add('                        Max(Case when RYNo=30 then Convert(float,Qty) end) as Qty30');
   // end;
    sql.Add('                 from (select *,ROW_NUMBER() over (PARTITION BY SCDATE,DepNo ORDER BY SCDATE,DepNo,SCBH Asc) as  RYNo');
    //
    if formatdatetime('yyyy/MM/dd', DTP1.Date) = formatdatetime('yyyy/MM/dd', NDate) then
    begin
      sql.Add('                       from (select convert(varchar,SMZL.USERDATE,111) as SCDate ,SMZL.DepNo,SMDD.YSBH as SCBH,isnull(sum(Convert(float,SMZL.CTS*SMDDSS.Qty)),0)  as Qty');
      sql.Add('                             from SMZL');
      sql.Add('                             left join SMDDSS on  SMZL.CODEBAR=SMDDSS.CODEBAR');
      sql.Add('                             left join SMDD on SMDD.DDBH=SMDDSS.DDBH and SMDD.GXLB=SMDDSS.GXLB');
      sql.Add('                             where  convert(smalldatetime,convert(varchar,SMZL.USERDATE,111)) =''' +
        formatdatetime('yyyy/MM/dd', DTP1.Date) + '''');
      sql.Add('                             and SMDD.GSBH=' + '''' + CB1.text + '''');
      sql.Add('                             and (SMDDSS.GXLB=''A'' or SMDDSS.GXLB=''S'' or SMDDSS.GXLB=''C'' or SMDDSS.GXLB=''O'')');
      sql.Add('                             Group by convert(varchar,SMZL.USERDATE,111)  ,SMZL.DepNo,SMDD.YSBH) SCBBS ) SCBBS');
      sql.Add('                       Group by   SCDate,DepNo  ) RYList on RYList.SCDate=SCBB.SCDate and RYList.DepNo=SCBB.DepNO ');
    end
    else
    begin
      sql.Add('                       from (select convert(varchar,SCBB.SCDate,111) as SCDate ,SCBB.DepNo,SCBBS.SCBH,isnull(sum(Convert(float,SCBBS.Qty)),0)  as Qty');
      sql.Add('                             from SCBB');
      sql.Add('                             left join SCBBS on  SCBB.ProNo=SCBBS.ProNo');
      sql.Add('                             left join  RSCQ on convert(varchar,RSCQ.RSDate,111)=convert(varchar,SCBB.SCDate,111) and RSCQ.DepNo=SCBB.DepNo');
      sql.Add('                             where  convert(smalldatetime,convert(varchar,SCBB.SCDate,111)) =''' +
        formatdatetime('yyyy/MM/dd', DTP1.Date) + '''');
      sql.Add('                             and SCBB.GSBH=' + '''' + CB1.text + '''');
      sql.Add('                             and (SCBBS.GXLB=''A'' or SCBBS.GXLB=''S'' or SCBBS.GXLB=''C'' or SCBBS.GXLB=''O'' )');
      sql.Add('                             Group by convert(varchar,SCBB.SCDate,111)  ,SCBB.DepNo,SCBBS.SCBH ) SCBBS ) SCBBS');
      sql.Add('                       Group by   SCDate,DepNo  ) RYList on RYList.SCDate=SCBB.SCDate and RYList.DepNo=SCBB.DepNO ');
    end;
    sql.Add('                 left join BDepartment on BDepartment.ID = SCBB.DepNo');
    sql.Add('     ) Scbbs');
    sql.Add('   order by GXLB,DepName');
    //funcobj.WriteErrorLog(sql.Text);
    //showmessage(SQL.Text);
    //exit;
    active := true;
  end;
  with DBGrideh1 do
  begin
    columns[0].Width := 95;
    columns[0].title.caption := 'DepName|³æ¦ì';
    columns[1].Width := 40;
    columns[2].Width := 35;
    for j := 2 to Query1.FieldCount - 40 do
    begin
      columns[j].Width := 65;
      columns[j].Title.Caption := 'RY|' + columns[j].Title.Caption;
    end;
    for k := Query1.FieldCount - 39 to Query1.FieldCount - 7 do
    begin
      columns[k].Width := 65;
      columns[k].Title.Caption := 'Qty|' + columns[k].Title.Caption;
    end;
      columns[63].Width := 55;
      columns[63].Title.Caption := 'SL trong ngay:·í¤Ñ²£¶q|¥Ø¼Ð²£¶q';
      columns[64].Width := 55;
      columns[64].Title.Caption := 'SL trong ngay:·í¤Ñ²£¶q|¹ê»Ú²£¶q';
      columns[65].Width := 55;
      columns[65].Title.Caption := 'SL trong ngay:·í¤Ñ²£¶q|DELAY';
      columns[66].Width := 55;
      columns[66].Title.Caption := 'SL trong ngay:·í¤Ñ²£¶q|¹F¦¨²v';

      columns[67].Width := 55;
      columns[67].Title.Caption := 'Luy ke san luong:²Ö­p²£¶q|¥Ø¼Ð²£¶q';
      columns[68].Width := 55;
      columns[68].Title.Caption := 'Luy ke san luong:²Ö­p²£¶q|¹ê»Ú²£¶q';
      columns[69].Width := 55;
      columns[69].Title.Caption := 'Luy ke san luong:²Ö­p²£¶q|¹F¦¨²v';
  end;
  // Assembly Plan output
  with Qtemp do
  begin
    active := false;
    sql.Clear;
    sql.Add('select isnull(sum(qty),0) as Qty');
    sql.Add('from SCBZCL left join bdepartment on SCBZCL.Depno=Bdepartment.id');
    sql.Add('where convert(smalldatetime,convert(varchar,SCBZCL.bzdate,111)) between');
    sql.Add(' ''' + formatdatetime('yyyy/MM/dd', startofthemonth(DTP1.date)) + ''' and ''' + formatdatetime('yyyy/MM/dd',
      endofthemonth(DTP1.date)) + '''');
    sql.Add('and bdepartment.GSBH=' + '''' + CB1.text + '''');
    sql.add('and BDepartment.DepName like ' + '''' + '%' + edit1.Text + '%' + '''');
    sql.Add('and bdepartment.GXLB=''A''');
    active := true;
  end;
  // Assembly Actual Quantity
  with Qtemp1 do
  begin
    active := false;
    sql.Clear;
    if formatdatetime('yyyy/MM', DTP1.Date) = formatdatetime('yyyy/MM', NDate) then
    begin
      sql.Add('select sum(TT.Qty)as Qty');
      sql.Add('from(select isnull(sum(Convert(float,SCBBS.Qty)),0) as Qty');
      sql.Add('     from SCBB');
      sql.Add('     left join SCBBS on  SCBB.ProNo=SCBBS.ProNo');
      sql.Add('     left join BDepartment on BDepartment.ID=SCBB.DepNo');
      sql.Add('     left join DDZL on DDZl.DDBH=SCBBS.SCBH');
      sql.Add('     left join SCXXCL on SCXXCL.XieXing=DDZL.XieXing and SCXXCL.SheHao=DDZL.SheHao and SCXXCL.GXLB=SCBBS.GXLB and SCXXCL.BZLB=SCBBS.BZLB');
      sql.Add('     left join SCRL on convert(varchar,convert(smalldatetime,SCRL.SCYEAR+''/''+SCRL.SCMONTH+''/''+SCRL.SCDay))=convert(varchar,SCBB.SCDate)');
      sql.Add('                    and SCRL.DepNO=SCBB.DepNO');
      sql.Add('     left join  RSCQ on convert(varchar,RSCQ.RSDate,111)=convert(varchar,SCBB.SCDate,111) and RSCQ.DepNo=SCBB.DepNo');
      sql.Add('     where  convert(smalldatetime,convert(varchar,SCBB.SCDate,111)) between');
      sql.Add('            ''' + formatdatetime('yyyy/MM/dd', startofthemonth(DTP1.date)) + ''' and ''' +
        formatdatetime('yyyy/MM/dd', endofthemonth(DTP1.date)) + '''');
      sql.Add('     and SCBB.GSBH=' + '''' + CB1.text + '''');
      sql.Add('     and BDepartment.DepName like ' + '''' + '%' + edit1.Text + '%' + '''');
      sql.Add('     and SCBBS.GXLB=''A''');
      sql.Add('     Union all');
      sql.Add('     select isnull(sum(Convert(float,SMZL.CTS*SMDDSS.Qty)),0) as Qty');
      sql.Add('     from SMZL');
      sql.Add('     left join SMDDSS on  SMZL.CODEBAR=SMDDSS.CODEBAR');
      sql.Add('     left join BDepartment on BDepartment.ID=SMZL.DepNo');
      sql.Add('     left join SCRL on convert(varchar,convert(smalldatetime,SCRL.SCYEAR+''/''+SCRL.SCMONTH+''/''+SCRL.SCDay))=convert(varchar,SMZL.USERDATE)');
      sql.Add('     and SCRL.DepNO=SMZL.DepNO');
      sql.Add('     where  convert(smalldatetime,convert(varchar,SMZL.USERDATE,111)) between');
      sql.Add('            ''' + formatdatetime('yyyy/MM/dd', NDate) + ''' and ''' + formatdatetime('yyyy/MM/dd', NDate) + '''');
      sql.Add('     and BDepartment.GSBH=' + '''' + CB1.text + '''');
      sql.Add('     and BDepartment.DepName like ' + '''' + '%' + edit1.Text + '%' + '''');
      sql.Add('     and SMDDSS.GXLB=''A'')TT');
    end
    else
    begin
      sql.Add('select isnull(sum(Convert(float,SCBBS.Qty)),0) as Qty');
      sql.Add('from SCBB');
      sql.Add('left join SCBBS on  SCBB.ProNo=SCBBS.ProNo');
      sql.Add('left join BDepartment on BDepartment.ID=SCBB.DepNo');
      sql.Add('left join DDZL on DDZl.DDBH=SCBBS.SCBH');
      sql.Add('left join SCXXCL on SCXXCL.XieXing=DDZL.XieXing and SCXXCL.SheHao=DDZL.SheHao and SCXXCL.GXLB=SCBBS.GXLB and SCXXCL.BZLB=SCBBS.BZLB');
      sql.Add('left join SCRL on convert(varchar,convert(smalldatetime,SCRL.SCYEAR+''/''+SCRL.SCMONTH+''/''+SCRL.SCDay))=convert(varchar,SCBB.SCDate)');
      sql.Add('and SCRL.DepNO=SCBB.DepNO');
      sql.Add('left join  RSCQ on convert(varchar,RSCQ.RSDate,111)=convert(varchar,SCBB.SCDate,111) and RSCQ.DepNo=SCBB.DepNo');
      sql.Add('where  convert(smalldatetime,convert(varchar,SCBB.SCDate,111)) between');
      sql.Add(' ''' + formatdatetime('yyyy/MM/dd', startofthemonth(DTP1.date)) + ''' and ''' + formatdatetime('yyyy/MM/dd',
        endofthemonth(DTP1.date)) + '''');
      sql.Add('and SCBB.GSBH=' + '''' + CB1.text + '''');
      sql.Add(' and BDepartment.DepName like ' + '''' + '%' + edit1.Text + '%' + '''');
      sql.Add(' and SCBBS.GXLB=''A''');
    end;
    active := true;
  end;
end;

procedure TDailyReportDetail.DBGridEh1DrawColumnCell(Sender: TObject;
  const Rect: TRect; DataCol: Integer; Column: TColumnEh;
  State: TGridDrawState);
begin
  if trim(Query1.FieldByName('³æ¦ì').Value) = 'zTotal' then
  begin
    dbgrideh1.canvas.brush.Color := $00FCCBCD;
    DBGridEh1.DefaultDrawColumnCell(Rect, DataCol, Column, State);
  end;
end;

procedure TDailyReportDetail.Button2Click(Sender: TObject);
var
  eclApp, WorkBook: olevariant;
  i, j, k: integer;
begin
  //
  if CB1.Text = 'VC2' then
  begin
    if (not DirectoryExists(AppDir + 'Additional\')) then
      ForceDirectories(AppDir + 'Additional\');
    CopyFile(Pchar('\\' + main.ServerIP + '\liy_erp\Additional\Plan_SN535_VC2.xls'), Pchar(AppDir + 'Additional\Plan_SN535_VC2.xls'),
      false);
    if FileExists(AppDir + 'Additional\Plan_SN535_VC2.xls') then
    begin
      //

      if Query1.active then
      begin
        try
          eclApp := CreateOleObject('Excel.Application');
          WorkBook := CreateOleObject('Excel.Sheet');
        except
          Application.MessageBox('No Microsoft   Excel', 'Microsoft   Excel', MB_OK + MB_ICONWarning);
          Exit;
        end;
        try
          eclApp.WorkBooks.Open(AppDir + 'Additional\Plan_SN535_VC2.xls');
          eclapp.ActiveSheet.Columns[42].NumberFormatLocal := 'yyyy/mm/dd';

          Query1.First;
          j := 6;
          while not Query1.Eof do
          begin
            for i := 0 to Query1.fieldcount - 1 do
            begin
              eclApp.Cells(j, i + 1) := Query1.Fields[i].Value;
            end;
            if Query1.FieldByName('³æ¦ì').Value = 'zTotal' then
              eclApp.Range[eclApp.Cells[j, 1], eclApp.Cells[j, i]].interior.color := clyellow;
            Query1.Next;
            inc(j);
          end;
          //  add outline
          for k := 1 to 4 do
          begin
            eclApp.range[eclApp.cells[4, 1], eclApp.cells[j - 1, 42]].borders[k].linestyle := 1;
          end;
          //

          eclApp.Range[eclApp.Cells[j + 1, 54], eclApp.Cells[j + 1, 55]].merge;
          eclApp.cells(j + 1, 54) := '¤ë¥÷¥Ø¼Ð²£¯à:';
          eclApp.cells(j + 1, 56) := Qtemp.FieldByName('Qty').Value;

          eclApp.cells(j + 1, 58) := '¤ë¥÷²Ö­p:';
          eclApp.cells(j + 1, 59) := Qtemp1.FieldByName('Qty').Value;

          eclapp.columns.autofit;

          eclApp.ActiveSheet.Columns[58].ColumnWidth := 8;
          eclApp.ActiveSheet.Columns[59].ColumnWidth := 8;
          eclApp.ActiveSheet.Columns[50].ColumnWidth := 8;

          eclApp.ActiveSheet.Columns[61].ColumnWidth := 8;
          eclApp.ActiveSheet.Columns[62].ColumnWidth := 13;

          // eclapp.columns.autofit;
          showmessage('Succeed');
          eclApp.Visible := True;
        except
          on F: Exception do
            showmessage(F.Message);
        end;
      end;
    end
  end else
    begin
      if (not DirectoryExists(AppDir + 'Additional\')) then
        ForceDirectories(AppDir + 'Additional\');
      CopyFile(Pchar('\\' + main.ServerIP + '\lys_erp\Additional\Plan_SN535TT.xls'), Pchar(AppDir + 'Additional\Plan_SN535TT.xls'),
        false);
      if FileExists(AppDir + 'Additional\Plan_SN535TT.xls') then
      begin
        //

        if Query1.active then
        begin
          try
            eclApp := CreateOleObject('Excel.Application');
            WorkBook := CreateOleObject('Excel.Sheet');
          except
            Application.MessageBox('No Microsoft   Excel', 'Microsoft   Excel', MB_OK + MB_ICONWarning);
            Exit;
          end;
          try
            eclApp.WorkBooks.Open(AppDir + 'Additional\Plan_SN535TT.xls');
            eclapp.ActiveSheet.Columns[71].NumberFormatLocal := 'yyyy/mm/dd';

            Query1.First;
            j := 6;
            while not Query1.Eof do
            begin
              for i := 0 to Query1.fieldcount - 1 do
              begin
                eclApp.Cells(j, i + 1) := Query1.Fields[i].Value;
              end;
              if Query1.FieldByName('³æ¦ì').Value = 'zTotal' then
                eclApp.Range[eclApp.Cells[j, 1], eclApp.Cells[j, i]].interior.color := clyellow;
              Query1.Next;
              inc(j);
            end;
            //  add outline
            for k := 1 to 4 do
            begin
              eclApp.range[eclApp.cells[4, 1], eclApp.cells[j - 1, 71]].borders[k].linestyle := 1;
            end;
            //

            eclApp.Range[eclApp.Cells[j + 1, 61], eclApp.Cells[j + 1, 62]].merge;
            eclApp.cells(j + 1, 61) := '¤ë¥÷¥Ø¼Ð²£¯à:';
            eclApp.cells(j + 1, 63) := Qtemp.FieldByName('Qty').Value;

            eclApp.cells(j + 1, 66) := '¤ë¥÷²Ö­p:';
            eclApp.cells(j + 1, 67) := Qtemp1.FieldByName('Qty').Value;

            eclapp.columns.autofit;

            eclApp.ActiveSheet.Columns[68].ColumnWidth := 8;
            eclApp.ActiveSheet.Columns[69].ColumnWidth := 8;
            eclApp.ActiveSheet.Columns[60].ColumnWidth := 8;

            eclApp.ActiveSheet.Columns[61].ColumnWidth := 8;
            eclApp.ActiveSheet.Columns[62].ColumnWidth := 13;

            // eclapp.columns.autofit;
            showmessage('Succeed');
            eclApp.Visible := True;
          except
            on F: Exception do
              showmessage(F.Message);
          end;
        end;
      end;
      //
    end;

end;

end.
          *)

unit DailyReportDetail1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DB, DBTables, GridsEh, DBGridEh, StdCtrls, ComCtrls, ExtCtrls,
  fununit, ADODB, Comobj, Dateutils;

type
  TDailyReportDetail = class(TForm)
    Panel1: TPanel;
    Label2: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    Label1: TLabel;
    Label9: TLabel;
    Label10: TLabel;
    Button1: TButton;
    DTP1: TDateTimePicker;
    Edit1: TEdit;
    CB1: TComboBox;
    DBGridEh1: TDBGridEh;
    Query1: TQuery;
    Qtemp: TQuery;
    DataSource1: TDataSource;
    Button2: TButton;
    ExeQuery: TQuery;
    Qtemp1: TQuery;
    CBHuman: TCheckBox;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormDestroy(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure DBGridEh1DrawColumnCell(Sender: TObject; const Rect: TRect;
      DataCol: Integer; Column: TColumnEh; State: TGridDrawState);
    procedure Button2Click(Sender: TObject);
  private
    AppDir: string;
    { Private declarations }
  public
    { Public declarations }
  end;

var
  DailyReportDetail: TDailyReportDetail;
  NDate: TDate;

implementation

uses main1;

{$R *.dfm}

procedure TDailyReportDetail.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  action := cafree;
end;

procedure TDailyReportDetail.FormDestroy(Sender: TObject);
begin
  DailyReportDetail := nil;
end;

procedure TDailyReportDetail.FormCreate(Sender: TObject);
begin
  AppDir := ExtractFilePath(Application.ExeName);
  with Qtemp do
  begin
    active := false;
    sql.Clear;
    sql.add('select GSDH from BGSZL WITH (NOLOCK) order by GSDH');
    active := true;
    CB1.Items.BeginUpdate;
    try
      while not Eof do
      begin
        CB1.Items.Add(fieldbyname('GSDH').asstring);
        next;
      end;
    finally
      CB1.Items.EndUpdate;
    end;
    CB1.Text := main.edit2.Text;
    active := false;
    sql.Clear;
    sql.add('Select convert(smalldatetime,convert(varchar,getdate(),111)) as NDate');
    active := true;
    NDate := fieldbyname('NDate').value;
    active := false;
  end;
  DTP1.Date := NDate;
end;

procedure TDailyReportDetail.Button1Click(Sender: TObject);
var
  j, k: integer;
  sDate, sNextDate, sMonthStart, sMonthEnd, sNDate, sNextNDate: string;
  isToday, isCurrMonth: Boolean;
  sGSBH, sDepNameLike: string;
begin
  sDate       := FormatDateTime('yyyy/MM/dd', DTP1.Date);
  sNextDate   := FormatDateTime('yyyy/MM/dd', DTP1.Date + 1);
  sMonthStart := FormatDateTime('yyyy/MM/dd', StartOfTheMonth(DTP1.Date));
  sMonthEnd   := FormatDateTime('yyyy/MM/dd', EndOfTheMonth(DTP1.Date) + 1);
  sNDate      := FormatDateTime('yyyy/MM/dd', NDate);
  sNextNDate  := FormatDateTime('yyyy/MM/dd', NDate + 1);

  isToday     := (sDate = sNDate);
  isCurrMonth := (FormatDateTime('yyyy/MM', DTP1.Date) =
                  FormatDateTime('yyyy/MM', NDate));

  sGSBH        := QuotedStr(Trim(CB1.Text));
  sDepNameLike := QuotedStr('%' + Trim(edit1.Text) + '%');

  // ===========================================================================
  // 1. QUERY CHÍNH: BÁO CÁO CHI TI?T THEO NGÀY (Query1)
  // ===========================================================================
  with Query1 do
  begin
    Active := False;
    SQL.Clear;
    SQL.Add('SET ANSI_NULLS ON;');
    SQL.Add('SET ANSI_WARNINGS ON;');

    // D?n d?p b?ng t?m
    SQL.Add('IF OBJECT_ID(''tempdb..#DeptVDH'') IS NOT NULL DROP TABLE #DeptVDH;');
    SQL.Add('IF OBJECT_ID(''tempdb..#DayData'') IS NOT NULL DROP TABLE #DayData;');
    SQL.Add('IF OBJECT_ID(''tempdb..#LKTT'') IS NOT NULL DROP TABLE #LKTT;');
    SQL.Add('IF OBJECT_ID(''tempdb..#LKMT'') IS NOT NULL DROP TABLE #LKMT;');
    SQL.Add('IF OBJECT_ID(''tempdb..#Scbbdata'') IS NOT NULL DROP TABLE #Scbbdata;');
    SQL.Add('IF OBJECT_ID(''tempdb..#RYSource'') IS NOT NULL DROP TABLE #RYSource;');
    SQL.Add('IF OBJECT_ID(''tempdb..#RYList'') IS NOT NULL DROP TABLE #RYList;');

    // 1.1 Materialize danh sách phòng ban c?n l?c
    SQL.Add('SELECT ID, DepName, GXLB, GSBH INTO #DeptVDH');
    SQL.Add('FROM BDepartment WITH (NOLOCK)');
    SQL.Add('WHERE GSBH = ' + sGSBH + ' AND DepName LIKE ' + sDepNameLike + ';');
    SQL.Add('CREATE UNIQUE CLUSTERED INDEX CIX_DeptVDH_ID ON #DeptVDH(ID);');

    // 1.2 Trích xu?t d? li?u ngày du?c ch?n (quét 1 l?n duy nh?t)
    if isToday then
    begin
      // Hôm nay: L?y t? SMZL + SMDDSS
      SQL.Add('SELECT CONVERT(VARCHAR, SMZL.USERDATE, 111) AS SCDate,');
      SQL.Add('       SMZL.USERDATE, SMZL.DepNo, SMDDSS.GXLB, SMDD.YSBH AS SCBH,');
      SQL.Add('       CONVERT(FLOAT, SMZL.CTS * SMDDSS.Qty) AS Qty');
      SQL.Add('INTO #DayData');
      SQL.Add('FROM SMZL WITH (NOLOCK)');
      SQL.Add('INNER JOIN SMDDSS WITH (NOLOCK) ON SMZL.CODEBAR = SMDDSS.CODEBAR');
      SQL.Add('INNER JOIN #DeptVDH d ON d.ID = SMZL.DepNo');
      SQL.Add('LEFT JOIN SMDD WITH (NOLOCK) ON SMDD.DDBH = SMDDSS.DDBH AND SMDD.GXLB = SMDDSS.GXLB');
      SQL.Add('WHERE SMZL.USERDATE >= ''' + sDate + '''');
      SQL.Add('  AND SMZL.USERDATE < ''' + sNextDate + '''');
      SQL.Add('  AND SMDDSS.GXLB IN (''A'',''C'',''S'',''O'');');
    end
    else
    begin
      // Quá kh?: L?y t? SCBB + SCBBS
      SQL.Add('SELECT CONVERT(VARCHAR, SCBB.SCDate, 111) AS SCDate,');
      SQL.Add('       SCBB.SCDate AS USERDATE, SCBB.DepNo, SCBBS.GXLB, SCBBS.SCBH,');
      SQL.Add('       CONVERT(FLOAT, SCBBS.Qty) AS Qty');
      SQL.Add('INTO #DayData');
      SQL.Add('FROM SCBB WITH (NOLOCK)');
      SQL.Add('INNER JOIN SCBBS WITH (NOLOCK) ON SCBB.ProNo = SCBBS.ProNo');
      SQL.Add('INNER JOIN #DeptVDH d ON d.ID = SCBB.DepNo');
      SQL.Add('WHERE SCBB.SCDate >= ''' + sDate + '''');
      SQL.Add('  AND SCBB.SCDate < ''' + sNextDate + '''');
      SQL.Add('  AND SCBBS.GXLB IN (''A'',''C'',''S'',''O'');');
    end;
    SQL.Add('CREATE CLUSTERED INDEX CIX_DayData ON #DayData(DepNo, GXLB, SCDate);');

    // 1.3 T?o b?ng luy k? th?c t? d?u tháng d?n ngày ch?n (#LKTT)
    SQL.Add('CREATE TABLE #LKTT (');
    SQL.Add('  [DepNo] VARCHAR(10) COLLATE DATABASE_DEFAULT NOT NULL,');
    SQL.Add('  [GXLB] VARCHAR(2) COLLATE DATABASE_DEFAULT NOT NULL,');
    SQL.Add('  [DepName] VARCHAR(50) COLLATE DATABASE_DEFAULT NULL,');
    SQL.Add('  [QtyTT] FLOAT NULL');
    SQL.Add(');');

    if isToday then
    begin
      // Hôm nay: Luy k? = SCBB (d?u tháng d?n hôm nay) + SMZL (ngày hôm nay)
      SQL.Add('INSERT INTO #LKTT (DepNo, GXLB, DepName, QtyTT)');
      SQL.Add('SELECT LKTT.DepNo, LKTT.GXLB, LKTT.DepName, SUM(LKTT.QtyTT) AS QtyTT');
      SQL.Add('FROM (');
      SQL.Add('  SELECT SCBB.DepNo, SCBBS.GXLB, d.DepName,');
      SQL.Add('         ISNULL(SUM(CONVERT(FLOAT, SCBBS.Qty)), 0) AS QtyTT');
      SQL.Add('  FROM SCBB WITH (NOLOCK)');
      SQL.Add('  INNER JOIN SCBBS WITH (NOLOCK) ON SCBB.ProNo = SCBBS.ProNo');
      SQL.Add('  INNER JOIN #DeptVDH d ON d.ID = SCBB.DepNo');
      SQL.Add('  WHERE SCBB.SCDate >= ''' + sMonthStart + '''');
      SQL.Add('    AND SCBB.SCDate < ''' + sNextDate + '''');
      SQL.Add('    AND SCBBS.GXLB IN (''A'',''C'',''S'',''O'')');
      SQL.Add('  GROUP BY SCBB.DepNo, SCBBS.GXLB, d.DepName');
      SQL.Add('  UNION ALL');
      SQL.Add('  SELECT s.DepNo, s.GXLB, d.DepName, ISNULL(SUM(s.Qty), 0) AS QtyTT');
      SQL.Add('  FROM #DayData s');
      SQL.Add('  INNER JOIN #DeptVDH d ON d.ID = s.DepNo');
      SQL.Add('  GROUP BY s.DepNo, s.GXLB, d.DepName');
      SQL.Add(') LKTT GROUP BY LKTT.DepNo, LKTT.GXLB, LKTT.DepName;');
    end
    else
    begin
      // Quá kh?: Luy k? l?y hoàn toàn t? SCBB
      SQL.Add('INSERT INTO #LKTT (DepNo, GXLB, DepName, QtyTT)');
      SQL.Add('SELECT SCBB.DepNo, SCBBS.GXLB, d.DepName,');
      SQL.Add('       ISNULL(SUM(CONVERT(FLOAT, SCBBS.Qty)), 0) AS QtyTT');
      SQL.Add('FROM SCBB WITH (NOLOCK)');
      SQL.Add('INNER JOIN SCBBS WITH (NOLOCK) ON SCBB.ProNo = SCBBS.ProNo');
      SQL.Add('INNER JOIN #DeptVDH d ON d.ID = SCBB.DepNo');
      SQL.Add('WHERE SCBB.SCDate >= ''' + sMonthStart + '''');
      SQL.Add('  AND SCBB.SCDate < ''' + sNextDate + '''');
      SQL.Add('  AND SCBBS.GXLB IN (''A'',''C'',''S'',''O'')');
      SQL.Add('GROUP BY SCBB.DepNo, SCBBS.GXLB, d.DepName;');
    end;
    SQL.Add('CREATE CLUSTERED INDEX CIX_LKTT ON #LKTT(DepNo, GXLB);');

    // 1.4 Luy k? m?c tiêu d?u tháng d?n ngày ch?n (#LKMT)
    SQL.Add('SELECT SCBZCL.Depno, d.GXLB, d.DepName,');
    SQL.Add('       ISNULL(SUM(SCBZCL.Qty), 0) AS QtyMT');
    SQL.Add('INTO #LKMT');
    SQL.Add('FROM SCBZCL WITH (NOLOCK)');
    SQL.Add('INNER JOIN #DeptVDH d ON SCBZCL.Depno = d.ID');
    SQL.Add('WHERE SCBZCL.BZDate >= ''' + sMonthStart + '''');
    SQL.Add('  AND SCBZCL.BZDate < ''' + sNextDate + '''');
    SQL.Add('  AND d.GXLB IN (''A'',''C'',''S'',''O'')');
    SQL.Add('GROUP BY SCBZCL.Depno, d.GXLB, d.DepName;');
    SQL.Add('CREATE CLUSTERED INDEX CIX_LKMT ON #LKMT(Depno, GXLB);');

    // 1.5 Tính toán s?n lu?ng theo ngày và k?t h?p #LKTT, #LKMT
    SQL.Add('SELECT SL.SCDate, SL.DepNo, SL.GXLB, SL.DepName, SL.Qty, SL.bzQty,');
    SQL.Add('       SL.SCGS, NULL AS SDGS, SL.AvgQty,');
    SQL.Add('       ISNULL(LKMT.QtyMT, 0) AS QtyMT,');
    SQL.Add('       ISNULL(#LKTT.QtyTT, 0) AS QtyTT');
    SQL.Add('INTO #Scbbdata');
    SQL.Add('FROM (');
    SQL.Add('  SELECT s.SCDate, s.DepNo, s.GXLB, d.DepName,');
    SQL.Add('         ISNULL(SUM(s.Qty), 0) AS Qty,');
    SQL.Add('         ISNULL(SCBZCL.Qty, 0) AS bzQty,');
    SQL.Add('         CONVERT(FLOAT, SCRL.SCGS) AS SCGS,');
    SQL.Add('         ISNULL(SUM(s.Qty), 0) / NULLIF(SCRL.SCGS, 0) AS AvgQty');
    SQL.Add('  FROM #DayData s');
    SQL.Add('  INNER JOIN #DeptVDH d ON d.ID = s.DepNo');
    SQL.Add('  LEFT JOIN SCBZCL WITH (NOLOCK)');
    SQL.Add('    ON SCBZCL.BZDate = CONVERT(SMALLDATETIME, s.SCDate)');
    SQL.Add('   AND SCBZCL.DepNo = s.DepNo');
    SQL.Add('  LEFT JOIN SCRL WITH (NOLOCK)');
    SQL.Add('    ON SCRL.SCYEAR = YEAR(s.USERDATE)');
    SQL.Add('   AND SCRL.SCMONTH = MONTH(s.USERDATE)');
    SQL.Add('   AND SCRL.SCDay = DAY(s.USERDATE)');
    SQL.Add('   AND SCRL.DepNO = s.DepNo');
    SQL.Add('  GROUP BY s.SCDate, s.DepNo, s.GXLB, d.DepName, SCBZCL.Qty, SCRL.SCGS');
    SQL.Add(') SL');
    SQL.Add('LEFT JOIN #LKTT ON #LKTT.DepNo = SL.DepNo AND #LKTT.GXLB = SL.GXLB');
    SQL.Add('LEFT JOIN #LKMT LKMT ON LKMT.DepNo = SL.DepNo AND LKMT.GXLB = SL.GXLB;');
    SQL.Add('CREATE CLUSTERED INDEX CIX_Scbbdata ON #Scbbdata(GXLB, SCDate, DepNo);');

    // 1.6 Ðon hàng Pivot (RY1..RY30) có Index h? tr? Sort nhanh
    SQL.Add('SELECT SCDate, DepNo, SCBH, SUM(Qty) AS Qty');
    SQL.Add('INTO #RYSource');
    SQL.Add('FROM #DayData');
    SQL.Add('WHERE SCBH IS NOT NULL');
    SQL.Add('GROUP BY SCDate, DepNo, SCBH;');
    SQL.Add('CREATE CLUSTERED INDEX CIX_RYSource ON #RYSource(SCDate, DepNo, SCBH ASC);');

    SQL.Add('SELECT SCDate, DepNo,');
    for j := 1 to 30 do
      SQL.Add('       MAX(CASE WHEN RYNo = ' + IntToStr(j) + ' THEN SCBH END) AS RY' + IntToStr(j) + ',');
    for j := 1 to 29 do
      SQL.Add('       MAX(CASE WHEN RYNo = ' + IntToStr(j) + ' THEN Qty END) AS Qty' + IntToStr(j) + ',');
    SQL.Add('       MAX(CASE WHEN RYNo = 30 THEN Qty END) AS Qty30');
    SQL.Add('INTO #RYList');
    SQL.Add('FROM (');
    SQL.Add('  SELECT SCDate, DepNo, SCBH, Qty,');
    SQL.Add('         ROW_NUMBER() OVER (');
    SQL.Add('           PARTITION BY SCDate, DepNo ORDER BY SCDate, DepNo, SCBH ASC');
    SQL.Add('         ) AS RYNo');
    SQL.Add('  FROM #RYSource');
    SQL.Add(') T WHERE RYNo <= 30');
    SQL.Add('GROUP BY SCDate, DepNo;');
    SQL.Add('CREATE CLUSTERED INDEX CIX_RYList ON #RYList(SCDate, DepNo);');

    // 1.7 Báo cáo cu?i cùng (Chi ti?t + zTotal t?ng công do?n)
    SQL.Add('SELECT SCBB.DepName AS ''³æ¦ì'', SCBB.SCGS AS ''¤W¯Z®É¶¡'',');
    for j := 1 to 30 do
      SQL.Add('       RYList.RY' + IntToStr(j) + ' AS ''­q³æ' + IntToStr(j) + ''',');
    for j := 1 to 30 do
      SQL.Add('       RYList.Qty' + IntToStr(j) + ' AS ''²£¶q' + IntToStr(j) + ''',');
    SQL.Add('       SCBB.bzQty AS ''¥Ø¼Ð²£¶q'',');
    SQL.Add('       SCBB.Qty AS ''¹ê»Ú²£¶q'',');
    SQL.Add('       SCBB.Qty - SCBB.bzQty AS ''DELAY'',');
    SQL.Add('       CASE WHEN SCBB.bzQty <> 0');
    SQL.Add('            THEN CONVERT(VARCHAR, ROUND(SCBB.Qty / CONVERT(FLOAT, SCBB.bzQty) * 100, 0)) + ''%''');
    SQL.Add('       END AS ''¹F¦¨²v'',');
    SQL.Add('       SCBB.QtyMT,');
    SQL.Add('       SCBB.QtyTT,');
    SQL.Add('       CASE WHEN SCBB.QtyMT <> 0');
    SQL.Add('            THEN CONVERT(VARCHAR, ROUND(SCBB.QtyTT / CONVERT(FLOAT, SCBB.QtyMT) * 100, 0)) + ''%''');
    SQL.Add('       END AS RateLK,');
    SQL.Add('       ROUND(SCBB.AvgQty, 0) AS ''¥­§¡¤@¤p®ÉÂù¼Æ'',');
    SQL.Add('       SUBSTRING(''' + sDate + ''', 6, 5) AS ''¥Í²£¤é''');
    SQL.Add('FROM (');
    SQL.Add('  SELECT SCDate,');
    SQL.Add('         CASE GXLB WHEN ''C'' THEN 1 WHEN ''S'' THEN 2 WHEN ''O'' THEN 3 WHEN ''A'' THEN 4 END AS GXLB_Sort,');
    SQL.Add('         DepNo, DepName, Qty, bzQty, SCGS, AvgQty, QtyMT, QtyTT');
    SQL.Add('  FROM #Scbbdata');
    SQL.Add('  UNION ALL');
    SQL.Add('  SELECT SCDate,');
    SQL.Add('         CASE GXLB WHEN ''C'' THEN 1 WHEN ''S'' THEN 2 WHEN ''O'' THEN 3 WHEN ''A'' THEN 4 END AS GXLB_Sort,');
    SQL.Add('         ''zTotal'' AS DepNo, ''zTotal'' AS DepName,');
    SQL.Add('         ISNULL(SUM(Qty), 0) AS Qty, ISNULL(SUM(bzQty), 0) AS bzQty,');
    SQL.Add('         NULL AS SCGS,');
    SQL.Add('         ISNULL(SUM(Qty), 0) / NULLIF(SUM(SCGS), 0) AS AvgQty,');
    SQL.Add('         ISNULL(SUM(QtyMT), 0) AS QtyMT, ISNULL(SUM(QtyTT), 0) AS QtyTT');
    SQL.Add('  FROM #Scbbdata');
    SQL.Add('  GROUP BY SCDate, GXLB');
    SQL.Add(') SCBB');
    SQL.Add('LEFT JOIN #RYList RYList ON RYList.SCDate = SCBB.SCDate AND RYList.DepNo = SCBB.DepNo');
    SQL.Add('ORDER BY SCBB.GXLB_Sort, SCBB.DepName;');

    // 1.8 Xóa b?ng t?m
    SQL.Add('DROP TABLE #DeptVDH;');
    SQL.Add('DROP TABLE #DayData;');
    SQL.Add('DROP TABLE #LKTT;');
    SQL.Add('DROP TABLE #LKMT;');
    SQL.Add('DROP TABLE #Scbbdata;');
    SQL.Add('DROP TABLE #RYSource;');
    SQL.Add('DROP TABLE #RYList;');

    Active := True;
  end;

  // Ð?nh d?ng hi?n th? Grid
  DBGrideh1.Columns.BeginUpdate;
  try
    with DBGrideh1 do
    begin
      columns[0].Width := 95;
      columns[0].title.caption := 'DepName|³æ¦ì';
      columns[1].Width := 40;
      columns[2].Width := 35;
      for j := 2 to Query1.FieldCount - 40 do
      begin
        columns[j].Width := 65;
        columns[j].Title.Caption := 'RY|' + columns[j].Title.Caption;
      end;
      for k := Query1.FieldCount - 39 to Query1.FieldCount - 7 do
      begin
        columns[k].Width := 65;
        columns[k].Title.Caption := 'Qty|' + columns[k].Title.Caption;
      end;
      columns[63].Width := 55;
      columns[63].Title.Caption := 'SL trong ngay:·í¤Ñ²£¶q|¥Ø¼Ð²£¶q';
      columns[64].Width := 55;
      columns[64].Title.Caption := 'SL trong ngay:·í¤Ñ²£¶q|¹ê»Ú²£¶q';
      columns[65].Width := 55;
      columns[65].Title.Caption := 'SL trong ngay:·í¤Ñ²£¶q|DELAY';
      columns[66].Width := 55;
      columns[66].Title.Caption := 'SL trong ngay:·í¤Ñ²£¶q|¹F¦¨²v';

      columns[67].Width := 55;
      columns[67].Title.Caption := 'Luy ke san luong:²Ö­p²£¶q|¥Ø¼Ð²£¶q';
      columns[68].Width := 55;
      columns[68].Title.Caption := 'Luy ke san luong:²Ö­p²£¶q|¹ê»Ú²£¶q';
      columns[69].Width := 55;
      columns[69].Title.Caption := 'Luy ke san luong:²Ö­p²£¶q|¹F¦¨²v';
    end;
  finally
    DBGrideh1.Columns.EndUpdate;
  end;

  // ===========================================================================
  // 2. ASSEMBLY PLAN OUTPUT (Qtemp: M?c tiêu c? tháng c?a công do?n GXLB='A')
  // ===========================================================================
  with Qtemp do
  begin
    Active := False;
    SQL.Clear;
    SQL.Add('SELECT ISNULL(SUM(SCBZCL.Qty), 0) AS Qty');
    SQL.Add('FROM SCBZCL WITH (NOLOCK)');
    SQL.Add('INNER JOIN BDepartment WITH (NOLOCK) ON SCBZCL.Depno = BDepartment.ID');
    SQL.Add('WHERE SCBZCL.BZDate >= ''' + sMonthStart + '''');
    SQL.Add('  AND SCBZCL.BZDate < ''' + sMonthEnd + '''');
    SQL.Add('  AND BDepartment.GSBH = ' + sGSBH);
    SQL.Add('  AND BDepartment.DepName LIKE ' + sDepNameLike);
    SQL.Add('  AND BDepartment.GXLB = ''A'';');
    Active := True;
  end;

  // ===========================================================================
  // 3. ASSEMBLY ACTUAL QUANTITY (Qtemp1: Th?c t? c? tháng c?a GXLB='A')
  // ===========================================================================
  with Qtemp1 do
  begin
    Active := False;
    SQL.Clear;
    if isCurrMonth then
    begin
      // Tháng hi?n t?i: SCBB (c? tháng) + SMZL (ngày hôm nay NDate)
      // Ðã lo?i b? hoàn toàn các b?ng JOIN du th?a (DDZL, SCXXCL, SCRL, RSCQ)
      SQL.Add('SELECT SUM(TT.Qty) AS Qty');
      SQL.Add('FROM (');
      SQL.Add('  SELECT ISNULL(SUM(CONVERT(FLOAT, SCBBS.Qty)), 0) AS Qty');
      SQL.Add('  FROM SCBB WITH (NOLOCK)');
      SQL.Add('  INNER JOIN SCBBS WITH (NOLOCK) ON SCBB.ProNo = SCBBS.ProNo');
      SQL.Add('  INNER JOIN BDepartment WITH (NOLOCK) ON BDepartment.ID = SCBB.DepNo');
      SQL.Add('  WHERE SCBB.SCDate >= ''' + sMonthStart + '''');
      SQL.Add('    AND SCBB.SCDate < ''' + sMonthEnd + '''');
      SQL.Add('    AND SCBB.GSBH = ' + sGSBH);
      SQL.Add('    AND BDepartment.DepName LIKE ' + sDepNameLike);
      SQL.Add('    AND SCBBS.GXLB = ''A''');
      SQL.Add('  UNION ALL');
      SQL.Add('  SELECT ISNULL(SUM(CONVERT(FLOAT, SMZL.CTS * SMDDSS.Qty)), 0) AS Qty');
      SQL.Add('  FROM SMZL WITH (NOLOCK)');
      SQL.Add('  INNER JOIN SMDDSS WITH (NOLOCK) ON SMZL.CODEBAR = SMDDSS.CODEBAR');
      SQL.Add('  INNER JOIN BDepartment WITH (NOLOCK) ON BDepartment.ID = SMZL.DepNo');
      SQL.Add('  WHERE SMZL.USERDATE >= ''' + sNDate + '''');
      SQL.Add('    AND SMZL.USERDATE < ''' + sNextNDate + '''');
      SQL.Add('    AND BDepartment.GSBH = ' + sGSBH);
      SQL.Add('    AND BDepartment.DepName LIKE ' + sDepNameLike);
      SQL.Add('    AND SMDDSS.GXLB = ''A''');
      SQL.Add(') TT;');
    end
    else
    begin
      // Tháng quá kh?: Hoàn toàn t? SCBB (dã lo?i b? JOIN du th?a)
      SQL.Add('SELECT ISNULL(SUM(CONVERT(FLOAT, SCBBS.Qty)), 0) AS Qty');
      SQL.Add('FROM SCBB WITH (NOLOCK)');
      SQL.Add('INNER JOIN SCBBS WITH (NOLOCK) ON SCBB.ProNo = SCBBS.ProNo');
      SQL.Add('INNER JOIN BDepartment WITH (NOLOCK) ON BDepartment.ID = SCBB.DepNo');
      SQL.Add('WHERE SCBB.SCDate >= ''' + sMonthStart + '''');
      SQL.Add('  AND SCBB.SCDate < ''' + sMonthEnd + '''');
      SQL.Add('  AND SCBB.GSBH = ' + sGSBH);
      SQL.Add('  AND BDepartment.DepName LIKE ' + sDepNameLike);
      SQL.Add('  AND SCBBS.GXLB = ''A'';');
    end;
    Active := True;
  end;
end;

procedure TDailyReportDetail.DBGridEh1DrawColumnCell(Sender: TObject;
  const Rect: TRect; DataCol: Integer; Column: TColumnEh;
  State: TGridDrawState);
begin
  if trim(Query1.FieldByName('³æ¦ì').AsString) = 'zTotal' then
  begin
    dbgrideh1.canvas.brush.Color := $00FCCBCD;
    DBGridEh1.DefaultDrawColumnCell(Rect, DataCol, Column, State);
  end;
end;

procedure TDailyReportDetail.Button2Click(Sender: TObject);
var
  eclApp, WorkBook, DataArr: olevariant;
  i, j, k, RowCount, ColCount: integer;
  SrcFile, DstFile: string;
begin
  if not Query1.Active then Exit;

  if (not DirectoryExists(AppDir + 'Additional\')) then
    ForceDirectories(AppDir + 'Additional\');

  if CB1.Text = 'VC2' then
  begin
    SrcFile := '\\' + main.ServerIP + '\liy_erp\Additional\Plan_SN535_VC2.xls';
    DstFile := AppDir + 'Additional\Plan_SN535_VC2.xls';
    CopyFile(Pchar(SrcFile), Pchar(DstFile), false);

    if FileExists(DstFile) then
    begin
      try
        eclApp := CreateOleObject('Excel.Application');
        WorkBook := CreateOleObject('Excel.Sheet');
      except
        Application.MessageBox('No Microsoft Excel', 'Microsoft Excel',
          MB_OK + MB_ICONWarning);
        Exit;
      end;

      Query1.DisableControls;
      try
        eclApp.WorkBooks.Open(DstFile);
        eclApp.ScreenUpdating := False;
        eclApp.ActiveSheet.Columns[42].NumberFormatLocal := 'yyyy/mm/dd';

        RowCount := Query1.RecordCount;
        ColCount := Query1.FieldCount;

        if RowCount > 0 then
        begin
          DataArr := VarArrayCreate([1, RowCount, 1, ColCount], varVariant);
          Query1.First;
          j := 1;
          while not Query1.Eof do
          begin
            for i := 0 to ColCount - 1 do
              DataArr[j, i + 1] := Query1.Fields[i].Value;
            Query1.Next;
            inc(j);
          end;
          eclApp.Range[eclApp.Cells[6, 1],
            eclApp.Cells[6 + RowCount - 1, ColCount]].Value := DataArr;

          Query1.First;
          j := 6;
          while not Query1.Eof do
          begin
            if Query1.FieldByName('³æ¦ì').AsString = 'zTotal' then
              eclApp.Range[eclApp.Cells[j, 1],
                eclApp.Cells[j, ColCount]].Interior.Color := clYellow;
            Query1.Next;
            inc(j);
          end;
        end
        else
          j := 6;

        for k := 1 to 4 do
        begin
          eclApp.Range[eclApp.Cells[4, 1],
            eclApp.Cells[j - 1, 42]].Borders[k].LineStyle := 1;
        end;

        eclApp.Range[eclApp.Cells[j + 1, 54], eclApp.Cells[j + 1, 55]].Merge;
        eclApp.Cells(j + 1, 54) := '¤ë¥÷¥Ø¼Ð²£¯à:';
        eclApp.Cells(j + 1, 56) := Qtemp.FieldByName('Qty').Value;

        eclApp.Cells(j + 1, 58) := '¤ë¥÷²Ö­p:';
        eclApp.Cells(j + 1, 59) := Qtemp1.FieldByName('Qty').Value;

        eclApp.Columns.Autofit;

        eclApp.ActiveSheet.Columns[58].ColumnWidth := 8;
        eclApp.ActiveSheet.Columns[59].ColumnWidth := 8;
        eclApp.ActiveSheet.Columns[50].ColumnWidth := 8;
        eclApp.ActiveSheet.Columns[61].ColumnWidth := 8;
        eclApp.ActiveSheet.Columns[62].ColumnWidth := 13;

        eclApp.ScreenUpdating := True;
        showmessage('Succeed');
        eclApp.Visible := True;
      except
        on F: Exception do
        begin
          eclApp.ScreenUpdating := True;
          showmessage(F.Message);
        end;
      end;
      Query1.EnableControls;
    end;
  end
  else
  begin
    SrcFile := '\\' + main.ServerIP + '\lys_erp\Additional\Plan_SN535TT.xls';
    DstFile := AppDir + 'Additional\Plan_SN535TT.xls';
    CopyFile(Pchar(SrcFile), Pchar(DstFile), false);

    if FileExists(DstFile) then
    begin
      try
        eclApp := CreateOleObject('Excel.Application');
        WorkBook := CreateOleObject('Excel.Sheet');
      except
        Application.MessageBox('No Microsoft Excel', 'Microsoft Excel',
          MB_OK + MB_ICONWarning);
        Exit;
      end;

      Query1.DisableControls;
      try
        eclApp.WorkBooks.Open(DstFile);
        eclApp.ScreenUpdating := False;
        eclApp.ActiveSheet.Columns[71].NumberFormatLocal := 'yyyy/mm/dd';

        RowCount := Query1.RecordCount;
        ColCount := Query1.FieldCount;

        if RowCount > 0 then
        begin
          DataArr := VarArrayCreate([1, RowCount, 1, ColCount], varVariant);
          Query1.First;
          j := 1;
          while not Query1.Eof do
          begin
            for i := 0 to ColCount - 1 do
              DataArr[j, i + 1] := Query1.Fields[i].Value;
            Query1.Next;
            inc(j);
          end;
          eclApp.Range[eclApp.Cells[6, 1],
            eclApp.Cells[6 + RowCount - 1, ColCount]].Value := DataArr;

          Query1.First;
          j := 6;
          while not Query1.Eof do
          begin
            if Query1.FieldByName('³æ¦ì').AsString = 'zTotal' then
              eclApp.Range[eclApp.Cells[j, 1],
                eclApp.Cells[j, ColCount]].Interior.Color := clYellow;
            Query1.Next;
            inc(j);
          end;
        end
        else
          j := 6;

        for k := 1 to 4 do
        begin
          eclApp.Range[eclApp.Cells[4, 1],
            eclApp.Cells[j - 1, 71]].Borders[k].LineStyle := 1;
        end;

        eclApp.Range[eclApp.Cells[j + 1, 61], eclApp.Cells[j + 1, 62]].Merge;
        eclApp.Cells(j + 1, 61) := '¤ë¥÷¥Ø¼Ð²£¯à:';
        eclApp.Cells(j + 1, 63) := Qtemp.FieldByName('Qty').Value;

        eclApp.Cells(j + 1, 66) := '¤ë¥÷²Ö­p:';
        eclApp.Cells(j + 1, 67) := Qtemp1.FieldByName('Qty').Value;

        eclApp.Columns.Autofit;

        eclApp.ActiveSheet.Columns[68].ColumnWidth := 8;
        eclApp.ActiveSheet.Columns[69].ColumnWidth := 8;
        eclApp.ActiveSheet.Columns[60].ColumnWidth := 8;
        eclApp.ActiveSheet.Columns[61].ColumnWidth := 8;
        eclApp.ActiveSheet.Columns[62].ColumnWidth := 13;

        eclApp.ScreenUpdating := True;
        showmessage('Succeed');
        eclApp.Visible := True;
      except
        on F: Exception do
        begin
          eclApp.ScreenUpdating := True;
          showmessage(F.Message);
        end;
      end;
      Query1.EnableControls;
    end;
  end;
end;

end.
