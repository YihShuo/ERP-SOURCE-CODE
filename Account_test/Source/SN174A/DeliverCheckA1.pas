unit DeliverCheckA1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DB, DBTables, Grids, DBGrids, StdCtrls, ExtCtrls,comobj,
  GridsEh, DBGridEh,EhlibBDE,dateutils, Menus,ShellApi, DBGridEhImpExp, iniFiles,
  ComCtrls;

type
  TDeliverCheckA = class(TForm)
    Panel1: TPanel;
    Label1: TLabel;
    Label3: TLabel;
    Label5: TLabel;
    Label4: TLabel;
    Label6: TLabel;
    Label2: TLabel;
    Label7: TLabel;
    Edit2: TEdit;
    Edit1: TEdit;
    Button1: TButton;
    Edit3: TEdit;
    Button2: TButton;
    CBX1: TComboBox;
    CBX2: TComboBox;
    Button3: TButton;
    Edit5: TEdit;
    Edit6: TEdit;
    DS1: TDataSource;
    Label8: TLabel;
    Edit4: TEdit;
    Label9: TLabel;
    Edit7: TEdit;
    PopupMenu1: TPopupMenu;
    CheckPrice1: TMenuItem;
    SonMatCode1: TMenuItem;
    Label10: TLabel;
    CBX3: TComboBox;
    Matsite: TQuery;
    SaveDialog1: TSaveDialog;
    Label12: TLabel;
    Edit8: TEdit;
    Label13: TLabel;
    Label14: TLabel;
    CBX4: TComboBox;
    Label15: TLabel;
    CBX5: TComboBox;
    PC1: TPageControl;
    TS1: TTabSheet;
    DBGridEh1: TDBGridEh;
    Label16: TLabel;
    CBX6: TComboBox;
    Label17: TLabel;
    GSBHCBX: TComboBox;
    TS3: TTabSheet;
    DS2: TDataSource;
    DBGridEh2: TDBGridEh;
    Label18: TLabel;
    Edit9: TEdit;
    TS4: TTabSheet;
    DBGridEh3: TDBGridEh;
    DS3: TDataSource;
    Query1: TQuery;
    Query1CKBH: TStringField;
    Query1LLNO: TStringField;
    Query1DepID: TStringField;
    Query1DepName: TStringField;
    Query1CFMDATE: TDateTimeField;
    Query1CLBH: TStringField;
    Query1YWPM: TStringField;
    Query1DWBH: TStringField;
    Query1CWBH: TStringField;
    Query1DFL: TStringField;
    Query1Qty: TCurrencyField;
    Query1VNPrice: TCurrencyField;
    Query1VNACC: TCurrencyField;
    Query1SCBH: TStringField;
    Query1CostID: TStringField;
    Query1YWSM: TStringField;
    Query1MEMO: TStringField;
    Query1BLSB: TStringField;
    Query1HGBH: TStringField;
    Query1UnitC: TStringField;
    Query1RateC: TFloatField;
    Query1HGLB: TStringField;
    Query2: TQuery;
    Query2CKBH: TStringField;
    Query2LLNO: TStringField;
    Query2DepID: TStringField;
    Query2DepName: TStringField;
    Query2CFMDATE: TDateTimeField;
    Query2CLBH: TStringField;
    Query2YWPM: TStringField;
    Query2DWBH: TStringField;
    Query2CWBH: TStringField;
    Query2DFL: TStringField;
    Query2Qty: TCurrencyField;
    Query2VNPrice: TCurrencyField;
    Query2VNACC: TCurrencyField;
    Query2SCBH: TStringField;
    Query2CostID: TStringField;
    Query2YWSM: TStringField;
    Query2MEMO: TStringField;
    Query2BLSB: TStringField;
    Query2HGBH: TStringField;
    Query2UnitC: TStringField;
    Query2RateC: TFloatField;
    Query2HGLB: TStringField;
    Query2LLMemo: TStringField;
    Query2CLSL: TFloatField;
    Query3: TQuery;
    Query3CKBH: TStringField;
    Query3LLNO: TStringField;
    Query3DepID: TStringField;
    Query3DepName: TStringField;
    Query3CFMDATE: TDateTimeField;
    Query3CLBH: TStringField;
    Query3DFL: TStringField;
    Query3SCBH: TStringField;
    Query3YWPM: TStringField;
    Query3DWBH: TStringField;
    Query3CWBH: TStringField;
    Query3Qty: TCurrencyField;
    Query3HGBH: TStringField;
    Query3HGLB: TStringField;
    Query3DOCNO: TStringField;
    Query3Declaretion: TStringField;
    Query3PKNO: TStringField;
    Query2CNO1: TStringField;
    Query2Declaretion: TStringField;
    TS5: TTabSheet;
    DBGridEh4: TDBGridEh;
    Query4: TQuery;
    StringField1: TStringField;
    StringField2: TStringField;
    StringField3: TStringField;
    StringField4: TStringField;
    DateTimeField1: TDateTimeField;
    StringField5: TStringField;
    StringField6: TStringField;
    StringField7: TStringField;
    StringField9: TStringField;
    CurrencyField1: TCurrencyField;
    CurrencyField2: TCurrencyField;
    CurrencyField3: TCurrencyField;
    StringField10: TStringField;
    StringField11: TStringField;
    StringField13: TStringField;
    DS4: TDataSource;
    Label11: TLabel;
    Edit10: TEdit;
    Query3InWH_Date: TDateTimeField;
    Query3F_Date: TDateTimeField;
    Query3USERDATE: TDateTimeField;
    PopupMenu2: TPopupMenu;
    Modify1: TMenuItem;
    Save1: TMenuItem;
    Cancel1: TMenuItem;
    N1: TMenuItem;
    Import1: TMenuItem;
    UpdateSQL1: TUpdateSQL;
    chk_GC: TCheckBox;
    Query2clzmlb: TStringField;
    TabSheet1: TTabSheet;
    DBGridEh5: TDBGridEh;
    Query5: TQuery;
    StringField8: TStringField;
    StringField12: TStringField;
    StringField14: TStringField;
    StringField15: TStringField;
    DateTimeField2: TDateTimeField;
    StringField16: TStringField;
    StringField17: TStringField;
    StringField18: TStringField;
    StringField19: TStringField;
    StringField20: TStringField;
    CurrencyField4: TCurrencyField;
    CurrencyField5: TCurrencyField;
    CurrencyField6: TCurrencyField;
    StringField21: TStringField;
    StringField22: TStringField;
    StringField23: TStringField;
    StringField24: TStringField;
    StringField25: TStringField;
    StringField26: TStringField;
    StringField27: TStringField;
    FloatField1: TFloatField;
    StringField28: TStringField;
    StringField29: TStringField;
    FloatField2: TFloatField;
    StringField30: TStringField;
    StringField31: TStringField;
    StringField32: TStringField;
    DS5: TDataSource;
    PopupMenu3: TPopupMenu;
    Modify2: TMenuItem;
    Save2: TMenuItem;
    Cancel2: TMenuItem;
    Import2: TMenuItem;
    UpdateSQL2: TUpdateSQL;
    Query2Quantity: TFloatField;
    Query5Quantity: TFloatField;
    Query2Memo_CNO: TStringField;
    Query2Memo_RateC: TStringField;
    Query5Memo_CNO: TStringField;
    Query5Memo_RateC: TStringField;
    procedure Button3Click(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure Button1Click(Sender: TObject);
    procedure CheckPrice1Click(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure SonMatCode1Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure CBX1Change(Sender: TObject);
    procedure CBX2Change(Sender: TObject);
    procedure Modify1Click(Sender: TObject);
    procedure Cancel1Click(Sender: TObject);
    procedure Save1Click(Sender: TObject);
    procedure Import1Click(Sender: TObject);
    procedure Modify2Click(Sender: TObject);
    procedure Cancel2Click(Sender: TObject);
    procedure Save2Click(Sender: TObject);
    procedure Import2Click(Sender: TObject);
    procedure GSBHCBXChange(Sender: TObject);
  private
    IsHide_Warehouse_XT:String;
    { Private declarations }
    procedure ExportExcel(Query:TQuery;DBGrid:TDBGridEh);
    procedure readini();
  public
    VNPrice_DiplayFormat:string;
    VNPrice_Decimal:Byte;
    //≠‹Æwµ≤∫‚¶Ïº∆
    WH_Decimal:String;
    WH_DiplayFormat:String;
    { Public declarations }
  end;

var
  DeliverCheckA: TDeliverCheckA;

implementation

uses DeliverCheck_Print1, main1, DeliverCheck_Price1, DeliverCheck_Son1,FunUnit,
  DeliverCheck_PrintA1, DeliverCheck_PriceA1, DeliverCheck_SonA1,
  ImportHaiQuanLL1, ImportHaiQuanLL_Child1;

{$R *.dfm}
function   DaysOfItsMonth(ADate:   TDateTime):   Word;
var
   Y,M,D:Word;
begin
    DecodeDate(ADate,Y,M,D);
    ADate:=EncodeDate(Y,M,1);
    Result:=Trunc(IncMonth(ADate,1)-ADate);
end;

procedure TDeliverCheckA.readini();
var MyIni :Tinifile;
    AppDir:string;
begin
  //
  IsHide_Warehouse_XT:='N';
  VNPrice_DiplayFormat:='#,##0';
  VNPrice_Decimal:=0;
  //≠‹Æw§p¶Ïº∆
  WH_Decimal:='2';
  WH_DiplayFormat:='#,##0.00';
  AppDir:=ExtractFilePath(Application.ExeName);
  if FileExists(AppDir+'\ComName.ini')=true then
  begin
    try
      MyIni := Tinifile.Create(AppDir+'\ComName.ini');
      VNPrice_DiplayFormat:=MyIni.ReadString('VNPrice','DiplayFormat','#,##0');
      VNPrice_Decimal:=strtoint(MyIni.ReadString('VNPrice','Decimal','0'));
      //≠‹Æw§p¶Ïº∆
      WH_Decimal:=MyIni.ReadString('Warehouse','Decimal','2');
      WH_DiplayFormat:=MyIni.ReadString('Warehouse','DiplayFormat','#,##0.00');
      //¡Ù¬√XT
      IsHide_Warehouse_XT:=MyIni.ReadString('ERP','IsHide_Warehouse_XT','N');
    finally
      MyIni.Free;
    end;
  end;
  TCurrencyField(Query1.FieldByName('VNACC')).DisplayFormat:=VNPrice_DiplayFormat;
  TCurrencyField(Query1.FieldByName('VNPrice')).DisplayFormat:=VNPrice_DiplayFormat;
  TCurrencyField(Query2.FieldByName('VNACC')).DisplayFormat:=VNPrice_DiplayFormat;
  TCurrencyField(Query2.FieldByName('VNPrice')).DisplayFormat:=VNPrice_DiplayFormat;
  TCurrencyField(Query4.FieldByName('VNACC')).DisplayFormat:=VNPrice_DiplayFormat;
  TCurrencyField(Query4.FieldByName('VNPrice')).DisplayFormat:=VNPrice_DiplayFormat;
  TCurrencyField(Query5.FieldByName('VNACC')).DisplayFormat:=VNPrice_DiplayFormat;
  TCurrencyField(Query5.FieldByName('VNPrice')).DisplayFormat:=VNPrice_DiplayFormat;
  //
  TCurrencyField(Query1.FieldByName('Qty')).DisplayFormat:=WH_DiplayFormat;
  TCurrencyField(Query2.FieldByName('Qty')).DisplayFormat:=WH_DiplayFormat;
  TCurrencyField(Query3.FieldByName('Qty')).DisplayFormat:=WH_DiplayFormat;
  TCurrencyField(Query4.FieldByName('Qty')).DisplayFormat:=WH_DiplayFormat;
  TCurrencyField(Query5.FieldByName('Qty')).DisplayFormat:=WH_DiplayFormat;
  //TCurrencyField(Query2.FieldByName('Quantity')).DisplayFormat:=WH_DiplayFormat;
  //TCurrencyField(Query5.FieldByName('Quantity')).DisplayFormat:=WH_DiplayFormat;
  //¡Ù¬√XT
  if IsHide_Warehouse_XT='Y' then
  begin
    CBX6.Items.Clear;
    CBX6.Items.Add('ALL');
    CBX6.Items.Add('NK');
    CBX6.Items.Add('TC');
    CBX6.Items.Add('HD');
    CBX6.Items.Add('KD');
    CBX6.Items.Add('GC');
    CBX6.Items.Add('NK1');
    CBX6.Items.Add('TC1');
    CBX6.Items.Add('HD1');
    CBX6.Items.Add('KD1');
    CBX6.Items.Add('H11');
    CBX6.Items.Add('NQ');
    CBX6.Items.Add('NKNQ');
    CBX6.Items.Add('NK+TC+HD+KD');
    CBX6.Items.Add('NK1+TC1+HD1+KD1');
    CBX6.Items.Add('NK+TC+HD+KD+NK1+TC1+HD1+KD1+NQ+NKNQ');
    CBX6.ItemIndex:=0;
  end;
end;
//

procedure TDeliverCheckA.ExportExcel(Query:TQuery;DBGrid:TDBGridEh);
var
  eclApp,WorkBook:olevariant;
  i,j:integer;
begin

    if Query.Active then
    begin
      if Query.recordcount=0 then
      begin
          showmessage('No record.');
          abort;
      end;
    end else
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
      for i:=0 to DBGrid.Columns.Count-1 do
      begin
        eclApp.Cells(1,i+2):=DBGrid.Columns[i].Title.Caption;
      end;
      Query.First;
      j:=2;
      while   not  Query.Eof   do
      begin
          eclApp.Cells(j,1):=j-1;
          for i:=0 to DBGrid.Columns.Count-1 do
          begin
              eclApp.Cells(j,i+2):=DBGrid.Fields[i].Value;
              eclApp.Cells.Cells.item[j,i+2].font.size:='8';
              if ((DBGrid.Fields[i].FieldName = 'InWH_Date') or (DBGrid.Fields[i].FieldName = 'F_Date') ) then
                eclApp.Cells.Cells.item[j,i+2].NumberFormat := 'YYYY/MM/DD';
          end;
          Query.Next;
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
//
procedure TDeliverCheckA.Button3Click(Sender: TObject);
var i:integer;
begin
  DeliverCheck_PrintA:=TDeliverCheck_PrintA.create(self);
  DeliverCheck_PrintA.quickrep1.prepare;
  i:=DeliverCheck_PrintA.quickrep1.qrprinter.pagecount;
  DeliverCheck_PrintA.page1.caption:=inttostr(i);
  DeliverCheck_PrintA.quickrep1.preview;
  DeliverCheck_PrintA.free;
end;

procedure TDeliverCheckA.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  action:=cafree;
end;

procedure TDeliverCheckA.Button1Click(Sender: TObject);
var sdate,edate:Tdate;
    i,iYear,iMonth:integer;
    tmpList:TStringList;
    HGLBSQL:String;
begin
  if (CBX1.text='')or (CBX2.text='')  then
  begin
    showmessage('You have to select the year and month first.');
    abort;
  end;
  iYear:=strtoint(CBX1.Text);
  iMonth:=strtoint(CBX2.Text);
  if (iYear>2999) or (iYear<1900) then
  begin
    showmessage('Pls key in right year');
    abort;
  end;
  if (iMonth=0) or (iMonth>12) then
  begin
    showmessage('Pls key in right month');
    abort;
  end;
  SDate:=EncodeDate(strtoint(CBX1.Text), strtoint(CBX2.Text), 1);
  EDate:=EncodeDate(strtoint(CBX4.Text), strtoint(CBX5.Text), 1);
  EDate:=EncodeDate(strtoint(CBX4.Text), strtoint(CBX5.Text), DaysOfItsMonth(EDate));
  if PC1.ActivePageIndex=0 then
  begin
    with query1 do
    begin
      active:=false;
      SQL.Clear;
      SQL.Add('select KCLL.CKBH,KCLLS.LLNO,KCLL.DepID,BDepartment.DepName,KCLL.CFMDATE,KCLLS.CLBH,CLZL.YWPM,CLZL.DWBH,KCZLS.CWBH,KCLLS.DFL');
      SQL.Add('       ,isnull(KCLLS.Qty,0) as Qty,isnull(KCLLS.VNPrice,0) as VNPrice,KCLLS.VNACC');
      SQL.Add('       ,KCLLS.SCBH,KCLLS.CostID,IsNull(SCBLYY.YWSM,'''') as YWSM,IsNull(KCLLS.MEMO,'''') as MEMO,IsNull(KCLLS.BLSB,'''') as BLSB');
      SQL.Add('       ,IsNull(KCLLS.CNO,'''') as HGBH');
      SQL.Add('       ,KCLLS.UnitC , KCLLS.RateC ');
      sql.Add('       ,isnull(KCLLS.HGLB,''ZZZZ'')as HGLB');
      SQL.add('from KCLLS_1416 KCLLS ');
      SQL.add('left join KCLL_1416 KCLL on KCLL.LLNO=KCLLS.LLNO');
      SQL.add('left join CLZL on CLZL.CLDH=KCLLS.CLBH');
      SQL.add('left join BDepartment on BDepartment.ID=KCLL.DepID');
      SQL.add('left join SCBLYY on SCBLYY.YYBH=KCLLS.YYBH ');
      SQL.add('left join KCZLS on KCZLS.CLBH=KCLLS.CLBH and KCZLS.CKBH=KCLL.CKBH');
      SQL.add('left join KCCK on KCCK.CKBH=KCLL.CKBH ');
      SQL.Add('where Convert(smalldatetime,convert(varchar,KCLL.CFMDate,111)) between ');
      SQL.add('             '''+formatdatetime('yyyy/MM/dd',sdate)+''''+' and ' +''''+formatdatetime('yyyy/MM/dd',edate)+'''');
      if CBX3.Text<>'' then
      begin
        SQL.Add('and KCCK.CKBH ='+''''+CBX3.text+'''');
      end;
      SQL.add('      and KCLLS.CLBH like '+''''+edit1.text+'%'+'''');
      SQL.add('      and CLZL.YWPM like '+''''+'%'+edit2.text+'%'+'''');
      SQL.add('      and CLZL.YWPM like '+''''+'%'+edit3.text+'%'+'''');
      SQL.add('      and isnull(KCZLS.CWBH,'+''''+''+''''+') like '+''''+edit4.text+'%'+'''');
      SQL.add('      and KCLLS.CostID like '+''''+edit7.text+'%'+'''');
      SQL.add('      and KCLLS.LLNO like '+''''+edit5.text+'%'+'''');
      SQL.add('      and BDepartment.DepName like '+''''+'%'+edit6.Text+'%'+'''');
      sql.add('      and KCLL.YN='+''''+'5'+'''');
      if GSBHCBX.Text<>'ALL' then
      SQL.add('      and KCCK.GSBH='+''''+GSBHCBX.Text+'''');
      SQL.Add('      and KCLLS.SCBH like '''+edit8.text+'%''  ');
      //funcObj.WriteErrorLog(sql.Text);
      Active:=true;
    end;
  end;
  if PC1.ActivePageIndex=1 then
  begin
    with query2 do
    begin
      active:=false;
      sql.Clear;
      sql.Add('select * from ( ');
      SQL.add('select CKBH,LLNO,DepID,DepName,CFMDATE,CLBH,YWPM,DWBH,CWBH,DFL,Qty,VNPrice,VNACC,SCBH,CostID,YWSM,MEMO,BLSB,HGBH,UnitC,RateC,HGLB,LLMemo,CNO1,');
      SQL.add('       case when (CLSL is not null and TCLYL is null) then CLSL else TCLYL  end  as CLSL,'''' as Declaretion ');
      {SQL.add('       ,Cast((Select  case when isnull(KCPK.Declaretion,'''') <> '''' then  KCPK.Declaretion + '' '' else '''' end ');
      SQL.Add('       			 from KCRKS left join KCRK on kcrks.RKNO=KCRK.RKNO ');
      SQL.Add('        			 Left join KCPK_1416 KCPK on KCRK.RKNO=KCPK.PKNO  ');
      SQL.Add('       			 Where KCRKS.CLBH=KCLLS.CLBH  and KCRKS.CGBH=KCLLS.SCBH and KCRK.HGLB=KCLLS.HGLB and KCRKS.CNO=KCLLS.HGBH Group by KCPK.Declaretion for XML Path (''''))  as varchar(50)) as Declaretion '); }
      SQL.Add('       ,clzmlb,Case when (RateC is not null or RateC <>'''') then Round(RateC*Qty,6) end as Quantity,Memo_CNO,Memo_RateC  ');
      SQL.add('from ( ');
      SQL.Add('select KCLL.CKBH,KCLLS.LLNO,KCLL.DepID,BDepartment.DepName,KCLL.CFMDATE,KCLLS.CLBH,CLZL.YWPM,CLZL.DWBH,KCZLS.CWBH,KCLLS.DFL');
      //SQL.Add('       ,isnull(KCLLS.Qty,0) as Qty,isnull(KCLLS.VNPrice_HG,0) as VNPrice,KCLLS.VNACC_HG as VNACC');
      SQL.Add('       ,isnull(KCLLS.Qty,0) as Qty,isnull(KCLLS.VNPrice,0) as VNPrice,KCLLS.VNACC');
      SQL.Add('       ,KCLLS.SCBH,KCLLS.CostID,IsNull(SCBLYY.YWSM,'''') as YWSM,IsNull(KCLLS.MEMO,'''') as MEMO,IsNull(KCLLS.BLSB,'''') as BLSB');
      SQL.Add('       ,IsNull(KCLLS.CNO,'''') as HGBH');
      sql.Add('       ,KCLLS.UnitC , KCLLS.RateC ');
      sql.Add('       ,KCLLS.HGLB as HGLB,KCLLS.LLMemo,KCLLS.CNO1,ZLZLS2.CLSL,TCLYL,CLZL.clzmlb,KCLLS.Memo_CNO,KCLLS.Memo_RateC');
      SQL.add('from KCLLS_1416 KCLLS ');
      SQL.add('left join KCLL_1416 KCLL on KCLL.LLNO=KCLLS.LLNO');
      SQL.add('left join CLZL on CLZL.CLDH=KCLLS.CLBH');
      SQL.add('left join BDepartment on BDepartment.ID=KCLL.DepID');
      SQL.add('left join SCBLYY on SCBLYY.YYBH=KCLLS.YYBH ');
      SQL.add('left join KCZLS on KCZLS.CLBH=KCLLS.CLBH and KCZLS.CKBH=KCLL.CKBH');
      SQL.add('left join KCCK on KCCK.CKBH=KCLL.CKBH ');
      sql.Add('left join (select CLBH,ZLBH,sum (CLSL) as CLSL from DDZL_ZLZLS2 group by CLBH,ZLBH) ZLZLS2 on ZLZLS2.CLBH=KCLLS.CLBH and ZLZLS2.ZLBH=KCLLS.SCBH');
      sql.Add('left join (select zlbh1,right(cldhz,10) as CLBH,Sum(TCLYL) as TCLYL from LIY_DD.dbo.ZLZLS3 group by zlbh1,cldhz)ZLZLS3 on ZLZLS3.zlbh1=KCLLS.SCBH and ZLZLS3.CLBH=KCLLS.CLBH');
      SQL.Add('where Convert(smalldatetime,convert(varchar,KCLL.CFMDate,111)) between ');
      SQL.add('             '''+formatdatetime('yyyy/MM/dd',sdate)+''''+' and ' +''''+formatdatetime('yyyy/MM/dd',edate)+'''');
      if ((CBX3.Text <> '') and (CBX3.Text <> 'ALL')) then
      begin
        SQL.Add('and KCCK.CKBH ='+''''+CBX3.text+'''');
      end;
      SQL.add('      and KCLLS.CLBH like '''+edit1.text+'%'' ');
      SQL.add('      and CLZL.YWPM like ''%'+edit2.text+'%'' ');
      SQL.add('      and CLZL.YWPM like ''%'+edit3.text+'%'' ');
      SQL.add('      and isnull(KCZLS.CWBH,'''') like '''+edit4.text+'%'' ');
      SQL.add('      and KCLLS.CostID like '''+edit7.text+'%'' ');
      SQL.add('      and KCLLS.LLNO like '''+edit5.text+'%'' ');
      SQL.add('      and BDepartment.DepName like ''%'+edit6.Text+'%'' ');
      SQL.add('      and KCLL.YN=''5'' ');
      if GSBHCBX.Text<>'ALL' then
      SQL.add('      and KCCK.GSBH='''+GSBHCBX.Text+'''');
      SQL.Add('      and KCLLS.SCBH like '''+edit8.text+'%'' ');
      if chk_GC.Checked then
      SQL.Add('      and CLZL.clzmlb=''Y'' ');
      if CBX6.ItemIndex>0 then
      begin
        if CBX6.ItemIndex>0 then
        begin
          if Pos('+',CBX6.Text)<0 then
          begin
            sql.add('and KCLLS.HGLB='''+CBX6.Text+''' ')
          end else
          begin
            tmpList:=TStringlist.Create;
            tmpList:=FuncObj.SplitString(CBX6.Text,'+');
            for i:=0 to tmpList.Count-1 do
            begin
              HGLBSQL:=HGLBSQL+''''+tmpList.Strings[i]+''',';
            end;
            HGLBSQL:='('+Copy(HGLBSQL,1,length(HGLBSQL)-1)+')';
            sql.add(' and KCLLS.HGLB in '+HGLBSQL+' ');
            tmpList.Free;
          end;
        end;
      end;
      if edit9.Text<>'' then
        SQL.Add('and KCLLS.CNO like '''+edit9.text+'%''');
      if IsHide_Warehouse_XT='Y' then  //¡Ù¬√XT
        SQL.add('and KCLLS.HGLB<>''XT'' ');
      SQL.add(') KCLLS ');
      SQL.add('group by CKBH,LLNO,DepID,DepName,CFMDATE,CLBH,YWPM,DWBH,CWBH,DFL,Qty,VNPrice,VNACC,SCBH,CostID,YWSM,MEMO,BLSB,HGBH,UnitC,RateC,HGLB,LLMemo,CNO1,TCLYL,CLSL,clzmlb,KCLLS.Memo_CNO,KCLLS.Memo_RateC');
      SQL.Add(' )KCLL where 1=1 ');
      if edit10.Text <> '' then
        SQL.Add(' and Declaretion like '''+edit10.text+'%''');
      //funcObj.WriteErrorLog(sql.Text);
      active:=true;
    end;
  end;
  if PC1.ActivePageIndex=2 then
  begin
    with Query3 do
    begin
      Active:=false;
      SQL.Clear;
      SQL.Add('Select KCLL.CKBH,KCPKLL.LLNO,KCLL.DepID,BDepartment.DepName,KCLL.CFMDATE,KCPKLL.CLBH,KCPKLL.DFL,KCPKLL.SCBH,CLZL.YWPM,CLZL.DWBH,KCZLS.CWBH,KCPKLL.Qty as Qty ');
      //SQL.Add('       ,IsNull(KCLLS.CNO,'''') as HGBH,KCRK.HGLB,KCRK.DOCNO,KCPK.Declaretion,KCPKLL.PKNO,KCRK.UserDate as InWH_Date,YWCP.Indate as F_Date,KCLL.UserDate ');
      SQL.Add('       ,IsNull(KCLLS.CNO,'''') as HGBH,KCRK.HGLB,KCRK.DOCNO,KCPK.Declaretion,KCPKLL.PKNO,KCRK.UserDate as InWH_Date,KCRK.CFMDate as F_Date,KCLL.UserDate ');
      SQL.Add('	  from KCPKLL');
      SQL.Add('	  left join KCLL_1416 KCLL on KCPKLL.LLNO=KCLL.LLNO');
      SQL.Add('	  left join KCLLS_1416 KCLLS on KCLLS.LLNO=KCPKLL.LLNO and KCLLS.CLBH=KCPKLL.CLBH and KCLLS.DFL=KCPKLL.DFL and KCLLS.SCBH=KCPKLL.SCBH');
      SQL.Add('	  left join KCRK on KCRK.RKNO=KCPKLL.PKNO');
      SQL.Add('	  Left join KCPK on KCPK.PKNO=KCPKLL.PKNO');
      SQL.Add('	  left join CLZL on CLZL.CLDH=KCPKLL.CLBH');
      SQL.Add('	  left join KCZLS on KCZLS.CLBH=KCLLS.CLBH and KCZLS.CKBH=KCLL.CKBH');
      SQL.add('   left join KCCK on KCCK.CKBH=KCLL.CKBH ');
      SQL.Add('	  left join BDepartment on BDepartment.ID=KCLL.DepID');
      {SQL.Add('   left join ( select DDBH,max(Indate) as Indate ');
      SQL.Add('		            from ywcp group by DDBH ');
      SQL.Add('		            union all ');
      SQL.Add('		            select DDBH,max(Indate) as Indate ');
      SQL.Add('		            from YWCPOld group by DDBH ');
      SQL.Add('				        union all ');
      SQL.Add('     				  select ypdh as DDBH,max(Complete) as Indate ');
      SQL.Add('     				  from ShoeTest  ');
      SQL.Add('     				  where isnull(ypdh,'''')<>'''' group by YPDH ');
      SQL.Add('     				  union all  ');
      SQL.Add('     				  select MasterOrder as DDBh,max(StockDate) as Indate ');
      SQL.Add('     				  from CBY_Orders  ');
      SQL.Add('     				  group by MasterOrder ');
      SQL.Add('   				  ) YWCP on YWCP.DDBH=KCPKLL.SCBH '); }
      SQL.Add('where Convert(smalldatetime,convert(varchar,KCLL.CFMDate,111)) between ');
      SQL.add('             '''+formatdatetime('yyyy/MM/dd',sdate)+''''+' and ' +''''+formatdatetime('yyyy/MM/dd',edate)+'''');
      SQL.add('      and KCLLS.CLBH like '''+edit1.text+'%'' ');
      SQL.add('      and CLZL.YWPM like '''+'%'+edit2.text+'%'' ');
      SQL.add('      and CLZL.YWPM like '''+'%'+edit3.text+'%'' ');
      SQL.add('      and isnull(KCZLS.CWBH,'''') like '+''''+edit4.text+'%'' ');
      SQL.add('      and KCLLS.CostID like '''+edit7.text+'%'' ');
      SQL.add('      and KCLLS.LLNO like '''+edit5.text+'%'' ');
      SQL.add('      and BDepartment.DepName like '''+'%'+edit6.Text+'%'' ');
      SQL.add('      and KCLL.YN=''5'' ');
      if GSBHCBX.Text<>'ALL' then
      SQL.add('      and KCCK.GSBH='+''''+GSBHCBX.Text+'''');
      if ((CBX3.Text <> '') and (CBX3.Text <> 'ALL')) then
      SQL.Add('      and KCLL.CKBH='''+CBX3.Text+''' '); 
      SQL.Add('      and KCLLS.SCBH like '''+edit8.text+'%'' ');
      if CBX6.ItemIndex>0 then
      begin
        if CBX6.ItemIndex>0 then
        begin
          if Pos('+',CBX6.Text)<0 then
          begin
            sql.add('and KCLLS.HGLB='''+CBX6.Text+''' ')
          end else
          begin
            tmpList:=TStringlist.Create;
            tmpList:=FuncObj.SplitString(CBX6.Text,'+');
            for i:=0 to tmpList.Count-1 do
            begin
              HGLBSQL:=HGLBSQL+''''+tmpList.Strings[i]+''',';
            end;
            HGLBSQL:='('+Copy(HGLBSQL,1,length(HGLBSQL)-1)+')';
            sql.add(' and KCLLS.HGLB in '+HGLBSQL+' ');
            tmpList.Free;
          end;
        end;
      end;
      if edit9.Text<>'' then
        SQL.Add('    and KCLLS.CNO like '''+edit9.text+'%''');
      if edit10.Text<>'' then
        SQL.Add('    and KCPK.Declaretion like '''+edit10.text+'%''');
      if IsHide_Warehouse_XT='Y' then  //¡Ù¬√XT
        SQL.add('    and KCLLS.HGLB<>''XT'' ');
      //funcobj.WriteErrorLog(sql.Text);
      Active:=true;
    end;
  end;
  if PC1.ActivePageIndex=3 then
  begin
    with query4 do
    begin
      active:=false;
      SQL.Clear;
      SQL.add(' Select KCLL.CKBH,KCLLS.LLNO,KCLL.DepID,DepName,CFMDATE,CLBH,YWPM,DWBH,KCLLS.DFL,Qty,VNPrice,VNACC,KCLLS.SCBH,CostID,MEMO');
      SQL.Add(' From CBY_LineStock_KCLLs KCLLS ');
      SQL.Add(' Left join CBY_LineStock_KCLL KCLL on KCLLS.LLNO=KCLL.LLNO ');
      SQL.Add(' Left join Bdepartment on KCLL.DepID = Bdepartment.ID ');
      SQL.Add(' Left join CLZL on KCLLS.CLBH=CLZL.CLDH ');
      SQL.Add(' Where Convert(smalldatetime,convert(varchar,KCLL.CFMDate,111)) between ');
      SQL.add('             '''+formatdatetime('yyyy/MM/dd',sdate)+'''  and '''+formatdatetime('yyyy/MM/dd',edate)+''' ');
      SQL.Add(' and KCLL.YN=''5'' ');
      if edit1.Text <>'' then
        SQL.add(' and KCLLS.CLBH like '''+edit1.text+'%'' ');
      if edit2.Text <>'' then
        SQL.add(' and CLZL.YWPM like ''%'+edit2.text+'%'' ');
      if edit3.Text <>'' then
        SQL.add(' and CLZL.YWPM like ''%'+edit3.text+'%'' ');
      if edit7.Text <>'' then
        SQL.add(' and KCLLS.CostID like '''+edit7.text+'%'' ');
      if edit5.Text <>'' then
        SQL.add(' and KCLLS.LLNO like '''+edit5.text+'%'' ');
      SQL.add('   and BDepartment.DepName like ''%'+edit6.Text+'%'' ');
      SQL.Add('   and KCLLS.SCBH like '''+edit8.text+'%'' ');
      //funcObj.WriteErrorLog(sql.Text);
      active:=true;
    end;
  end;

  if PC1.ActivePageIndex=4 then
  begin
    with query5 do
    begin
      active:=false;
      sql.Clear;
      sql.Add('select * from ( ');
      SQL.add('select CKBH,LLNO,DepID,DepName,CFMDATE,CLBH,YWPM,DWBH,CWBH,DFL,Qty,VNPrice,VNACC,SCBH,CostID,YWSM,MEMO,BLSB,HGBH,UnitC,RateC,HGLB,LLMemo,CNO1,');
      SQL.add('       case when (CLSL is not null and TCLYL is null) then CLSL else TCLYL  end  as CLSL,'''' as Declaretion  ');
      {SQL.add('       ,Cast((Select  case when isnull(KCPK.Declaretion,'''') <> '''' then  KCPK.Declaretion + '' '' else '''' end ');
      SQL.Add('       			 from KCRKS left join KCRK on kcrks.RKNO=KCRK.RKNO ');
      SQL.Add('        			 Left join KCPK_1416 KCPK on KCRK.RKNO=KCPK.PKNO  ');
      SQL.Add('       			 Where KCRKS.CLBH=KCLLS.CLBH  and KCRKS.CGBH=KCLLS.SCBH and KCRK.HGLB=KCLLS.HGLB and KCRKS.CNO=KCLLS.HGBH Group by KCPK.Declaretion for XML Path (''''))  as varchar(50)) as Declaretion ');  }
      SQL.Add('       ,clzmlb,Case when (RateC is not null or RateC <>'''') then Round(RateC*Qty,6) end as Quantity,Memo_CNO,Memo_RateC  ');
      SQL.add('from ( ');
      SQL.Add('select KCLL.CKBH,KCLLS.LLNO,KCLL.DepID,BDepartment.DepName,KCLL.CFMDATE,KCLLS.CLBH,CLZL.YWPM,CLZL.DWBH,KCZLS.CWBH,KCLLS.DFL');
      //SQL.Add('       ,isnull(KCLLS.Qty,0) as Qty,isnull(KCLLS.VNPrice_HG,0) as VNPrice,KCLLS.VNACC_HG as VNACC');
      SQL.Add('       ,isnull(KCLLS.Qty,0) as Qty,isnull(KCLLS.VNPrice,0) as VNPrice,KCLLS.VNACC');
      SQL.Add('       ,KCLLS.SCBH,KCLLS.CostID,IsNull(SCBLYY.YWSM,'''') as YWSM,IsNull(KCLLS.MEMO,'''') as MEMO,IsNull(KCLLS.BLSB,'''') as BLSB');
      SQL.Add('       ,IsNull(KCLLS.CNO,'''') as HGBH');
      sql.Add('       ,KCLLS.UnitC , KCLLS.RateC ');
      sql.Add('       ,KCLLS.HGLB as HGLB,KCLLS.LLMemo,KCLLS.CNO1,ZLZLS2.CLSL,TCLYL,CLZL.clzmlb,KCLLS.Memo_CNO,KCLLS.Memo_RateC');
      SQL.add('from KCLLS_1416_Child KCLLS ');
      SQL.add('left join KCLL_1416_Child KCLL on KCLL.LLNO=KCLLS.LLNO');
      SQL.add('left join CLZL on CLZL.CLDH=KCLLS.CLBH');
      SQL.add('left join BDepartment on BDepartment.ID=KCLL.DepID');
      SQL.add('left join SCBLYY on SCBLYY.YYBH=KCLLS.YYBH ');
      SQL.add('left join KCZLS on KCZLS.CLBH=KCLLS.CLBH and KCZLS.CKBH=KCLL.CKBH');
      SQL.add('left join KCCK on KCCK.CKBH=KCLL.CKBH ');
      sql.Add('left join (select CLBH,ZLBH,sum (CLSL) as CLSL from DDZL_ZLZLS2 group by CLBH,ZLBH) ZLZLS2 on ZLZLS2.CLBH=KCLLS.CLBH and ZLZLS2.ZLBH=KCLLS.SCBH');
      sql.Add('left join (select zlbh1,right(cldhz,10) as CLBH,Sum(TCLYL) as TCLYL from LIY_DD.dbo.ZLZLS3 group by zlbh1,cldhz)ZLZLS3 on ZLZLS3.zlbh1=KCLLS.SCBH and ZLZLS3.CLBH=KCLLS.CLBH');
      SQL.Add('where Convert(smalldatetime,convert(varchar,KCLL.CFMDate,111)) between ');
      SQL.add('             '''+formatdatetime('yyyy/MM/dd',sdate)+''''+' and ' +''''+formatdatetime('yyyy/MM/dd',edate)+'''');
      if ((CBX3.Text <> '') and (CBX3.Text <> 'ALL')) then
      begin
        SQL.Add('and KCCK.CKBH ='+''''+CBX3.text+'''');
      end;
      SQL.add('      and KCLLS.CLBH like '''+edit1.text+'%'' ');
      SQL.add('      and CLZL.YWPM like ''%'+edit2.text+'%'' ');
      SQL.add('      and CLZL.YWPM like ''%'+edit3.text+'%'' ');
      SQL.add('      and isnull(KCZLS.CWBH,'''') like '''+edit4.text+'%'' ');
      SQL.add('      and KCLLS.CostID like '''+edit7.text+'%'' ');
      SQL.add('      and KCLLS.LLNO like '''+edit5.text+'%'' ');
      SQL.add('      and BDepartment.DepName like ''%'+edit6.Text+'%'' ');
      SQL.add('      and KCLL.YN=''5'' ');
      if GSBHCBX.Text<>'ALL' then
      SQL.add('      and KCCK.GSBH='''+GSBHCBX.Text+'''');
      SQL.Add('      and KCLLS.SCBH like '''+edit8.text+'%'' ');
      if CBX6.ItemIndex>0 then
      begin
        if CBX6.ItemIndex>0 then
        begin
          if Pos('+',CBX6.Text)<0 then
          begin
            sql.add('and KCLLS.HGLB='''+CBX6.Text+''' ')
          end else
          begin
            tmpList:=TStringlist.Create;
            tmpList:=FuncObj.SplitString(CBX6.Text,'+');
            for i:=0 to tmpList.Count-1 do
            begin
              HGLBSQL:=HGLBSQL+''''+tmpList.Strings[i]+''',';
            end;
            HGLBSQL:='('+Copy(HGLBSQL,1,length(HGLBSQL)-1)+')';
            sql.add(' and KCLLS.HGLB in '+HGLBSQL+' ');
            tmpList.Free;
          end;
        end;
      end;
      if edit9.Text<>'' then
        SQL.Add('and KCLLS.CNO like '''+edit9.text+'%''');
      if IsHide_Warehouse_XT='Y' then  //¡Ù¬√XT
        SQL.add('and KCLLS.HGLB<>''XT'' ');
      SQL.add(') KCLLS ');
      SQL.add('group by CKBH,LLNO,DepID,DepName,CFMDATE,CLBH,YWPM,DWBH,CWBH,DFL,Qty,VNPrice,VNACC,SCBH,CostID,YWSM,MEMO,BLSB,HGBH,UnitC,RateC,HGLB,LLMemo,CNO1,TCLYL,CLSL,clzmlb,KCLLS.Memo_CNO,KCLLS.Memo_RateC');
      SQL.Add(' )KCLL where 1=1 ');
      if edit10.Text <> '' then
        SQL.Add(' and Declaretion like '''+edit10.text+'%''');
      //funcObj.WriteErrorLog(sql.Text);
      active:=true;
    end;
  end;

end;

procedure TDeliverCheckA.CheckPrice1Click(Sender: TObject);
begin
   if query1.recordcount>0 then
   begin
     DeliverCheck_PriceA:=TDeliverCheck_PriceA.create(self);
     DeliverCheck_PriceA.show;
   end;
end;

procedure TDeliverCheckA.FormDestroy(Sender: TObject);
begin
  DeliverCheckA:=nil
end;

procedure TDeliverCheckA.SonMatCode1Click(Sender: TObject);
begin 
  if query1.recordcount>0 then
   begin
     DeliverCheck_SonA:=TDeliverCheck_SonA.create(self);
     DeliverCheck_SonA.show;
   end;
end;

procedure TDeliverCheckA.FormCreate(Sender: TObject);
var
  myYear, myMonth, myDay : Word;
  i,j:integer;
  y,m:word;
begin
  with MatSite do
  begin
    active:=false;
    sql.Clear;
    sql.add('select CKBH from KCCK ');
    sql.add('where GSBH='+''''+main.Edit2.Text+'''');
    sql.add('order by CKBH');
    active:=true;
    CBX3.Items.Clear;
    while not eof do
    begin
        CBX3.Items.Add(fieldbyname('CKBH').AsString);
        next;
    end;
    //
    active:=false;
    sql.Clear;
    sql.add('select GSDH from BGSZL order by GSDH');
    active:=true;
    GSBHCBX.Items.Add('ALL');
    while not eof do
    begin
        GSBHCBX.Items.Add(fieldbyname('GSDH').asstring);
        next;
    end;
    GSBHCBX.Text:=main.Edit2.Text
  end;
  // Load year-month
  DecodeDate(Date(), myYear, myMonth, myDay);
  for i:=0 to CBX1.Items.Count-1 do
  begin
    if strtoint(CBX1.Items[i])=myYear then
    begin
      CBX1.ItemIndex:=i;
      CBX4.ItemIndex:=i;
      break;
    end;
  end;
  for i:=0 to CBX2.Items.Count-1 do
  begin
    if strtoint(CBX2.Items[i])=myMonth then
    begin
      CBX2.ItemIndex:=i-1;
      CBX5.ItemIndex:=i-1;
      break;
    end;
  end;
  readini();
  PC1.ActivePage:=TS3;
  {if main.Edit2.Text='CDC' then
  begin
    TS5.TabVisible := True;
  end else
  begin
    TS5.TabVisible := false;
  end; }
  TS1.TabVisible:=false;
  TS4.TabVisible:=false;
  TS5.TabVisible:=false;
end;

procedure TDeliverCheckA.Button2Click(Sender: TObject);
var
  ExpClass:TDBGridEhExportClass;
  Ext, target:String;
  tdbgh : TDBGridEh;
begin
  if  Messagedlg(Pchar('Direct Export?'),mtInformation,[mbNo,mbYes],0)=mrYes then
  begin
     if PC1.ActivePageIndex=0 then ExportExcel(Query1,DBGridEh1);
     if PC1.ActivePageIndex=1 then ExportExcel(Query2,DBGridEh2);
     if PC1.ActivePageIndex=2 then ExportExcel(Query3,DBGridEh3);
     if PC1.ActivePageIndex=3 then ExportExcel(Query4,DBGridEh4);
     if PC1.ActivePageIndex=4 then ExportExcel(Query5,DBGridEh5);
  end else
  begin
    ExpClass:=TDBGridEhExportAsXLS;
    if SaveDialog1.Execute()=true then
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
        if PC1.ActivePageIndex=0 then
           SaveDBGridEhToExportFile(ExpClass,DBGridEh1,SaveDialog1.FileName,true);
        if PC1.ActivePageIndex=1 then
           SaveDBGridEhToExportFile(ExpClass,DBGridEh2,SaveDialog1.FileName,true);
        if PC1.ActivePageIndex=2 then
           SaveDBGridEhToExportFile(ExpClass,DBGridEh3,SaveDialog1.FileName,true);
        if PC1.ActivePageIndex=3 then
           SaveDBGridEhToExportFile(ExpClass,DBGridEh4,SaveDialog1.FileName,true);
        if PC1.ActivePageIndex=4 then
           SaveDBGridEhToExportFile(ExpClass,DBGridEh5,SaveDialog1.FileName,true);
        if Application.MessageBox('Do you want to open the exported file?','Open file',MB_YESNO) = IDYES then
          shellexecute(handle,'open',pchar(SaveDialog1.FileName),nil,nil,SW_SHOWNORMAL);
      end;
    end;
  end;

end;

procedure TDeliverCheckA.CBX1Change(Sender: TObject);
begin
  CBX4.Text:=CBX1.Text;
end;

procedure TDeliverCheckA.CBX2Change(Sender: TObject);
begin
  CBX5.Text:=CBX2.Text;
end;

procedure TDeliverCheckA.Modify1Click(Sender: TObject);
begin
  with query2 do
  begin
    RequestLive:=true;
    CachedUpdates:=true;
    edit;
  end;
  Save1.Enabled:=true;
  Cancel1.Enabled:=true;
end;

procedure TDeliverCheckA.Cancel1Click(Sender: TObject);
begin
  with query2 do
  begin
     active:=false;
     RequestLive:=false;
     CachedUpdates:=false;
     active:=true;
  end;
  Save1.Enabled:=false;
  Cancel1.Enabled:=false;
end;

procedure TDeliverCheckA.Save1Click(Sender: TObject);
var i:integer;
begin
  try
    query2.First;
    for i:=1 to query2.RecordCount do
    begin
      if ((query2.FieldByName('HGLB').AsString<>'' ) or (query2.FieldByName('HGBH').AsString<>'' )) then
      begin
        with Matsite do
        begin
          active:=false;
          sql.Clear;
          sql.Add('Update KCLLS_1416 Set HGLB='''+query2.fieldbyname('HGLB').AsString+''',CNO='''+query2.fieldbyname('HGBH').AsString+'''  ');
          if  query2.FieldByName('RateC').AsString<>'' then
          begin
            sql.Add('          ,RateC='''+query2.fieldbyname('RateC').AsString+'''   ');
          end;
          sql.Add('Where LLNO='''+query2.fieldbyname('LLNO').AsString+'''  and CLBH='''+query2.fieldbyname('CLBH').AsString+''' and DFL='''+query2.fieldbyname('DFL').AsString+''' and SCBH='''+query2.fieldbyname('SCBH').AsString+''' ');
          execsql;
        end;
      end;
      query2.Next;
    end;
    Save1.Enabled:=false;
    Cancel1.Enabled:=false;
  except
    Messagedlg('Have wrong, can not save data!',mtwarning,[mbyes],0);
  end;
end;

procedure TDeliverCheckA.Import1Click(Sender: TObject);
begin
  ImportHaiQuanLL:=TImportHaiQuanLL.create(self);
  ImportHaiQuanLL.show;
end;

procedure TDeliverCheckA.Modify2Click(Sender: TObject);
begin
  with query5 do
  begin
    RequestLive:=true;
    CachedUpdates:=true;
    edit;
  end;
  Save2.Enabled:=true;
  Cancel2.Enabled:=true;
end;

procedure TDeliverCheckA.Cancel2Click(Sender: TObject);
begin
  with query5 do
  begin
     active:=false;
     RequestLive:=false;
     CachedUpdates:=false;
     active:=true;
  end;
  Save2.Enabled:=false;
  Cancel2.Enabled:=false;
end;

procedure TDeliverCheckA.Save2Click(Sender: TObject);
var i:integer;
begin
  try
    query5.First;
    for i:=1 to query5.RecordCount do
    begin
      if ((query5.FieldByName('HGLB').AsString<>'' ) or (query5.FieldByName('HGBH').AsString<>'' )) then
      begin
        with Matsite do
        begin
          active:=false;
          sql.Clear;
          sql.Add('Update KCLLS_1416_Child Set HGLB='''+query5.fieldbyname('HGLB').AsString+''',CNO='''+query5.fieldbyname('HGBH').AsString+''' ');
          if  query5.FieldByName('RateC').AsString<>'' then
          begin
            sql.Add('          ,RateC='''+query5.fieldbyname('RateC').AsString+'''   ');
          end;
          sql.Add('Where LLNO='''+query5.fieldbyname('LLNO').AsString+'''  and CLBH='''+query5.fieldbyname('CLBH').AsString+''' and DFL='''+query5.fieldbyname('DFL').AsString+''' and SCBH='''+query2.fieldbyname('SCBH').AsString+''' ');
          execsql;
        end;
      end;
      query5.Next;
    end;
    Save2.Enabled:=false;
    Cancel2.Enabled:=false;
  except
    Messagedlg('Have wrong, can not save data!',mtwarning,[mbyes],0);
  end;
end;

procedure TDeliverCheckA.Import2Click(Sender: TObject);
begin
  ImportHaiQuanLL_Child:=TImportHaiQuanLL_Child.create(self);
  ImportHaiQuanLL_Child.show;
end;

procedure TDeliverCheckA.GSBHCBXChange(Sender: TObject);
begin
  if GSBHCBX.Text<>'ALL' then
  begin
    with MatSite do
    begin
      active:=false;
      sql.Clear;
      sql.add('select CKBH from KCCK ');
      sql.add('where GSBH='+''''+GSBHCBX.Text+'''');
      sql.add('order by CKBH');
      active:=true;
      CBX3.Items.Clear;
      CBX3.Items.Add('ALL');
      while not eof do
      begin
        CBX3.Items.Add(fieldbyname('CKBH').AsString);
        Next;
      end;
      CBX3.ItemIndex:=0;
      Active:=false;
    end;
  end;
end;

end.
