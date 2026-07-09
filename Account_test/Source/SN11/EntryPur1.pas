unit EntryPur1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, ComCtrls, ExtCtrls, DB, DBTables, Grids, DBGrids,math,
  GridsEh, DBGridEh, Menus,comobj, Buttons, IniFiles,StrUtils;

type
  TEntryPur = class(TForm)
    EnMas: TQuery;
    EnMasRKNO: TStringField;
    EnMasZSBH: TStringField;
    EnMasZSYWJC: TStringField;
    EnMasZSNO: TStringField;
    EnMasUSERID: TStringField;
    EnMasUSERDATE: TDateTimeField;
    EnMasCFMID: TStringField;
    EnMasCFMDATE: TDateTimeField;
    EnMasYN: TStringField;
    UpMas: TUpdateSQL;
    DS3: TDataSource;
    EnDet: TQuery;
    UPDet: TUpdateSQL;
    DS4: TDataSource;
    Panel1: TPanel;
    Label1: TLabel;
    Label2: TLabel;
    Button1: TButton;
    ConfirmBtn: TButton;
    Button3: TButton;
    DTP1: TDateTimePicker;
    DTP2: TDateTimePicker;
    Edit1: TEdit;
    DBGrid_Prod: TDBGridEh;
    EnMasGSBH: TStringField;
    EnMasCKBH: TStringField;
    PopupMenu1: TPopupMenu;
    EXCEL1: TMenuItem;
    Qtemp: TQuery;
    DBGridEh_RD: TDBGridEh;
    Qry_SamplePayment_Unit: TQuery;
    CurrencyField5: TCurrencyField;
    CurrencyField6: TCurrencyField;
    Qry_MaterialPrice: TQuery;
    Qry_MaterialPriceSamplePrice: TCurrencyField;
    Qry_MaterialPriceSamplePriceVN: TCurrencyField;
    Qry_zszlSamplePayment: TQuery;
    Qry_zszlSamplePaymentFreeQty: TCurrencyField;
    Qry_zszlSamplePaymentCharge: TCurrencyField;
    EnMastest: TFloatField;
    RadixCK: TCheckBox;
    RadioGroup1: TRadioGroup;
    Edit_Password: TEdit;
    Chk_Copy: TCheckBox;
    EnDetRKNO: TStringField;
    EnDetCLBH: TStringField;
    EnDetYWPM: TStringField;
    EnDetDWBH: TStringField;
    EnDetCGBH: TStringField;
    EnDetPaQty: TCurrencyField;
    EnDetQty: TCurrencyField;
    EnDetUSPrice: TCurrencyField;
    EnDetUSACC: TCurrencyField;
    EnDetCostID: TStringField;
    EnDetUSERID: TStringField;
    EnDetUSERDATE: TDateTimeField;
    EnDetYN: TStringField;
    EnDetHandCarry_USPrice: TCurrencyField;
    EnDetHandCarry_USACC: TCurrencyField;
    EnDetDOCNO: TStringField;
    EnDetVNPriceCT: TFloatField;
    EnDetLENGTH: TFloatField;
    EnDetWIDTH: TFloatField;
    EnDetHEIGHT: TFloatField;
    EnDetVNACC12: TFloatField;
    EnDetMEMO: TStringField;
    EnDetSeason: TStringField;
    EnDetPurpose: TStringField;
    EnDetCharge_: TCurrencyField;
    EnDetCGDATE: TDateTimeField;
    EnDetFreeQty_22: TFloatField;
    EnDetCharge_22: TFloatField;
    EnDetFreeQty12: TFloatField;
    EnDetCharge12: TFloatField;
    EnDetCARTON_: TFloatField;
    EnDetFreeQty_: TCurrencyField;
    EnDetQ_VNPrice_: TCurrencyField;
    EnDetQ_USPrice_: TCurrencyField;
    EnDetCharge: TCurrencyField;
    EnDetCharge_VN: TCurrencyField;
    EnDetCharge_Reason: TStringField;
    Qry_zszlSamplePaymentFreeQty2: TCurrencyField;
    Qry_zszlSamplePaymentCharge2: TCurrencyField;
    Qry_zszlSamplePaymentFreeQty1: TCurrencyField;
    Qry_zszlSamplePaymentCharge1: TCurrencyField;
    Qry_zszlSamplePaymentCharge_: TCurrencyField;
    EnMasPurZSBH: TStringField;
    EnMasDOCNO: TStringField;
    CheckBox1: TCheckBox;
    CB1: TComboBox;
    PopupMenu2: TPopupMenu;
    MenuItem1: TMenuItem;
    CAL1: TMenuItem;
    EnDetSurCharge: TCurrencyField;
    EnDetSurCharge_VN: TCurrencyField;
    DBGrid_RK: TDBGridEh;
    Price01: TMenuItem;
    VNPrice1: TMenuItem;
    USPrice1: TMenuItem;
    EnDetArticle: TStringField;
    EnDetsampleEx: TFloatField;
    EnDetMUnkLock: TStringField;
    ITBtn: TBitBtn;
    EnDetCLZL_YN: TStringField;
    EnDetCQDH: TStringField;
    EnDetCLZMLB: TStringField;
    EnDetERP_VNPrice_: TCurrencyField;
    EnDetERP_USPrice_: TCurrencyField;
    EnDetQuoteUS: TFloatField;
    EnDetQuoteVN: TFloatField;
    EnDetCWHL: TCurrencyField;
    EnDetVNPrice: TCurrencyField;
    EnDetVNACC: TCurrencyField;
    EnDetUSPrice_2: TFloatField;
    EnDetUSACC_2: TFloatField;
    EnDetVNPrice_2: TCurrencyField;
    EnDetVNACC_2: TCurrencyField;
    EnMasMEMO: TStringField;
    EnMasHGLB: TStringField;
    EnDetRKSB: TStringField;
    Label3: TLabel;
    Edit2: TEdit;
    EnMastybh: TStringField;
    EnMasDOCDATE: TDateTimeField;
    EnMasDeclaretion: TStringField;
    EnMasInputDate: TDateTimeField;
    EnDetSOTT: TIntegerField;
    EnDetDONGIA: TFloatField;
    Label4: TLabel;
    Edit3: TEdit;
    Query1: TQuery;
    Edit4: TEdit;
    Button2: TButton;
    Qry_Price: TQuery;
    Label5: TLabel;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure Button1Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure ConfirmBtnClick(Sender: TObject);
    procedure Button3Click(Sender: TObject);
    procedure DBGrid_ProdColExit(Sender: TObject);
    procedure EnMasNewRecord(DataSet: TDataSet);
    procedure EnDetNewRecord(DataSet: TDataSet);
    procedure DBGrid_ProdEditButtonClick(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure EXCEL1Click(Sender: TObject);
    procedure Edit1KeyPress(Sender: TObject; var Key: Char);
    procedure EnMasAfterOpen(DataSet: TDataSet);
    procedure DBGridEh_RDEditButtonClick(Sender: TObject);
    procedure DBGridEh_RDColExit(Sender: TObject);
    procedure MenuItem1Click(Sender: TObject);
    procedure CAL1Click(Sender: TObject);
    procedure VNPrice1Click(Sender: TObject);
    procedure USPrice1Click(Sender: TObject);
    procedure ITBtnClick(Sender: TObject);
    procedure EnMasAfterScroll(DataSet: TDataSet);
    procedure Button2Click(Sender: TObject);
  private
    GSBH_SFL:String;
    CheckSuppID:String;    
    CheckSuppPriceID:String;
    IsAllowSuppID:Boolean;
    { Private declarations }
    procedure SetPriceIsFree(Price:string;IsAll:boolean);
    procedure readini();
  public
    VNPrice_DiplayFormat:string;
    VNPrice_Decimal:Byte;
    WH_DiplayFormat:String;
    SQL_LinkServer,AccountN233_CheckLinkServer:string;
    pheduyet,cqbophan,cqkho,nvkho: string;
    { Public declarations }
  end;

var
  EntryPur: TEntryPur;
  NDate:Tdate;

implementation

uses main1, Entry_Print1, EntryPur_Price1, FunUnit;

{$R *.dfm}
procedure TEntryPur.readini();
var MyIni :Tinifile;
    AppDir:string;
begin
  //
  VNPrice_DiplayFormat:='#,##0';
  VNPrice_Decimal:=0;
  WH_DiplayFormat:='#,##0.00';
  CheckSuppID:='VT13,VT01,VT108';
  AccountN233_CheckLinkServer:='Y';
  SQL_LinkServer:='';
  AppDir:=ExtractFilePath(Application.ExeName);
  if FileExists(AppDir+'\ComName.ini')=true then
  begin
    try
      MyIni := Tinifile.Create(AppDir+'\ComName.ini');
      VNPrice_DiplayFormat:=MyIni.ReadString('VNPrice','DiplayFormat','#,##0');
      VNPrice_Decimal:=strtoint(MyIni.ReadString('VNPrice','Decimal','0'));
      WH_DiplayFormat:=MyIni.ReadString('Warehouse','DiplayFormat','#,##0.00');
      CheckSuppID:=MyIni.ReadString('ERP','Account_N11_CheckSuppID_'+main.Edit2.Text,''); 
      CheckSuppPriceID:=MyIni.ReadString('ERP','Account_N11_CheckSuppPriceID','');
      AccountN233_CheckLinkServer:=MyIni.ReadString('ERP','AccountN233_CheckLinkServer','Y');
    finally
      MyIni.Free;
    end;
  end;
  if FileExists(AppDir+'\signNameKCRK.txt')=true then
  begin
    try
      MyIni := Tinifile.Create(AppDir+'\signNameKCRK.txt');
      pheduyet := MyIni.ReadString('ERP', 'Account_N11_PheDuyet', '');
      cqbophan := MyIni.ReadString('ERP', 'Account_N11_CQBoPhan', '');
      cqkho := MyIni.ReadString('ERP', 'Account_N11_CQKho', '');
      nvkho := MyIni.ReadString('ERP', 'Account_N11_NVKho', '');
    finally
      MyIni.Free;
    end;
  end;
  TCurrencyField(EnDet.FieldByName('VNPrice')).DisplayFormat:=VNPrice_DiplayFormat;
  TCurrencyField(EnDet.FieldByName('VNACC')).DisplayFormat:=VNPrice_DiplayFormat;
  TCurrencyField(EnDet.FieldByName('Qty')).DisplayFormat:=WH_DiplayFormat;
  If AccountN233_CheckLinkServer='Y' then
  begin
    SQL_LinkServer:='LacTyDB.LIY_ERP.dbo';
  end else
  begin
    SQL_LinkServer:='dbo';
  end;
end;
//

Function ERPTrunc(value:double;demical:integer):double;
var valueF:double;
begin
  valueF:=value*power(10,-1*demical)+0.5;
  valueF:=trunc(valueF);
  result:=valueF/power(10,-1*demical);
end;

procedure TEntryPur.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  action:=cafree;
end;

procedure TEntryPur.Button1Click(Sender: TObject);
begin
  with EnMas do
  begin
    Active:=false;
    sql.Clear;
    sql.add('select KCRK.*,ZSZL.ZSYWJC,CGZL.ZSBH as PurZSBH,ZSZL.tybh,kcpk.Declaretion  ');
    sql.add('from KCRK');
    sql.add('left join ZSZL on ZSZL.ZSDH=KCRK.ZSBH ');
    sql.add('left join KCCK on KCCK.CKBH=KCRK.CKBH ');
    sql.Add('Left join CGZL on CGZL.CGNO=KCRK.ZSNO ');
    sql.Add('left join KCPK on KCPK.PKNO=KCRK.RKNO ');
    sql.add('where  ISNULL(KCRK.flowflag,'''')<>''X'' and KCRK.CFMID like '+''''+'%NO%'+'''')  ;
    sql.add('and convert(smalldatetime,convert(varchar,KCRK.USERDATE,111)) between'+''''+formatdatetime('yyyy/MM/dd',DTP1.date )+'''');
    sql.add('and '+''''+formatdatetime('yyyy/MM/dd',DTP2.date )+'''');
    sql.add('and KCRK.RKNO like '+''''+edit1.Text+'%'+'''');
    sql.add('and KCCK.GSBH='+''''+main.edit2.text+'''');
    if Edit2.Text<>'' then
      sql.Add('and ZSZL.ZSYWJC like ''%'+edit2.Text+'%''');
    if Edit3.Text<>'' then
      sql.Add('and KCRK.DOCNO like '''+Edit3.Text+'%'' ');
    if CB1.text<>'' then
    begin
      if checkbox1.Checked then
         sql.Add('and KCCK.CKBH ='+''''+CB1.text+'''')
      else
         sql.Add('and KCCK.CKBH not in ('+''''+CB1.text+''')')
    end;
    sql.add('order by KCRK.RKNO  ');
    //funcObj.WriteErrorLog(sql.Text);
    active:=true;
  end;

  //20141110開發中心和量產
  if GSBH_SFL='DC'  then
  begin
     //
     with  EnDet do
     begin
       Active:=false;
       sql.Clear;
       SQL.Add('SET ANSI_NULLS ON ');
       SQL.Add('SET ANSI_WARNINGS ON ');
       ExecSQL();
       sql.Clear;
       sql.add('select * from (  ');
       sql.add('select  ');
       sql.add('KCRKS.RKNO ');
       sql.add(',KCRKS.CLBH    ');
       sql.add(',KCRKS.CGBH        ');
       sql.add(',KCRKS.RKSB ');
       sql.add(',KCRKS.Qty    ');
       sql.add(',KCRKS.PaQty   ');
       sql.add(',convert(float,KCRKS.USPrice) as USPrice   ');
       sql.add(',KCRKS.USACC');
       sql.add(',KCRKS.HandCarry_USPrice   ');
       sql.add(',KCRKS.HandCarry_USACC    ');
       sql.add(',KCRKS.VNPrice   ');
       sql.add(',KCRKS.VNACC     ');
       sql.add(',KCRKS.CWHL     ');
       sql.add(',KCRKS.CostID    ');
       sql.add(',KCRKS.USERID     ');
       sql.add(',KCRKS.USERDATE   ');
       sql.add(',KCRKS.YN        ');
       sql.add(',KCRKS.FKZT      ');
       sql.add(',KCRKS.DOCNO      ');
       sql.add(',KCRKS.VNPriceCT   ');
       sql.add(',KCRKS.RKMEMO     ');
       sql.add(',KCRKS.CNO        ');
       sql.add(',KCRKS.MEMO       ');
       sql.add(',CLZL.YWPM,Convert(float,null) as QuoteUS,Convert(float,null) as QuoteVN');
       sql.add(',Convert(float,null) as samplePrice,Convert(float,null) as  samplePriceVN ,Convert(float,null) as sampleEx ');
       sql.Add(',CLZL.DWBH,LENGTH,WIDTH,HEIGHT,CGZL.Season,CGZL.Purpose ,CGZL.CGDATE,KCRKS.Charge,KCRKS.Charge_VN,KCRKS.Charge_Reason');
       sql.Add(',USPrice_2,USACC_2,VNPrice_2,VNACC_2,KCRKS.SurCharge,KCRKS.SurCharge_VN,DDZL.Article,'''' as MUnkLock,CLZL.YN as CLZL_YN,CLZL.CQDH,CLZL.CLZMLB,KCRKS.SOTT,CGZL_DeclarationS.Y_DonGia as DONGIA  ');
       sql.add('from KCRKS       ');
       SQL.Add('left join kcrk on kcrk.rkno = kcrks.rkno');
       sql.add('left join CLZL on CLZL.CLDH=KCRKS.CLBH    ');
       sql.add('left join YWWX2 on YWWX2.CLBH=KCRKS.CLBH      ');
       sql.add('left join CGZL on CGZL.CGNO=KCRK.ZSNO      ');
       sql.Add('left join DDZL on DDZL.DDBH=KCRKS.CGBH');
       sql.Add('left join kcpk on kcrk.rkno=kcpk.PKNO ');
       sql.Add('left join '+SQL_LinkServer+'.CGZL_DeclarationS CGZL_DeclarationS on CGZL_DeclarationS.DOCNO=kcrk.DOCNO and CGZL_DeclarationS.DECLARATION=kcpk.Declaretion and CGZL_DeclarationS.SOTT=kcrks.SOTT');
       sql.add('where KCRKS.RKNO=:RKNO )main             ');
       //sql.add('left join (select clbh,season,min(sampleprice) as ERP_USPrice_,min(samplepricevn) as ERP_VNPrice_ from materialmoq group by clbh,season) materialmoq on materialmoq.CLBH=main.CLBH and materialmoq.season=main.season ');
       sql.add('left join (select clbh,min(sampleprice) as ERP_USPrice_,min(samplepricevn) as ERP_VNPrice_ from materialmoq group by clbh) materialmoq on materialmoq.CLBH=main.CLBH  ');
       sql.add('order by CGBH,main.CLBH ');
       //funcObj.WriteErrorLog(sql.Text);       
      //showmessage(SQL.text);
     end;
  end else   //量產
  begin
    with EnDet do
    begin
      Active:=false;
      sql.Clear;
      SQL.Add('SET ANSI_NULLS ON ');
      SQL.Add('SET ANSI_WARNINGS ON ');
      ExecSQL();
      sql.Clear;
      sql.add('select * from (  ');
      sql.add('select  ');
      sql.add('KCRKS.RKNO ');
      sql.add(',KCRKS.CLBH  ');
      sql.add(',KCRKS.CGBH  ');
      sql.add(',KCRKS.RKSB  ');
      sql.add(',KCRKS.Qty    ');
      sql.add(',KCRKS.PaQty   ');
      sql.add(',convert(float,KCRKS.USPrice) as USPrice   ');
      sql.add(',KCRKS.USACC as USACC   ');
      sql.add(',KCRKS.HandCarry_USPrice   ');
      sql.add(',KCRKS.HandCarry_USACC    ');
      sql.add(',KCRKS.VNPrice   ');
      sql.add(',KCRKS.VNACC     ');
      sql.add(',KCRKS.CWHL     ');
      sql.add(',KCRKS.CostID    ');
      sql.add(',KCRKS.USERID     ');
      sql.add(',KCRKS.USERDATE   ');
      sql.add(',KCRKS.YN        ');
      sql.add(',KCRKS.FKZT      ');
      sql.add(',KCRKS.DOCNO      ');
      sql.add(',KCRKS.VNPriceCT   ');
      sql.add(',KCRKS.RKMEMO     ');
      sql.add(',KCRKS.CNO        ');
      sql.add(',KCRKS.MEMO       ');
      sql.add(',case when left(KCRKS.CLBH,2)=''U1'' and right(CLZL.YWPM,3)<>right(HEIGHT,2)+'')''    ');
      sql.add('      then rtrim(CLZL.ywpm)+ ''(''+CONVERT(varchar,YWWX2.Length)+''*''+CONVERT(varchar,YWWX2.Width)+''*''+CONVERT(varchar,YWWX2.Height)+'')''    ');
      //sql.add('    else CLZL.YWPM end  as  YWPM,#LastCGBJ.USPrice as QuoteUS,#LastCGBJ.VNPrice as QuoteVN,MaterialCBD.samplePrice,Round(MaterialCBD.samplePrice*'+CBDExchange+',0) as samplePriceVN ,Convert(float,'+CBDExchange+') as sampleEx ');
      //sql.add('      else CLZL.YWPM end  as  YWPM,#LastCGBJ.USPrice as QuoteUS,#LastCGBJ.VNPrice as QuoteVN,MaterialCBD.samplePrice,Round(MaterialCBD.samplePrice*MaterialCBDEx.CWHL,0) as samplePriceVN ,MaterialCBDEx.CWHL as sampleEx ');
      sql.add('      else CLZL.YWPM end  as  YWPM,#LastCGBJ.USPrice as QuoteUS,#LastCGBJ.VNPrice as QuoteVN,MaterialCBDEx.CWHL as sampleEx ');
      sql.add(',CLZL.DWBH,LENGTH,WIDTH,HEIGHT,CGZL.Season,CGZL.Purpose ,CGZL.CGDATE,KCRKS.Charge,KCRKS.Charge_VN,KCRKS.Charge_Reason    ');           //modify here May.10.2013
      sql.Add(',USPrice_2,USACC_2,VNPrice_2,VNACC_2,KCRKS.SurCharge,KCRKS.SurCharge_VN,DDZL.Article,MaterialCBDFilter.YN as MUnkLock,CLZL.YN as CLZL_YN,CLZL.CQDH,CLZL.CLZMLB,KCRKS.SOTT, CGZL_DeclarationS.Y_DonGia as DONGIA ');
      sql.add('from KCRKS       ');
      SQL.Add('left join kcrk on kcrk.rkno = kcrks.rkno');
      sql.add('left join CLZL on CLZL.CLDH=KCRKS.CLBH    ');
      sql.add('left join YWWX2 on YWWX2.CLBH=KCRKS.CLBH      ');
      sql.add('left join CGZL on CGZL.CGNO=KCRK.ZSNO      ');
      //20150506 新增報價資訊和限制
      SQL.Add('left join #LastCGBJ on #LastCGBJ.CLBH=KCRKS.CLBH ');
      //20180314 新增CBD報價
      //sql.Add('left join MaterialCBD on MaterialCBD.CLBH=KCRKS.CLBH ' );
      //sql.Add('left join ( Select CLBH,samplePrice From ( select *, ROW_NUMBER() over (PARTITION BY CLBH ORDER BY UserDate desc) as Sort From MaterialCBD) MaterialCBD where sort=1 )MaterialCBD on KCRKS.CLBH = MaterialCBD.CLBH ');
      //MaterialCBD_His新增報價季度   按最後報價單 CGBJS.Season  計算季度
      //sql.Add('left join MaterialCBD_His MaterialCBD on KCRKS.CLBH = MaterialCBD.CLBH ');

      //原本以為有用到新增季度,但實際查核沒使用 20240805 SEAN
      //SQL.add('left join MaterialCBD_His MaterialCBD on KCRKS.CLBH = MaterialCBD.CLBH and MaterialCBD.Season=#LastCGBJ.season');
      //SQL.add('and MaterialCBD.YN=0');  // 有價格跟沒價格都會存系統  YN=0只抓有價格
      //季度新增匯率  按 "採購日期" 計算季度
      sql.Add('left join MaterialCBDEx on MaterialCBDEx.Season=#LastCGBJ.season and MaterialCBDEx.GSBH='''+main.Edit2.Text+'''');
      //sql.Add('left join MaterialCBDEx on (case when month(CGZL.CGDate)<07 then ''FH''+SUBSTRING(CAST(YEAR(CGZL.CGDate) as VARCHAR),3,2)else ''SU''+SUBSTRING(CAST(YEAR(CGZL.CGDate)+1 as VARCHAR),3,2)  end )=MaterialCBDEx.Season');
      sql.add('left join MaterialCBDFilter on MaterialCBDFilter.CLBH=KCRKS.CLBH  and MaterialCBDFilter.GSBH='''+main.Edit2.Text+''' ');
      sql.Add('left join DDZL on DDZL.DDBH=KCRKS.CGBH');
      sql.Add('left join kcpk on kcrk.rkno=kcpk.PKNO ');
      sql.Add('left join '+SQL_LinkServer+'.CGZL_DeclarationS CGZL_DeclarationS on CGZL_DeclarationS.DOCNO=kcrk.DOCNO and CGZL_DeclarationS.DECLARATION=kcpk.Declaretion and CGZL_DeclarationS.SOTT=kcrks.SOTT');
      sql.add('where KCRKS.RKNO=:RKNO )main             ');
      //sql.add('left join (select clbh,season,sampleprice as ERP_USPrice_,samplepricevn as ERP_VNPrice_ from materialmoq)materialmoq on materialmoq.CLBH=main.CLBH and materialmoq.season=main.season ');
      //2025.05.22
      //sql.add('left join (select clbh,sampleprice as ERP_USPrice_,samplepricevn as ERP_VNPrice_ from materialmoq)materialmoq on materialmoq.CLBH=main.CLBH');
      sql.add('left join (select zsbh,clbh,sampleprice as ERP_USPrice_,samplepricevn as ERP_VNPrice_ from materialmoq)materialmoq on materialmoq.CLBH=main.CLBH and materialmoq.zsbh=:zsbh');
      sql.add('order by CGBH,main.CLBH ');
      //funcObj.WriteErrorLog(sql.Text);
      //showmessage(SQL.text);
    end;
  end;
  if EnMas.RecordCount>0 then EnDet.Active:=true;
end;

procedure TEntryPur.FormCreate(Sender: TObject);
var i:integer;
begin
  with Qtemp do
  begin
    active:=false;
    sql.Clear;
    sql.add('select CKBH from KCCK  where GSBH ='''+main.Edit2.Text+''' order by CKBH');
    active:=true;
    CB1.Items.Add('');
    for i:=1 to recordcount do
    begin
        CB1.Items.Add(fieldbyname('CKBH').asstring);
        next;
    end;
    active:=false;
  end;
  with Qtemp do
  begin
      active:=false;
      sql.Clear;
      sql.add('select getdate() as NDate ');
      active:=true;
      Ndate:=fieldbyname('NDate').Value;
      active:=false;
  end;
  //報價單價 & CBD單價
  {CBDExchange:='0';
  with Qtemp do
  begin
    Active:=false;
    SQL.Clear;
    SQL.Add('select top 1 CWHL from MaterialCBDEx ');
    Active:=true;
    if RecordCount>0 then
    begin
      CBDExchange:=FieldByname('CWHL').AsString;
    end;
    Active:=false;
  end;   }
  with Qtemp do
  begin
    Active:=false;
    sql.Clear;
    sql.add(' if object_id(''tempdb..#LastCGBJ'') is not null  ');
    sql.add('begin   drop table #LastCGBJ end   ');
    SQL.Add('select * into #LastCGBJ from (select CLBH,USPRICE,VNPRICE,Season from ( select CGBJS.BJNO,CLBH,USPRICE,VNPRICE,Season,ROW_NUMBER() over (PARTITION BY CLBH ORDER BY CGBJS.BJNO DESC) as  rn from CGBJS,CGBJ where CGBJS.BJNO=CGBJ.BJNO and CGBJ.GSBH='''+main.Edit2.Text+'''  ');
    SQL.Add(') A where A.rn=1 ) CGBJS');
    //funcObj.WriteErrorLog(sql.Text);
    ExecSQL();
    Active:=false;
  end;
  with Qtemp do
  begin
    Active:=false;
    sql.Clear;
    sql.add('select SFL from Bgszl where GSDH='''+main.Edit2.Text+''' ');
    active:=true;
    GSBH_SFL:=FieldByName('SFL').AsString;
    Active:=false;
  end;
  //
  DTP1.Date:=Ndate-3;
  DTP2.Date:=Ndate;
  //20141110 開發中心會計
  if GSBH_SFL='DC' then
   begin
     DBGrid_Prod.Visible:=false;
     DBGridEh_RD.Visible:=true;
     DBGridEh_RD.Align:=alClient;
     Edit_Password.Visible:=TRUE;
     RadixCK.Visible:=TRUE;
     RadioGroup1.Visible:=TRUE;
     Chk_Copy.Visible:=true;
   end else
   begin
     DBGridEh_RD.Visible:=False;
     DBGrid_Prod.Visible:=true;
     DBGrid_Prod.Align:=alClient;
     Edit_Password.Visible:=false;
     RadixCK.Visible:=false;
     RadioGroup1.Visible:=false;
     Chk_Copy.Visible:=false;
   end;
   if (main.Edit2.Text='VA12') or (main.Edit2.Text='VC2') then
   begin
     Edit4.Visible:=True;
     Button2.Visible:=True;
   end;  
   readini();
end;

procedure TEntryPur.ConfirmBtnClick(Sender: TObject);
var i,j:integer;
    tmpSuppIDList:TStringlist;
    index:integer;
    CQCN, CQBP, CQK, NVK: string;
begin
  IsAllowSuppID:=false;
  if  CheckSuppID <> '' then
  begin
    tmpSuppIDList:=FuncObj.SplitString(CheckSuppID,',');
    index:=tmpSuppIDList.IndexOf(ENMas.FieldByName('ZSBH').AsString);
    if index>=0 then IsAllowSuppID:=true;
    tmpSuppIDList.Free;
  end else
  begin
    IsAllowSuppID:=false;
  end;
  if ((copy(EnMas.FieldByName('HGLB').AsString,1,2)='NK') or (copy(EnMas.FieldByName('HGLB').AsString,1,2)='TC') or (copy(EnMas.FieldByName('HGLB').AsString,1,2)='HD')
              or (copy(EnMas.FieldByName('HGLB').AsString,1,2)='NQ')  or  (copy(EnMas.FieldByName('HGLB').AsString,1,2)='KD') or  (copy(EnMas.FieldByName('HGLB').AsString,1,2)='H1'))  then
  begin
    if IsAllowSuppID= false then
    begin
      if (Formatdatetime('yyyy/MM/dd',EnMas.fieldbyname('USERDATE').Value)) <>  (Formatdatetime('yyyy/MM/dd',EnMas.fieldbyname('DOCDATE').Value)) then
      begin
        showmessage('UserDate not the same DocDate');
        abort;
      end;
    end;
  end;
  with EnDet do
  begin
    first;
    while not eof do
    begin
        if  (fieldbyname('USPrice').isnull and fieldbyname('VNPrice').isnull) then
        begin
            showmessage('Price can not be empty.');
            abort;
        end else
        begin
              //20241108 kiem tra gia thu mua voi gia to khai
              if ((copy(EnMas.FieldByName('HGLB').AsString,1,2)='NK') or (copy(EnMas.FieldByName('HGLB').AsString,1,2)='TC') or (copy(EnMas.FieldByName('HGLB').AsString,1,2)='NQ') or (copy(EnMas.FieldByName('HGLB').AsString,1,2)='KD'))  then
              begin
                if IsAllowSuppID= false then
                begin
                  with  Qtemp do
                  begin
                    Active:=false;
                    sql.Clear;
                    SQL.Add('SET ANSI_NULLS ON ');
                    SQL.Add('SET ANSI_WARNINGS ON ');
                    ExecSQL();
                    sql.Clear;
                    sql.Add('SELECT AK_NgoaiTenHD FROM '+SQL_LinkServer+'.CGZL_Declaration CGZL_Declaration');
                    sql.Add('where DECLARATION='''+EnMas.fieldbyname('Declaretion').AsString+''' and DOCNO='''+EnMas.fieldbyname('DOCNO').AsString+''' ');
                    active:=true;
                  end;
                  if Qtemp.FieldByName('AK_NgoaiTenHD').AsString='USD' then
                  begin
                    if ((RightStr(Enmas.FieldByName('CKBH').AsString,1)<>'X') and (RightStr(Enmas.FieldByName('CKBH').AsString,1)<>'Y') and (RightStr(Enmas.FieldByName('CKBH').AsString,1)<>'Z') and (fieldbyname('USPrice').Value<>fieldbyname('DONGIA').Value) ) then
                    begin
                      showmessage('USPrice not the same Declaretion Price ');
                      abort;
                    end;
                  end else begin
                    if ((RightStr(Enmas.FieldByName('CKBH').AsString,1)<>'X') and (RightStr(Enmas.FieldByName('CKBH').AsString,1)<>'Y') and (RightStr(Enmas.FieldByName('CKBH').AsString,1)<>'Z') and (fieldbyname('VNPrice').Value<>fieldbyname('DONGIA').Value) ) then
                    begin
                      showmessage('VNPrice not the same Declaretion Price ');
                      abort;
                    end;
                  end;
                end;
              end;
              //
              if ((not fieldbyname('USPrice').isnull) and (not fieldbyname('VNPrice').isnull)) then
              begin
               showmessage('Can not have two price.');
               abort;
              end else
              begin
                //
                if not fieldbyname('USPrice').isnull then
                begin
                  edit;
                  fieldbyname('USACC').Value:=trunc(fieldbyname('USPrice').value*fieldbyname('Qty').value*100+0.5)/100;
                  fieldbyname('USPrice_2').Value:=fieldbyname('USPrice').value;
                  fieldbyname('USACC_2').Value:=fieldbyname('USACC').value;
                end;
                if not fieldbyname('VNPrice').isnull then
                begin
                  edit;
                  fieldbyname('VNACC').Value:=ERPTrunc(fieldbyname('VNPrice').value*fieldbyname('Qty').value,-VNPrice_Decimal);
                  fieldbyname('VNPrice_2').Value:=fieldbyname('VNPrice').value;
                  fieldbyname('VNACC_2').Value:=fieldbyname('VNACC').value;
                end;
              end;
        end;
        next;
    end;
  end;

    try
      with EnDet do
        begin
         first;
          while not eof do
            begin
              if updatestatus=usmodified then
                begin
                  UPdet.apply(ukmodify);
                end;
              next;
            end;
          active:=false;
          active:=true;
        end;
   // showmessage('Succeed.');
    except
      showmessage('Have wrong.');
    end;

  Entry_Print:=TEntry_Print.Create(nil);
  CQCN:=pheduyet;
  CQBP:=cqbophan;
  CQK:=cqkho;
  NVK:=nvkho;
  if main.Edit2.Text = 'VA12' then
    begin
      with Query1 do
      begin
        Active:=False;
        SQL.Clear;
        SQL.Add('select distinct position, deputyName from RK_Leave R');
        SQL.Add('where 1=1');
        SQL.Add('and convert(datetime,''' + FormatDateTime('yyyy/MM/dd', EnMas.FieldByName('UserDate').AsDateTime) +''', 111) between R.StartDate and R.EndDate');
        //ShowMessage(SQL.Text);
        Active:=True;
      end;
      if Query1.recordcount>0 then
      begin
        Query1.First;
        while not Query1.Eof do
        begin
           if (Query1.FieldByName('Position').Value='CQCN')and (Query1.FieldByName('DeputyName').Value <>'') then
            begin
              CQCN:= Query1.FieldByName('DeputyName').Value ;
            end;
           if (Query1.FieldByName('Position').Value='CQBP')and (Query1.FieldByName('DeputyName').Value <>'') then
           begin
              CQBP:= Query1.FieldByName('DeputyName').Value ;
           end;
           if (Query1.FieldByName('Position').Value='CQK')and (Query1.FieldByName('DeputyName').Value <>'') then
           begin
              CQK:= Query1.FieldByName('DeputyName').Value ;
           end;
           if (Query1.FieldByName('Position').Value='NVK')and (Query1.FieldByName('DeputyName').Value <>'') then
           begin
               NVK:= Query1.FieldByName('DeputyName').Value ;
           end;
           Query1.Next;
        end;
      end;
       { Entry_Print.QRLabel4.Caption :=CQCN;
        Entry_Print.QRLabel5.Caption := CQBP;
        Entry_Print.QRLabel6.Caption := CQK;
        Entry_Print.QRLabel7.Caption := NVK;}
    end;
  Entry_Print.quickrep1.prepare;
  Entry_Print.Qpage1.caption:=inttostr(Entry_Print.quickrep1.QRPrinter.pagecount);
  Entry_Print.quickrep1.preview;
  Entry_Print.Free;

  if messagedlg('Confirm or not ?',mtinformation,[mbYes,mbNo],0)=mrYes then
  begin
    try
      with EnMas do
        begin
          edit;
          fieldbyname('CFMDATE').Value:=Ndate;
          fieldbyname('CFMID').Value:=main.edit1.text;
          UPMas.Apply(ukmodify);
          active:=false;
          active:=true;
        end;
      showmessage('Succeed.');
    except
      showmessage('Have wrong.');
    end;
  end ;
end;

procedure TEntryPur.Button3Click(Sender: TObject);
begin
  EnDet.Active:=false;
  EnMas.Active:=false;
  EnMas.Active:=true;
  EnDet.Active:=true;
end;

procedure TEntryPur.DBGrid_ProdColExit(Sender: TObject);
begin
  if EnDet.Active then
  begin
    if EnDet.recordcount>0 then
      begin
        if DBGrid_Prod.Selectedindex=3  then
          begin
            if not EnDet.FieldByName('USPrice').IsNull then
              begin
                  begin
                     EnDet.Edit;
                     EnDet.FieldByName('USACC').value:=trunc(EnDet.FieldByName('USPrice').value*EnDet.FieldByName('Qty').value*100+0.5)/100  ;
                  end;
              end;
          end;
        if DBGrid_Prod.Selectedindex=4  then
          begin
            if not EnDet.FieldByName('USACC').IsNull then
              begin
                if EnDet.FieldByName('USPrice').Isnull then
                  begin
                     EnDet.Edit;
                     EnDet.FieldByName('USPrice').value:=EnDet.FieldByName('USACC').value/EnDet.FieldByName('Qty').value  ;
                  end ;
              end;
          end; 
        if DBGrid_Prod.Selectedindex=6  then
          begin
            if not EnDet.FieldByName('VNPrice').IsNull then
              begin
                  begin
                     EnDet.Edit;
                     EnDet.FieldByName('VNACC').value:=ERPTrunc(EnDet.FieldByName('VNPrice').value*EnDet.FieldByName('Qty').value,-VNPrice_Decimal)  ;
                  end;
              end;
          end;
        if DBGrid_Prod.Selectedindex=7  then
          begin
            if not EnDet.FieldByName('VNACC').IsNull then
              begin
                if EnDet.FieldByName('VNPrice').Isnull then
                  begin
                     EnDet.Edit;
                     EnDet.FieldByName('VNPrice').value:=ERPTrunc(EnDet.FieldByName('VNACC').value/EnDet.FieldByName('Qty').value,-VNPrice_Decimal)  ;
                  end;
              end;
          end;
      end;
  end;

end;

procedure TEntryPur.EnMasNewRecord(DataSet: TDataSet);
begin
abort;
end;

procedure TEntryPur.EnDetNewRecord(DataSet: TDataSet);
begin
abort;
end;

procedure TEntryPur.DBGrid_ProdEditButtonClick(Sender: TObject);
begin
  if not EnDet.FieldByName('CLBH').IsNull then
  begin
    EntryPur_Price:=TEntryPur_Price.Create(self);
    EntryPur_Price.EDIT1.Text:=EnDet.fieldbyname('CLBH').value;
    EntryPur_Price.Button1Click(nil);
    EntryPur_Price.Show;
  end;
end;

procedure TEntryPur.FormDestroy(Sender: TObject);
begin
EntryPur:=nil;
end;

procedure TEntryPur.EXCEL1Click(Sender: TObject);
var eclApp,WorkBook:olevariant;
    i,j:integer;
begin

  if EnMas.Active then
  begin
    if EnMas.recordcount=0 then
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
    EnDet.Active:=false;
    WorkBook:=eclApp.workbooks.Add;
    eclApp.Cells(1,1):='NO';
    for   i:=1   to   EnMas.fieldcount   do
      begin
        eclApp.Cells(1,i+1):=EnMas.fields[i-1].FieldName;
      end;
    EnMas.First;
    j:=2;
    while   not  EnMas.Eof   do
      begin
        eclApp.Cells(j,1):=j-1;
        for   i:=1   to   EnMas.fieldcount   do
          begin
            eclApp.Cells(j,i+1):=EnMas.Fields[i-1].Value;
            eclApp.Cells.Cells.item[j,i+1].font.size:='8';
          end;
        EnMas.Next;
        inc(j);
      end;
    eclapp.columns.autofit;
    showmessage('Succeed.');
    eclApp.Visible:=True;
    EnDet.Active:=true;
  except
    on   F:Exception   do
      showmessage(F.Message);
  end;

end;



procedure TEntryPur.Edit1KeyPress(Sender: TObject; var Key: Char);
begin
 if key=#13 then
    Button1Click(edit1);
end;

procedure TEntryPur.EnMasAfterOpen(DataSet: TDataSet);
begin
  if EnMas.RecordCount>0 then ConfirmBtn.Enabled:=true else ConfirmBtn.Enabled:=false;
end;

procedure TEntryPur.DBGridEh_RDEditButtonClick(Sender: TObject);
begin
  if not EnDet.FieldByName('CLBH').IsNull then
  begin
    EntryPur_Price:=TEntryPur_Price.Create(self);
    EntryPur_Price.EDIT1.Text:=EnDet.fieldbyname('CLBH').value;
    EntryPur_Price.Show;
  end
end;


procedure TEntryPur.DBGridEh_RDColExit(Sender: TObject);
begin
  if EnDet.Active then
  begin
      if EnDet.recordcount>0 then
      begin
        if DBGridEh_RD.Selectedindex=4  then
          begin
            if not EnDet.FieldByName('USPrice').IsNull then
            begin
               EnDet.Edit;
               EnDet.FieldByName('USACC').value:=trunc(EnDet.FieldByName('USPrice').value*EnDet.FieldByName('Qty').value*100+0.5)/100  ;
            end;
          end;
        if DBGridEh_RD.Selectedindex=6  then
          begin
            if not EnDet.FieldByName('USACC').IsNull then
            begin
              if EnDet.FieldByName('USPrice').Isnull then
              begin
                EnDet.Edit;
                EnDet.FieldByName('USPrice').value:=EnDet.FieldByName('USACC').value/EnDet.FieldByName('Qty').value  ;
              end;
            end;
          end;
        if DBGridEh_RD.Selectedindex=7  then
          begin
            if not EnDet.FieldByName('VNPrice').IsNull then
            begin
               EnDet.Edit;
               EnDet.FieldByName('VNACC').value:=ERPTrunc(EnDet.FieldByName('VNPrice').value*EnDet.FieldByName('Qty').value,-VNPrice_Decimal)  ;
            end;
          end;
          if DBGridEh_RD.Selectedindex=9  then
          begin
             if not EnDet.FieldByName('VNACC').IsNull then
              begin
                if EnDet.FieldByName('VNPrice').Isnull then
                begin
                  EnDet.Edit;
                  EnDet.FieldByName('VNPrice').value:=ERPTrunc(EnDet.FieldByName('VNACC').value/EnDet.FieldByName('Qty').value,-VNPrice_Decimal)  ;
                end;
              end;
          end;
      end;
  end;
end;
procedure TEntryPur.MenuItem1Click(Sender: TObject);
var
      eclApp,WorkBook:olevariant;
 //     xlsFileName:string;
      i,j:integer;
begin
 if EnDet.Active then
  begin
    if EnDet.recordcount=0 then
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

  WorkBook:=eclApp.workbooks.Add;
  eclApp.Cells(1,1):='NO';
  for   i:=1   to   EnDet.fieldcount   do
    begin
      eclApp.Cells(1,i+1):=EnDet.fields[i-1].FieldName;
    end;
  EnDet.First;
  j:=2;
  while   not  EnDet.Eof   do
    begin
      eclApp.Cells(j,1):=j-1;
      for   i:=1   to   EnDet.fieldcount   do
        begin
          eclApp.Cells(j,i+1):=EnDet.Fields[i-1].Value;
          eclApp.Cells.Cells.item[j,i+1].font.size:='10';
        end;
      EnDet.Next;
      inc(j);
    end;
  eclapp.columns.autofit;
  showmessage('Succeed.');
  eclApp.Visible:=True;
 except
  on   F:Exception   do
    showmessage(F.Message);
end;
end;

procedure TEntryPur.CAL1Click(Sender: TObject);
var i,j:integer;
    CLEdit:string;
    ChargeEdit,Charge_VNEdit:double;
    diff_Acc,Before_USAcc,After_USAcc,Before_VNAcc,After_VNAcc:double;
begin
  Before_USAcc:=0;
  After_USAcc:=0;
  Before_VNAcc:=0;
  After_VNAcc:=0;
  CLEdit:='';
  ChargeEdit:=-1;
  Charge_VNEdit:=-1;
  CLEdit:=EnDet.fieldbyname('CLBH').value;
  if not EnDet.fieldbyname('Charge').IsNull then
     ChargeEdit:=EnDet.fieldbyname('Charge').value;
  if not EnDet.fieldbyname('Charge_VN').IsNull then
     Charge_VNEdit:=EnDet.fieldbyname('Charge_VN').value;
  if (ChargeEdit>0) and  (EnDet.fieldbyname('USPrice').IsNull ) then
  begin
    showmessage('No USPrice, Can''t Additonal Cost');
    abort;
  end;
  if (Charge_VNEdit>0) and  (EnDet.fieldbyname('VNPrice').IsNull ) then
  begin
    showmessage('No VNPrice, Can''t Additonal Cost');
    abort;
  end;
  with QTemp do
  begin
    active:=false;
    sql.Clear;
    sql.Add('select CLBH,SUM(Qty) as Qty,Max(USPrice) as USPrice,Max(VNPrice) as VNPrice') ;
    sql.Add('from KCRKS');
    sql.Add('where RKNO='''+EnDet.fieldbyname('RKNO').Value+''' and CLBH='''+EnDet.fieldbyname('CLBH').value+''' ');
    sql.Add('group by CLBH');
    active:=true;
    if not EnDet.fieldbyname('USPrice').IsNull then
       Before_USAcc:=fieldbyname('USPrice').Value*fieldbyname('Qty').Value
    else if not EnDet.fieldbyname('VNPrice').IsNull then
       Before_VNAcc:=fieldbyname('VNPrice').Value*fieldbyname('Qty').Value;
  end;
  //
  with EnDet do
  begin
    for i:=0 to Qtemp.RecordCount-1 do
    begin
       First;
       for j:=0 to EnDet.recordcount-1 do
       begin
          if Qtemp.fieldbyname('CLBH').Value=FieldByName('CLBH').Value then
          begin
               if ((QTemp.fieldbyname('USPrice').IsNull) and (QTemp.fieldbyname('VNPrice').IsNull)) then
               begin
                 showmessage('Pls input Price');
                 abort;
               end;
               if ((EnDet.fieldbyname('USACC').IsNull) and (EnDet.fieldbyname('VNACC').IsNull)) then
               begin
                 showmessage('Pls have USACC or VNACC');
                 abort;
               end;
               if ChargeEdit>=0 then
               begin
                 edit;
                 fieldbyname('USPrice').Value:=roundto((Qtemp.fieldbyname('USPrice').Value*Qtemp.fieldbyname('Qty').Value+ChargeEdit)/Qtemp.fieldbyname('Qty').value,-3);
                 fieldbyname('USACC').Value:=trunc(fieldbyname('USPrice').value*fieldbyname('Qty').value*100+0.5)/100;
                 After_USAcc:=fieldbyname('USACC').Value+After_USAcc;
                 FieldByName('SurCharge').Value:=roundto(fieldbyname('USPrice').Value-Qtemp.fieldbyname('USPrice').Value,-3);
               end else if Charge_VNEdit>=0 then
               begin
                 edit;
                 fieldbyname('VNPrice').Value:=roundto((Qtemp.fieldbyname('VNPrice').Value*Qtemp.fieldbyname('Qty').Value+Charge_VNEdit)/Qtemp.fieldbyname('Qty').value,-VNPrice_Decimal);
                 fieldbyname('VNACC').Value:=roundto(fieldbyname('VNPrice').value*fieldbyname('Qty').value,-VNPrice_Decimal);
                 After_VNAcc:=fieldbyname('VNAcc').Value+After_VNAcc;
                 FieldByName('SurCharge_VN').Value:=fieldbyname('VNPrice').Value-Qtemp.fieldbyname('VNPrice').Value;
               end;
          end;
       next;
       end;
    Qtemp.Next;
    end;
  end;
  //調整美金總金額微差異 ,越盾無法調整因為整數
  if ChargeEdit>=0 then
  begin
     if   After_USAcc<>Before_USACC+ChargeEdit then
     begin
       diff_Acc:=Before_USACC+ChargeEdit-After_USAcc;
       with EnDet do
       begin
         First;
         for j:=0 to EnDet.recordcount-1 do
         begin
            if Qtemp.fieldbyname('CLBH').Value=FieldByName('CLBH').Value then
            begin
              if ChargeEdit>=0 then
              begin
                edit;
                fieldbyname('USPrice').Value:=roundto(fieldbyname('USPrice').Value+diff_Acc/fieldbyname('Qty').Value,-4);
                fieldbyname('USACC').Value:=trunc(fieldbyname('USPrice').value*fieldbyname('Qty').value*10000+0.5)/10000;
                FieldByName('SurCharge').Value:=roundto(fieldbyname('USPrice').Value-Qtemp.fieldbyname('USPrice').Value,-4);
              end;
              break;
            end;
         end;
       end;
       //
     end;
  end;
  //
  QTemp.Active:=false;

end;

procedure TEntryPur.SetPriceIsFree(Price:string;IsAll:boolean);
var CLBH:string;
begin

  CLBH:=EnDet.FieldByName('CLBH').AsString;
  if IsAll=true then
  begin
    EnDet.First;
    with EnDet do
    begin
      while Not Eof do
      begin
        if FieldByName('CLBH').AsString=CLBH then
        begin
          Edit;
          FieldByName('VNPrice').Value:=null;
          FieldByName('USPrice').Value:=null;
          FieldByName('VNACC').Value:=null;
          FieldByName('USAcc').Value:=null;
          FieldByName(Price).Value:=0;
          Post;
        end;
        EnDet.Next;
      end;
    end;
  end else
  begin
    with EnDet do
    begin
      if FieldByName('CLBH').AsString=CLBH then
      begin
        Edit;
        FieldByName('VNPrice').Value:=null;
        FieldByName('USPrice').Value:=null;
        FieldByName('VNACC').Value:=null;
        FieldByName('USAcc').Value:=null;
        FieldByName(Price).Value:=0;
        Post;
      end;
    end;
  end;
end;
//
procedure TEntryPur.VNPrice1Click(Sender: TObject);
begin
  if messagedlg('Gia=0 toan bo cho Vat tu:'+EnDet.FieldByName('CLBH').AsString,mtCustom,[mbYes,mbNo], 0)=mrYes then
     SetPriceIsFree('VNPrice',true)
  else
     SetPriceIsFree('VNPrice',false);
end;

procedure TEntryPur.USPrice1Click(Sender: TObject);
begin
  if messagedlg('Gia=0 toan bo cho Vat tu:'+EnDet.FieldByName('CLBH').AsString,mtCustom,[mbYes,mbNo], 0)=mrYes then
     SetPriceIsFree('USPrice',true)
  else
     SetPriceIsFree('USPrice',false);
end;

procedure TEntryPur.ITBtnClick(Sender: TObject);
begin
  DBGrid_Prod.Columns[18].Visible:=true;
  DBGrid_Prod.Columns[19].Visible:=true;
end;



procedure TEntryPur.EnMasAfterScroll(DataSet: TDataSet);
var
  tmpSuppIDList: TStringList;
  index: Integer;
begin
  if CheckSuppPriceID <> '' then
  begin
    tmpSuppIDList := FuncObj.SplitString(CheckSuppPriceID, ',');
    try
      index := tmpSuppIDList.IndexOf(ENMas.FieldByName('ZSBH').AsString);
      DBGrid_Prod.Columns[6].ReadOnly := index < 0;
    finally
      tmpSuppIDList.Free;
    end;
  end
  else
  begin
    DBGrid_Prod.Columns[6].ReadOnly := true;
  end;
end;

Function ERPTrunc1(value:double;demical:integer):double;
var valueF:double;
    valueFStr:String;
begin
  valueF:=value*power(10,-1*demical)+0.5;
  valueFStr := FloatToStr(valueF);
  IF Pos('.', valueFStr) > 0 Then  valueF:=strtofloat(copy(valueFStr, 1, Pos('.', valueFStr) - 1));
  result:=valueF/power(10,-1*demical);
end;

Function ERPTrunc_Down1(FloatNum: Double; demical: integer): Double;
Var
   ls_FloatNumber: String;
Begin
   ls_FloatNumber := FloatToStr(FloatNum);
   IF Pos('.', ls_FloatNumber) > 0 Then
        Result := StrToFloat
          (copy(ls_FloatNumber, 1, Pos('.', ls_FloatNumber) - 1) + '.' + copy
               (ls_FloatNumber, Pos('.', ls_FloatNumber) + 1, demical))
   Else
        Result := FloatNum;
End;

procedure TEntryPur.Button2Click(Sender: TObject);
var CWHL:String;
begin
  if Edit4.Text<>'' then
  begin
    with EnDet do
    begin
      while not Eof do
      begin
        with Qry_Price do
        begin
          Active:=False;
          SQL.Clear;
          SQL.Add('  select *  from (  ');
          SQL.Add('  select CGBJ.*,ROW_NUMBER() over (PARTITION BY ZSBH ORDER BY BJNO desc) as Sort  ');
          SQL.Add('  from (  ');
          SQL.Add('  select CGBJ.BJNO,CGBJ.USERDate,CGBJ.ZSBH,ZSZL.ZSYWJC,CGBJS.CLBH,  ');
          SQL.Add('  CGBJS.USPrice,CGBJS.VNPrice,CLZL.YWPM,CLZL.DWBH,CGBJS.Discount,PayVN,convert(money,0.0) as CWHL,CGBJS.SuppEx,null as SKU,  ');
          SQL.Add('   CAST((  ');
          SQL.Add('  Select XXZL.ARTICLE+'';'' from CGBJS,XXZL   ');
          SQL.Add('    where CLBH='''+EnDet.fieldbyname('CLBH').AsString+''' AND IsNull(CGBJS.XieXing,''ZZZZZZZZ'')<>''ZZZZZZZZ''  ');
          SQL.Add('          and XXZL.XieXing=CGBJS.XieXing and XXZL.SheHao=CGBJS.SheHao Group by XXZL.ARTICLE for XML Path ('''')  ');
          SQL.Add('  )  as varchar(500))  as NotSKU  ');
          SQL.Add('  ,IsNull(CGBJS.XieXing,''ZZZZZZZZ'')as XieXing,IsNull(CGBJS.SheHao,''ZZZZZZZZ'')as SheHao  ');
          SQL.Add('    ');
          SQL.Add('  from CGBJ  ');
          SQL.Add('  left join CGBJS on CGBJ.BJNO=CGBJS.BJNO  ');
          SQL.Add('  left join ZSZL on ZSZL.ZSDH=CGBJ.ZSBH  ');
          SQL.Add('  left join CLZL on CLZL.CLDH=CGBJS.CLBH  ');
          SQL.Add('  where CGBJS.CLBH='''+EnDet.fieldbyname('CLBH').AsString+''' and IsNull(XieXing,''ZZZZZZZZ'')=''ZZZZZZZZ''  ');
          SQL.Add('  and CGBJ.GSBH='''+main.Edit2.Text+'''  ');
          SQL.Add('  union all   ');
          SQL.Add('  select CGBJ.BJNO,CGBJ.USERDate,CGBJ.ZSBH,ZSZL.ZSYWJC,CGBJS.CLBH,  ');
          SQL.Add('  CGBJS.USPrice,CGBJS.VNPrice,CLZL.YWPM,CLZL.DWBH,CGBJS.Discount,PayVN,convert(money,0.0) as CWHL,CGBJS.SuppEx,DDZL.Article as SKU,null as NotSKU,  ');
          SQL.Add('  IsNull(CGBJS.XieXing,''ZZZZZZZZ'')as XieXing,IsNull(CGBJS.SheHao,''ZZZZZZZZ'')as SheHao  ');
          SQL.Add('  from CGBJ  ');
          SQL.Add('  left join CGBJS on CGBJ.BJNO=CGBJS.BJNO  ');
          SQL.Add('  left join ZSZL on ZSZL.ZSDH=CGBJ.ZSBH  ');
          SQL.Add('  left join CLZL on CLZL.CLDH=CGBJS.CLBH  ');
          SQL.Add('  left join DDZL on DDZL.XieXing=CGBJS.XieXing and DDZL.SheHao=CGBJS.SheHao   ');
          SQL.Add('  where CGBJS.CLBH='''+EnDet.fieldbyname('CLBH').AsString+'''  ');
          SQL.Add('  AND DDZL.DDBH='''+EnDet.fieldbyname('CGBH').AsString+'''  ');
          SQL.Add('  and CGBJ.GSBH='''+main.Edit2.Text+'''  ');
          SQL.Add('    ');
          SQL.Add('  ) CGBJ ) CGBJ  ');
          SQL.Add('  WHERE CGBJ.Sort=''1''  ');
          SQL.Add('  order by Sort,CGBJ.BJNO DESC  ');
          //ShowMessage(SQL.Text);
          Active:=True;
        end;

        Edit;
        CWHL:=Edit4.Text;
        if ((Qry_Price.FieldByName('SKU').AsString=fieldbyname('Article').AsString))
           or ((Pos(fieldbyname('Article').AsString,Qry_Price.FieldByName('NotSKU').AsString)=0)and not(Qry_Price.FieldByName('NotSKU').IsNull))
           or ((Qry_Price.FieldByName('SKU').AsString<>fieldbyname('Article').AsString) and (Qry_Price.FieldByName('NotSKU').IsNull) and (Qry_Price.FieldByName('XieXing').AsString='ZZZZZZZZ') and (Qry_Price.FieldByName('SheHao').AsString='ZZZZZ')) then
        begin
          EnDet.fieldbyname('USACC').value:=null;
          EnDet.fieldbyname('USPrice').value:=null;
          EnDet.fieldbyname('VNACC').value:=null;
          EnDet.fieldbyname('VNPrice').value:=null;
          if Qry_Price.FieldByName('PayVN').Value=1 then
          begin
            if Qry_Price.fieldbyname('USprice').IsNull then
            begin
              Showmessage('USD is null, khong the tinh toan VND');
              abort;
            end;
            if (Qry_Price.FieldByName('Discount').Value<>1)   then
            begin
              EnDet.fieldbyname('VNPrice').value:=ERPTrunc1(Qry_Price.fieldbyname('USprice').value*CWHL*Qry_Price.FieldByName('Discount').Value,-VNPrice_Decimal);
            end else
            begin
              EnDet.fieldbyname('VNPrice').value:=ERPTrunc1(Qry_Price.fieldbyname('USprice').value*CWHL,-VNPrice_Decimal);
            end;
          end else
          begin
            if (Qry_Price.FieldByName('Discount').Value<>1)  then
            begin
             if not Qry_Price.FieldByName('USPrice').IsNull then
             begin
              EnDet.fieldbyname('USPrice').value:= Qry_Price.fieldbyname('USPrice').value*Qry_Price.FieldByName('Discount').Value;
             end;
             if not Qry_Price.FieldByName('VNPrice').IsNull then
             begin
              EnDet.fieldbyname('VNPrice').value:=ERPTrunc_Down1(Qry_Price.fieldbyname('VNPrice').value*Qry_Price.FieldByName('Discount').Value,VNPrice_Decimal);
             end;
            end else
            begin
              EnDet.fieldbyname('USPrice').value:=Qry_Price.fieldbyname('USPrice').value;
              EnDet.fieldbyname('VNPrice').value:=Qry_Price.fieldbyname('VNPrice').value;
            end;
          end;
        end;

        //
        if not EnDet.FieldByName('USPrice').IsNull then
          EnDet.FieldByName('USACC').value:=trunc(EnDet.FieldByName('USPrice').value*EnDet.FieldByName('Qty').value*100+0.5)/100 ;
        if not FieldByName('VNPrice').IsNull then
          EnDet.FieldByName('VNACC').value:=ERPTrunc1(EnDet.FieldByName('VNPrice').value*EnDet.FieldByName('Qty').value,-VNPrice_Decimal) ;
        Next;
        //CLBH:=Edit1.Text;
        //locate('CLBH',CLBH,[]);
      end;
      edit4.clear;
    end;
  end else
  begin
    ShowMessage('Vui long nhap ty gia!!!');
    Exit;
  end;    
end;

end.
