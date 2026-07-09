unit FDStatusLeadTime1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DB, DBTables, GridsEh, DBGridEh, DBGridEhImpExp, ShellAPI, StdCtrls, ExtCtrls,comobj,
  ComCtrls, Menus, Buttons, OleServer, ExcelXP, IniFiles;

type
  TFDStatusLeadTime = class(TForm)
    Qry_All: TQuery;
    ds1: TDataSource;
    qry2: TQuery;
    ds2: TDataSource;
    Qry_Alljijie: TStringField;
    Qry_Allarticle: TStringField;
    Qry_Allxieming: TStringField;
    Qry_AllFD: TStringField;
    Qry_Allxiexing: TStringField;
    Qry_Allshehao: TStringField;
    pgc1: TPageControl;
    ts1: TTabSheet;
    spl1: TSplitter;
    pnl2: TPanel;
    dbgrdh1: TDBGridEh;
    pnl3: TPanel;
    dbgrdh2: TDBGridEh;
    Qry_Tmp: TQuery;
    qry2clbh: TStringField;
    qry2csbh: TStringField;
    qry2zsywjc: TStringField;
    qry2SampleLeadTime: TIntegerField;
    qry2ProdLeadTime: TIntegerField;
    qry2Location: TStringField;
    qry2sampleprice: TCurrencyField;
    qry2forecast_leadtime: TIntegerField;
    Qry_Allypdh: TStringField;
    Qry_Alldevcode: TStringField;
    Qry_AllGSDH: TStringField;
    TS2: TTabSheet;
    Memo2: TMemo;
    qry2samplemoq: TCurrencyField;
    qry2prodmoq: TCurrencyField;
    Panel1: TPanel;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    lbl1: TLabel;
    Label5: TLabel;
    Label7: TLabel;
    Edit1: TEdit;
    Edit2: TEdit;
    Edit5: TEdit;
    Button1: TButton;
    edt1: TEdit;
    BBTT1: TBitBtn;
    cbb2: TComboBox;
    cbb1: TComboBox;
    BBTT2: TBitBtn;
    CheckBox1: TCheckBox;
    Button2: TButton;
    TabSheet1: TTabSheet;
    Panel2: TPanel;
    Panel3: TPanel;
    Panel4: TPanel;
    Button3: TButton;
    DBGridEh1: TDBGridEh;
    qry3: TQuery;
    qry4: TQuery;
    ds3: TDataSource;
    ds4: TDataSource;
    Button4: TButton;
    qry2extraprice: TCurrencyField;
    Qry_history: TQuery;
    DS_history: TDataSource;
    qry2season: TStringField;
    qry2REMARK: TStringField;
    qry3XieXing: TStringField;
    qry3SheHao: TStringField;
    qry3jijie: TStringField;
    qry3devcode: TStringField;
    qry3article: TStringField;
    qry3prodleadtime: TIntegerField;
    qry2CLYWMC: TStringField;
    qry2clzmlb: TStringField;
    DBGridEh2: TDBGridEh;
    Label6: TLabel;
    SeaEdit: TEdit;
    qry4XieXing: TStringField;
    qry4SheHao: TStringField;
    qry4clbh: TStringField;
    qry4CSBH: TStringField;
    qry4CLYWMC: TStringField;
    qry4ZWPM: TStringField;
    qry4CQDH: TStringField;
    qry4Prodleadtime: TIntegerField;
    qry4Location: TStringField;
    qry4sampleprice: TCurrencyField;
    qry4forecast_leadtime: TIntegerField;
    qry4SampleMOQ: TCurrencyField;
    qry4ProdMOQ: TCurrencyField;
    qry4ExtraPrice: TCurrencyField;
    qry4zsywjc: TStringField;
    Label4: TLabel;
    ArticleEdit: TEdit;
    Label8: TLabel;
    BuyNoEdit: TEdit;
    qry4SampleleadTime: TIntegerField;
    qry4REMARK: TStringField;
    CheckBox2: TCheckBox;
    XXZLPoopMenu: TPopupMenu;
    Excel1: TMenuItem;
    SaveDialog1: TSaveDialog;
    qry3clbh: TStringField;
    qry3csbh: TStringField;
    qry3zsywjc: TStringField;
    qry3ywpm: TStringField;
    qry3cqdh: TStringField;
    qry2country: TStringField;
    Label14: TLabel;
    LAI: TComboBox;
    qry2Surcharge: TCurrencyField;
    qry2Dyingfee: TCurrencyField;
    qry4Surcharge: TCurrencyField;
    qry4Dyingfee: TCurrencyField;
    TabSheet2: TTabSheet;
    Panel5: TPanel;
    Panel6: TPanel;
    DBGridEh3: TDBGridEh;
    qrydev: TQuery;
    DataSource1: TDataSource;
    Label9: TLabel;
    Edit3: TEdit;
    Button5: TButton;
    Edit6: TEdit;
    qrydevXieXing: TStringField;
    qrydevSheHao: TStringField;
    qrydevdevcode: TStringField;
    qrydevjijie: TStringField;
    qrydevrn: TFloatField;
    qrydevsampleleadtime: TIntegerField;
    qrydevclbh: TStringField;
    qrydevcsbh: TStringField;
    qrydevzsywjc: TStringField;
    qrydevywpm: TStringField;
    qrydevcqdh: TStringField;
    Button6: TButton;
    Label10: TLabel;
    temp: TQuery;
    qry2JHDH: TStringField;
    Edit7: TEdit;
    Label11: TLabel;
    qry4TempCLBH: TStringField;
    Label12: TLabel;
    Edit4: TEdit;
    Label13: TLabel;
    Edit8: TEdit;
    PopupMenu1: TPopupMenu;
    Excel2: TMenuItem;
    qry4AddTLeadtime: TIntegerField;
    Label15: TLabel;
    FC_BUYEdit: TEdit;
    Splitter1: TSplitter;
    btnExcelAll: TButton;
    Qry_AllYSSM: TStringField;
    qry2USERDATE: TDateTimeField;
    TabSheet3: TTabSheet;
    Panel7: TPanel;
    Label16: TLabel;
    Label17: TLabel;
    Label23: TLabel;
    Edit9: TEdit;
    Edit10: TEdit;
    Button7: TButton;
    Button8: TButton;
    Edit13: TEdit;
    Edit11: TEdit;
    Label18: TLabel;
    DBGridEh4: TDBGridEh;
    Qry_Buylist: TQuery;
    DataSource2: TDataSource;
    DBGridEh5: TDBGridEh;
    DataSource3: TDataSource;
    Qry_BuylistSR: TStringField;
    Qry_BuylistSKU: TStringField;
    Qry_BuylistSegment: TStringField;
    Qry_BuylistProductionType: TStringField;
    Qry_BuylistColorwayLongName: TStringField;
    Qry_BuylistTechLevel: TStringField;
    Qry_BuylistGenderClass: TStringField;
    Qry_BuylistFactoryDeveloper: TStringField;
    Qry_BuylistFactoryCosting: TStringField;
    Qry_BuylistFactory: TStringField;
    Qry_Buylistseason: TStringField;
    Qry_BuylistQty: TIntegerField;
    Qry_BuylistXieXing: TStringField;
    Qry_BuylistSheHao: TStringField;
    DevBOMQry: TQuery;
    DevBOMQryCSBH: TStringField;
    DevBOMQryMaterialComments: TStringField;
    DevBOMQryFlexMaterialCode: TStringField;
    DevBOMQryMaterial_Text: TMemoField;
    DevBOMQrySupplier_FLEX: TStringField;
    DevBOMQrySupplier_ERP: TStringField;
    DevBOMQryMeasure: TStringField;
    DevBOMQryMeasureOVR: TStringField;
    DevBOMQryColor: TStringField;
    DevBOMQryProdMOQ: TCurrencyField;
    DevBOMQryRemark: TStringField;
    DevBOMQryUSERID: TStringField;
    DevBOMQryUSERDATE: TDateTimeField;
    DevBOMQryExtraPrice: TCurrencyField;
    DevBOMQrySurcharge: TCurrencyField;
    DevBOMQryDyingfee: TCurrencyField;
    Label19: TLabel;
    Edit12: TEdit;
    Label20: TLabel;
    Edit14: TEdit;
    DevBOMQryMaterial: TStringField;
    Qry_Buylistround: TStringField;
    DevBOMQryLandedCost: TStringField;
    Label21: TLabel;
    Label22: TLabel;
    Edit15: TEdit;
    Button10: TButton;
    UpdateSQL: TUpdateSQL;
    DevBOMQryCLBH: TStringField;
    DevBOMQryMaterialSeason: TStringField;
    Label24: TLabel;
    Label25: TLabel;
    Label26: TLabel;
    Label27: TLabel;
    Edit16: TEdit;
    Button11: TButton;
    DevBOMQrySupplierCode: TStringField;
    CheckBox3: TCheckBox;
    Qry_BuylistMissing: TStringField;
    DevBOMQryGrossUsage: TFloatField;
    procedure Button1Click(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormCreate(Sender: TObject);

    procedure BBTT1Click(Sender: TObject);


    procedure BBTT2Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure Button3Click(Sender: TObject);
    procedure Button4Click(Sender: TObject);
    procedure DBGridEh1DrawColumnCell(Sender: TObject; const Rect: TRect;
      DataCol: Integer; Column: TColumnEh; State: TGridDrawState);
    procedure Excel1Click(Sender: TObject);
    procedure DBGridEh1CellClick(Column: TColumnEh);
    procedure DBGridEh2CellClick(Column: TColumnEh);
    procedure dbgrdh2CellClick(Column: TColumnEh);
    procedure dbgrdh1CellClick(Column: TColumnEh);
    procedure Button5Click(Sender: TObject);
    procedure Button6Click(Sender: TObject);
    procedure Excel2Click(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure btnExcelAllClick(Sender: TObject);
    procedure Button7Click(Sender: TObject);
    procedure DevBOMQryCalcFields(DataSet: TDataSet);
    procedure DBGridEh5DblClick(Sender: TObject);
    procedure Button10Click(Sender: TObject);
    procedure dbgrdh2DblClick(Sender: TObject);
    procedure Button11Click(Sender: TObject);
    procedure DBGridEh2DblClick(Sender: TObject);
    procedure Button8Click(Sender: TObject);
    procedure DBGridEh4GetCellParams(Sender: TObject; Column: TColumnEh;
      AFont: TFont; var Background: TColor; State: TGridDrawState);
  private
    SelectDBGrid: TDBGridEh;
    { Private declarations }
    procedure ExportExcel;
  public
    { Public declarations }
    BOM_N31_KFCQ:String;
    procedure ReadIni();
  end;

var
  FDStatusLeadTime: TFDStatusLeadTime;
  dbg2: boolean;
  NDate: TDate;
  SFactory, KHBH: String;

implementation

uses FDStatus_AL1, FDStatus_Stock1, FDStatus_PO1, FDStatus_ETD1, FDstatus_Stage1,
   FDstatusLeadTime_Stage1, FDStatusLeadTime_FD1, main1 ,FunUnit ;

{$R *.dfm}

procedure TFDStatusLeadTime.ReadIni();
var MyIni :Tinifile;
    AppDir:string;
begin
  AppDir:=ExtractFilePath(Application.ExeName);
  if FileExists(AppDir+'\ComName.ini')=true then
  begin
    try
      MyIni := Tinifile.Create(AppDir+'\ComName.ini');
      BOM_N31_KFCQ:=MyIni.ReadString('ERP','BOM_N31_KFCQ','');
    finally
      MyIni.Free;
    end;
  end;
end;

procedure TFDStatusLeadTime.Button1Click(Sender: TObject);
begin
   if ((length(edit2.Text) = 0) or (length(edit5.Text) = 0)) and (length(edit7.Text) = 0) then  //season和stage為必填欄位
   BEGIN
    showmessage('Pls Keyin [Season]&[Stage] !');
    ABORT;
   END;
   
   with Qry_All do
   begin
      active:=false;
      sql.Clear;
      if main.Edit2.Text = 'SKX' then
        sql.add('select kfxxzl.devcode +'+''' / '''+'+ kfxxzl.YSSM as devcode,ypzl.GSDH,ypzl.ypdh,kfxxzl.jijie,kfxxzl.article,kfxxzl.xieming,kfxxzl.FD,kfxxzl.xiexing,kfxxzl.shehao,kfxxzl.YSSM from kfxxzl')
      else
        sql.add('select kfxxzl.devcode,ypzl.GSDH,ypzl.ypdh,kfxxzl.jijie,kfxxzl.article,kfxxzl.xieming,kfxxzl.FD,kfxxzl.xiexing,kfxxzl.shehao,kfxxzl.YSSM from kfxxzl');
      sql.add(' left join xxzlkf on kfxxzl.xiexing=xxzlkf.xiexing and kfxxzl.shehao=xxzlkf.shehao');
      sql.add(' left join ypzl on kfxxzl.xiexing=ypzl.xiexing and kfxxzl.shehao=ypzl.shehao ');
      sql.add(' where 1=1 ');
      sql.add('       and isnull(XXZLKF.LookSee,0)=0 ');
      sql.add('       and isnull(xxzlkf.Dropped,0)=0  ');
      sql.Add('   and (GSDH = ''' + SFactory + ''' or GSDH=''LAI'') ');
      if  length(cbb2.Text) > 0 then
          sql.add('   and isnull(kfxxzl.DevType,'''') = '''+cbb2.Text+'''');
      if  length(edit1.Text) > 0 then
          sql.add('   and kfxxzl.FD = '''+edit1.Text+'''');
      if  length(edt1.Text) > 0 then
          sql.add('   and kfxxzl.devcode like '''+edt1.Text+'%'+'''');
      if  length(edit2.Text) > 0 then
          sql.add('   and kfxxzl.Jijie = '''+edit2.Text+'''');
      if  length(edit5.Text) > 0 then
          sql.add('   and ypzl.kfjd = '''+edit5.Text+'''');
      if  length(edit7.Text) > 0 then
          sql.add('   and kfxxzl.article = '''+edit7.Text+'''');
      if LAI.Text <> '' then
          sql.add('and  ypzl.ypdh like '''+LAI.text+'%'+'''');
      sql.add('Order by kfxxzl.FD,kfxxzl.article');
//      showmessage(sql.text);
      active:=true;
    end;

    with qry2 do
    begin
      active:=false;
      sql.Clear;
      SQL.Add('select CLZL_LS.JHDH,zszl_dev.country,MaterialMOQ.REMARK,MaterialMOQ.season,ypzls.clzmlb,ypzls.CLBH,ypzls.CLYWMC,ypzls.CSBH,ypzls.zsywjc ,MaterialMOQ.SampleLeadTime,');
      SQL.Add('MaterialMOQ.ProdLeadTime,MaterialMOQ.Location,MaterialMOQ.sampleprice,MaterialMOQ.forecast_leadtime,');
      SQL.Add('MaterialMOQ.samplemoq,MaterialMOQ.prodmoq,MaterialMOQ.extraprice, Surcharge,Dyingfee,MaterialMOQ.UserDate  from ( ');
      SQL.Add('select kfxxzl.jijie,a.* from (');
      SQL.Add('SELECT clzl.cltd,ypzls.YPDH ,ypzls.xh ,ypzls.xh1 ,ypzls.BWBH ,ypzls.CLBH ,ypzls.BWLB ,ypzls.CSBH ,ypzls.loss ,ypzls.CLSL ,ypzls.CLDJ ,ypzls.Currency ,ypzls.Rate,clzl.CQDH ');
      SQL.Add(',ypzls.Remark ,bwzl.ywsm+''-''+bwzl.zwsm AS BWMCNM,bwzl.zwsm ,bwzl.ywsm  ,clzl.zwpm AS CLMC,clzl.Ywpm AS CLYWMC ,clzl.dwbh ,zszl.zsjc ,clzl.clzmlb ,ypzls.JGZWSM ,ypzls.JGYWSM ,zszl.zsywjc ');
      SQL.Add('FROM ypzls ypzls ');
      SQL.Add('LEFT JOIN bwzl bwzl ON ypzls.BWBH = bwzl.bwdh ');
      SQL.Add('LEFT JOIN clzl clzl ON ypzls.CLBH = clzl.cldh ');
      SQL.Add('LEFT JOIN zszl zszl ON ypzls.CSBH = zszl.zsdh WHERE YPDH  =:ypdh and clzl.clzmlb=''N'' ');
      SQL.Add('union all ');
      SQL.Add('SELECT clzl.cltd,ypzls.YPDH ,ypzls.xh ,ypzls.xh1 ,YPZLS.BWBH+''-Child'' as Relation,clzhzl.CLDH1 as CLBH ');
      SQL.Add(' ,ypzls.BWLB , ');
      SQL.Add(' case when  ((clzhzl_dev.zsdh is not null) and (clzhzl_dev.zsdh<>'''')) then clzhzl_dev.zsdh else clzhzl.zsdh end as CSBH ');
      SQL.Add(' ,ypzls.loss ,ypzls.CLSL*clzhzl.syl as CLSL ,ypzls.CLDJ ,ypzls.Currency ,ypzls.Rate,clzl.CQDH ');
      SQL.Add(',ypzls.Remark ,'''' AS BWMCNM,'''' AS zwsm,'''' as ywsm ,clzl.zwpm AS CLMC,clzl.Ywpm AS CLYWMC ,clzl.dwbh ,');
      SQL.Add(' case when  ((clzhzl_dev.zsdh is not null) and (clzhzl_dev.zsdh<>'''')) then zszl_dev.zsjc else  zszl.zsjc  end as zsjc ');
      SQL.Add(',clzl.clzmlb  ,ypzls.JGZWSM ,ypzls.JGYWSM ,');
      SQL.Add(' case when  ((clzhzl_dev.zsdh is not null) and (clzhzl_dev.zsdh<>'''')) then zszl_dev.zsywjc else  zszl.zsywjc  end as zsywjc ');
      SQL.Add('FROM ypzls ypzls ');
      SQL.Add('Left join clzhzl ON  ypzls.CLBH = CLZHZL.cldh ');
      SQL.Add('left join clzhzl_dev ON clzhzl.cldh=clzhzl_dev.cldh and clzhzl.cldh1=clzhzl_dev.cldh1 ');
      SQL.Add('LEFT JOIN bwzl bwzl ON ypzls.BWBH = bwzl.bwdh ');
      SQL.Add('LEFT JOIN clzl clzl ON CLZHZL.cldh1 = clzl.cldh ');
      SQL.Add('LEFT JOIN zszl zszl ON clzhzl.zsdh = zszl.zsdh ');
      SQL.Add('LEFT JOIN zszl zszl_dev on clzhzl_dev.zsdh = zszl_dev.zsdh ');
      SQL.Add('WHERE YPDH  =:ypdh  and CLZHZL.SYL>0 and clzl.clzmlb=''N'' ');
      //二階材料
      SQL.Add('union all ');
      SQL.Add('Select clzl.cltd,clzhzl2.YPDH,clzhzl2.XH,clzhzl2.XH1,clzhzl2.Relation+''1'' as Relation ,clzhzl.CLDH1 as CLBH,clzhzl2.BWLB,');
      SQL.Add(' case when  ((clzhzl_dev.zsdh is not null) and (clzhzl_dev.zsdh<>'''')) then clzhzl_dev.zsdh else clzhzl.zsdh end as CSBH ');
      SQL.Add(' ,clzhzl2.loss ,clzhzl2.CLSL*clzhzl.syl as CLSL ,clzhzl2.CLDJ ,clzhzl2.Currency ,clzhzl2.Rate,clzl.CQDH ');
      SQL.Add(',clzhzl2.Remark ,'''' AS BWMCNM,'''' AS zwsm,'''' as ywsm ,clzl.zwpm AS CLMC,clzl.Ywpm AS CLYWMC ,clzl.dwbh ,');
      SQL.Add(' case when  ((clzhzl_dev.zsdh is not null) and (clzhzl_dev.zsdh<>'''')) then zszl_dev.zsjc else  zszl.zsjc  end as zsjc ');
      SQL.Add(',clzl.clzmlb  ,clzhzl2.JGZWSM ,clzhzl2.JGYWSM ,');
      SQL.Add(' case when  ((clzhzl_dev.zsdh is not null) and (clzhzl_dev.zsdh<>'''')) then zszl_dev.zsywjc else  zszl.zsywjc  end as zsywjc   ');
      SQL.Add(' from (');
      SQL.Add('SELECT clzl.cltd,ypzls.YPDH ,ypzls.xh ,ypzls.xh1 ,YPZLS.BWBH+''-Child'' as Relation,clzhzl.CLDH1 as CLBH ');
      SQL.Add(' ,ypzls.BWLB , ');
      SQL.Add(' case when  ((clzhzl_dev.zsdh is not null) and (clzhzl_dev.zsdh<>'''')) then clzhzl_dev.zsdh else clzhzl.zsdh end as CSBH ');
      SQL.Add(' ,ypzls.loss ,ypzls.CLSL*clzhzl.syl as CLSL ,ypzls.CLDJ ,ypzls.Currency ,ypzls.Rate,clzl.CQDH ');
      SQL.Add(',ypzls.Remark ,'''' AS BWMCNM,'''' AS zwsm,'''' as ywsm ,clzl.zwpm AS CLMC,clzl.Ywpm AS CLYWMC ,clzl.dwbh ,');
      SQL.Add(' case when  ((clzhzl_dev.zsdh is not null) and (clzhzl_dev.zsdh<>'''')) then zszl_dev.zsjc else  zszl.zsjc  end as zsjc ');
      SQL.Add(',clzl.clzmlb  ,ypzls.JGZWSM ,ypzls.JGYWSM ,');
      SQL.Add(' case when  ((clzhzl_dev.zsdh is not null) and (clzhzl_dev.zsdh<>'''')) then zszl_dev.zsywjc else  zszl.zsywjc  end as zsywjc ');
      SQL.Add('FROM ypzls ypzls ');
      SQL.Add('inner join clzhzl ON  ypzls.CLBH = CLZHZL.cldh ');
      SQL.Add('left join clzhzl_dev ON clzhzl.cldh=clzhzl_dev.cldh and clzhzl.cldh1=clzhzl_dev.cldh1 ');
      SQL.Add('LEFT JOIN bwzl bwzl ON ypzls.BWBH = bwzl.bwdh ');
      SQL.Add('left JOIN clzl clzl ON CLZHZL.cldh1 = clzl.cldh ');
      SQL.Add('LEFT JOIN zszl zszl ON clzhzl.zsdh = zszl.zsdh ');
      SQL.Add('LEFT JOIN zszl zszl_dev on clzhzl_dev.zsdh = zszl_dev.zsdh ');
      SQL.Add('WHERE YPDH =:ypdh  and CLZHZL.SYL>0   and clzl.clzmlb=''Y''  ');
      SQL.Add(') clzhzl2');
      SQL.Add('inner join clzhzl ON  clzhzl2.CLBH = CLZHZL.cldh ');
      SQL.Add('left join clzhzl_dev ON clzhzl.cldh=clzhzl_dev.cldh and clzhzl.cldh1=clzhzl_dev.cldh1  ');
      SQL.Add('left JOIN clzl clzl ON CLZHZL.cldh1 = clzl.cldh ');
      SQL.Add('LEFT JOIN zszl zszl ON clzhzl.zsdh = zszl.zsdh ');
      SQL.Add('LEFT JOIN zszl zszl_dev on clzhzl_dev.zsdh = zszl_dev.zsdh ');
      //
      SQL.Add(')  a ');
      SQL.Add('left join ypzl on a.ypdh=ypzl.ypdh');
      SQL.Add('left join kfxxzl on kfxxzl.xiexing=ypzl.xiexing and kfxxzl.shehao=ypzl.shehao');
      SQL.Add(')  YPZLS ');
      SQL.Add('left join (');
      SQL.Add('  select Surcharge,Dyingfee,season,CLBH,SampleLeadTime,Prodleadtime,Location,sampleprice,forecast_leadtime,SampleMOQ,ProdMOQ,ExtraPrice,REMARK,USERDATE  from (');
      SQL.Add('   select Surcharge,Dyingfee,season,CLBH,SampleLeadTime,Prodleadtime,Location,sampleprice,forecast_leadtime,SampleMOQ,ProdMOQ,ExtraPrice,REMARK,USERDATE,zsbh,ROW_NUMBER() over (PARTITION BY CLBH ORDER BY ');
      SQL.Add('Substring(Season,1,2) DESC,Substring(Season,3,1) ASC) as  rn from MaterialMOQ');
      //where CLBH not like ''V%'' ');  2017/02/06 顯示暫時料號的MOQ
      SQL.Add('  ) MOQ  ');
      //SQL.Add(') MaterialMOQ on MaterialMOQ.CLBH=YPZLS.CLBH and MaterialMOQ.season=YPZLS.jijie');
      SQL.Add(') MaterialMOQ on MaterialMOQ.CLBH=YPZLS.CLBH');
      SQL.Add('left join (select * from zszl_dev where gsbh=''' + SFactory + ''') zszl_dev on zszl_dev.zsdh=YPZLS.csbh');
      SQL.Add('left join CLZL_LS on CLZL_LS.cldh=ypzls.CLBH');
      if checkbox1.checked then
      begin
        SQL.Add('where (((LEFT(ypzls.CLBH,3)=''V90'') and (cltd=''VT Mat'') ) ');
        SQL.Add('or ((LEFT(ypzls.CLBH,1) in (''L'',''A'',''C'',''F'',''K'',''D'') or LEFT(ypzls.CLBH,3) in (''D03'',''D11'',''O02'')) and  LEFT(ypzls.CLBH,3) not in (''A02'',''A08'',''A13'',''A48'') )  or (LEFT(ypzls.CLBH,1)=''P'' and ypzls.CSBH=''M027'') )');
      end;
      SQL.Add('group by CLZL_LS.JHDH,zszl_dev.country,MaterialMOQ.REMARK,MaterialMOQ.season,ypzls.clzmlb,ypzls.CLBH,ypzls.CLYWMC,ypzls.CSBH,ypzls.zsywjc ,MaterialMOQ.SampleLeadTime,');
      SQL.Add('MaterialMOQ.ProdLeadTime,MaterialMOQ.Location,MaterialMOQ.sampleprice,MaterialMOQ.forecast_leadtime,');
      SQL.Add('MaterialMOQ.samplemoq,MaterialMOQ.prodmoq,MaterialMOQ.extraprice,Surcharge,Dyingfee,MaterialMOQ.USERDATE  ');
      SQL.Add('order by  MaterialMOQ.ProdLeadTime desc, ypzls.CLBH asc');
     // memo1.text:=sql.text;
     //showmessage(SQL.text);
      active:=true;
    end;

    //qry_history.active:=true;
end;

procedure TFDStatusLeadTime.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  Action := caFree;
end;

procedure TFDStatusLeadTime.FormCreate(Sender: TObject);
begin
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
    KHBH := '';
    while not Eof do
    begin
      KHBH := KHBH + '''' + FieldByName('KHBH').AsString + ''',';
      Next;
    end;
    KHBH := Copy(KHBH, 1, Length(KHBH)-1);
    Active := false;
  end;

  PGC1.ActivePage:=TS1;
  if main.Edit2.Text = 'SKX' then
    dbgrdh1.Columns[1].Title.Caption := 'SR / COLOR';
  ReadIni();
end;

procedure TFDStatusLeadTime.BBTT1Click(Sender: TObject);
begin
    FDstatusLeadTime_Stage:=TFDstatusLeadTime_Stage.create(self);
    FDstatusLeadTime_Stage.show;
end;

procedure TFDStatusLeadTime.BBTT2Click(Sender: TObject);     //ok
begin
  if FDStatusLeadTime.Edit2.Text='' then
     begin
       Messagedlg('Pls Keyin Season first !',mtwarning,[mbyes],0);
       abort; 
     end;
     FDStatusLeadTime_FD:=TFDStatusLeadTime_FD.create(self);
     FDStatusLeadTime_FD.show;
end;


procedure TFDStatusLeadTime.Button2Click(Sender: TObject);
var   a:string;
      eclApp,WorkBook:olevariant;
      i,j:integer;
 begin
  if  qry2.active  then
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
    eclApp.Cells(1,1):='Mat NO';
    eclApp.Cells(1,2):='Description';
    eclApp.Cells(1,3):='Supplier';
    eclApp.Cells(1,4):='Lead Time Sample';
    eclApp.Cells(1,5):='Lead Time Prod';
    eclApp.Cells(1,6):='Lead Time Forecast';
    eclApp.Cells(1,7):='Country';
    eclApp.Cells(1,8):='MOQ Sample';
    eclApp.Cells(1,9):='MOQ Prod';
    eclApp.Cells(1,10):='MOQ ExtraPrice';
    eclApp.Cells(1,11):='MOQ Dying';
    eclApp.Cells(1,12):='MOQ Surcharge';
    eclApp.Cells(1,13):='Supplier NO';
    eclApp.Cells(1,14):='remark';
        j:=2;
        while   not   qry2.Eof   do
          begin
            for   i:=0   to  qry2.fieldcount-1  do
            begin
              eclApp.Cells(j,1):=qry2.FieldByName('clbh').AsString;
              eclApp.Cells(j,2):=qry2.FieldByName('clywmc').AsString;
              eclApp.Cells(j,3):=qry2.FieldByName('zsywjc').AsString;
              eclApp.Cells(j,4):=qry2.FieldByName('Sampleleadtime').AsString;
              eclApp.Cells(j,5):=qry2.FieldByName('prodleadtime').AsString;
              eclApp.Cells(j,6):=qry2.FieldByName('forecast_leadtime').AsString;
              eclApp.Cells(j,7):=qry2.FieldByName('Country').AsString;
              eclApp.Cells(j,8):=qry2.FieldByName('samplemoq').AsString;
              eclApp.Cells(j,9):=qry2.FieldByName('prodmoq').AsString;
              eclApp.Cells(j,10):=qry2.FieldByName('extraprice').AsString;
              eclApp.Cells(j,11):=qry2.FieldByName('Dyingfee').AsString;
              eclApp.Cells(j,12):=qry2.FieldByName('Surcharge').AsString;
              eclApp.Cells(j,13):=qry2.FieldByName('csbh').AsString;
              eclApp.Cells(j,14):=qry2.FieldByName('remark').AsString;
            end;
          qry2.Next;
          inc(j);
          end;
      eclapp.columns.autofit;
      showmessage('Succeed');
       eclApp.Visible:=True;
      except
        on   F:Exception   do
          showmessage(F.Message);
      end;
    end;
end;

procedure TFDStatusLeadTime.Button3Click(Sender: TObject);
var
  LT_SubSQL: string;
begin
  if ((Length(BuyNoEdit.Text) = 0) and (Length(ArticleEdit.Text) = 0) and (Length(FC_BUYEdit.Text) = 0) ) then
  begin
    ShowMessage('Pls Keyin [ARTICLE] or [BUYNO] !');
    Abort;
  end;

  if (SeaEdit.Text <> '') then LT_SubSQL := 'case when Season = ''' + SeaEdit.Text + ''' then 0 else 1 end,';

  with Qry3 do
  begin
    Active := false;
    SQL.Clear;
    SQL.Add('select main.*, zszl.zsywjc, clzl.ywpm, clzl.cqdh from (');
    SQL.Add('  select XieXing, SheHao, devcode, jijie, article, ROW_NUMBER () over (PARTITION BY article order BY Prodleadtime desc) as rn, Prodleadtime, clbh, csbh from (');
    SQL.Add('    select xxzl.XieXing, xxzl.SheHao, XXZL.jijie, XXZL.devcode, XXZL.article, MOQ.Prodleadtime, xxzl.clbh, csbh from (');
    SQL.Add('      select xxzl.XieXing, xxzl.SheHao, xxzl.jijie, kfxxzl.devcode, xxzl.article, xxzls.clbh, xxzls.csbh from xxzls');
    SQL.Add('      left join xxzl on xxzl.xiexing = xxzls.xiexing and xxzl.shehao = xxzls.shehao');
    SQL.Add('      left join kfxxzl on kfxxzl.xiexing = xxzls.xiexing and kfxxzl.shehao = xxzls.shehao');
    SQL.Add('      left join CLZL on CLZL.CLDH=xxzls.CLBH');
    SQL.Add('      where xxzl.khdh IN (' + KHBH + ') and CLZL.CLZMLB = ''N'' and  xxzls.bwlb <>''3''');
    if BOM_N31_KFCQ<>'' then
      SQL.add('      and XXZL.KFCQ in ('''+BOM_N31_KFCQ+''')');
    if CheckBox2.Checked = true then
      SQL.Add('      and LEFT(CLZL.CLDH, 1) in (''L'',''A'',''B'',''C'',''F'',''K'',''D'',''G'',''J'',''K'',''M'',''N'')');
    if SeaEdit.Text<>'' then
      SQL.Add('      and xxzl.jijie = ''' + SeaEdit.Text + '''');
    if BuyNoEdit.Text<>'' then
      SQL.Add('      and XXZL.article in (select Article from DDZL where GSBH = ''' + main.Edit2.Text + ''' and BUYNO like ''' + BuyNoEdit.Text + '%'' Group by Article)');
    SQL.Add('      union all');
    SQL.Add('      select xxzl.XieXing, xxzl.SheHao, xxzl.jijie, kfxxzl.devcode, xxzl.article, clzhzl.cldh1, clzhzl.zsdh as csbh from xxzls');
    SQL.Add('      inner join clzhzl on clzhzl.cldh = xxzls.clBh');
    SQL.Add('      left join xxzl on xxzl.xiexing = xxzls.xiexing and xxzl.shehao = xxzls.shehao');
    SQL.Add('      left join kfxxzl on kfxxzl.xiexing = xxzls.xiexing and kfxxzl.shehao = xxzls.shehao');
    SQL.Add('      left join CLZL on CLZL.CLDH = clzhzl.cldh1');
    SQL.Add('      where kfxxzl.khdh IN (' + KHBH + ') and CLZL.CLZMLB = ''N'' and  xxzls.bwlb <>''3''');
    if BOM_N31_KFCQ<>'' then
      SQL.add('      and XXZL.KFCQ in ('''+BOM_N31_KFCQ+''')');
    if CheckBox2.Checked = true then
      SQL.Add('      and LEFT(CLZL.CLDH, 1) in (''L'',''A'',''B'',''C'',''F'',''K'',''D'',''G'',''J'',''K'',''M'',''N'')');
    if SeaEdit.Text<>'' then
      SQL.Add('      and xxzl.jijie = ''' + SeaEdit.Text + '''');
    if BuyNoEdit.Text<>'' then
      SQL.Add('      and XXZL.article in (select Article from DDZL where GSBH = ''' + main.Edit2.Text + ''' and BUYNO like ''' + BuyNoEdit.Text + '%'' Group by Article)');
    SQL.Add('      union all');
    SQL.Add('      select xxzls.XieXing, xxzls.SheHao, xxzls.jijie, xxzls.devcode, xxzls.article, clzhzl.cldh1, clzhzl.zsdh as csbh from (');
    SQL.Add('        select xxzl.XieXing, xxzl.SheHao, xxzl.jijie, kfxxzl.devcode, xxzl.article, clzhzl.cldh1 as CLBH, clzhzl.zsdh from xxzls');
    SQL.Add('        inner join clzhzl on clzhzl.cldh = xxzls.clbh');
    SQL.Add('        left join xxzl on xxzl.xiexing=xxzls.xiexing and xxzl.shehao=xxzls.shehao');
    SQL.Add('        left join kfxxzl on kfxxzl.xiexing=xxzls.xiexing and kfxxzl.shehao=xxzls.shehao');
    SQL.Add('        left join CLZL on CLZL.CLDH=clzhzl.cldh1');
    SQL.Add('        where xxzl.khdh IN (' + KHBH + ') and CLZL.CLZMLB = ''Y'' and  xxzls.bwlb <>''3''');
    if BOM_N31_KFCQ<>'' then
      SQL.add('        and XXZL.KFCQ in ('''+BOM_N31_KFCQ+''')');
    if CheckBox2.Checked=true then
      SQL.Add('        and LEFT(CLZL.CLDH,1) in (''L'',''A'',''B'',''C'',''F'',''K'',''D'',''G'',''J'',''K'',''M'',''N'')');
    if SeaEdit.Text<>'' then
      SQL.Add('        and xxzl.jijie = ''' + SeaEdit.Text + '''');
    if BuyNoEdit.Text<>'' then
      SQL.Add('        and XXZL.article in (select Article from DDZL where GSBH = ''' + main.Edit2.Text + ''' and BUYNO like ''' + BuyNoEdit.Text + '%'' Group by Article)');
    if FC_BUYEdit.Text<>'' then
      SQL.Add('        and XXZL.ARTICLE in (Select article from FC_import_pur where BUYNO='''+FC_BUYEdit.Text+''') ');
    SQL.Add('      ) AS xxzls');
    SQL.Add('      inner join clzhzl on clzhzl.cldh = xxzls.clBh');
    SQL.Add('      left join CLZL on CLZL.CLDH = clzhzl.cldh1');
    SQL.Add('      where CLZL.CLZMLB = ''N''');
    SQL.Add('    ) AS XXZL');
    SQL.Add('    left join (');
    SQL.Add('      select Season, IsNull(CLZL_LS.JHDH, MaterialMOQ.CLBH) as CLBH, ZSBH, isnull(Prodleadtime, 0) + isnull(country.shippingleadtimesea, 0) + isnull(country.customclearanceday, 0) + isnull(MaterialMOQ.AddTLeadtime, 0) as Prodleadtime from MaterialMOQ');
    SQL.Add('      LEFT JOIN (SELECT * FROM ZSZL_DEV WHERE GSBH = ''' + SFactory + ''') AS ZSZL_DEV ON ZSZL_DEV.ZSDH = MaterialMOQ.ZSBH');
    SQL.Add('      left join CLZL_LS on CLZL_LS.CLDH = MaterialMOQ.CLBH and IsNull(CLZL_LS.JHDH, '''') <> ''''');
    SQL.Add('      left join country on country.country = ZSZL_DEV.COUNTRY');
    //SQL.Add('    ) AS MOQ on MOQ.CLBH = XXZL.CLBH and MOQ.season = xxzl.jijie and MOQ.zsbh = xxzl.csbh');
    SQL.Add('    ) AS MOQ on MOQ.CLBH = XXZL.CLBH ');
    SQL.Add('    where xxzl.article like ''' + ArticleEdit.Text + '%''');
    if Edit4.Text <> '' then
      SQL.Add('  and xxzl.jijie = ''' +Edit4.Text + '''');
    if Edit8.Text <> '' then
      SQL.Add('    and xxzl.devcode like ''' + Edit8.Text + '%''');
    if FC_BUYEdit.Text<>'' then
      SQL.Add('        and XXZL.ARTICLE in (Select article from FC_import_pur where BUYNO='''+FC_BUYEdit.Text+''') ');
    SQL.Add('    group by xxzl.XieXing, xxzl.SheHao, XXZL.jijie, XXZL.devcode, XXZL.article, xxzl.clbh, MOQ.Prodleadtime, csbh');
    SQL.Add('  ) AS a');
    SQL.Add('  group by XieXing, SheHao, devcode, jijie, article, clbh, Prodleadtime, csbh');
    SQL.Add(') AS main');
    SQL.Add('left join clzl on clzl.cldh = main.clbh');
    SQL.Add('left join zszl on zszl.zsdh = main.csbh');
    SQL.Add('where rn = 1');
    //funcObj.WriteErrorLog(sql.Text);
    //memo1.text:=sql.text;
    Active := true;
  end;

  if Qry3.RecordCount > 0 then
  begin
    with Qry4 do
    begin
      Active := false;
      SQL.Clear;
      SQL.Add('select distinct MOQ.Season, XXZLS.*, CLZL.YWPM as CLYWMC, CLZL.ZWPM, CLZL.CQDH, MOQ.Prodleadtime, MOQ.SampleleadTime,MOQ,AddTLeadtime, MOQ.Location, MOQ.sampleprice, MOQ.forecast_leadtime,');
      SQL.Add('MOQ.SampleMOQ, MOQ.ProdMOQ, MOQ.ExtraPrice, MOQ.REMARK, zszl.zsywjc, Surcharge, Dyingfee, CLZL_LS.CLDH AS TempCLBH from (');
      SQL.Add('  select xxzl.XieXing, xxzl.SheHao, xxzls.clbh, xxzls.CSBH from xxzls');
      SQL.Add('  left join xxzl on xxzl.xiexing = xxzls.xiexing and xxzl.shehao = xxzls.shehao');
      SQL.Add('  left join CLZL on CLZL.CLDH = xxzls.CLBH');
      SQL.Add('  where xxzl.XieXing = :XieXing and xxzl.SheHao = :SheHao and CLZL.CLZMLB = ''N'' and  xxzls.bwlb <>''3'' ');
      if BOM_N31_KFCQ<>'' then
        SQL.add('  and XXZL.KFCQ in ('''+BOM_N31_KFCQ+''')');
      if CheckBox2.Checked = true then
        SQL.Add('  and LEFT(CLZL.CLDH, 1) in (''L'',''A'',''B'',''C'',''F'',''K'',''D'',''G'',''J'',''K'',''M'',''N'')');
      SQL.Add('  union all');
      SQL.Add('  select xxzl.XieXing, xxzl.SheHao, clzhzl.cldh1, clzhzl.zsdh as csbh from xxzls');
      SQL.Add('  inner join clzhzl on clzhzl.cldh = xxzls.clBh');
      SQL.Add('  left join xxzl on xxzl.xiexing = xxzls.xiexing and xxzl.shehao = xxzls.shehao ');
      SQL.Add('  left join CLZL on CLZL.CLDH = clzhzl.cldh1 ');
      SQL.Add('  where xxzl.XieXing = :XieXing and xxzl.SheHao = :SheHao and CLZL.CLZMLB = ''N'' and  xxzls.bwlb <>''3''');
      if BOM_N31_KFCQ<>'' then
        SQL.add('  and XXZL.KFCQ in ('''+BOM_N31_KFCQ+''')');
      if CheckBox2.Checked = true then
        SQL.Add('  and LEFT(CLZL.CLDH, 1) in (''L'',''A'',''B'',''C'',''F'',''K'',''D'',''G'',''J'',''K'',''M'',''N'')');
      SQL.Add('  union all');
      SQL.Add('  select xxzls.XieXing, xxzls.SheHao, clzhzl.cldh1, clzhzl.zsdh as csbh from (');
      SQL.Add('    select xxzl.XieXing, xxzl.SheHao, xxzl.article, clzhzl.cldh1 as CLBH, xxzls.CSBH from xxzls');
      SQL.Add('    inner join clzhzl on clzhzl.cldh = xxzls.clbh');
      SQL.Add('    left join xxzl on xxzl.xiexing = xxzls.xiexing and xxzl.shehao = xxzls.shehao');
      SQL.Add('    left join CLZL on CLZL.CLDH = clzhzl.cldh1');
      SQL.Add('    where xxzl.XieXing = :XieXing and xxzl.SheHao = :SheHao and CLZL.CLZMLB = ''Y'' and  xxzls.bwlb <>''3''');
      if BOM_N31_KFCQ<>'' then
        SQL.add('    and XXZL.KFCQ in ('''+BOM_N31_KFCQ+''')');
      SQL.Add('  ) AS xxzls');
      SQL.Add('  inner join clzhzl on clzhzl.cldh = xxzls.clBh');
      SQL.Add('  left join CLZL on CLZL.CLDH = clzhzl.cldh1');
      SQL.Add('  where  CLZL.CLZMLB = ''N''');
      if CheckBox2.Checked = true then
        SQL.Add('  and LEFT(CLZL.CLDH, 1) in (''L'',''A'',''B'',''C'',''F'',''K'',''D'',''G'',''J'',''K'',''M'',''N'')');
      SQL.Add(') AS XXZLS');
      SQL.Add('left join CLZL on clzl.cldh = xxzls.CLBH');
      SQL.Add('left join (');
      SQL.Add('  select * from (');
      SQL.Add('    select Season, Surcharge, Dyingfee, CLBH, SampleleadTime, Prodleadtime, AddTLeadtime,Location, sampleprice, forecast_leadtime, SampleMOQ, ProdMOQ, ExtraPrice, MOQ.REMARK, zsbh,');
      SQL.Add('    row_number() over(partition by CLBH order by ' + LT_SubSQL + ' Substring(Season, 1, 2) DESC, USERDATE desc) AS RN from (');
      SQL.Add('      select Season, Surcharge, Dyingfee, IsNull(CLZL_LS.JHDH, MaterialMOQ.CLBH) as CLBH, SampleleadTime, Prodleadtime,AddTLeadtime,ZSZL_DEV.COUNTRY AS Location, sampleprice, forecast_leadtime, SampleMOQ, ProdMOQ, ExtraPrice, MaterialMOQ.REMARK, zsbh,');
      SQL.Add('      materialmoq.userdate, ROW_NUMBER() OVER (PARTITION BY CLBH ORDER BY ' + LT_SubSQL + ' Substring(Season, 1, 2) DESC, MaterialMOQ.USERDATE desc) AS RN from MaterialMOQ');
      SQL.Add('      LEFT JOIN (SELECT * FROM ZSZL_DEV WHERE GSBH = ''' + SFactory + ''') AS ZSZL_DEV ON ZSZL_DEV.ZSDH = MaterialMOQ.ZSBH ');
      SQL.Add('      left join CLZL_LS on CLZL_LS.CLDH = MaterialMOQ.CLBH and IsNull(CLZL_LS.JHDH, '''') <> ''''');
      SQL.Add('      left join country on country.country = ZSZL_DEV.COUNTRY');
      if SeaEdit.Text <> '' then
        SQL.Add('      WHERE Season LIKE ''' + SeaEdit.Text + '%''');
      SQL.Add('    ) AS MOQ where rn = 1');
      SQL.Add('  ) AS MOQ where RN = 1');
      SQL.Add(') AS MOQ on MOQ.CLBH = XXZLS.CLBH');
      SQL.Add('left join zszl on zszl.zsdh = XXZLS.CSBH');
      SQL.Add('left join CLZL_LS on CLZL_LS.JHDH = XXZLS.CLBH');
      SQL.Add('ORDER  BY MOQ.Prodleadtime DESC, XXZLS.CLBH ASC');
      //memo3.text:=sql.text;
      //funcObj.WriteErrorLog(sql.Text);
      Active := true;
     end;
   end
   else begin
     Qry4.Active := false;
   end;
end;

procedure TFDStatusLeadTime.Button4Click(Sender: TObject);
var   a:string;
      eclApp,WorkBook:olevariant;
      i,j,k:integer;
begin
  ExportExcel();
  {
  if  qry3.active  then
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
    eclApp.Cells(1,1):='Season';
    eclApp.Cells(1,2):='SR';
    eclApp.Cells(1,3):='SKU';
    eclApp.Cells(1,4):='MatNO';
    eclApp.Cells(1,5):='MatName';
    eclApp.Cells(1,6):='Leadtime';
    eclApp.Cells(1,7):='Supplier';
    eclApp.Cells(1,8):='Location';

        j:=2;
        for   i:=0   to  qry3.fieldcount-1  do
        begin
          while   not   qry4.Eof   do
             begin
                for   k:=0   to  qry4.fieldcount-1  do
                    begin
                       eclApp.Cells(j,1):=qry3.FieldByName('jijie').AsString;
                       eclApp.Cells(j,2):=qry3.FieldByName('devcode').AsString;
                       eclApp.Cells(j,3):=qry3.FieldByName('article').AsString;
                       eclApp.Cells(j,4):=qry4.FieldByName('clbh').AsString;
                       eclApp.Cells(j,5):=qry4.FieldByName('CLYWMC').AsString;
                       eclApp.Cells(j,6):=qry4.FieldByName('prodleadtime').AsString;
                       eclApp.Cells(j,7):=qry4.FieldByName('zsywjc').AsString;
                       eclApp.Cells(j,8):=qry4.FieldByName('location').AsString;
                    end;
                 qry4.next;
                 inc(j);
             end;
        end;

      eclapp.columns.autofit;
      showmessage('Succeed');
       eclApp.Visible:=True;
      except
        on   F:Exception   do
          showmessage(F.Message);
      end;
    end;
    }
end;


procedure TFDStatusLeadTime.DBGridEh1DrawColumnCell(Sender: TObject;
  const Rect: TRect; DataCol: Integer; Column: TColumnEh;
  State: TGridDrawState);
begin
  {if (qry3.Fieldbyname('MinLeadTime').AsString='0') then
    TDBGridEh(Sender).canvas.font.color:=clRed ;
  TDBGridEh(Sender).DefaultDrawColumnCell(Rect,DataCol,Column,State);  }
end;

procedure TFDStatusLeadTime.Excel1Click(Sender: TObject);
var eclApp,WorkBook:olevariant;
    i,j:integer;
begin
  if qry4.Active then
  begin
    if qry4.recordcount=0 then
      begin
        showmessage('No record.');
        abort;
      end;
  end
  else
    begin
      showmessage('No record.');
      abort;
    end;
  try
    eclApp:=CreateOleObject('Excel.Application');
    WorkBook:=CreateOleObject('Excel.Sheet');
  except
    Application.MessageBox('NO Microsoft   Excel','Microsoft   Excel',MB_OK+MB_ICONWarning);
    Exit;
  end;

  try
    qry3.Active:=false;
    WorkBook:=eclApp.workbooks.Add;
    eclapp.Cells.NumberFormatLocal:='@';
    eclApp.Cells(1,1):='NO';
    for   i:=1   to   qry4.fieldcount   do
    begin
        eclApp.Cells(1,i+1):=qry4.fields[i-1].FieldName;
    end;
    qry4.First;
    j:=2;
    while   not  qry4.Eof   do
    begin
        eclApp.Cells(j,1):=j-1;
        for   i:=1   to   qry4.fieldcount   do
        begin
            eclApp.Cells(j,i+1):=qry4.Fields[i-1].Value;
            eclApp.Cells.Cells.item[j,i+1].font.size:='8';
        end;
        qry4.Next;
        inc(j);
    end;
    eclapp.columns.autofit;
    showmessage('Succeed.');
    eclApp.Visible:=True;
    qry4.Active:=true;
    Button3.Click;
  except
    on   F:Exception   do
      showmessage(F.Message);
  end;

end;

procedure TFDStatusLeadTime.ExportExcel;
var
  ExpClass: TDBGridEhExportClass;
  Ext, target: String;
  tdbgh: TDBGridEh;
begin
  if SelectDBGrid = nil then SelectDBGrid := DBGridEh1;//Default;
  tdbgh := SelectDBGrid;
  if (tdbgh is TDBGridEh) then
  begin
    if SaveDialog1.Execute then
    begin
      case SaveDialog1.FilterIndex of
        1: begin ExpClass := TDBGridEhExportAsXLS; Ext := 'xls'; end;
        2: begin ExpClass := TDBGridEhExportAsCSV; Ext := 'csv'; end;
        3: begin ExpClass := TDBGridEhExportAsHTML; Ext := 'htm'; end;
        4: begin ExpClass := TDBGridEhExportAsRTF; Ext := 'rtf'; end;
        5: begin ExpClass := TDBGridEhExportAsText; Ext := 'txt'; end;
      else
        ExpClass := nil; Ext := '';
    end;

    if ExpClass <> nil then
    begin
      if UpperCase(Copy(SaveDialog1.FileName,Length(SaveDialog1.FileName)-2,3)) <> UpperCase(Ext) then
        SaveDialog1.FileName := SaveDialog1.FileName + '.' + Ext;
      SaveDBGridEhToExportFile(ExpClass,tdbgh,SaveDialog1.FileName,true);
      if Application.MessageBox('Do you want to open the exported file?','Open file',MB_YESNO) = IDYES then
        shellexecute(handle,'open',pchar(SaveDialog1.FileName),nil,nil,SW_SHOWNORMAL);
      end;
    end;
  end;
end;
procedure TFDStatusLeadTime.DBGridEh1CellClick(Column: TColumnEh);
begin
  SelectDBGrid:=DBGridEh1;
end;

procedure TFDStatusLeadTime.DBGridEh2CellClick(Column: TColumnEh);
begin
  SelectDBGrid:=DBGridEh2;
end;

procedure TFDStatusLeadTime.dbgrdh2CellClick(Column: TColumnEh);
begin
  SelectDBGrid:=dbgrdh2;
end;

procedure TFDStatusLeadTime.dbgrdh1CellClick(Column: TColumnEh);
begin
  SelectDBGrid:=dbgrdh1;
end;

procedure TFDStatusLeadTime.Button5Click(Sender: TObject);
begin
  if (length(edit3.Text) = 0) then  //season為必填欄位
  begin
    ShowMessage('Pls Keyin [Season]!');
    Abort;
  end;

  with Qrydev do
  begin
    Active := false;
    SQL.Clear;

    SQL.Add('select XieXing,SheHao,devcode,jijie,rn,sampleleadtime,clbh,csbh,zsywjc,ywpm,cqdh from (');
    SQL.Add('select XieXing,SheHao,devcode,jijie,ROW_NUMBER () over (PARTITION BY devcode order BY sampleleadtime desc) as rn,sampleleadtime,main.clbh,main.csbh,zszl.zsywjc,clzl.ywpm,clzl.cqdh  from (');
    SQL.Add('select XieXing,SheHao,devcode,jijie,');
    SQL.Add('isnull(MOQ.sampleleadtime+zszl_dev.shippingleadtimesea+zszl_dev.customclearanceday,0) as sampleleadtime ,a.clbh,a.csbh from(');
    SQL.Add('select kfxxzl.XieXing,kfxxzl.SheHao,kfXXZL.jijie, kfXXZL.devcode,kfxxzl.clbh,csbh from(');
    SQL.Add('select kfxxzl.XieXing,kfxxzl.SheHao,kfxxzl.jijie,kfxxzl.devcode,ypzls.clbh,ypzls.csbh from kfxxzl');
    SQL.Add('left join ypzl on kfxxzl.xiexing=ypzl.xiexing and kfxxzl.shehao=ypzl.shehao');
    SQL.Add('left join ypzls on ypzls.ypdh=ypzl.ypdh');
    SQL.Add('left join CLZL on CLZL.CLDH=ypzls.CLBH');
    SQL.Add('where kfxxzl.khdh IN (' + KHBH + ') and CLZL.CLZMLB=''N''');
    SQL.Add(' and kfxxzl.jijie='''+edit3.Text+''' ');
    SQL.Add(' and ypzl.kfjd='''+edit6.Text+''' ');
    SQL.Add(' group by kfxxzl.XieXing,kfxxzl.SheHao,kfxxzl.jijie,kfxxzl.devcode,ypzls.clbh,ypzls.csbh');

    SQL.Add('union all');
    SQL.Add('select kfxxzl.XieXing,kfxxzl.SheHao,kfxxzl.jijie,kfxxzl.devcode,clzhzl.cldh1,clzhzl.zsdh as csbh from kfxxzl');
    SQL.Add('left join ypzl on kfxxzl.xiexing=ypzl.xiexing and kfxxzl.shehao=ypzl.shehao');
    SQL.Add('left join ypzls on ypzls.ypdh=ypzl.ypdh');
    SQL.Add('inner join clzhzl on clzhzl.cldh = ypzls.clBh');
    SQL.Add('left join CLZL on CLZL.CLDH=clzhzl.cldh1');
    SQL.Add('where  kfxxzl.khdh IN (' + KHBH + ') and CLZL.CLZMLB=''N''');
    SQL.Add(' and kfxxzl.jijie='''+edit3.Text+''' ');
    SQL.Add(' and ypzl.kfjd='''+edit6.Text+''' ');
    SQL.Add('  group by kfxxzl.XieXing,kfxxzl.SheHao,kfxxzl.jijie,kfxxzl.devcode,clzhzl.cldh1,clzhzl.zsdh');
    SQL.Add('union all');
    SQL.Add('select kfxxzl.XieXing,kfxxzl.SheHao,kfxxzl.jijie,kfxxzl.devcode,clzhzl.cldh1,clzhzl.zsdh as csbh from (');
    SQL.Add('select kfxxzl.XieXing,kfxxzl.SheHao,kfxxzl.jijie,kfxxzl.devcode,clzhzl.cldh1 as CLBH,clzhzl.zsdh  from kfxxzl');
    SQL.Add('left join ypzl on kfxxzl.xiexing=ypzl.xiexing and kfxxzl.shehao=ypzl.shehao');
    SQL.Add('left join ypzls on ypzls.ypdh=ypzl.ypdh');
    SQL.Add('inner join clzhzl on clzhzl.cldh = ypzls.clbh');
    SQL.Add('left join CLZL on CLZL.CLDH=clzhzl.cldh1');
    SQL.Add('where  kfxxzl.khdh IN (' + KHBH + ') and CLZL.CLZMLB=''Y''');
    SQL.Add(' and kfxxzl.jijie='''+edit3.Text+''' ');
    SQL.Add(' and ypzl.kfjd='''+edit6.Text+''' ');
    SQL.Add(') kfxxzl');
    SQL.Add('inner join clzhzl on clzhzl.cldh = kfxxzl.clBh');
    SQL.Add('left join CLZL on CLZL.CLDH=clzhzl.cldh1');
    SQL.Add('where  CLZL.CLZMLB=''N''');
    SQL.Add('group by kfxxzl.XieXing,kfxxzl.SheHao,kfxxzl.jijie,kfxxzl.devcode,clzhzl.cldh1,clzhzl.zsdh');
    SQL.Add(') kfXXZL');
    SQL.Add('group by kfxxzl.XieXing,kfxxzl.SheHao,kfXXZL.jijie,kfXXZL.devcode,kfxxzl.clbh,csbh)a ');
    //SQL.Add('left join (select clbh,sampleleadtime from materialmoq where season='''+edit3.Text+''')MOQ on MOQ.clbh=a.CLBH');
    SQL.Add('left join (select clbh,sampleleadtime from materialmoq)MOQ on MOQ.clbh=a.CLBH');
    SQL.Add('left join (select zsdh,zszl_dev.country,country.shippingleadtimesea,country.customclearanceday from zszl_dev');
    SQL.Add('           left join country on country.country=zszl_dev.country');
    SQL.Add('            where gsbh=''' + SFactory + '''');
    SQL.Add(')zszl_dev on zszl_dev.zsdh=a.csbh');
    SQL.Add('group by XieXing,SheHao,devcode,jijie,a.clbh,isnull(MOQ.sampleleadtime+zszl_dev.shippingleadtimesea+zszl_dev.customclearanceday,0),csbh');
    SQL.Add(')main');
    SQL.Add('left join clzl on clzl.cldh=main.clbh');
    SQL.Add('left join zszl on zszl.zsdh=main.csbh)final');
    SQL.Add('where rn=1');
    //memo1.text:=sql.text;
    Active := true;
  end;
end;

procedure TFDStatusLeadTime.Button6Click(Sender: TObject);
var   a:string;
      eclApp,WorkBook:olevariant;
      i,j:integer;
 begin
  if  qrydev.active  then
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
    eclApp.Cells(1,1):='Season';
    eclApp.Cells(1,2):='SR';
    eclApp.Cells(1,3):='Lead Time Sample';
    eclApp.Cells(1,4):='MatNO';
    eclApp.Cells(1,5):='SupplierNO';
    eclApp.Cells(1,6):='Supplier Name';
    eclApp.Cells(1,7):='Mat Name';
    eclApp.Cells(1,8):='Location';
        j:=2;
        while   not   qrydev.Eof   do
          begin
            for   i:=0   to  qrydev.fieldcount-1  do
            begin
              eclApp.Cells(j,1):=qrydev.FieldByName('jijie').AsString;
              eclApp.Cells(j,2):=qrydev.FieldByName('devcode').AsString;
              eclApp.Cells(j,3):=qrydev.FieldByName('Sampleleadtime').AsString;
              eclApp.Cells(j,4):=qrydev.FieldByName('clbh').AsString;
              eclApp.Cells(j,5):=qrydev.FieldByName('csbh').AsString;
              eclApp.Cells(j,6):=qrydev.FieldByName('zsywjc').AsString;
              eclApp.Cells(j,7):=qrydev.FieldByName('ywpm').AsString;
              eclApp.Cells(j,8):=qrydev.FieldByName('cqdh').AsString;
            end;
          qrydev.Next;
          inc(j);
          end;
      eclapp.columns.autofit;
      showmessage('Succeed');
       eclApp.Visible:=True;
      except
        on   F:Exception   do
          showmessage(F.Message);
      end;
    end;
end;

procedure TFDStatusLeadTime.Excel2Click(Sender: TObject);
var eclApp,WorkBook:olevariant;
    i,j:integer;
begin
  if qry3.Active then
  begin
    if qry3.recordcount=0 then
      begin
        showmessage('No record.');
        abort;
      end;
  end
  else
    begin
      showmessage('No record.');
      abort;
    end;
  try
    eclApp:=CreateOleObject('Excel.Application');
    WorkBook:=CreateOleObject('Excel.Sheet');
  except
    Application.MessageBox('NO Microsoft   Excel','Microsoft   Excel',MB_OK+MB_ICONWarning);
    Exit;
  end;

  try
    qry4.Active:=false;
    WorkBook:=eclApp.workbooks.Add;
    eclapp.Cells.NumberFormatLocal:='@';
    eclApp.Cells(1,1):='NO';
    for   i:=1   to   qry3.fieldcount   do
    begin
        eclApp.Cells(1,i+1):=qry3.fields[i-1].FieldName;
    end;
    qry3.First;
    j:=2;
    while   not  qry3.Eof   do
    begin
        eclApp.Cells(j,1):=j-1;
        for   i:=1   to   qry3.fieldcount   do
        begin
            eclApp.Cells(j,i+1):=qry3.Fields[i-1].Value;
            eclApp.Cells.Cells.item[j,i+1].font.size:='8';
        end;
        qry3.Next;
        inc(j);
    end;
    eclapp.columns.autofit;
    showmessage('Succeed.');
    eclApp.Visible:=True;
    qry3.Active:=true;
    Button3.Click;
  except
    on   F:Exception   do
      showmessage(F.Message);
  end;

end;

procedure TFDStatusLeadTime.FormDestroy(Sender: TObject);
begin
   FDStatusLeadTime:=nil;
end;

procedure TFDStatusLeadTime.btnExcelAllClick(Sender: TObject);
var   a:string;
      eclApp,WorkBook:olevariant;
      i,j,k,h:integer;
begin
  if  qry2.active  then
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
      eclApp.Cells(1,1):='Mat NO';
      eclApp.Cells(1,2):='Description';
      eclApp.Cells(1,3):='Supplier';
      eclApp.Cells(1,4):='Lead Time Sample';
      eclApp.Cells(1,5):='Lead Time Prod';
      eclApp.Cells(1,6):='Lead Time Forecast';
      eclApp.Cells(1,7):='Country';
      eclApp.Cells(1,8):='MOQ Sample';
      eclApp.Cells(1,9):='MOQ Prod';
      eclApp.Cells(1,10):='MOQ ExtraPrice';
      eclApp.Cells(1,11):='MOQ Dying';
      eclApp.Cells(1,12):='MOQ Surcharge';
      eclApp.Cells(1,13):='Supplier NO';
      eclApp.Cells(1,14):='remark';
      eclApp.Cells(1,15):='Season';
      eclApp.Cells(1,16):='SR';
      eclApp.Cells(1,17):='SKU';
      eclApp.Cells(1,18):='Sample No';
      eclApp.Cells(1,19):='Shoe Name';
      eclApp.Cells(1,20):='Colorway Name';
      j:=2;
      h:=Qry_All.FieldCount;
      for i:=0  to h-1 do
      begin
        while   not   Qry_All.Eof   do
        begin
          while   not   qry2.Eof   do
          begin
            for   k:=0   to  qry2.fieldcount-1  do
            begin
              eclApp.Cells(j,1):=qry2.FieldByName('clbh').AsString;
              eclApp.Cells(j,2):=qry2.FieldByName('clywmc').AsString;
              eclApp.Cells(j,3):=qry2.FieldByName('zsywjc').AsString;
              eclApp.Cells(j,4):=qry2.FieldByName('Sampleleadtime').AsString;
              eclApp.Cells(j,5):=qry2.FieldByName('prodleadtime').AsString;
              eclApp.Cells(j,6):=qry2.FieldByName('forecast_leadtime').AsString;
              eclApp.Cells(j,7):=qry2.FieldByName('Country').AsString;
              eclApp.Cells(j,8):=qry2.FieldByName('samplemoq').AsString;
              eclApp.Cells(j,9):=qry2.FieldByName('prodmoq').AsString;
              eclApp.Cells(j,10):=qry2.FieldByName('extraprice').AsString;
              eclApp.Cells(j,11):=qry2.FieldByName('Dyingfee').AsString;
              eclApp.Cells(j,12):=qry2.FieldByName('Surcharge').AsString;
              eclApp.Cells(j,13):=qry2.FieldByName('csbh').AsString;
              eclApp.Cells(j,14):=qry2.FieldByName('remark').AsString;
              eclApp.Cells(j,15):=Qry_All.FieldByName('jijie').AsString;
              eclApp.Cells(j,16):=Qry_All.FieldByName('devcode').AsString;
              eclApp.Cells(j,17):=Qry_All.FieldByName('article').AsString;
              eclApp.Cells(j,18):=Qry_All.FieldByName('ypdh').AsString;
              eclApp.Cells(j,19):=Qry_All.FieldByName('xieming').AsString;
              eclApp.Cells(j,20):=Qry_All.FieldByName('YSSM').AsString;
            end;
            qry2.Next;
            inc(j);
          end;
          Qry_All.Next;
          inc(h);
        end;
      end;
        eclapp.columns.autofit;
        showmessage('Succeed');
        eclApp.Visible:=True;
      except
        on   F:Exception   do
          showmessage(F.Message);
      end;
    end;
end;

procedure TFDStatusLeadTime.Button7Click(Sender: TObject);
begin
   {if ((length(Edit11.Text) = 0) or (length(Edit10.Text) = 0)) and (length(edit7.Text) = 0) then  //season和stage為必填欄位
   BEGIN
    showmessage('Pls Keyin [Season]&[Stage] !');
    ABORT;
   END;   }

   DevBOMQry.Active:=false;
   with Qry_Buylist do
   begin
      active:=false;
      sql.Clear;
      sql.add('select AA.SKU as Missing,CostingPriceListNew.SR,CostingPriceListNew.SKU');
      sql.add(',CostingPriceListNew.Segment,CostingPriceListNew.ProductionType,CostingPriceListNew.ColorwayLongName');
      sql.add(',CostingPriceListNew.TechLevel,CostingPriceListNew.GenderClass');
      sql.add(',CostingPriceListNew.FactoryDeveloper,CostingPriceListNew.FactoryCosting,CostingPriceListNew.Factory,ddzl.season,ddzl.Qty');
      sql.add(',ddzl.XieXing,ddzl.SheHao,Max(CostingPriceListNew.Round) as Round');
      sql.add('From (select right(BUYNO,3) as season,XieXing,SheHao,sum(Pairs) as Qty ');
      sql.add('   From ddzl');
      sql.add('   where ddzl.buyno like ''%'+Edit11.text+'%''');
      sql.add('   group by right(BUYNO,3) ,XieXing,SheHao');
      sql.add('   )ddzl');
      sql.add('left join xxzl on ddzl.XieXing=xxzl.XieXing and ddzl.SheHao=xxzl.SheHao ');
      sql.add('inner join CostingPriceListNew on  CostingPriceListNew.SKU=left(xxzl.article,charindex(''/'',xxzl.article+''/'')-1) and CostingPriceListNew.CostingSeason=ddzl.season');
      sql.add('and CostingPriceListNew.round like ''FNL%''');

      sql.add(' --查找缺資料的');
      sql.add('left join (select  --CostingPriceLibrary.CLBH,zszl_flex.zsdh as CSBH,');
      sql.add(' CostingXXZLS.Round,CostingXXZLS.SKU,CostingXXZLS.CostingSeason');
      sql.add(' From CostingXXZLS  ');
      sql.add(' left join CostingPriceLibrary on CostingPriceLibrary.MTL_No=CostingXXZLS.MTL_No and CostingPriceLibrary.Color_No=CostingXXZLS.Color_No');
      sql.add(' left join CostingMatLibrary on CostingMatLibrary.MTL_No=CostingXXZLS.MTL_No');
      sql.add(' left join zszl_flex on zszl_flex.zsdhflex=CostingMatLibrary.SupplierCode');
      //sql.add(' left join MaterialMOQ on MaterialMOQ.Season=CostingXXZLS.CostingSeason and CostingPriceLibrary.CLBH=MaterialMOQ.CLBH ');
      sql.add(' left join MaterialMOQ on CostingPriceLibrary.CLBH=MaterialMOQ.CLBH ');
      sql.add(' and zszl_flex.zsdh=MaterialMOQ.ZSBH');
      sql.add(' where 1=1 ');
      sql.add(' and (zszl_flex.zsdh is null or CostingPriceLibrary.CLBH is null or CostingPriceLibrary.CLBH ='''')');
      sql.add(' and (CostingMatLibrary.MaterialComments like ''%MOQ%'' or CostingMatLibrary.MaterialComments like ''%Min:%'' or MaterialMOQ.ProdMOQ>0)');
      sql.add(' group by CostingXXZLS.Round,CostingXXZLS.SKU,CostingXXZLS.CostingSeason');
      sql.add(')AA on aa.CostingSeason=CostingPriceListNew.CostingSeason and  aa.SKU=CostingPriceListNew.SKU and  aa.Round=CostingPriceListNew.Round ');

      sql.add('where 1=1');

      if  length(Edit9.Text) > 0 then
      sql.add(' and CostingPriceListNew.FactoryDeveloper like ''%'+Edit9.Text+'%''');
      if  length(Edit10.Text) > 0 then
      sql.add(' and CostingPriceListNew.CostingSeason like ''%'+Edit10.Text+'%''');
      if  length(Edit12.Text) > 0 then
      sql.add(' and CostingPriceListNew.SKU like ''%'+Edit12.Text+'%''');
      if  length(Edit13.Text) > 0 then
      sql.add(' and CostingPriceListNew.SR like ''%'+Edit13.Text+'%''');
      sql.add(' group by AA.SKU,CostingPriceListNew.SR,CostingPriceListNew.SKU,CostingPriceListNew.Segment,CostingPriceListNew.ProductionType,CostingPriceListNew.ColorwayLongName');
      sql.add(',CostingPriceListNew.TechLevel,CostingPriceListNew.GenderClass,CostingPriceListNew.FactoryDeveloper,CostingPriceListNew.FactoryCosting');
      sql.add(',CostingPriceListNew.Factory,ddzl.season,ddzl.Qty,ddzl.XieXing,ddzl.SheHao');
      sql.add('order by AA.SKU desc');


      //showmessage(sql.text);
      active:=true;
    end;
    DevBOMQry.Active:=true;
    DevBOMQry.cachedupdates:=true;
    DevBOMQry.requestlive:=true;

end;

procedure TFDStatusLeadTime.DevBOMQryCalcFields(DataSet: TDataSet);
begin
        DevBOMQry.FieldByName('Material').Value := (DevBOMQry.FieldByName('Material_Text') as TBlobField).AsString;
end;

procedure TFDStatusLeadTime.DBGridEh5DblClick(Sender: TObject);
begin
  if ((DevBOMQry.FieldByName('CSBH').asstring='') or (DevBOMQry.FieldByName('CLBH').asstring='')
       or CheckBox3.Checked )  then
  begin
    Label21.Caption:=DevBOMQry.FieldByName('Material').asstring;
    Label25.Caption:=DevBOMQry.FieldByName('Supplier_ERP').asstring;
    Label24.Caption:=DevBOMQry.FieldByName('Color').asstring;
    Edit7.Text:=Qry_Buylist.FieldByName('SKU').asstring;
    Edit5.Text:= 'CFM';
    Edit15.Text:= copy(DevBOMQry.FieldByName('Material').asstring,1,5);
    Label26.Caption:=DevBOMQry.FieldByName('Material').asstring;
    Label25.Caption:=DevBOMQry.FieldByName('Supplier_ERP').asstring;
    Label27.Caption:=DevBOMQry.FieldByName('Color').asstring;
    ArticleEdit.Text:=Qry_Buylist.FieldByName('SKU').asstring;
    Edit16.Text:= copy(DevBOMQry.FieldByName('Material').asstring,1,5);
    Button3.Click;
    Button11.Click;
    PGC1.ActivePageIndex:=2;
  end;

end;

procedure TFDStatusLeadTime.Button10Click(Sender: TObject);
begin
    with qry2 do
    begin
      active:=false;
      sql.Clear;
      SQL.Add('select CLZL_LS.JHDH,zszl_dev.country,MaterialMOQ.REMARK,MaterialMOQ.season,ypzls.clzmlb,ypzls.CLBH,ypzls.CLYWMC,ypzls.CSBH,ypzls.zsywjc ,MaterialMOQ.SampleLeadTime,');
      SQL.Add('MaterialMOQ.ProdLeadTime,MaterialMOQ.Location,MaterialMOQ.sampleprice,MaterialMOQ.forecast_leadtime,');
      SQL.Add('MaterialMOQ.samplemoq,MaterialMOQ.prodmoq,MaterialMOQ.extraprice, Surcharge,Dyingfee,MaterialMOQ.UserDate  from ( ');
      SQL.Add('select kfxxzl.jijie,a.* from (');
      SQL.Add('SELECT clzl.cltd,ypzls.YPDH ,ypzls.xh ,ypzls.xh1 ,ypzls.BWBH ,ypzls.CLBH ,ypzls.BWLB ,ypzls.CSBH ,ypzls.loss ,ypzls.CLSL ,ypzls.CLDJ ,ypzls.Currency ,ypzls.Rate,clzl.CQDH ');
      SQL.Add(',ypzls.Remark ,bwzl.ywsm+''-''+bwzl.zwsm AS BWMCNM,bwzl.zwsm ,bwzl.ywsm  ,clzl.zwpm AS CLMC,clzl.Ywpm AS CLYWMC ,clzl.dwbh ,zszl.zsjc ,clzl.clzmlb ,ypzls.JGZWSM ,ypzls.JGYWSM ,zszl.zsywjc ');
      SQL.Add('FROM ypzls ypzls ');
      SQL.Add('LEFT JOIN bwzl bwzl ON ypzls.BWBH = bwzl.bwdh ');
      SQL.Add('LEFT JOIN clzl clzl ON ypzls.CLBH = clzl.cldh ');
      SQL.Add('LEFT JOIN zszl zszl ON ypzls.CSBH = zszl.zsdh WHERE YPDH  =:ypdh and clzl.clzmlb=''N'' ');
      SQL.Add('union all ');
      SQL.Add('SELECT clzl.cltd,ypzls.YPDH ,ypzls.xh ,ypzls.xh1 ,YPZLS.BWBH+''-Child'' as Relation,clzhzl.CLDH1 as CLBH ');
      SQL.Add(' ,ypzls.BWLB , ');
      SQL.Add(' case when  ((clzhzl_dev.zsdh is not null) and (clzhzl_dev.zsdh<>'''')) then clzhzl_dev.zsdh else clzhzl.zsdh end as CSBH ');
      SQL.Add(' ,ypzls.loss ,ypzls.CLSL*clzhzl.syl as CLSL ,ypzls.CLDJ ,ypzls.Currency ,ypzls.Rate,clzl.CQDH ');
      SQL.Add(',ypzls.Remark ,'''' AS BWMCNM,'''' AS zwsm,'''' as ywsm ,clzl.zwpm AS CLMC,clzl.Ywpm AS CLYWMC ,clzl.dwbh ,');
      SQL.Add(' case when  ((clzhzl_dev.zsdh is not null) and (clzhzl_dev.zsdh<>'''')) then zszl_dev.zsjc else  zszl.zsjc  end as zsjc ');
      SQL.Add(',clzl.clzmlb  ,ypzls.JGZWSM ,ypzls.JGYWSM ,');
      SQL.Add(' case when  ((clzhzl_dev.zsdh is not null) and (clzhzl_dev.zsdh<>'''')) then zszl_dev.zsywjc else  zszl.zsywjc  end as zsywjc ');
      SQL.Add('FROM ypzls ypzls ');
      SQL.Add('Left join clzhzl ON  ypzls.CLBH = CLZHZL.cldh ');
      SQL.Add('left join clzhzl_dev ON clzhzl.cldh=clzhzl_dev.cldh and clzhzl.cldh1=clzhzl_dev.cldh1 ');
      SQL.Add('LEFT JOIN bwzl bwzl ON ypzls.BWBH = bwzl.bwdh ');
      SQL.Add('LEFT JOIN clzl clzl ON CLZHZL.cldh1 = clzl.cldh ');
      SQL.Add('LEFT JOIN zszl zszl ON clzhzl.zsdh = zszl.zsdh ');
      SQL.Add('LEFT JOIN zszl zszl_dev on clzhzl_dev.zsdh = zszl_dev.zsdh ');
      SQL.Add('WHERE YPDH  =:ypdh  and CLZHZL.SYL>0 and clzl.clzmlb=''N'' ');
      //二階材料
      SQL.Add('union all ');
      SQL.Add('Select clzl.cltd,clzhzl2.YPDH,clzhzl2.XH,clzhzl2.XH1,clzhzl2.Relation+''1'' as Relation ,clzhzl.CLDH1 as CLBH,clzhzl2.BWLB,');
      SQL.Add(' case when  ((clzhzl_dev.zsdh is not null) and (clzhzl_dev.zsdh<>'''')) then clzhzl_dev.zsdh else clzhzl.zsdh end as CSBH ');
      SQL.Add(' ,clzhzl2.loss ,clzhzl2.CLSL*clzhzl.syl as CLSL ,clzhzl2.CLDJ ,clzhzl2.Currency ,clzhzl2.Rate,clzl.CQDH ');
      SQL.Add(',clzhzl2.Remark ,'''' AS BWMCNM,'''' AS zwsm,'''' as ywsm ,clzl.zwpm AS CLMC,clzl.Ywpm AS CLYWMC ,clzl.dwbh ,');
      SQL.Add(' case when  ((clzhzl_dev.zsdh is not null) and (clzhzl_dev.zsdh<>'''')) then zszl_dev.zsjc else  zszl.zsjc  end as zsjc ');
      SQL.Add(',clzl.clzmlb  ,clzhzl2.JGZWSM ,clzhzl2.JGYWSM ,');
      SQL.Add(' case when  ((clzhzl_dev.zsdh is not null) and (clzhzl_dev.zsdh<>'''')) then zszl_dev.zsywjc else  zszl.zsywjc  end as zsywjc   ');
      SQL.Add(' from (');
      SQL.Add('SELECT clzl.cltd,ypzls.YPDH ,ypzls.xh ,ypzls.xh1 ,YPZLS.BWBH+''-Child'' as Relation,clzhzl.CLDH1 as CLBH ');
      SQL.Add(' ,ypzls.BWLB , ');
      SQL.Add(' case when  ((clzhzl_dev.zsdh is not null) and (clzhzl_dev.zsdh<>'''')) then clzhzl_dev.zsdh else clzhzl.zsdh end as CSBH ');
      SQL.Add(' ,ypzls.loss ,ypzls.CLSL*clzhzl.syl as CLSL ,ypzls.CLDJ ,ypzls.Currency ,ypzls.Rate,clzl.CQDH ');
      SQL.Add(',ypzls.Remark ,'''' AS BWMCNM,'''' AS zwsm,'''' as ywsm ,clzl.zwpm AS CLMC,clzl.Ywpm AS CLYWMC ,clzl.dwbh ,');
      SQL.Add(' case when  ((clzhzl_dev.zsdh is not null) and (clzhzl_dev.zsdh<>'''')) then zszl_dev.zsjc else  zszl.zsjc  end as zsjc ');
      SQL.Add(',clzl.clzmlb  ,ypzls.JGZWSM ,ypzls.JGYWSM ,');
      SQL.Add(' case when  ((clzhzl_dev.zsdh is not null) and (clzhzl_dev.zsdh<>'''')) then zszl_dev.zsywjc else  zszl.zsywjc  end as zsywjc ');
      SQL.Add('FROM ypzls ypzls ');
      SQL.Add('inner join clzhzl ON  ypzls.CLBH = CLZHZL.cldh ');
      SQL.Add('left join clzhzl_dev ON clzhzl.cldh=clzhzl_dev.cldh and clzhzl.cldh1=clzhzl_dev.cldh1 ');
      SQL.Add('LEFT JOIN bwzl bwzl ON ypzls.BWBH = bwzl.bwdh ');
      SQL.Add('left JOIN clzl clzl ON CLZHZL.cldh1 = clzl.cldh ');
      SQL.Add('LEFT JOIN zszl zszl ON clzhzl.zsdh = zszl.zsdh ');
      SQL.Add('LEFT JOIN zszl zszl_dev on clzhzl_dev.zsdh = zszl_dev.zsdh ');
      SQL.Add('WHERE YPDH =:ypdh  and CLZHZL.SYL>0   and clzl.clzmlb=''Y''  ');
      SQL.Add(') clzhzl2');
      SQL.Add('inner join clzhzl ON  clzhzl2.CLBH = CLZHZL.cldh ');
      SQL.Add('left join clzhzl_dev ON clzhzl.cldh=clzhzl_dev.cldh and clzhzl.cldh1=clzhzl_dev.cldh1  ');
      SQL.Add('left JOIN clzl clzl ON CLZHZL.cldh1 = clzl.cldh ');
      SQL.Add('LEFT JOIN zszl zszl ON clzhzl.zsdh = zszl.zsdh ');
      SQL.Add('LEFT JOIN zszl zszl_dev on clzhzl_dev.zsdh = zszl_dev.zsdh ');
      //
      SQL.Add(')  a ');
      SQL.Add('left join ypzl on a.ypdh=ypzl.ypdh');
      SQL.Add('left join kfxxzl on kfxxzl.xiexing=ypzl.xiexing and kfxxzl.shehao=ypzl.shehao');
      SQL.Add(')  YPZLS ');
      SQL.Add('left join (');
      SQL.Add('  select Surcharge,Dyingfee,season,CLBH,SampleLeadTime,Prodleadtime,Location,sampleprice,forecast_leadtime,SampleMOQ,ProdMOQ,ExtraPrice,REMARK,USERDATE  from (');
      SQL.Add('   select Surcharge,Dyingfee,season,CLBH,SampleLeadTime,Prodleadtime,Location,sampleprice,forecast_leadtime,SampleMOQ,ProdMOQ,ExtraPrice,REMARK,USERDATE,zsbh,ROW_NUMBER() over (PARTITION BY CLBH ORDER BY ');
      SQL.Add('Substring(Season,1,2) DESC,Substring(Season,3,1) ASC) as  rn from MaterialMOQ');
      //where CLBH not like ''V%'' ');  2017/02/06 顯示暫時料號的MOQ
      SQL.Add('  ) MOQ  ');
      //SQL.Add(') MaterialMOQ on MaterialMOQ.CLBH=YPZLS.CLBH and MaterialMOQ.season=YPZLS.jijie');
      SQL.Add(') MaterialMOQ on MaterialMOQ.CLBH=YPZLS.CLBH');
      SQL.Add('left join (select * from zszl_dev where gsbh=''' + SFactory + ''') zszl_dev on zszl_dev.zsdh=YPZLS.csbh');
      SQL.Add('left join CLZL_LS on CLZL_LS.cldh=ypzls.CLBH');
      SQL.Add('where ypzls.CLYWMC like''%'+Edit15.text+'%''');
      if checkbox1.checked then
      begin
        SQL.Add('and (((LEFT(ypzls.CLBH,3)=''V90'') and (cltd=''VT Mat'') ) ');
        SQL.Add('or ((LEFT(ypzls.CLBH,1) in (''L'',''A'',''C'',''F'',''K'',''D'') or LEFT(ypzls.CLBH,3) in (''D03'',''D11'',''O02'')) and  LEFT(ypzls.CLBH,3) not in (''A02'',''A08'',''A13'',''A48'') )  or (LEFT(ypzls.CLBH,1)=''P'' and ypzls.CSBH=''M027'') )');
      end;
      SQL.Add('group by CLZL_LS.JHDH,zszl_dev.country,MaterialMOQ.REMARK,MaterialMOQ.season,ypzls.clzmlb,ypzls.CLBH,ypzls.CLYWMC,ypzls.CSBH,ypzls.zsywjc ,MaterialMOQ.SampleLeadTime,');
      SQL.Add('MaterialMOQ.ProdLeadTime,MaterialMOQ.Location,MaterialMOQ.sampleprice,MaterialMOQ.forecast_leadtime,');
      SQL.Add('MaterialMOQ.samplemoq,MaterialMOQ.prodmoq,MaterialMOQ.extraprice,Surcharge,Dyingfee,MaterialMOQ.USERDATE  ');
      SQL.Add('order by  MaterialMOQ.ProdLeadTime desc, ypzls.CLBH asc');
     // memo1.text:=sql.text;
     //showmessage(SQL.text);
      active:=true;
    end;
end;

procedure TFDStatusLeadTime.dbgrdh2DblClick(Sender: TObject);
var
  Response: Integer;
begin
    DevBOMQry.Edit;
    if (DevBOMQry.FieldByName('clbh').asstring = '') then
      begin
        Response := MessageDlg('Upload the CLBH swithch?'+ sLineBreak +
                              '(ERP)'+qry2.FieldByName('CLYWMC').asstring+ sLineBreak +
                              '<->(FLEX)'+DevBOMQry.FieldByName('Material').asstring+ sLineBreak +
                              'Color:'+DevBOMQry.FieldByName('Color').asstring
                      , mtConfirmation, [mbYes, mbNo, mbCancel], 0);

        case Response of
          mrYes:
              with Qry_Tmp do
                begin
                  Active := false;
                  SQL.Clear;
                  SQL.Add('Update CostingPriceLibrary set CLBH='''+qry2.FieldByName('CLBH').asstring+'''');
                  SQL.Add('where MTL_No='''+DevBOMQry.FieldByName('MTL_No').asstring+'''');
                  SQL.Add('and Color_No='''+DevBOMQry.FieldByName('Color_No').asstring+'''');
                  SQL.Add('and MaterialSeason='''+DevBOMQry.FieldByName('MaterialSeason').asstring+'''');
                  showmessage(SQL.text);
                  execsql;
                end;
          //mrNo: ShowMessage('No Update');
          mrCancel: exit;
        end;
        DevBOMQry.FieldByName('CLBH').value:=qry2.FieldByName('CLBH').value;
      end;
    if (DevBOMQry.FieldByName('CSBH').asstring = '') then
      begin
        Response := MessageDlg('Upload the CSBH swithch?'+ sLineBreak +
                              qry2.FieldByName('zsywjc').value+ sLineBreak +
                              '<->'+DevBOMQry.FieldByName('Supplier_FLEX').value
                      , mtConfirmation, [mbYes, mbNo, mbCancel], 0);

        case Response of
          mrYes:
              with Qry_Tmp do
                begin
                  Active := false;
                  SQL.Clear;
                  {SQL.Add('Update CostingPriceLibrary set CLBH='''+qry2.FieldByName('CLBH').value+'''');
                  SQL.Add('where MTL_No='''+DevBOMQry.FieldByName('MTL_No').value+'''');
                  SQL.Add('and Color_No='''+DevBOMQry.FieldByName('Color_No').value+'''');
                  SQL.Add('and MaterialSeason='''+DevBOMQry.FieldByName('MaterialSeason').value+'''');
                  execsql;   }
                end;
          mrNo: ShowMessage('你選擇了 No');
          mrCancel: exit;
        end;
        DevBOMQry.FieldByName('CSBH').value:=qry2.FieldByName('CSBH').value;
      end;
    PGC1.ActivePageIndex:=4;

end;

procedure TFDStatusLeadTime.Button11Click(Sender: TObject);
var
 las:integer;
begin
  if Qry3.RecordCount > 0 then
    begin
     Qry4.Active := false;              
     las:=pos('where CLZL.YWPM like',qry4.SQL.Text);
     if las=0 then
      las:=pos('ORDER  BY',qry4.SQL.Text);
     qry4.SQL.text:=copy(qry4.SQL.text,1,las-1)+'where CLZL.YWPM like''%'+Edit15.text+'%'' ORDER  BY MOQ.Prodleadtime DESC, XXZLS.CLBH ASC';
     //showmessage(SQL.test);
     qry4.Active:=true;
   end
   else
    begin
     Qry4.Active := false;
    end;
end;

procedure TFDStatusLeadTime.DBGridEh2DblClick(Sender: TObject);

var
  Response: Integer;
begin
    DevBOMQry.Edit;

    if (DevBOMQry.FieldByName('clbh').asstring = '')
        or CheckBox3.Checked then
      begin
        Response := MessageDlg('Upload the CLBH swithch?'+ sLineBreak +
                              '(ERP)'+qry4.FieldByName('CLYWMC').asstring+ sLineBreak +
                              '<->(FLEX)'+DevBOMQry.FieldByName('Material').asstring+ sLineBreak +
                              'Color:'+DevBOMQry.FieldByName('Color').asstring
                      , mtConfirmation, [mbYes,  mbCancel], 0);

        case Response of
          mrYes:
              with Qry_Tmp do
                begin
                  Active := false;
                  SQL.Clear;
                  SQL.Add('Update CostingPriceLibrary set CLBH='''+qry4.FieldByName('CLBH').asstring+'''');
                  SQL.Add('where MTL_No='''+DevBOMQry.FieldByName('MTL_No').asstring+'''');
                  SQL.Add('and Color_No='''+DevBOMQry.FieldByName('Color_No').asstring+'''');
                  SQL.Add('and MaterialSeason='''+DevBOMQry.FieldByName('MaterialSeason').asstring+'''');
                  showmessage(SQL.text);
                  execsql;
                  DevBOMQry.FieldByName('CLBH').value:=qry4.FieldByName('CLBH').value;
                end;
          //mrNo: ShowMessage('No Update');
          mrCancel: ;
        end;
      end;
    if (DevBOMQry.FieldByName('CSBH').asstring = '') 
        or CheckBox3.Checked then
      begin
        Response := MessageDlg('Upload the CSBH swithch?'+ sLineBreak +
                              '(ERP)'+qry4.FieldByName('zsywjc').value+ sLineBreak +
                              '<->(FLEX)'+DevBOMQry.FieldByName('Supplier_FLEX').value
                      //, mtConfirmation, [mbYes, mbNo, mbCancel], 0);
                      , mtConfirmation, [mbYes, mbCancel], 0);

        case Response of
          mrYes:
              if DevBOMQry.FieldByName('CSBH').asstring='' then
              with Qry_Tmp do
                begin
                  Active := false;
                  SQL.Clear;
                  sql.add('INSERT INTO zszl_flex (zsdh, zsdhflex, USERID,USERDATE)');
                  sql.add('VALUES ('''+qry4.fieldbyname('CSBH').AsString+'''');
                  sql.add(','''+DevBOMQry.fieldbyname('SupplierCode').AsString+'''');
                  sql.add(','''+Main.Edit1.Text+'-DN35'+'''');
                  sql.add(',GETDATE())');
                  execsql;
                  DevBOMQry.FieldByName('CSBH').value:=qry4.FieldByName('CSBH').value;
                end
              else if DevBOMQry.FieldByName('CSBH').asstring<>qry4.fieldbyname('CSBH').AsString then
                  showmessage('System has this CSBH data already'+ sLineBreak +
                                  'ERP code:'+DevBOMQry.fieldbyname('CSBH').AsString+ sLineBreak +
                                  'ERP Name:'+DevBOMQry.fieldbyname('Supplier_ERP').AsString+ sLineBreak +
                                  'Flex code:'+Qry_Tmp.fieldbyname('FlexMaterialCode').AsString+ sLineBreak +
                                  'if Below update is correct, pls check with Dev N29 or Sean to update'+ sLineBreak +
                                  'ERP code:'+qry4.fieldbyname('CSBH').AsString
                                  );


          //mrNo: ShowMessage('你選擇了 No');
          mrCancel: exit;
        end;
      end;
    PGC1.ActivePageIndex:=4;

end;

procedure TFDStatusLeadTime.Button8Click(Sender: TObject);
var  eclApp,WorkBook:olevariant;
     i,j:integer;
begin
 //if DetQry<>nil then DetQry.Active:=false;
 if  Qry_Buylist.active  then
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
        eclApp.Cells(1,1):='No';
        for   i:=0   to   Qry_Buylist.fieldcount-3   do
        begin
            eclApp.Cells(1,i+2):=Qry_Buylist.fields[i].FieldName;
        end;
        for   i:=0   to   DevBOMQry.fieldcount-1   do
        begin
            eclApp.Cells(1,i+Qry_Buylist.fieldcount):=DevBOMQry.fields[i].FieldName;
        end;

        Qry_Buylist.First;

        j:=2;
        while   not   Qry_Buylist.Eof   do
        begin
            while   not   DevBOMQry.Eof   do
            begin
              eclApp.Cells(j,1):=j-1;
              for   i:=0   to  Qry_Buylist.fieldcount-3 do
              begin
                eclApp.Cells(j,i+2):=Qry_Buylist.Fields[i].Value;
              end;
              for   i:=0   to   DevBOMQry.fieldcount-1   do
              begin
                eclApp.Cells(j,i+Qry_Buylist.fieldcount):=DevBOMQry.fields[i].Value;
              end;
              DevBOMQry.Next;
              inc(j);
            end;
        Qry_Buylist.Next;
        //inc(j);
        end;

       eclapp.columns.autofit;
  {
  with TemQry1 do
  begin
    Active:=false;
    SQL.Clear;

    SQL.Add('select Season,GSBH,CWHL,CWHL_ID,USERID,USERDATE from MaterialCBDEx');
    if CheckBox9.Checked =true then
        showmessage(SQL.Text);
    Active:=true;
 end;
      eclApp.WorkSheets[1].Name := 'MaterialCBD_His';
      //eclApp.Workbooks[1].WorkSheets.Add;
      eclApp.WorkSheets[2].Activate;
      eclApp.WorkSheets[2].Name := 'MaterialCBDEX';
        for   i:=0   to   TemQry1.fieldcount-1   do
        begin
            eclApp.Cells(1,i+2):=TemQry1.fields[i].FieldName;
        end;

        TemQry1.First;

        j:=2;
        while   not   TemQry1.Eof   do
        begin
          eclApp.Cells(j,1):=j-1;
          for   i:=0   to  TemQry1.fieldcount-1  do
          begin
            eclApp.Cells(j,i+2):=TemQry1.Fields[i].Value;
          end;
        TemQry1.Next;
        inc(j);
        end;
       eclapp.columns.autofit;     
      eclApp.WorkSheets[1].Activate;
                                         }


       showmessage('Succeed');
       eclApp.Visible:=True;

      except
        on   F:Exception   do
          showmessage(F.Message);
      end;
    end;
end;

procedure TFDStatusLeadTime.DBGridEh4GetCellParams(Sender: TObject;
  Column: TColumnEh; AFont: TFont; var Background: TColor;
  State: TGridDrawState);
begin    
  if not(Qry_Buylist.FieldByName('Missing').IsNull )  then
  begin
    DBGridEh4.canvas.font.color:=clred;
   // dbgrid1.defaultdrawcolumncell(rect,datacol,column,state);
  end;

end;

end.
