unit LocalizationReport1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DBTables, DB, ComCtrls, StdCtrls, DBCtrls, Grids, DBGrids, Mask,
  Buttons, ExtCtrls, GridsEh, DBGridEh,comobj, Menus, iniFiles;

type
  TLocalizationReport = class(TForm)
    startcfm: TQuery;
    QryIMAGE: TQuery;
    QryIMAGEArticle: TStringField;
    QryIMAGEDEVCODE: TStringField;
    QryIMAGEFD: TStringField;
    QryIMAGExiexing: TStringField;
    QryIMAGEshehao: TStringField;
    IMAGE: TDataSource;
    Panel11: TPanel;
    Label67: TLabel;
    Label68: TLabel;
    Label69: TLabel;
    Label221: TLabel;
    Label272: TLabel;
    ComboBox1: TComboBox;
    Edit1: TEdit;
    Edit2: TEdit;
    Edit3: TEdit;
    ComboBox2: TComboBox;
    DBGridEh2: TDBGridEh;
    Button1: TButton;
    QryIMAGEpt: TFloatField;
    QryIMAGEptR1: TFloatField;
    QryIMAGEptR2: TFloatField;
    QryIMAGEptCFM: TFloatField;
    QryIMAGEYPDH: TStringField;
    Label1: TLabel;
    ComboBox3: TComboBox;
    Button2: TButton;
    QryIMAGEjijie: TStringField;
    DSN: TDataSource;
    QryN: TQuery;
    QryNARTICLE: TStringField;
    QryNDevcode: TStringField;
    QryNYPDH: TStringField;
    QryNFD: TStringField;
    QryNCR1: TFloatField;
    QryNCR2: TFloatField;
    QryNSMS: TFloatField;
    QryNCFM: TFloatField;
    Qry_Tmp: TQuery;
    lblCR1: TLabel;
    lblCR2: TLabel;
    lblSMS: TLabel;
    lblCFM: TLabel;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormDestroy(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure QryIMAGEAfterOpen(DataSet: TDataSet);
    procedure DBGridEh2DrawColumnCell(Sender: TObject; const Rect: TRect;
      DataCol: Integer; Column: TColumnEh; State: TGridDrawState);
    procedure Button2Click(Sender: TObject);
    procedure QryNAfterOpen(DataSet: TDataSet);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  LocalizationReport: TLocalizationReport;
  SFactory: String;
  NDate: TDate;
implementation

uses main1;

{$R *.dfm}

procedure TLocalizationReport.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  action:=Cafree;
end;

procedure TLocalizationReport.FormDestroy(Sender: TObject);
begin
  LocalizationReport:=nil;
end;

procedure TLocalizationReport.FormCreate(Sender: TObject);
begin
  with startcfm do
  begin
     active:=false;
     sql.Clear;
     sql.add('select jijie from kfxxzl');
     SQL.add('left join kfzl_GS on kfzl_GS.KHBH=kfxxzl.KHDH');
     sql.add('where FD is not null and kfzl_GS.GSBH='''+main.Edit2.Text+''' ');
     SQL.add('and right(left(jijie,2),2) between ''16'' and ''50'' ');
     SQL.Add('AND LEN(jijie) < 4 ');
     sql.add('group by jijie');
     sql.add('order by jijie desc');
     active:=true;
     combobox1.items.clear;
     while not eof do
     begin
       combobox1.items.add(fieldbyname('jijie').asstring );
       next;
     end;
  end;

  with Qry_Tmp do
  begin
    Active := false;
    SQL.Clear;
    SQL.Add('SELECT GETDATE() AS NDate, CASE WHEN SFL = ''DC'' THEN GSDH ELSE (');
    SQL.Add('  SELECT CASE WHEN SFL = ''DC'' THEN GSDH ELSE TGSBH END GSDH FROM Bgszl bg1 WHERE bg1.GSDH = Bgszl.TGSBH');
    SQL.Add(') END AS DC_GSBH, KFZL_GS.KHBH FROM Bgszl');
    SQL.Add('LEFT JOIN KFZL_GS ON KFZL_GS.GSBH = Bgszl.GSDH');
    SQL.Add('WHERE GSDH = ''' + main.Edit2.Text + '''');
    Active := true;

    NDate := FieldByName('NDate').Value;
    SFactory := FieldByName('DC_GSBH').AsString;
    Active := false;
  end;

  combobox1.ItemIndex:=0;
  combobox2.ItemIndex:=0;
  combobox3.ItemIndex:=0;
end;

procedure TLocalizationReport.Button1Click(Sender: TObject);
begin
  {with qryimage do
  begin
    Active := false;
    SQL.Clear;
    
    //CFM
    SQL.Add('IF OBJECT_ID(''tempdb..#ptVNCFM'') IS NOT NULL ');
    SQL.Add('BEGIN DROP TABLE #ptVNCFM END ');
    
    SQL.Add('select CFM.XieXing, CFM.SheHao, YPZL.YPDH, pt INTO #ptVNCFM from CFM ');
    SQL.Add('left join kfxxzl on CFM.xiexing=kfxxzl.xiexing and CFM.shehao=kfxxzl.shehao ');
    SQL.Add('left join xxzl on CFM.xiexing=xxzl.xiexing and CFM.shehao=xxzl.shehao ');
    SQL.Add('left join ypzl on CFM.xiexing=ypzl.xiexing and CFM.shehao=ypzl.shehao ');
    SQL.Add('left join xxzlkf on CFM.xiexing=xxzlkf.xiexing and CFM.shehao=xxzlkf.shehao ');
    SQL.Add('left join kfzl_GS on kfzl_GS.KHBH=kfxxzl.KHDH ');
    SQL.Add('left join (select YPDH, case when isnull(count(cqdh),0)<>0 then ROUND(CONVERT(FLOAT,sum(dem))/CONVERT(FLOAT,count(cqdh))*100, 1) else 0 end as pt from ( ');
    SQL.Add('             select YPDH,CQDH, case when cqdh=''VN'' then 1 else 0 end as dem from ( ');
    SQL.Add('               select ypzls.YPDH,ypzls.BWBH ,ypzls.CLBH ,clzl.CQDH from ypzls ');
    SQL.Add('               LEFT JOIN bwzl bwzl ON ypzls.BWBH = bwzl.bwdh ');
    SQL.Add('               LEFT JOIN clzl clzl ON ypzls.CLBH = clzl.cldh ');
    SQL.Add('               LEFT JOIN zszl zszl ON ypzls.CSBH = zszl.zsdh ');
    SQL.Add('               LEFT JOIN zszl_dev ON zszl_dev.zsdh = zszl.zsdh and zszl_dev.GSBH='''+main.Edit2.Text+''' ');
    SQL.Add('               union all ');
    SQL.Add('               select ypzls.YPDH,YPZLS.BWBH+''-Child'' as Relation,clzhzl.CLDH1 as CLBH ,clzl.CQDH from ypzls ');
    SQL.Add('               Left join clzhzl ON ypzls.CLBH = CLZHZL.cldh ');
    SQL.Add('               left join clzhzl_dev ON clzhzl.cldh = clzhzl_dev.cldh and clzhzl.cldh1=clzhzl_dev.cldh1 ');
    SQL.Add('               LEFT JOIN bwzl bwzl ON ypzls.BWBH = bwzl.bwdh ');
    SQL.Add('               LEFT JOIN clzl clzl ON CLZHZL.cldh1 = clzl.cldh ');
    SQL.Add('               LEFT JOIN zszl zszl ON clzhzl.zsdh = zszl.zsdh ');
    SQL.Add('               LEFT JOIN zszl zszl_dev on clzhzl_dev.zsdh = zszl_dev.zsdh ');
    SQL.Add('               LEFT JOIN zszl_dev zszl_devV ON zszl_devV.zsdh = zszl.zsdh and zszl_devV.GSBH='''+main.Edit2.Text+''' ');
    SQL.Add('               WHERE CLZHZL.SYL>0 ');
    SQL.Add('               union all ');
    SQL.Add('               Select clzhzl2.YPDH,clzhzl2.Relation+''1'' as Relation ,clzhzl.CLDH1 as CLBH,clzl.CQDH from ( ');
    SQL.Add('                 SELECT ypzls.YPDH,YPZLS.BWBH+''-Child'' as Relation,clzhzl.CLDH1 as CLBH ,clzl.CQDH from ypzls ');
    SQL.Add('                 inner join clzhzl ON ypzls.CLBH = CLZHZL.cldh ');
    SQL.Add('                 LEFT JOIN clzhzl_dev ON clzhzl.cldh=clzhzl_dev.cldh and clzhzl.cldh1=clzhzl_dev.cldh1 ');
    SQL.Add('                 LEFT JOIN bwzl bwzl ON ypzls.BWBH = bwzl.bwdh ');
    SQL.Add('                 LEFT JOIN clzl clzl ON CLZHZL.cldh1 = clzl.cldh ');
    SQL.Add('                 LEFT JOIN zszl zszl ON clzhzl.zsdh = zszl.zsdh ');
    SQL.Add('                 LEFT JOIN zszl zszl_dev on clzhzl_dev.zsdh = zszl_dev.zsdh ');
    SQL.Add('                 LEFT JOIN zszl_dev zszl_devV ON zszl_devV.zsdh = zszl.zsdh and zszl_devV.GSBH='''+main.Edit2.Text+''' ');
    SQL.Add('                 WHERE CLZHZL.SYL>0 and clzl.clzmlb=''Y'' ) clzhzl2 ');
    SQL.Add('               inner join clzhzl ON  clzhzl2.CLBH = CLZHZL.cldh ');
    SQL.Add('               left join clzhzl_dev ON clzhzl.cldh=clzhzl_dev.cldh and clzhzl.cldh1=clzhzl_dev.cldh1 ');
    SQL.Add('               left JOIN clzl clzl ON CLZHZL.cldh1 = clzl.cldh ');
    SQL.Add('               LEFT JOIN zszl zszl ON clzhzl.zsdh = zszl.zsdh ');
    SQL.Add('               LEFT JOIN zszl zszl_dev on clzhzl_dev.zsdh = zszl_dev.zsdh ) YPZLS ');
    SQL.Add('             ) PT group by YPDH ');
    SQL.Add('           ) YPZLS on ypzl.ypdh=ypzls.ypdh ');
    SQL.Add('where ypzl.ypdh LIKE ''LAI%'' and kfxxzl.devcode <>'''' ');
    SQL.add('      and kfzl_GS.GSBH='''+main.Edit2.Text+''' ');
    SQL.Add('      and (xxzlkf.dropped <>''1'' or xxzlkf.dropped is null) ');
    SQL.Add('      and (xxzlkf.transfer <>''1'' or xxzlkf.transfer is null) ');
    SQL.Add('      and kfxxzl.xieming not like ''%NULLIFY%'' and kfxxzl.xieming not like ''%NULIFY%'' ');
    SQL.Add('      and ypzl.kfjd = ''CFM'' ');
    if combobox1.Text <> '' then
      SQL.add('    and kfxxzl.jijie like '''+'%'+combobox1.Text+'%'+''' ');
    if combobox2.Text <> '' then
      SQL.add('    and kfxxzl.devtype like '''+'%'+combobox2.Text+'%'+''' ');
    if edit1.Text <> '' then
      SQL.add('    and kfxxzl.devcode like '''+'%'+edit1.Text+'%'+''' ');
    if edit2.Text <> '' then
      SQL.add('    and kfxxzl.Article like '''+'%'+edit2.Text+'%'+''' ');
    if edit3.Text <> '' then
      SQL.add('    and ypzl.ypdh like '''+'%'+edit3.Text+'%'+''' ');

    //R1
    SQL.Add('IF OBJECT_ID(''tempdb..#ptVNR1'') IS NOT NULL ');
    SQL.Add('BEGIN DROP TABLE #ptVNR1 END ');

    SQL.Add('select ypzl.ypdh, R1Sample.xiexing,R1Sample.shehao,pt INTO #ptVNR1 from R1Sample ');
    SQL.Add('left join kfxxzl on R1Sample.xiexing=kfxxzl.xiexing and R1Sample.shehao=kfxxzl.shehao ');
    SQL.Add('left join xxzlkf on R1Sample.xiexing=xxzlkf.xiexing and R1Sample.shehao=xxzlkf.shehao ');
    SQL.Add('left join Fdgroups on Fdgroups.fdname=kfxxzl.FD ');
    SQL.Add('left join kfzl_GS on kfzl_GS.KHBH=kfxxzl.KHDH ');
    SQL.Add('left join ypzl on ypzl.xiexing=R1Sample.xiexing and ypzl.shehao=R1Sample.shehao ');
    SQL.Add('left join (select YPDH, case when isnull(count(cqdh),0)<>0 then ROUND(CONVERT(FLOAT,sum(dem))/CONVERT(FLOAT,count(cqdh))*100, 1) else 0 end as pt from ( ');
    SQL.Add('             select YPDH,CQDH, case when cqdh=''VN'' then 1 else 0 end as dem from ( ');
    SQL.Add('               select ypzls.YPDH,ypzls.BWBH ,ypzls.CLBH ,clzl.CQDH from ypzls ');
    SQL.Add('               LEFT JOIN bwzl bwzl ON ypzls.BWBH = bwzl.bwdh ');
    SQL.Add('               LEFT JOIN clzl clzl ON ypzls.CLBH = clzl.cldh ');
    SQL.Add('               LEFT JOIN zszl zszl ON ypzls.CSBH = zszl.zsdh ');
    SQL.Add('               LEFT JOIN zszl_dev ON zszl_dev.zsdh = zszl.zsdh and zszl_dev.GSBH='''+main.Edit2.Text+''' ');
    SQL.Add('               union all ');
    SQL.Add('               select ypzls.YPDH,YPZLS.BWBH+''-Child'' as Relation,clzhzl.CLDH1 as CLBH ,clzl.CQDH from ypzls ');
    SQL.Add('               Left join clzhzl ON ypzls.CLBH = CLZHZL.cldh ');
    SQL.Add('               left join clzhzl_dev ON clzhzl.cldh = clzhzl_dev.cldh and clzhzl.cldh1=clzhzl_dev.cldh1 ');
    SQL.Add('               LEFT JOIN bwzl bwzl ON ypzls.BWBH = bwzl.bwdh ');
    SQL.Add('               LEFT JOIN clzl clzl ON CLZHZL.cldh1 = clzl.cldh ');
    SQL.Add('               LEFT JOIN zszl zszl ON clzhzl.zsdh = zszl.zsdh ');
    SQL.Add('               LEFT JOIN zszl zszl_dev on clzhzl_dev.zsdh = zszl_dev.zsdh ');
    SQL.Add('               LEFT JOIN zszl_dev zszl_devV ON zszl_devV.zsdh = zszl.zsdh and zszl_devV.GSBH='''+main.Edit2.Text+''' ');
    SQL.Add('               WHERE CLZHZL.SYL>0 ');
    SQL.Add('               union all ');
    SQL.Add('               Select clzhzl2.YPDH,clzhzl2.Relation+''1'' as Relation ,clzhzl.CLDH1 as CLBH,clzl.CQDH from ( ');
    SQL.Add('                 SELECT ypzls.YPDH,YPZLS.BWBH+''-Child'' as Relation,clzhzl.CLDH1 as CLBH ,clzl.CQDH from ypzls ');
    SQL.Add('                 inner join clzhzl ON ypzls.CLBH = CLZHZL.cldh ');
    SQL.Add('                 LEFT JOIN clzhzl_dev ON clzhzl.cldh=clzhzl_dev.cldh and clzhzl.cldh1=clzhzl_dev.cldh1 ');
    SQL.Add('                 LEFT JOIN bwzl bwzl ON ypzls.BWBH = bwzl.bwdh ');
    SQL.Add('                 LEFT JOIN clzl clzl ON CLZHZL.cldh1 = clzl.cldh ');
    SQL.Add('                 LEFT JOIN zszl zszl ON clzhzl.zsdh = zszl.zsdh ');
    SQL.Add('                 LEFT JOIN zszl zszl_dev on clzhzl_dev.zsdh = zszl_dev.zsdh ');
    SQL.Add('                 LEFT JOIN zszl_dev zszl_devV ON zszl_devV.zsdh = zszl.zsdh and zszl_devV.GSBH='''+main.Edit2.Text+''' ');
    SQL.Add('                 WHERE CLZHZL.SYL>0 and clzl.clzmlb=''Y'' ) clzhzl2 ');
    SQL.Add('               inner join clzhzl ON  clzhzl2.CLBH = CLZHZL.cldh ');
    SQL.Add('               left join clzhzl_dev ON clzhzl.cldh=clzhzl_dev.cldh and clzhzl.cldh1=clzhzl_dev.cldh1 ');
    SQL.Add('               left JOIN clzl clzl ON CLZHZL.cldh1 = clzl.cldh ');
    SQL.Add('               LEFT JOIN zszl zszl ON clzhzl.zsdh = zszl.zsdh ');
    SQL.Add('               LEFT JOIN zszl zszl_dev on clzhzl_dev.zsdh = zszl_dev.zsdh ) YPZLS ');
    SQL.Add('             ) PT group by YPDH ');
    SQL.Add('           ) YPZLS on ypzl.ypdh=ypzls.ypdh ');
    SQL.Add('where ypzl.ypdh LIKE ''LAI%'' and kfxxzl.devcode <>'''' ');
    SQL.add('      and kfzl_GS.GSBH='''+main.Edit2.Text+''' ');
    SQL.Add('      and (xxzlkf.dropped <>''1'' or xxzlkf.dropped is null) ');
    SQL.Add('      and (xxzlkf.transfer <>''1'' or xxzlkf.transfer is null) ');
    SQL.Add('      and kfxxzl.xieming not like ''%NULLIFY%'' and kfxxzl.xieming not like ''%NULIFY%'' ');
    SQL.Add('      and ypzl.kfjd = ''CR1'' ');
    if combobox1.Text <> '' then
      SQL.add('    and kfxxzl.jijie like '''+'%'+combobox1.Text+'%'+''' ');
    if combobox2.Text <> '' then
      SQL.add('    and kfxxzl.devtype like '''+'%'+combobox2.Text+'%'+''' ');
    if edit1.Text <> '' then
      SQL.add('    and kfxxzl.devcode like '''+'%'+edit1.Text+'%'+''' ');
    if edit2.Text <> '' then
      SQL.add('    and kfxxzl.Article like '''+'%'+edit2.Text+'%'+''' ');
    if edit3.Text <> '' then
      SQL.add('    and ypzl.ypdh like '''+'%'+edit3.Text+'%'+''' ');
    SQL.Add('group by ypzl.ypdh,R1Sample.xiexing,R1Sample.shehao,pt ');

    //R2
    SQL.Add('IF OBJECT_ID(''tempdb..#ptVNR2'') IS NOT NULL ');
    SQL.Add('BEGIN DROP TABLE #ptVNR2 END ');

    SQL.Add('select ypzl.ypdh, R2Sample.xiexing,R2Sample.shehao,pt INTO #ptVNR2 from R2Sample ');
    SQL.Add('left join kfxxzl on R2Sample.xiexing=kfxxzl.xiexing and R2Sample.shehao=kfxxzl.shehao ');
    SQL.Add('left join xxzlkf on R2Sample.xiexing=xxzlkf.xiexing and R2Sample.shehao=xxzlkf.shehao ');
    SQL.Add('left join Fdgroups on Fdgroups.fdname=kfxxzl.FD ');
    SQL.Add('left join kfzl_GS on kfzl_GS.KHBH=kfxxzl.KHDH ');
    SQL.Add('left join ypzl on ypzl.xiexing=R2Sample.xiexing and ypzl.shehao=R2Sample.shehao ');
    SQL.Add('left join (select YPDH, case when isnull(count(cqdh),0)<>0 then ROUND(CONVERT(FLOAT,sum(dem))/CONVERT(FLOAT,count(cqdh))*100, 1) else 0 end as pt from ( ');
    SQL.Add('             select YPDH,CQDH, case when cqdh=''VN'' then 1 else 0 end as dem from ( ');
    SQL.Add('               select ypzls.YPDH,ypzls.BWBH ,ypzls.CLBH ,clzl.CQDH from ypzls ');
    SQL.Add('               LEFT JOIN bwzl bwzl ON ypzls.BWBH = bwzl.bwdh ');
    SQL.Add('               LEFT JOIN clzl clzl ON ypzls.CLBH = clzl.cldh ');
    SQL.Add('               LEFT JOIN zszl zszl ON ypzls.CSBH = zszl.zsdh ');
    SQL.Add('               LEFT JOIN zszl_dev ON zszl_dev.zsdh = zszl.zsdh and zszl_dev.GSBH='''+main.Edit2.Text+''' ');
    SQL.Add('               union all ');
    SQL.Add('               select ypzls.YPDH,YPZLS.BWBH+''-Child'' as Relation,clzhzl.CLDH1 as CLBH ,clzl.CQDH from ypzls ');
    SQL.Add('               Left join clzhzl ON ypzls.CLBH = CLZHZL.cldh ');
    SQL.Add('               left join clzhzl_dev ON clzhzl.cldh = clzhzl_dev.cldh and clzhzl.cldh1=clzhzl_dev.cldh1 ');
    SQL.Add('               LEFT JOIN bwzl bwzl ON ypzls.BWBH = bwzl.bwdh ');
    SQL.Add('               LEFT JOIN clzl clzl ON CLZHZL.cldh1 = clzl.cldh ');
    SQL.Add('               LEFT JOIN zszl zszl ON clzhzl.zsdh = zszl.zsdh ');
    SQL.Add('               LEFT JOIN zszl zszl_dev on clzhzl_dev.zsdh = zszl_dev.zsdh ');
    SQL.Add('               LEFT JOIN zszl_dev zszl_devV ON zszl_devV.zsdh = zszl.zsdh and zszl_devV.GSBH='''+main.Edit2.Text+''' ');
    SQL.Add('               WHERE CLZHZL.SYL>0 ');
    SQL.Add('               union all ');
    SQL.Add('               Select clzhzl2.YPDH,clzhzl2.Relation+''1'' as Relation ,clzhzl.CLDH1 as CLBH,clzl.CQDH from ( ');
    SQL.Add('                 SELECT ypzls.YPDH,YPZLS.BWBH+''-Child'' as Relation,clzhzl.CLDH1 as CLBH ,clzl.CQDH from ypzls ');
    SQL.Add('                 inner join clzhzl ON ypzls.CLBH = CLZHZL.cldh ');
    SQL.Add('                 LEFT JOIN clzhzl_dev ON clzhzl.cldh=clzhzl_dev.cldh and clzhzl.cldh1=clzhzl_dev.cldh1 ');
    SQL.Add('                 LEFT JOIN bwzl bwzl ON ypzls.BWBH = bwzl.bwdh ');
    SQL.Add('                 LEFT JOIN clzl clzl ON CLZHZL.cldh1 = clzl.cldh ');
    SQL.Add('                 LEFT JOIN zszl zszl ON clzhzl.zsdh = zszl.zsdh ');
    SQL.Add('                 LEFT JOIN zszl zszl_dev on clzhzl_dev.zsdh = zszl_dev.zsdh ');
    SQL.Add('                 LEFT JOIN zszl_dev zszl_devV ON zszl_devV.zsdh = zszl.zsdh and zszl_devV.GSBH='''+main.Edit2.Text+''' ');
    SQL.Add('                 WHERE CLZHZL.SYL>0 and clzl.clzmlb=''Y'' ) clzhzl2 ');
    SQL.Add('               inner join clzhzl ON  clzhzl2.CLBH = CLZHZL.cldh ');
    SQL.Add('               left join clzhzl_dev ON clzhzl.cldh=clzhzl_dev.cldh and clzhzl.cldh1=clzhzl_dev.cldh1 ');
    SQL.Add('               left JOIN clzl clzl ON CLZHZL.cldh1 = clzl.cldh ');
    SQL.Add('               LEFT JOIN zszl zszl ON clzhzl.zsdh = zszl.zsdh ');
    SQL.Add('               LEFT JOIN zszl zszl_dev on clzhzl_dev.zsdh = zszl_dev.zsdh ) YPZLS ');
    SQL.Add('             ) PT group by YPDH ');
    SQL.Add('           ) YPZLS on ypzl.ypdh=ypzls.ypdh ');
    SQL.Add('where ypzl.ypdh LIKE ''LAI%'' and kfxxzl.devcode <>'''' ');
    SQL.add('      and kfzl_GS.GSBH='''+main.Edit2.Text+''' ');
    SQL.Add('      and (xxzlkf.dropped <>''1'' or xxzlkf.dropped is null) ');
    SQL.Add('      and (xxzlkf.transfer <>''1'' or xxzlkf.transfer is null) ');
    SQL.Add('      and kfxxzl.xieming not like ''%NULLIFY%'' and kfxxzl.xieming not like ''%NULIFY%'' ');
    SQL.Add('      and ypzl.kfjd = ''CR2'' ');
    if combobox1.Text <> '' then
      SQL.add('    and kfxxzl.jijie like '''+'%'+combobox1.Text+'%'+''' ');
    if combobox2.Text <> '' then
      SQL.add('    and kfxxzl.devtype like '''+'%'+combobox2.Text+'%'+''' ');
    if edit1.Text <> '' then
      SQL.add('    and kfxxzl.devcode like '''+'%'+edit1.Text+'%'+''' ');
    if edit2.Text <> '' then
      SQL.add('    and kfxxzl.Article like '''+'%'+edit2.Text+'%'+''' ');
    if edit3.Text <> '' then
      SQL.add('    and ypzl.ypdh like '''+'%'+edit3.Text+'%'+''' ');
    SQL.Add('group by ypzl.ypdh,R2Sample.xiexing,R2Sample.shehao,pt ');
    //funcobj.WriteErrorLog(sql.Text);
    ExecSQL;
    SQL.Clear;

    //query
    SQL.add('select KFXXZL.Article,KFXXZL.DEVCODE,KFXXZL.FD,ypzl.ypdh,ypzls.pt,R1.pt ptR1,R2.pt ptR2,CFM.pt ptCFM,KFXXZL.Xiexing,KFXXZL.Shehao,kfxxzl.jijie ');
    SQL.add('from kfxxzl ');
    SQL.add('left join kfzl_GS on kfzl_GS.KHBH=kfxxzl.KHDH ');
    sql.add('left join xxzlkf on xxzlkf.xiexing=kfxxzl.xiexing and xxzlkf.shehao=kfxxzl.shehao ');
    sql.add('left join ypzl on ypzl.xiexing=kfxxzl.xiexing and ypzl.shehao=kfxxzl.shehao ');
    SQL.Add('left join (select YPDH, case when isnull(count(cqdh),0)<>0 then ROUND(CONVERT(FLOAT,sum(dem))/CONVERT(FLOAT,count(cqdh))*100, 1) else 0 end as pt from ( ');
    SQL.Add('             select YPDH,CQDH, case when cqdh=''VN'' then 1 else 0 end as dem from ( ');
    SQL.Add('               select ypzls.YPDH,ypzls.BWBH ,ypzls.CLBH ,clzl.CQDH from ypzls ');
    SQL.Add('               LEFT JOIN bwzl bwzl ON ypzls.BWBH = bwzl.bwdh ');
    SQL.Add('               LEFT JOIN clzl clzl ON ypzls.CLBH = clzl.cldh ');
    SQL.Add('               LEFT JOIN zszl zszl ON ypzls.CSBH = zszl.zsdh ');
    SQL.Add('               LEFT JOIN zszl_dev ON zszl_dev.zsdh = zszl.zsdh and zszl_dev.GSBH='''+main.Edit2.Text+''' ');
    SQL.Add('               union all ');
    SQL.Add('               select ypzls.YPDH,YPZLS.BWBH+''-Child'' as Relation,clzhzl.CLDH1 as CLBH ,clzl.CQDH from ypzls ');
    SQL.Add('               Left join clzhzl ON ypzls.CLBH = CLZHZL.cldh ');
    SQL.Add('               left join clzhzl_dev ON clzhzl.cldh = clzhzl_dev.cldh and clzhzl.cldh1=clzhzl_dev.cldh1 ');
    SQL.Add('               LEFT JOIN bwzl bwzl ON ypzls.BWBH = bwzl.bwdh ');
    SQL.Add('               LEFT JOIN clzl clzl ON CLZHZL.cldh1 = clzl.cldh ');
    SQL.Add('               LEFT JOIN zszl zszl ON clzhzl.zsdh = zszl.zsdh ');
    SQL.Add('               LEFT JOIN zszl zszl_dev on clzhzl_dev.zsdh = zszl_dev.zsdh ');
    SQL.Add('               LEFT JOIN zszl_dev zszl_devV ON zszl_devV.zsdh = zszl.zsdh and zszl_devV.GSBH='''+main.Edit2.Text+''' ');
    SQL.Add('               WHERE CLZHZL.SYL>0 ');
    SQL.Add('               union all ');
    SQL.Add('               Select clzhzl2.YPDH,clzhzl2.Relation+''1'' as Relation ,clzhzl.CLDH1 as CLBH,clzl.CQDH from ( ');
    SQL.Add('                 SELECT ypzls.YPDH,YPZLS.BWBH+''-Child'' as Relation,clzhzl.CLDH1 as CLBH ,clzl.CQDH from ypzls ');
    SQL.Add('                 inner join clzhzl ON ypzls.CLBH = CLZHZL.cldh ');
    SQL.Add('                 LEFT JOIN clzhzl_dev ON clzhzl.cldh=clzhzl_dev.cldh and clzhzl.cldh1=clzhzl_dev.cldh1 ');
    SQL.Add('                 LEFT JOIN bwzl bwzl ON ypzls.BWBH = bwzl.bwdh ');
    SQL.Add('                 LEFT JOIN clzl clzl ON CLZHZL.cldh1 = clzl.cldh ');
    SQL.Add('                 LEFT JOIN zszl zszl ON clzhzl.zsdh = zszl.zsdh ');
    SQL.Add('                 LEFT JOIN zszl zszl_dev on clzhzl_dev.zsdh = zszl_dev.zsdh ');
    SQL.Add('                 LEFT JOIN zszl_dev zszl_devV ON zszl_devV.zsdh = zszl.zsdh and zszl_devV.GSBH='''+main.Edit2.Text+''' ');
    SQL.Add('                 WHERE CLZHZL.SYL>0 and clzl.clzmlb=''Y'' ) clzhzl2 ');
    SQL.Add('               inner join clzhzl ON  clzhzl2.CLBH = CLZHZL.cldh ');
    SQL.Add('               left join clzhzl_dev ON clzhzl.cldh=clzhzl_dev.cldh and clzhzl.cldh1=clzhzl_dev.cldh1 ');
    SQL.Add('               left JOIN clzl clzl ON CLZHZL.cldh1 = clzl.cldh ');
    SQL.Add('               LEFT JOIN zszl zszl ON clzhzl.zsdh = zszl.zsdh ');
    SQL.Add('               LEFT JOIN zszl zszl_dev on clzhzl_dev.zsdh = zszl_dev.zsdh ) YPZLS ');
    SQL.Add('             ) PT group by YPDH ');
    SQL.Add('           ) YPZLS on ypzl.ypdh=ypzls.ypdh ');
    sql.add('left join #ptVNR1 R1 on R1.YPDH=ypzl.ypdh AND R1.XieXing=kfxxzl.XieXing and R1.SheHao=kfxxzl.SheHao ');
    sql.add('left join #ptVNR2 R2 on R2.YPDH=ypzl.ypdh AND R2.XieXing=kfxxzl.XieXing and R2.SheHao=kfxxzl.SheHao ');
    sql.add('left join #ptVNCFM CFM on CFM.YPDH=ypzl.ypdh AND CFM.XieXing=kfxxzl.XieXing and CFM.SheHao=kfxxzl.SheHao ');
    SQL.Add('where ypzl.ypdh LIKE ''LAI%'' and kfxxzl.devcode <>'''' and len(kfxxzl.shehao) < 3 ');
    SQL.add('      and kfzl_GS.GSBH='''+main.Edit2.Text+''' ');
    SQL.Add('      and (xxzlkf.dropped <>''1'' or xxzlkf.dropped is null) ');
    SQL.Add('      and (xxzlkf.transfer <>''1'' or xxzlkf.transfer is null) ');
    SQL.Add('      and kfxxzl.xieming not like ''%NULLIFY%'' and kfxxzl.xieming not like ''%NULIFY%'' ');
    if combobox3.Text <> '' then
      SQL.add('    and ypzl.kfjd = '''+combobox3.Text+''' ')
    else
    SQL.Add('      and ypzl.kfjd in (''CR1'',''CR2'',''CFM'') ');
    if combobox1.Text <> '' then
      SQL.add('    and kfxxzl.jijie like '''+'%'+combobox1.Text+'%'+''' ');
    if combobox2.Text <> '' then
      SQL.add('    and kfxxzl.devtype like '''+'%'+combobox2.Text+'%'+''' ');
    if edit1.Text <> '' then
      SQL.add('    and kfxxzl.devcode like '''+'%'+edit1.Text+'%'+''' ');
    if edit2.Text <> '' then
      SQL.add('    and kfxxzl.Article like '''+'%'+edit2.Text+'%'+''' ');
    if edit3.Text <> '' then
      SQL.add('    and ypzl.ypdh like '''+'%'+edit3.Text+'%'+''' ');
    SQL.add('group by KFXXZL.Article,KFXXZL.DEVCODE,KFXXZL.FD,ypzl.ypdh,ypzls.pt,R1.pt,R2.pt,CFM.pt,KFXXZL.Xiexing,KFXXZL.Shehao,kfxxzl.jijie');
    SQL.add('ORDER BY KFXXZL.Article,KFXXZL.DEVCODE,ypzl.ypdh');
    //funcobj.WriteErrorLog(sql.Text);
    active:=true;
  end; }

  //06.06.2025 Thay doi cach tinh %
  with QryN do
  begin
    Active := false;
    SQL.Clear;
    //QueryTemp
    SQL.Add('With querytemp as ');
    SQL.Add('(select zszl_dev.country,(YPZLS.KFJD) as KFJD,YPZLS.ARTICLE,YPZLS.DEVCODE,YPZLS.YPDH,YPZLS.FD,CLZL_FLEX.cldhflex');
    SQL.Add('from ( ');
    SQL.Add('select kfxxzl.*,a.*,ypzl.KFJD from (');
    SQL.Add('SELECT clzl.cltd,ypzls.YPDH ,ypzls.xh ,ypzls.xh1 ,ypzls.BWBH ,ypzls.CLBH ,ypzls.BWLB ,ypzls.CSBH ,ypzls.loss ,ypzls.CLSL ,ypzls.CLDJ ,ypzls.Currency ,ypzls.Rate,clzl.CQDH ');
    SQL.Add(',ypzls.Remark ,bwzl.ywsm+''-''+bwzl.zwsm AS BWMCNM,bwzl.zwsm ,bwzl.ywsm  ,clzl.zwpm AS CLMC,clzl.Ywpm AS CLYWMC ,clzl.dwbh ,zszl.zsjc ,clzl.clzmlb ,ypzls.JGZWSM ,ypzls.JGYWSM ,zszl.zsywjc ');
    SQL.Add('FROM ypzls ypzls ');
    SQL.Add('LEFT JOIN bwzl bwzl ON ypzls.BWBH = bwzl.bwdh ');
    SQL.Add('LEFT JOIN clzl clzl ON ypzls.CLBH = clzl.cldh');
    SQL.Add('LEFT JOIN zszl zszl ON ypzls.CSBH = zszl.zsdh WHERE  clzl.clzmlb=''N'' ');
    SQL.Add('UNION ALL ');
    SQL.Add('SELECT clzl.cltd,ypzls.YPDH ,ypzls.xh ,ypzls.xh1 ,YPZLS.BWBH+''-Child'' as Relation,clzhzl.CLDH1 as CLBH ');
    SQL.Add(' ,ypzls.BWLB , ');
    SQL.Add(' case when  ((clzhzl_dev.zsdh is not null) and (clzhzl_dev.zsdh<>'''')) then clzhzl_dev.zsdh else clzhzl.zsdh end as CSBH ');
    SQL.Add(' ,ypzls.loss ,ypzls.CLSL*clzhzl.syl as CLSL ,ypzls.CLDJ ,ypzls.Currency ,ypzls.Rate,clzl.CQDH ');
    SQL.Add(',ypzls.Remark ,'''' AS BWMCNM,'''' AS zwsm,'''' as ywsm ,clzl.zwpm AS CLMC,clzl.Ywpm AS CLYWMC ,clzl.dwbh ,');
    SQL.Add('  case when  ((clzhzl_dev.zsdh is not null) and (clzhzl_dev.zsdh<>'''')) then zszl_dev.zsjc else  zszl.zsjc  end as zsjc ');
    SQL.Add(',clzl.clzmlb  ,ypzls.JGZWSM ,ypzls.JGYWSM ,');
    SQL.Add(' case when  ((clzhzl_dev.zsdh is not null) and (clzhzl_dev.zsdh<>'''')) then zszl_dev.zsywjc else  zszl.zsywjc  end as zsywjc ');
    SQL.Add('FROM ypzls ypzls ');
    SQL.Add('Left join clzhzl ON  ypzls.CLBH = CLZHZL.cldh ');
    SQL.Add('left join clzhzl_dev ON clzhzl.cldh=clzhzl_dev.cldh and clzhzl.cldh1=clzhzl_dev.cldh1 ');
    SQL.Add('LEFT JOIN bwzl bwzl ON ypzls.BWBH = bwzl.bwdh ');
    SQL.Add('LEFT JOIN clzl clzl ON CLZHZL.cldh1 = clzl.cldh ');
    SQL.Add('LEFT JOIN zszl zszl ON clzhzl.zsdh = zszl.zsdh ');
    SQL.Add('LEFT JOIN zszl zszl_dev on clzhzl_dev.zsdh = zszl_dev.zsdh ');
    SQL.Add('WHERE CLZHZL.SYL>0 and clzl.clzmlb=''N''  ');
    SQL.Add('UNION ALL');
    SQL.Add('Select clzl.cltd,clzhzl2.YPDH,clzhzl2.XH,clzhzl2.XH1,clzhzl2.Relation+''1'' as Relation ,clzhzl.CLDH1 as CLBH,clzhzl2.BWLB,');
    SQL.Add(' case when  ((clzhzl_dev.zsdh is not null) and (clzhzl_dev.zsdh<>'''')) then clzhzl_dev.zsdh else clzhzl.zsdh end as CSBH ');
    SQL.Add(' ,clzhzl2.loss ,clzhzl2.CLSL*clzhzl.syl as CLSL ,clzhzl2.CLDJ ,clzhzl2.Currency ,clzhzl2.Rate,clzl.CQDH');
    SQL.Add(',clzhzl2.Remark ,'''' AS BWMCNM,'''' AS zwsm,'''' as ywsm ,clzl.zwpm AS CLMC,clzl.Ywpm AS CLYWMC ,clzl.dwbh ,');
    SQL.Add(' case when  ((clzhzl_dev.zsdh is not null) and (clzhzl_dev.zsdh<>'''')) then zszl_dev.zsjc else  zszl.zsjc  end as zsjc ');
    SQL.Add(',clzl.clzmlb  ,clzhzl2.JGZWSM ,clzhzl2.JGYWSM ,');
    SQL.Add(' case when  ((clzhzl_dev.zsdh is not null) and (clzhzl_dev.zsdh<>'''')) then zszl_dev.zsywjc else  zszl.zsywjc  end as zsywjc   ');
    SQL.Add(' from (');
    SQL.Add('SELECT clzl.cltd,ypzls.YPDH ,ypzls.xh ,ypzls.xh1 ,YPZLS.BWBH+''-Child'' as Relation,clzhzl.CLDH1 as CLBH ');
    SQL.Add(' ,ypzls.BWLB , ');
    SQL.Add('case when  ((clzhzl_dev.zsdh is not null) and (clzhzl_dev.zsdh<>'''')) then clzhzl_dev.zsdh else clzhzl.zsdh end as CSBH ');
    SQL.Add(' ,ypzls.loss ,ypzls.CLSL*clzhzl.syl as CLSL ,ypzls.CLDJ ,ypzls.Currency ,ypzls.Rate,clzl.CQDH ');
    SQL.Add(',ypzls.Remark ,'''' AS BWMCNM,'''' AS zwsm,'''' as ywsm ,clzl.zwpm AS CLMC,clzl.Ywpm AS CLYWMC ,clzl.dwbh ,');
    SQL.Add('case when  ((clzhzl_dev.zsdh is not null) and (clzhzl_dev.zsdh<>'''')) then zszl_dev.zsjc else  zszl.zsjc  end as zsjc ');
    SQL.Add(',clzl.clzmlb  ,ypzls.JGZWSM ,ypzls.JGYWSM ,');
    SQL.Add(' case when  ((clzhzl_dev.zsdh is not null) and (clzhzl_dev.zsdh<>'''')) then zszl_dev.zsywjc else  zszl.zsywjc  end as zsywjc ');
    SQL.Add('FROM ypzls ypzls ');
    SQL.Add('inner join clzhzl ON  ypzls.CLBH = CLZHZL.cldh ');
    SQL.Add('left join clzhzl_dev ON clzhzl.cldh=clzhzl_dev.cldh and clzhzl.cldh1=clzhzl_dev.cldh1 ');
    SQL.Add('LEFT JOIN bwzl bwzl ON ypzls.BWBH = bwzl.bwdh ');
    SQL.Add('left JOIN clzl clzl ON CLZHZL.cldh1 = clzl.cldh ');
    SQL.Add('LEFT JOIN zszl zszl ON clzhzl.zsdh = zszl.zsdh ');
    SQL.Add('LEFT JOIN zszl zszl_dev on clzhzl_dev.zsdh = zszl_dev.zsdh ');
    SQL.Add('WHERE CLZHZL.SYL>0   and clzl.clzmlb=''Y''   ');
    SQL.Add(') clzhzl2');
    SQL.Add('inner join clzhzl ON  clzhzl2.CLBH = CLZHZL.cldh ');
    SQL.Add('left join clzhzl_dev ON clzhzl.cldh=clzhzl_dev.cldh and clzhzl.cldh1=clzhzl_dev.cldh1  ');
    SQL.Add('left JOIN clzl clzl ON CLZHZL.cldh1 = clzl.cldh ');
    SQL.Add('LEFT JOIN zszl zszl ON clzhzl.zsdh = zszl.zsdh ');
    SQL.Add('LEFT JOIN zszl zszl_dev on clzhzl_dev.zsdh = zszl_dev.zsdh ');
    SQL.Add(')  a ');
    SQL.Add('left join ypzl on a.ypdh=ypzl.ypdh');
    SQL.Add('left join kfxxzl on kfxxzl.xiexing=ypzl.xiexing and kfxxzl.shehao=ypzl.shehao');
    SQL.Add(')  YPZLS ');
    SQL.Add(' left join (');
    SQL.Add('  select Surcharge,Dyingfee,season,CLBH,SampleLeadTime,Prodleadtime,Location,sampleprice,forecast_leadtime,SampleMOQ,ProdMOQ,ExtraPrice,REMARK,USERDATE  from (');
    SQL.Add('   select Surcharge,Dyingfee,season,CLBH,SampleLeadTime,Prodleadtime,Location,sampleprice,forecast_leadtime,SampleMOQ,ProdMOQ,ExtraPrice,REMARK,USERDATE,zsbh,ROW_NUMBER() over (PARTITION BY CLBH ORDER BY ');
    SQL.Add('Substring(Season,1,2) DESC,Substring(Season,3,1) ASC) as  rn from MaterialMOQ');
    SQL.Add('  ) MOQ  ');
    SQL.Add(') MaterialMOQ on MaterialMOQ.CLBH=YPZLS.CLBH and MaterialMOQ.season=YPZLS.jijie');
    SQL.Add('left join (select * from zszl_dev where gsbh=''' + SFactory + ''') zszl_dev on zszl_dev.zsdh=YPZLS.csbh');
    SQL.Add('LEFT JOIN CLZL_LS ON CLZL_LS.cldh=ypzls.CLBH');
    SQL.Add('LEFT JOIN CLZL_FLEX ON CLZL_FLEX.cldh=YPZLS.CLBH');
    SQL.Add('where CLZL_FLEX.cldhflex NOT IN (SELECT cldhflex FROM CLZL_FLEX_NOTUSE_Dev6C)');
    SQL.Add('and isnull(cldhflex,'''')<>'''' ');
    SQL.Add('AND zsywjc NOT LIKE ''JNG%'' ');
    if  length(combobox1.Text) > 0 then
          sql.add('   and JiJie = '''+combobox1.Text+'''');
    if  length(combobox2.Text) > 0 then
          sql.add('   and DevType = '''+combobox2.Text+'''');
    if  length(combobox3.Text) > 0 then
          sql.add('   and KFJD = '''+combobox3.Text+'''');
    if Length(Edit1.Text) > 0 then
          SQL.Add('   and DEVCODE LIKE ''%' + Edit1.Text + '%''');
    if Length(Edit2.Text) > 0 then
          SQL.Add('   and ARTICLE LIKE ''%' + Edit2.Text + '%''');
    if Length(Edit3.Text) > 0 then
          SQL.Add('   and YPDH LIKE ''%' + Edit3.Text + '%''');
    SQL.Add('group by  zszl_dev.country,ypzls.KFJD,YPZLS.ARTICLE,YPZLS.DEVCODE,YPZLS.YPDH,YPZLS.FD,CLZL_FLEX.cldhflex) ');
    //Select
    SQL.Add('SELECT ARTICLE, Devcode, YPDH, FD, ');
    SQL.Add('CAST(SUM(CASE WHEN country = ''VN'' AND KFJD = ''CR1'' THEN 1 ELSE 0 END) * 1.0 / COUNT(*) * 100 AS DECIMAL(5,2)) AS CR1,');
    SQL.Add('CAST(SUM(CASE WHEN country = ''VN'' AND KFJD = ''CR2'' THEN 1 ELSE 0 END) * 1.0 / COUNT(*) * 100 AS DECIMAL(5,2)) AS CR2,');
    SQL.Add('CAST(SUM(CASE WHEN country = ''VN'' AND KFJD = ''SMS'' THEN 1 ELSE 0 END) * 1.0 / COUNT(*) * 100 AS DECIMAL(5,2)) AS SMS,');
    SQL.Add('CAST(SUM(CASE WHEN country = ''VN'' AND KFJD = ''CFM'' THEN 1 ELSE 0 END) * 1.0 / COUNT(*) * 100 AS DECIMAL(5,2)) AS CFM');
    SQL.Add('FROM querytemp ');
    SQL.Add('GROUP BY DEVCODE, ARTICLE, YPDH, FD');
    //showmessage(Sql.Text);
    //funcobj.WriteErrorLog(sql.Text);
    active:=true;
  end;

end;

procedure TLocalizationReport.QryIMAGEAfterOpen(DataSet: TDataSet);
  var s:integer;
begin
  {s:=0;
  qryimage.First;
  while not qryimage.Eof do
  begin
    if qryimage.FieldByName('pt').Value>=80 then
      inc(s);
    qryimage.Next;
  end;
  if CurrToStr(DBGridEh2.Columns[1].Footers[0].SumValue) <> '0' then
    qtyVN.Caption:=IntToStr(s)+'/'+CurrToStr(DBGridEh2.Columns[1].Footers[0].SumValue)
  else qtyVN.Caption:='N/A';
  if CurrToStr(DBGridEh2.Columns[1].Footers[0].SumValue) <> '0' then
    ptVN.Caption:=FormatFloat('##.00', s*100/StrToInt(CurrToStr(DBGridEh2.Columns[1].Footers[0].SumValue)))+' %'
  else ptVN.Caption:='N/A';
  qryimage.First; }
end;

procedure TLocalizationReport.DBGridEh2DrawColumnCell(Sender: TObject;
  const Rect: TRect; DataCol: Integer; Column: TColumnEh;
  State: TGridDrawState);
var
  v: Double;
  colorToUse: TColor;
begin
  {if qryimage.FieldByName('pt').Value>=80 then
  begin
    DBGridEh2.canvas.Brush.Color:=clBtnFace;
    DBGridEh2.DefaultDrawColumnCell(Rect,DataCol,Column,State);
  end;

  if qryimage.FieldByName('pt').Value<80 then
  begin
     DBGridEh2.canvas.Brush.Color:=cllime;
     DBGridEh2.DefaultDrawColumnCell(Rect,DataCol,Column,State);
  end;}

  if (QryN.FieldByName('CR1').Value >= 80) or
     (QryN.FieldByName('CR2').Value >= 80) or
     (QryN.FieldByName('CFM').Value >= 80) or
     (QryN.FieldByName('SMS').Value >= 80) then
  begin
    DBGridEh2.Canvas.Brush.Color := clBtnFace;
  end
  else
  begin
    DBGridEh2.Canvas.Brush.Color := clLime;
  end;

  DBGridEh2.DefaultDrawColumnCell(Rect, DataCol, Column, State);
end;

procedure TLocalizationReport.Button2Click(Sender: TObject);
var   a:string;
      eclApp,WorkBook:olevariant;
      i,j:integer;
begin
  if  QryN.active  then
  begin
    try
      eclApp:=CreateOleObject('Excel.Application');
      WorkBook:=CreateOleObject('Excel.Sheet');
    except
      Application.MessageBox('No Microsoft   Excel','Microsoft   Excel',MB_OK+MB_ICONWarning);
      Exit;
    end;
    try
      WorkBook:=eclApp.workbooks.Add;
      eclApp.Cells(1,1):='NO';
      eclApp.Cells(1,2):='Article';
      eclApp.Cells(1,3):='SR';
      eclApp.Cells(1,4):='Sample No';
      eclApp.Cells(1,5):='FD';
      eclApp.Cells(1,6):='R1';
      eclApp.Cells(1,7):='R2';
      eclApp.Cells(1,8):='SMS';
      eclApp.Cells(1,9):='CFM';
      QryN.First;
      j:=2;
      while   not   QryN.Eof   do
      begin
        eclApp.Cells(j,1):=IntToStr(j-1);
        for i := 1 to QryN.FieldCount do
        begin
          eclApp.Cells(j,i+1):=QryN.Fields[i-1].Value;
        end;
        QryN.Next;
        inc(j);
      end;
      //eclApp.Cells(j,1):='Localization (VN>=80%): '+qtyVN.Caption;
      //eclApp.Cells(j+1,1):='Localization (VN>=80%) %: '+ptVN.Caption;
      eclApp.Cells(j,1):='CR1: '+lblCR1.Caption;
      eclApp.Cells(j+1,1):='CR2: '+lblCR2.Caption;
      eclApp.Cells(j+2,1):='SMS: '+lblSMS.Caption;
      eclApp.Cells(j+3,1):='CFM: '+lblCFM.Caption;
      eclapp.columns.autofit;
      showmessage('Succeed');
      eclApp.Visible:=True;
    except
    on   F:Exception   do
      showmessage(F.Message);
    end;
  end;
end;

procedure TLocalizationReport.QryNAfterOpen(DataSet: TDataSet);
var
  CR1Sum, CR2Sum, SMSSum, CFMSum: Double;
  CR1Count, CR2Count, SMSCount, CFMCount: Integer;
  CR1, CR2, SMS, CFM: Double;
  AvgCR1, AvgCR2, AvgSMS, AvgCFM: Double;
begin
  CR1Sum := 0; CR1Count := 0;
  CR2Sum := 0; CR2Count := 0;
  SMSSum := 0; SMSCount := 0;
  CFMSum := 0; CFMCount := 0;

  QryN.First;
  while not QryN.Eof do
  begin
    CR1 := QryN.FieldByName('CR1').AsFloat;
    CR2 := QryN.FieldByName('CR2').AsFloat;
    SMS := QryN.FieldByName('SMS').AsFloat;
    CFM := QryN.FieldByName('CFM').AsFloat;

    if CR1 <> 0 then
    begin
      CR1Sum := CR1Sum + CR1;
      Inc(CR1Count);
    end;

    if CR2 <> 0 then
    begin
      CR2Sum := CR2Sum + CR2;
      Inc(CR2Count);
    end;

    if SMS <> 0 then
    begin
      SMSSum := SMSSum + SMS;
      Inc(SMSCount);
    end;

    if CFM <> 0 then
    begin
      CFMSum := CFMSum + CFM;
      Inc(CFMCount);
    end;

    QryN.Next;
  end;

  if CR1Count > 0 then AvgCR1 := CR1Sum / CR1Count else AvgCR1 := 0;
  if CR2Count > 0 then AvgCR2 := CR2Sum / CR2Count else AvgCR2 := 0;
  if SMSCount > 0 then AvgSMS := SMSSum / SMSCount else AvgSMS := 0;
  if CFMCount > 0 then AvgCFM := CFMSum / CFMCount else AvgCFM := 0;

  lblCR1.Caption := 'CR1: ' + FloatToStrF(AvgCR1, ffFixed, 10, 1);
  lblCR2.Caption := 'CR2: ' + FloatToStrF(AvgCR2, ffFixed, 10, 1);
  lblSMS.Caption := 'SMS: ' + FloatToStrF(AvgSMS, ffFixed, 10, 1);
  lblCFM.Caption := 'CFM: ' + FloatToStrF(AvgCFM, ffFixed, 10, 1);
end;

end.
