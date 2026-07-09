unit EntryCheck1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DB, DBTables, Grids, DBGrids, StdCtrls, ExtCtrls,comobj,
  GridsEh, DBGridEh, EhlibBDE, dateutils, iniFiles, ComCtrls, Menus;

type
  TEntryCheck = class(TForm)
    Panel1: TPanel;
    Label1: TLabel;
    Label3: TLabel;
    Label5: TLabel;
    Label4: TLabel;
    Label6: TLabel;
    Edit2: TEdit;
    Edit1: TEdit;
    Button1: TButton;
    Edit3: TEdit;
    Button2: TButton;
    CBX1: TComboBox;
    CBX2: TComboBox;
    Button3: TButton;
    DBGrid1: TDBGridEh;
    DataSource1: TDataSource;
    Edit5: TEdit;
    Label2: TLabel;
    Label7: TLabel;
    Edit6: TEdit;
    Label8: TLabel;
    Edit4: TEdit;
    Label9: TLabel;
    Edit7: TEdit;
    Label10: TLabel;
    CBX3: TComboBox;
    Matsite: TQuery;
    Label11: TLabel;
    Label12: TLabel;
    CBX4: TComboBox;
    Label13: TLabel;
    CBX5: TComboBox;
    Label14: TLabel;
    cbInvoice: TComboBox;
    Label15: TLabel;
    Edit8: TEdit;
    Label16: TLabel;
    CBX6: TComboBox;
    Label17: TLabel;
    Edit9: TEdit;
    Label18: TLabel;
    cbYN: TComboBox;
    Query1: TQuery;
    Query1GSBH: TStringField;
    Query1RKNO: TStringField;
    Query1ZSYWJC: TStringField;
    Query1ZSNO: TStringField;
    Query1USERDATE: TDateTimeField;
    Query1CFMDATE: TDateTimeField;
    Query1CLBH: TStringField;
    Query1YWPM: TStringField;
    Query1DWBH: TStringField;
    Query1CWBH: TStringField;
    Query1Qty: TCurrencyField;
    Query1USPrice: TCurrencyField;
    Query1USACC: TCurrencyField;
    Query1VNPrice: TCurrencyField;
    Query1VNACC: TCurrencyField;
    Query1CWHL: TCurrencyField;
    Query1ExchACC: TFloatField;
    Query1CGBH: TStringField;
    Query1RKSB: TStringField;
    Query1CostID: TStringField;
    Query1CKBH: TStringField;
    Query1DOCNO: TStringField;
    Query1invno: TStringField;
    Query1CNO: TStringField;
    Query1UnitC: TStringField;
    Query1RateC: TFloatField;
    Query1HQName: TStringField;
    Query1Declaretion: TStringField;
    Query1PaQty: TFloatField;
    Query1HGLB: TStringField;
    Query1Export: TStringField;
    Query1RKMEMO: TStringField;
    Query1ZSBH: TStringField;
    Query1FKBH: TStringField;
    Query1DOCDATE: TDateTimeField;
    Button4: TButton;
    Query1CNO1: TStringField;
    Label19: TLabel;
    edtFKBH: TEdit;
    Label20: TLabel;
    edtCGBH: TEdit;
    Query1tybh: TStringField;
    PC1: TPageControl;
    TS1: TTabSheet;
    TS2: TTabSheet;
    DBGridEh_Report: TDBGridEh;
    pnlInf: TPanel;
    Panel3: TPanel;
    Panel4: TPanel;
    mmoInf: TMemo;
    Panel2: TPanel;
    btn_Yes: TButton;
    btn_No: TButton;
    qry_report: TQuery;
    DSReport: TDataSource;
    qry_reportCKBH: TStringField;
    qry_reportRKNO: TStringField;
    qry_reportQty: TCurrencyField;
    qry_reportCWBH: TStringField;
    qry_reportZSBH: TStringField;
    qry_reportTienNguyenTe: TFloatField;
    qry_reportTienNguyenTeChuaThue: TFloatField;
    qry_reportTyGia: TCurrencyField;
    qry_reportTienNoiTe: TCurrencyField;
    qry_reportLoaiCT: TStringField;
    qry_reportMaDonHang: TStringField;
    qry_reportNgayCT: TDateTimeField;
    qry_reportTienTe: TStringField;
    qry_reportGhichuDauDon: TStringField;
    qry_reportBoPhan: TStringField;
    qry_reportMaThueSuat: TStringField;
    qry_reportNgayHD: TDateTimeField;
    qry_reportMaHD: TStringField;
    Button5: TButton;
    Qry_temp: TQuery;
    Panel5: TPanel;
    LabelRKDate: TLabel;
    DTP1: TDateTimePicker;
    Label22: TLabel;
    DTP2: TDateTimePicker;
    Label23: TLabel;
    cbCT: TComboBox;
    Label21: TLabel;
    cbtransfer: TComboBox;
    Query1InputDate: TDateTimeField;
    Query1SOTT: TIntegerField;
    Query1DONGIA: TFloatField;
    btn1: TButton;
    procedure Button1Click(Sender: TObject);
    procedure Button3Click(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure Button2Click(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure CBX1Change(Sender: TObject);
    procedure CBX2Change(Sender: TObject);
    procedure Button4Click(Sender: TObject);
    procedure Button5Click(Sender: TObject);
    procedure btn_YesClick(Sender: TObject);
    procedure btn_NoClick(Sender: TObject);
    procedure Panel4Click(Sender: TObject);
    procedure btn1Click(Sender: TObject);
  //  procedure Query1CalcFields(DataSet: TDataSet);
  private
    AppDir,LinkSV:string;
    { Private declarations }
    procedure ExportDefaultExcel();
    procedure ExportFormatExcel();
    procedure ExportDefaultExcel1();
    procedure readini();
    procedure TransferWF_LVL();
  public
    VNPrice_DiplayFormat:string;
    VNPrice_Decimal:Byte;
    //倉庫結算位數
    WH_Decimal:String;
    WH_DiplayFormat:String;
    { Public declarations }
    IsHide_Warehouse_XT:String;
    SQL_LinkServer,AccountN233_CheckLinkServer:string;
  end;

var
  EntryCheck: TEntryCheck;
  NDate:TDate;

implementation

uses EntryCheck_Print1, main1,fununit, EntryCheck_PrintFormat1;

{$R *.dfm}
function   DaysOfItsMonth(ADate:   TDateTime):   Word;
var
   Y,M,D:Word;
begin
    DecodeDate(ADate,Y,M,D);
    ADate:=EncodeDate(Y,M,1);
    Result:=Trunc(IncMonth(ADate,1)-ADate);
end;

procedure TEntryCheck.readini();
var MyIni :Tinifile;
    AppDir:string;
begin
  //
  IsHide_Warehouse_XT:='N';
  VNPrice_DiplayFormat:='#,##0';
  VNPrice_Decimal:=0;
  //倉庫小位數
  WH_Decimal:='2';
  WH_DiplayFormat:='#,##0.00';
  LinkSV:='WF.TYXUAN_TEST.dbo';
  AccountN233_CheckLinkServer:='Y';
  SQL_LinkServer:='';
  AppDir:=ExtractFilePath(Application.ExeName);
  if FileExists(AppDir+'\ComName.ini')=true then
  begin
    try
      MyIni := Tinifile.Create(AppDir+'\ComName.ini');
      VNPrice_DiplayFormat:=MyIni.ReadString('VNPrice','DiplayFormat','#,##0');
      VNPrice_Decimal:=strtoint(MyIni.ReadString('VNPrice','Decimal','0'));
      //倉庫小位數
      WH_Decimal:=MyIni.ReadString('Warehouse','Decimal','2');
      WH_DiplayFormat:=MyIni.ReadString('Warehouse','DiplayFormat','#,##0.00');
      LinkSV:=MyIni.ReadString('Account_N172','LinkSV','WF.TYXUAN_TEST.dbo');
      //隱藏XT
      IsHide_Warehouse_XT:=MyIni.ReadString('ERP','IsHide_Warehouse_XT','N');
      AccountN233_CheckLinkServer:=MyIni.ReadString('ERP','AccountN233_CheckLinkServer','Y');
    finally
      MyIni.Free;
    end;
  end;
  TCurrencyField(Query1.FieldByName('VNACC')).DisplayFormat:=VNPrice_DiplayFormat;
  TCurrencyField(Query1.FieldByName('VNPrice')).DisplayFormat:=VNPrice_DiplayFormat;
  TCurrencyField(Query1.FieldByName('CWHL')).DisplayFormat:=VNPrice_DiplayFormat;
  TCurrencyField(qry_report.FieldByName('TyGia')).DisplayFormat:=VNPrice_DiplayFormat;
  //
  TCurrencyField(Query1.FieldByName('Qty')).DisplayFormat:=WH_DiplayFormat;
  TCurrencyField(qry_report.FieldByName('Qty')).DisplayFormat:=WH_DiplayFormat;
  If AccountN233_CheckLinkServer='Y' then
  begin
    SQL_LinkServer:='LacTyDB.LIY_ERP.dbo';
  end else
  begin
    SQL_LinkServer:='dbo';
  end;
  //隱藏XT
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
    CBX6.Items.Add('NK1+TC1+KD1+NQ+NKNQ');
    CBX6.Items.Add('NK1+TC1+HD1+KD1+NQ+NKNQ');
    CBX6.Items.Add('NK+TC+HD+KD+NK1+TC1+HD1+KD1+NQ+NKNQ');
    CBX6.ItemIndex:=0;
  end;
  //
end;
//
procedure TEntryCheck.Button1Click(Sender: TObject);
var sDate,eDate:Tdate;
    i,iYear,iMonth:integer;
    tmpList,tmpList1,tmpList2,tmpList3:TStringlist;
    HGLBSQL,HGLBSQL1,HGLBSQL2,HGLBSQL3,GhiChuDD,BoPhan,MaDonHang:String;
    GhiChuDD_152,GhiChuDD_153,GhiChuDD_627:string;
    year,month,day:word;
    sYear,sMonth,sDay:String;
begin
  decodedate(DTP2.Date,Year,Month,Day);   //找庫存相關的數據
  sYear:=floattostr(year);
  sMonth:=floattostr(month);
  sDay:=floattostr(day);
  if length(sMonth)=1 then
    sMonth:='0'+sMonth;
  GhiChuDD:='';
  BoPhan:='';
  GhiChuDD_152:='';
  GhiChuDD_153:='';
  GhiChuDD_627:='';
  if (CBX1.text='')or (CBX2.text='')  then
  begin
    showmessage('You have to select the year and month first.');
    abort;
  end;
  iYear:=strtoint(CBX1.Text);
  iMonth:=strtoint(CBX2.Text);
  if (iYear>2999) or (iYear<1900) then
  begin
    Showmessage('Pls key in right year');
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
      sql.Clear;
      SQL.Add('SET ANSI_NULLS ON ');
      SQL.Add('SET ANSI_WARNINGS ON ');
      ExecSQL();
      sql.Clear;
      sql.add('Select KCRK.GSBH,KCRK.RKNO,ZSZL.ZSYWJC,KCRK.ZSNO,Convert(smalldatetime,convert(varchar,KCRK.USERDate,111))  as USERDATE,KCRK.CFMDATE,KCRKS.CLBH, ');
      sql.add('       CLZL.YWPM,CLZL.DWBH,KCZLS.CWBH,KCRKS.PaQty,KCRKS.Qty,KCRKS.USPrice,KCRKS.USACC,KCRKS.VNPrice,KCRKS.VNACC,KCRKS.CWHL,KCRKS.ExchACC, ');
      sql.add('       KCRKS.CGBH,KCRKS.RKSB,KCRKS.CostID,KCRK.CKBH,KCRK.HGLB,KCRK.DOCNO,KCRKS.invno,KCRKS.CNO, ');
      sql.Add('       Case when KCRK.HGLB =''NK'' then CLHG.UnitC when KCRK.HGLB =''TC'' then CLTC.UnitC when KCRK.HGLB=''HD'' then  CLHD.UnitC');
      sql.Add('            when (KCRK.HGLB=''KD'' and isnull(kcrks.CNO,'''') <>'''') then CLKD.UnitC ');
      sql.Add('            when KCRK.HGLB =''NK1'' then CLHG1.UnitC when KCRK.HGLB =''TC1'' then CLTC1.UnitC when KCRK.HGLB=''HD1'' then  CLHD1.UnitC ');
      sql.Add('            when (KCRK.HGLB=''KD1'' and isnull(kcrks.CNO,'''') <>'''') then CLKD1.UnitC  when KCRK.HGLB =''NQ'' then CLNQ.UnitC ');
      sql.Add('            when KCRK.HGLB=''NKNQ'' then CLNKNQ.UnitC else  NULL end as UnitC, ');
      sql.Add('       Case when KCRK.HGLB =''NK'' then CLHG.RateC when KCRK.HGLB =''TC'' then CLTC.RateC when KCRK.HGLB=''HD'' then  CLHD.RateC');
      sql.Add('            when (KCRK.HGLB=''KD'' and isnull(kcrks.CNO,'''') <>'''') then CLKD.RateC ');
      sql.Add('            when KCRK.HGLB =''NK1'' then CLHG1.RateC when KCRK.HGLB =''TC1'' then CLTC1.RateC when KCRK.HGLB=''HD1'' then  CLHD1.RateC ');
      sql.Add('            when (KCRK.HGLB=''KD1'' and isnull(kcrks.CNO,'''') <>'''') then CLKD1.RateC when KCRK.HGLB=''NQ'' then  CLNQ.RateC ');
      sql.Add('            when KCRK.HGLB=''NKNQ'' then  CLNKNQ.RateC else  NULL end as RateC,');
      sql.Add('       Case when KCRK.HGLB =''NK'' then CLHG.HGPM when KCRK.HGLB =''TC'' then CLTC.HGPM when KCRK.HGLB =''HD''then  CLHD.HGPM');
      sql.Add('            when (KCRK.HGLB =''KD'' and isnull(kcrks.CNO,'''') <>'''') then CLKD.HGPM  ');
      sql.Add('            when KCRK.HGLB =''NK1'' then CLHG1.HGPM when KCRK.HGLB =''TC1'' then CLTC1.HGPM when KCRK.HGLB =''HD1'' then  CLHD1.HGPM');
      sql.Add('            when (KCRK.HGLB =''KD1'' and isnull(kcrks.CNO,'''') <>'''') then CLKD1.HGPM when KCRK.HGLB =''NQ'' then  CLNQ.HGPM ');
      sql.Add('            when KCRK.HGLB =''NKNQ'' then  CLNKNQ.HGPM else  NULL end as HQName,');
      sql.Add('       KCPK.Declaretion,KCPK.Export,KCRKS.RKMemo,KCRK.ZSBH,CWFK.FKBH,KCRK.DOCDATE,KCRKS.CNO1,ZSZL.tybh,KCRK.InputDate,KCRKS.SOTT,CGZL_DeclarationS.Y_DonGia as DONGIA');
      //sql.Add('       KCPK.Declaretion,KCPK.Export,KCRKS.RKMemo,KCRK.ZSBH,CWFK.FKBH,KCRK.DOCDATE,KCRKS.CNO1,ZSZL.tybh,KCRK.InputDate,KCRKS.SOTT,0.0 as DONGIA');          //test
      sql.add('from (select * from KCRKS union all select * from KCRKS_2014) KCRKS');
      sql.add('left join (select * from KCRK union all select * from KCRK_2014) KCRK on KCRK.RKNO=KCRKS.RKNO');
      sql.add('left join CLZL on CLZL.CLDH=KCRKS.CLBH');
      //sql.Add('left join CLHG on CLHG.CLBH=KCRKS.CLBH and CLHG.HGBH=KCRKS.CNO ');
      sql.Add('left join CLHG on CLHG.CLBH=KCRKS.CLBH and KCRK.HGLB =''NK''');
      sql.Add('left join CLTC on CLTC.CLBH=KCRKS.CLBH and KCRK.HGLB =''TC''');
      sql.Add('left join CLHD on CLHD.CLBH=KCRKS.CLBH and KCRK.HGLB =''HD''');
      sql.Add('left join CLKD on CLKD.CLBH=KCRKS.CLBH and KCRK.HGLB =''KD''');
      sql.Add('left join CLHG1 on CLHG1.CLBH=KCRKS.CLBH and KCRK.HGLB =''NK1''');
      sql.Add('left join CLTC1 on CLTC1.CLBH=KCRKS.CLBH and KCRK.HGLB =''TC1''');
      sql.Add('left join CLHD1 on CLHD1.CLBH=KCRKS.CLBH and KCRK.HGLB =''HD1''');
      sql.Add('left join CLKD1 on CLKD1.CLBH=KCRKS.CLBH and KCRK.HGLB =''KD1''');
      sql.Add('left join CLNQ on CLNQ.CLBH=KCRKS.CLBH and KCRK.HGLB =''NQ''');
      sql.Add('left join CLNKNQ on CLNKNQ.CLBH=KCRKS.CLBH and KCRK.HGLB =''NKNQ''');
      sql.add('left join ZSZL on ZSZL.ZSDH=KCRK.ZSBH');
      sql.add('left join KCZLS on KCZLS.CLBH=KCRKS.CLBH and KCZLS.CKBH=KCRK.CKBH ');
      sql.add('left join KCCK on KCCK.CKBH=KCRK.CKBH ');
      sql.add('left join KCPK on KCPK.PKNO=KCRK.RKNO ');
      sql.Add('left join CWYF on CWYF.DJNO=KCRKS.RKNO AND CWYF.CLBH=KCRKS.CLBH AND CWYF.CGBH=KCRKS.CGBH AND CWYF.DJLX=KCRKS.RKSB ');
      sql.Add('left join CWFK ON CWFK.FKBH=CWYF.FKBH ');
      sql.Add('left join '+SQL_LinkServer+'.CGZL_DeclarationS CGZL_DeclarationS on CGZL_DeclarationS.DOCNO=kcrk.DOCNO and CGZL_DeclarationS.DECLARATION=kcpk.Declaretion and CGZL_DeclarationS.SOTT=kcrks.SOTT');
      //sql.Add('left join CGZL_DeclarationS on CGZL_DeclarationS.DOCNO=kcrk.DOCNO and CGZL_DeclarationS.DECLARATION=kcpk.Declaretion and CGZL_DeclarationS.SOTT=kcrks.SOTT');  //test
      sql.Add('where KCRKS.Qty<>0 AND Convert(smalldatetime,convert(varchar,KCRK.USERDate,111)) between ');
      sql.add('      '''+formatdatetime('yyyy/MM/dd',sdate)+''' and '''+formatdatetime('yyyy/MM/dd',edate)+'''');
      if CBX3.Text<>'' then
      begin
        sql.Add('and KCCK.CKBH ='''+CBX3.text+'''');
      end;
      if edit1.text<>'' then
        sql.add('      and KCRKS.CLBH like '''+edit1.text+'%''');
      if edit2.text<>'' then
        sql.add('      and CLZL.YWPM like ''%'+edit2.text+'%''');
      if edit3.text<>'' then
        sql.add('      and CLZL.YWPM like ''%'+edit3.text+'%'+'''');
      if edit4.text<>'' then
        sql.add('      and isnull(KCZLS.CWBH,'''') like '''+edit4.text+'%''');
      if Edit9.Text<>'' then
        sql.Add('and KCPK.Export  like '''+Edit9.Text+'%''');
      if edit7.text<>'' then
        sql.add('      and KCRKS.CostID like '''+edit7.text+'%''');
      if edit5.text<>'' then
        sql.add('      and KCRKS.RKNO like '''+edit5.text+'%''');
      if edit6.text<>'' then
        sql.add('      and ZSZL.ZSYWJC like ''%'+edit6.Text+'%''');
      if Edit8.Text<>'' then
        sql.Add('    and KCPK.Declaretion like '''+edit8.text+'%''');
      if edtFKBH.Text <> '' then
        sql.Add('    and CWFK.FKBH like '''+edtFKBH.Text+'%''');
      if edtCGBH.Text <> '' then
        sql.Add('    and KCRKS.CGBH like '''+edtCGBH.Text+'%''');
      //20220312
      if cbYN.Text<> 'ALL' then
      begin
        sql.Add('   and KCRK.YN='''+cbYN.Text+'''');
      end;
      //
      sql.add('      and KCCK.GSBH='''+main.edit2.Text+''' ');
      if cbInvoice.Text<>'' then
      begin
        sql.Add('and KCRK.DOCNO like '''+cbInvoice.text+'%''');
      end;
      if CBX6.ItemIndex>0 then
      begin
        if CBX6.ItemIndex>0 then
        begin
          if Pos('+',CBX6.Text)<0 then
          begin
            sql.add('and KCRK.HGLB='''+CBX6.Text+''' ')
          end else
          begin
            tmpList:=TStringlist.Create;
            tmpList:=FuncObj.SplitString(CBX6.Text,'+');
            for i:=0 to tmpList.Count-1 do
            begin
              HGLBSQL:=HGLBSQL+''''+tmpList.Strings[i]+''',';
            end;
            HGLBSQL:='('+Copy(HGLBSQL,1,length(HGLBSQL)-1)+')';
            sql.add(' and KCRK.HGLB in '+HGLBSQL+' ');
            tmpList.Free;
          end;
        end;
      end;
      if IsHide_Warehouse_XT='Y' then  //隱藏XT
        sql.add('and KCRK.HGLB<>''XT'' ');
     sql.Add('ORDER BY KCRK.RKNO');
     //funcobj.WriteErrorLog(sql.Text);
     active:=true;
    end;
    // load  combo Invoice
    with MatSite do
    begin
      active:=false;
      sql.Clear;
      sql.add('select distinct DOCNO from KCRK ');
      sql.add('where GSBH='+''''+main.Edit2.Text+'''');
      sql.Add('and Convert(smalldatetime,convert(varchar,KCRK.USERDate,111)) between ');
      sql.add('      '''+formatdatetime('yyyy/MM/dd',sdate)+''''+' and ' +''''+formatdatetime('yyyy/MM/dd',edate)+'''');
      //20220312
      if cbYN.Text<> 'ALL' then
      begin
        //sql.add('      and KCRK.YN='+''''+'5'+'''');
        sql.Add('   and KCRK.YN='''+cbYN.Text+'''');
      end;
      //
      sql.add('order by DOCNO');
      active:=true;
      cbInvoice.Items.Clear;
      while not eof do
      begin
        cbInvoice.Items.Add(fieldbyname('DOCNO').AsString);
        next;
      end;
      active:=false;
    end;
  end;
  if PC1.ActivePageIndex=1 then
  begin
    {if CBX3.Text = '' then
    begin
      showmessage('Pls select CKBH ');
      abort;
    end;}
    If CBX3.Text='VA12' then
    begin
       GhiChuDD_152:='Nguyen lieu vat lieu KHO A12 T'+smonth+'-'+syear;
       GhiChuDD_153:='Cong cu dung cu KHO A12 T'+smonth+'-'+syear;
       BoPhan:='A12';
       MaDonHang:='KCRK.ZSBH+''-''+ KCRK.DOCNO AS MaDonHang';
    end;
    if ((CBX3.Text='CDC') or (CBX3.Text='CDT')) then
    begin
       GhiChuDD_152:='Nhap nguyen lieu vat lieu kho CDC T'+smonth+'-'+syear;
       GhiChuDD_153:='Nhap cong cu dung cu kho CDC T'+smonth+'-'+syear;
       BoPhan:='KTHAC';
       MaDonHang:='KCRK.ZSBH+''-''+ KCRK.DOCNO AS MaDonHang';
    end;
    if  (CBX3.Text='CBY') then
    begin
       GhiChuDD_152:='Nhap nguyen lieu vat lieu kho CBY T'+smonth+'-'+syear;
       GhiChuDD_153:='Nhap cong cu dung cu kho CBY T'+smonth+'-'+syear;
       GhiChuDD_627:='';
       BoPhan:='KTHACCBY';
       MaDonHang:='KCRK.ZSBH+''-''+ KCRK.DOCNO AS MaDonHang';
    end;
    if ((CBX3.Text='VTXX') or (CBX3.Text='VTXY') or (CBX3.Text='VTXZ')) then
    begin
       GhiChuDD_153:='Nhap cong cu dung cu kho tong vu A T'+smonth+'-'+syear;
       GhiChuDD_152:='';
       GhiChuDD_627:='';
       BoPhan:='A-TX';
       MaDonHang:='KCRK.ZSBH+''-''+ KCRK.DOCNO AS MaDonHang';
    end;
    if ((CBX3.Text='VLXX') or (CBX3.Text='VLXY') or (CBX3.Text='VLXZ')) then
    begin
       GhiChuDD_153:='Nhap cong cu dung cu kho tong vu A-VL T'+smonth+'-'+syear;
       GhiChuDD_152:='';
       GhiChuDD_627:='';
       BoPhan:='A-VL';
       MaDonHang:='KCRK.ZSBH+''-''+ KCRK.DOCNO AS MaDonHang';
    end;
    if (CBX3.Text='VTXW')  then
    begin
       GhiChuDD_152:='Nguyen lieu vat lieu KHO HCA T'+smonth+'-'+syear;
       GhiChuDD_153:='';
       GhiChuDD_627:='';
       BoPhan:='A-TX';
       MaDonHang:='KCRK.ZSBH+''-''+ KCRK.DOCNO AS MaDonHang';
    end;
    if (CBX3.Text='NHKA')  then
    begin
       GhiChuDD_627:='22a.Chi phi thuc pham KHU A T'+smonth+'-'+syear;
       GhiChuDD_152:='';
       GhiChuDD_153:='';
       BoPhan:='A-TXNA';
       MaDonHang:='KYHIEU_MAUSO+KYHIEU_HOADON+VATNO as MaDonHang';
    end;
    if (CBX3.Text='NHKB')  then
    begin
       GhiChuDD_627:='22a.Chi phi thuc pham KHU B T'+smonth+'-'+syear;
       GhiChuDD_152:='';
       GhiChuDD_153:='';
       BoPhan:='B-TXNA';
       MaDonHang:='KYHIEU_MAUSO+KYHIEU_HOADON+VATNO as MaDonHang';
    end;

    With qry_report do
    begin
      Active:=false;
      SQL.Clear;
      SQL.Add('SET ANSI_NULLS ON ');
      SQL.Add('SET ANSI_WARNINGS ON ');
      ExecSQL();
      Active := false;
      SQL.Clear;
      SQL.Add('  IF OBJECT_ID(''tempdb..#TempLoaiCT'') IS NOT NULL      ');
      SQL.Add('    begin drop table #TempLoaiCT end     ');
      SQL.Add('    SELECT DISTINCT kcrk.RKNO,    ');
      SQL.Add('    CASE WHEN (KCRK.CKBH=''VA12'')  AND ISNULL(kcrks.USPrice,0)=0  THEN ''713''      ');
      SQL.Add('      		WHEN (KCRK.CKBH=''VA12'')  AND ISNULL(kcrks.USPrice,0)<>0   THEN ''7131''      ');
      SQL.Add('      		WHEN (KCRK.CKBH=''VTXW'' ) AND  ISNULL(kcrks.USACC,0)=0 THEN ''716''      ');
      SQL.Add('      		WHEN (KCRK.CKBH=''VTXW'' ) AND  ISNULL(kcrks.USACC,0)<>0 THEN ''7161''      ');
      SQL.Add('      		WHEN (KCRK.CKBH=''VTXX''  OR KCRK.CKBH=''VTXY'' OR KCRK.CKBH=''VTXZ'' or KCRK.CKBH=''VLXX''  OR KCRK.CKBH=''VLXY'' OR KCRK.CKBH=''VLXZ'') AND ISNULL(kcrks.USPrice,0)=0    THEN ''717''      ');
      SQL.Add('      		WHEN (KCRK.CKBH=''VTXX''  OR KCRK.CKBH=''VTXY'' OR KCRK.CKBH=''VTXZ'' or KCRK.CKBH=''VLXX''  OR KCRK.CKBH=''VLXY'' OR KCRK.CKBH=''VLXZ'') AND ISNULL(kcrks.USPrice,0)<>0   THEN ''7171''      ');
      SQL.Add('         WHEN (KCRK.CKBH=''CDC'' OR KCRK.CKBH=''CDT'' OR KCRK.CKBH=''CBY'')  AND ISNULL(kcrks.USPrice,0)=0  THEN ''743''  ');
      SQL.Add('         WHEN (KCRK.CKBH=''CDC'' OR KCRK.CKBH=''CDT'' OR KCRK.CKBH=''CBY'')  AND ISNULL(kcrks.USPrice,0)<>0  THEN ''7431''  ');
      SQL.Add('      		WHEN (KCRK.CKBH=''NHKA'') THEN ''741'' WHEN (KCRK.CKBH=''NHKB'') THEN ''742''      ');
      //20241218 them xuong VC
      SQL.Add('         WHEN (KCRK.CKBH=''VC1'') AND ISNULL(kcrks.USPrice,0)=0 THEN ''723'' ');
      SQL.Add('         WHEN (KCRK.CKBH=''VC1'') AND ISNULL(kcrks.USPrice,0)<>0 THEN ''7231'' ');
      SQL.Add('         WHEN (KCRK.CKBH=''VC2'') AND ISNULL(kcrks.USPrice,0)=0 THEN ''722'' ');
      SQL.Add('         WHEN (KCRK.CKBH=''VC2'') AND ISNULL(kcrks.USPrice,0)<>0 THEN ''7221'' ');
      SQL.Add('         WHEN (KCRK.CKBH=''VC2X'' OR KCRK.CKBH=''VC2Y'' OR KCRK.CKBH=''VC2Z'') AND ISNULL(kcrks.USPrice,0)=0 THEN ''724'' ');
      SQL.Add('         WHEN (KCRK.CKBH=''VC2X'' OR KCRK.CKBH=''VC2Y'' OR KCRK.CKBH=''VC2Z'') AND ISNULL(kcrks.USPrice,0)<>0 THEN ''7241'' ');
      //
      SQL.Add('      		END LoaiCT       ');
      SQL.Add('    INTO #TempLoaiCT          ');
      SQL.Add('    FROM  KCRKS     ');
      SQL.Add('    LEFT JOIN CLZL ON CLZL.CLDH=KCRKS.CLBH    ');
      SQL.Add('    LEFT JOIN KCRK ON KCRK.RKNO = KCRKS.RKNO    ');
      SQL.Add('    LEFT JOIN KCCK on KCCK.CKBH=KCRK.CKBH ');
      SQL.Add('    WHERE  ISNULL(KCRK.DOCNO,'''')<>''''    ');
      SQL.Add('    	AND CONVERT(SMALLDATETIME,CONVERT(VARCHAR,KCRK.USERDate,111)) BETWEEN   ');
      SQL.Add('     '''+formatdatetime('yyyy/MM/dd',DTP1.Date)+''' AND '''+formatdatetime('yyyy/MM/dd',DTP2.Date)+'''  ');
      SQL.Add('      AND KCCK.GSBH='''+main.edit2.Text+''' ');
      if CBX3.Text<>'' then
      begin
        SQL.Add('    AND KCCK.CKBH ='''+CBX3.text+''' ');
      end;
      SQL.Add('--================================================================================================  ');
      SQL.Add('    IF OBJECT_ID(''tempdb..#TempTransfer'') IS NOT NULL      ');
      SQL.Add('    begin drop table #TempTransfer end     ');
      SQL.Add('    SELECT KCRK.CKBH ,KCRK.RKNO, SUM(kcrks.Qty)Qty    ');
      //SQL.Add('    	  ,CASE WHEN CWBH=''152'' THEN ''1521''      ');
      //SQL.Add('      	         WHEN CWBH=''153'' THEN ''1531''    ');
      SQL.Add('         ,CASE WHEN (left(KCRK.CKBH,2)=''VC'' AND CWBH like ''152%'') THEN ''1523'' ');
      SQL.Add('       				WHEN (left(KCRK.CKBH,2)=''VC'' AND CWBH like ''153%'') THEN ''1533'' ');
      SQL.Add('       				WHEN (left(KCRK.CKBH,2) in (''VA'',''CD'',''CB'',''VT'',''VL'') AND CWBH like ''152%'') THEN ''1521'' ');
      SQL.Add('      	        WHEN (left(KCRK.CKBH,2) in (''VA'',''CD'',''CB'',''VT'',''VL'') AND CWBH like ''153%'') THEN ''1531'' ');
      SQL.Add('               WHEN CWBH=''6277'' THEN ''62777'' END CWBH ');
      SQL.Add('    	  ,KCRK.ZSBH  ');
      SQL.Add('    	  ,SUM(KCRKS.VNACC) AS TienNguyenTe    ');
      SQL.Add('    	  ,SUM(KCRKS.VNACC) AS TienNguyenTeChuaThue    ');
      SQL.Add('    	  ,''1'' TyGia    ');
      SQL.Add('    	  ,SUM(KCRKS.VNACC) AS TienNoiTe     ');
      SQL.Add('    	  ,CT.LoaiCT    ');
      //==================2024/10/09
      //SQL.Add('       ,'+MaDonHang+' ');
      SQL.Add(',CASE WHEN (KCRK.CKBH=''NHKA'' OR KCRK.CKBH=''NHKB'') THEN KYHIEU_MAUSO+KYHIEU_HOADON+VATNO ELSE KCRK.ZSBH+''-''+ KCRK.DOCNO END AS MaDonHang ');
      //==================
      SQL.Add('       ,KCRK.DOCDATE AS NgayCT ');
      SQL.Add('    	  ,''VND'' TienTe    ');
      //==================2024/10/09
      //SQL.Add('       ,CASE WHEN KCZLS.CWBH=''152'' THEN KCRK.ZSBH+''-''+ KCRK.DOCNO+''-''+'''+GhiChuDD_152+''' WHEN KCZLS.CWBH=''153'' THEN KCRK.ZSBH+''-''+ KCRK.DOCNO+''-''+'''+GhiChuDD_153+'''  ');
      //SQL.Add('             WHEN KCZLS.CWBH=''6277'' THEN KYHIEU_MAUSO+KYHIEU_HOADON+VATNO+''-''+'''+GhiChuDD_627+'''+''-SO HD:''+KCRK.DOCNO END as GhichuDauDon ');
      SQL.Add('       ,CASE WHEN KCZLS.CWBH like ''152%'' THEN KCRK.ZSBH+''-''+ KCRK.DOCNO+''-''+CASE WHEN (KCRK.CKBH=''VA12'') THEN ''Nguyen lieu vat lieu KHO A12 T'+smonth+'-'+syear+'''');
      SQL.Add('        															                                            WHEN (KCRK.CKBH=''CDC'' OR KCRK.CKBH=''CDT'') THEN ''Nhap nguyen lieu vat lieu kho CDC T'+smonth+'-'+syear+'''');
      SQL.Add('        																                                          WHEN (KCRK.CKBH=''CBY'' ) THEN ''Nhap nguyen lieu vat lieu kho CBY T'+smonth+'-'+syear+'''');
      //20241218 them xuong VC
      SQL.Add('        																                                          WHEN (KCRK.CKBH=''VC1'' ) THEN ''Nhap nguyen lieu vat lieu kho VC1 T'+smonth+'-'+syear+'''');
      SQL.Add('        																                                          WHEN (KCRK.CKBH=''VC2'' ) THEN ''Nguyen lieu vat lieu kho VC2 T'+smonth+'-'+syear+'''');
      //
      SQL.Add('        																                                          WHEN (KCRK.CKBH=''VTXW'') THEN ''Nguyen lieu vat lieu KHO HCA T'+smonth+'-'+syear+''' ELSE '''' END');
      SQL.Add('             WHEN KCZLS.CWBH like ''153%'' THEN KCRK.ZSBH+''-''+ KCRK.DOCNO+''-''+CASE WHEN (KCRK.CKBH=''VA12'') THEN ''Cong cu dung cu KHO A12 T'+smonth+'-'+syear+'''');
      SQL.Add('                                                                                 WHEN (KCRK.CKBH=''CDC'' OR KCRK.CKBH=''CDT'') THEN ''Nhap cong cu dung cu kho CDC T'+smonth+'-'+syear+'''');
      SQL.Add('        																                                          WHEN (KCRK.CKBH=''CBY'' ) THEN ''Nhap cong cu dung cu kho CBY T'+smonth+'-'+syear+'''');
      SQL.Add('        																                                          WHEN (KCRK.CKBH=''VTXX'' OR KCRK.CKBH=''VTXY'' OR KCRK.CKBH=''VTXZ'') THEN ''Nhap cong cu dung cu kho tong vu A T'+smonth+'-'+syear+'''');
      //20241218 them xuong VC
      SQL.Add('        																                                          WHEN (KCRK.CKBH=''VC1'' ) THEN ''Nhap cong cu dung cu kho VC1 T'+smonth+'-'+syear+'''');
      SQL.Add('        																                                          WHEN (KCRK.CKBH=''VC2'' ) THEN ''Cong cu dung cu kho VC2 T'+smonth+'-'+syear+'''');
      SQL.Add('        																                                          WHEN (KCRK.CKBH=''VC2X'' OR KCRK.CKBH=''VC2Y'' OR KCRK.CKBH=''VC2Z'') THEN ''Nhap cong cu dung cu kho tong vu VC T'+smonth+'-'+syear+'''');
      //
      SQL.Add('        																                                          WHEN (KCRK.CKBH=''VLXX'' OR KCRK.CKBH=''VLXY'' OR KCRK.CKBH=''VLXZ'') THEN ''Nhap cong cu dung cu kho tong vu A-VL T'+smonth+'-'+syear+''''+ ' ELSE '''' END');
      SQL.Add('             WHEN KCZLS.CWBH=''6277'' THEN KYHIEU_MAUSO+KYHIEU_HOADON+VATNO+''-''+CASE WHEN (KCRK.CKBH=''NHKA'') THEN ''22a.Chi phi thuc pham KHU A T'+smonth+'-'+syear+'''');
      SQL.Add('                                                                                       WHEN (KCRK.CKBH=''NHKB'') THEN ''22a.Chi phi thuc pham KHU B T'+smonth+'-'+syear+'''');
      SQL.Add('                                                                                       ELSE '''' END +''-SO HD:''+KCRK.DOCNO END as GhichuDauDon ');
      //SQL.Add('    	  ,'''+BoPhan+''' as BoPhan    ');
      SQL.Add('      	,CASE WHEN (KCRK.CKBH=''VA12'') THEN ''A12'' ');
      SQL.Add('        		  WHEN (KCRK.CKBH=''CDC'' OR KCRK.CKBH=''CDT'') THEN ''KTHAC'' ');
      SQL.Add('        		  WHEN (KCRK.CKBH=''CBY'' ) THEN ''KTHACCBY'' ');
      //20241218 them xuong VC
      SQL.Add('        		  WHEN (KCRK.CKBH=''VC1'' ) THEN ''C-VC1'' ');
      SQL.Add('        		  WHEN (KCRK.CKBH=''VC2'' ) THEN ''C-VC2'' ');
      SQL.Add('        		  WHEN (KCRK.CKBH=''VC2X''  OR KCRK.CKBH=''VC2Y'' OR KCRK.CKBH=''VC2Z'') THEN ''C-TX'' ');
      //
      SQL.Add('        		  WHEN (KCRK.CKBH=''VTXX''  OR KCRK.CKBH=''VTXY'' OR KCRK.CKBH=''VTXZ'' or KCRK.CKBH=''VTXW'') THEN ''A-TX'' ');
      SQL.Add('        		  WHEN (KCRK.CKBH=''VLXX''  OR KCRK.CKBH=''VLXY'' OR KCRK.CKBH=''VLXZ'') THEN ''A-VL'' ');
      SQL.Add('             WHEN (KCRK.CKBH=''NHKA'') THEN ''A-TXNA'' ');
      SQL.Add('             WHEN (KCRK.CKBH=''NHKB'') THEN ''B-TXNA'' ');
      SQL.Add('       END AS BoPhan ');
      //==================
      SQL.Add('    INTO #TempTransfer    ');
      SQL.Add('    from  KCRKS  ');
      SQL.Add('    left join KCRK on KCRK.RKNO=KCRKS.RKNO  ');
      SQL.Add('    left join CLZL on CLZL.CLDH=KCRKS.CLBH  ');
      SQL.Add('    left join ZSZL on ZSZL.ZSDH=KCRK.ZSBH  ');
      SQL.Add('    left join KCZLS on KCZLS.CLBH=KCRKS.CLBH and KCZLS.CKBH=KCRK.CKBH   ');
      SQL.Add('    left join KCCK on KCCK.CKBH=KCRK.CKBH   ');
      SQL.Add('    left join KCPK on KCPK.PKNO=KCRK.RKNO   ');
      //SQL.Add('    left join CWYF on CWYF.DJNO=KCRKS.RKNO AND CWYF.CLBH=KCRKS.CLBH AND CWYF.CGBH=KCRKS.CGBH AND CWYF.DJLX=KCRKS.RKSB   ');
      //SQL.Add('    left join CWFK ON CWFK.FKBH=CWYF.FKBH    ');
      SQL.Add('    left join LacTyDB.LIY_ERP.dbo.CGZL_VATNO CGZL_VATNO on CGZL_VATNO.VATNO=KCRK.DOCNO and CGZL_VATNO.VATDate=KCRK.DOCDATE    ');
      SQL.Add('                            AND CGZL_VATNO.ZSBH_MST=zszl.tybh   ');
      SQL.Add('    LEFT JOIN #TempLoaiCT CT ON  CT.RKNO = KCRK.RKNO    ');
      SQL.Add('    WHERE 1=1    ');
      SQL.Add('    AND CONVERT(SMALLDATETIME,CONVERT(VARCHAR,KCRK.USERDate,111)) BETWEEN     ');
      SQL.Add('      '''+formatdatetime('yyyy/MM/dd',DTP1.Date)+''' AND '''+formatdatetime('yyyy/MM/dd',DTP2.Date)+'''  ');
      SQL.Add('    and ISNULL(KCPK.Declaretion,'''')=''''  ');
      SQL.Add('    AND ISNULL(KCRK.DOCNO,'''')<>''''    ');
      SQL.Add('    AND KCRKS.VNACC <> 0 ');
      if cbCT.Text <> '' then
         sql.Add('     and CT.LoaiCT ='''+cbCT.Text+''' ');
      if edit1.text<>'' then
        sql.add('      and KCRKS.CLBH like '''+edit1.text+'%''');
      if edit2.text<>'' then
        sql.add('      and CLZL.YWPM like ''%'+edit2.text+'%''');
      if edit3.text<>'' then
        sql.add('      and CLZL.YWPM like ''%'+edit3.text+'%'+'''');
      if edit4.text<>'' then
        sql.add('      and isnull(KCZLS.CWBH,'''') like '''+edit4.text+'%''');
      if Edit9.Text<>'' then
        sql.Add('      and KCPK.Export  like '''+Edit9.Text+'%''');
      if edit7.text<>'' then
        sql.add('      and KCRKS.CostID like '''+edit7.text+'%''');
      if edit5.text<>'' then
        sql.add('      and KCRKS.RKNO like '''+edit5.text+'%''');
      if edit6.text<>'' then
        sql.add('      and ZSZL.ZSYWJC like ''%'+edit6.Text+'%''');
      if Edit8.Text<>'' then
        sql.Add('      and KCPK.Declaretion like '''+edit8.text+'%''');
      if edtFKBH.Text <> '' then
        sql.Add('      and CWFK.FKBH like '''+edtFKBH.Text+'%''');
      if edtCGBH.Text <> '' then
        sql.Add('      and KCRKS.CGBH like '''+edtCGBH.Text+'%''');
      //20220312
      if cbYN.Text<> 'ALL' then
      begin
        sql.Add('    and KCRK.YN='''+cbYN.Text+'''');
      end;
      //
      sql.add('      and KCCK.GSBH='''+main.edit2.Text+''' ');
      if CBX3.Text<>'' then
      begin
        sql.Add('and KCCK.CKBH ='''+CBX3.text+'''');
      end;
      if cbInvoice.Text<>'' then
      begin
        sql.Add('and KCRK.DOCNO like '''+cbInvoice.text+'%''');
      end;
      if CBX6.ItemIndex>0 then
      begin
        if CBX6.ItemIndex>0 then
        begin
          if Pos('+',CBX6.Text)<0 then
          begin
            sql.add('and KCRK.HGLB='''+CBX6.Text+''' ')
          end else
          begin
            tmpList1:=TStringlist.Create;
            tmpList1:=FuncObj.SplitString(CBX6.Text,'+');
            for i:=0 to tmpList1.Count-1 do
            begin
              HGLBSQL1:=HGLBSQL1+''''+tmpList1.Strings[i]+''',';
            end;
            HGLBSQL1:='('+Copy(HGLBSQL1,1,length(HGLBSQL1)-1)+')';
            sql.add(' and KCRK.HGLB in '+HGLBSQL1+' ');
            tmpList1.Free;
          end;
        end;
      end;
      // 20240925 check data transfer or not
      if cbtransfer.ItemIndex=1 then
          sql.add('AND EXISTS ( SELECT  XB016 FROM  '+LinkSV+'.ACPXB where XB016<>'''' AND XB016<>''002'' AND XB016=KCRKS.RKNO COLLATE Chinese_Taiwan_Stroke_CI_AS)');
      if cbtransfer.ItemIndex=2 then
          sql.add('AND NOT EXISTS ( SELECT  XB016 FROM  '+LinkSV+'.ACPXB where XB016<>'''' AND XB016<>''002'' AND XB016=KCRKS.RKNO COLLATE Chinese_Taiwan_Stroke_CI_AS)');
      //
      if ((CBX3.Text='NHKA') or (CBX3.Text='NHKB')) then
      begin
        SQL.Add('   GROUP BY  KCRK.CKBH ,KCRK.RKNO,KCZLS.CWBH,KCRK.ZSBH,CT.LoaiCT,KCRK.DOCNO,KCRK.DOCDATE,KYHIEU_MAUSO,KYHIEU_HOADON,VATNO ');
      end else
      begin
        SQL.Add('    GROUP BY  KCRK.CKBH ,KCRK.RKNO,KCZLS.CWBH,KCRK.ZSBH,CT.LoaiCT,KCRK.DOCNO,KCRK.DOCDATE,KYHIEU_MAUSO+KYHIEU_HOADON+VATNO  ');
      end;
      SQL.Add('--================================================================================================  ');
      SQL.Add('    UNION ALL  ');
      //==================2024/10/09
      //SQL.Add('    SELECT KCRK.CKBH,''002'' RKNO, 0 Qty   ');
      SQL.Add('    SELECT '''' as CKBH,''002'' RKNO, 0 Qty   ');
      SQL.Add('    	  ,''1331'' CWBH    ');
      SQL.Add('    	  ,KCRK.ZSBH    ');
      SQL.Add('    	  ,Round(TONGTIEN_THUE,0) AS TienNguyenTe    ');       // lam tron tien thue do mat hang sieu thi co le
      SQL.Add('    	  ,Round(TONGTIEN_THUE,0) AS TienNguyenTeChuaThue    ');
      SQL.Add('    	  ,''1'' TyGia    ');
      SQL.Add('    	  ,Round(TONGTIEN_THUE,0) AS TienNoiTe     ');
      SQL.Add('    	  ,CT.LoaiCT    ');
      //==================2024/10/09
      //SQL.Add('       ,'+MaDonHang+' ');
      SQL.Add(',MAX(CASE WHEN (KCRK.CKBH=''NHKA'' OR KCRK.CKBH=''NHKB'') THEN KYHIEU_MAUSO+KYHIEU_HOADON+VATNO ELSE KCRK.ZSBH+''-''+ KCRK.DOCNO END) AS MaDonHang ');
      //==================
      SQL.Add('       ,KCRK.DOCDATE ');
      SQL.Add('    	  ,''VND'' TienTe    ');
      //==================2024/10/09
      //SQL.Add('       ,CASE WHEN KCZLS.CWBH=''152'' THEN '''+GhiChuDD_152+''' WHEN KCZLS.CWBH=''153'' THEN '''+GhiChuDD_153+''' WHEN KCZLS.CWBH=''6277'' THEN '''+GhiChuDD_627+''' END as GhichuDauDon ');
      //SQL.Add('       ,CASE WHEN KCZLS.CWBH=''152'' THEN KCRK.ZSBH+''-''+ KCRK.DOCNO+''-''+'''+GhiChuDD_152+''' WHEN KCZLS.CWBH=''153'' THEN KCRK.ZSBH+''-''+ KCRK.DOCNO+''-''+'''+GhiChuDD_153+'''  ');
      //SQL.Add('             WHEN KCZLS.CWBH=''6277'' THEN KYHIEU_MAUSO+KYHIEU_HOADON+VATNO+''-''+'''+GhiChuDD_627+'''+''-SO HD:''+KCRK.DOCNO END as GhichuDauDon ');
      SQL.Add('       ,MAX(CASE WHEN KCZLS.CWBH like ''152%'' THEN KCRK.ZSBH+''-''+ KCRK.DOCNO+''-''+CASE WHEN (KCRK.CKBH=''VA12'') THEN ''Nguyen lieu vat lieu KHO A12 T'+smonth+'-'+syear+'''');
      SQL.Add('        															                                            WHEN (KCRK.CKBH=''CDC'' OR KCRK.CKBH=''CDT'') THEN ''Nhap nguyen lieu vat lieu kho CDC T'+smonth+'-'+syear+'''');
      SQL.Add('        																                                          WHEN (KCRK.CKBH=''CBY'' ) THEN ''Nhap nguyen lieu vat lieu kho CBY T'+smonth+'-'+syear+'''');
      //20241218 them xuong VC
      SQL.Add('        																                                          WHEN (KCRK.CKBH=''VC2'' ) THEN ''Nguyen lieu vat lieu kho VC2 T'+smonth+'-'+syear+'''');
      SQL.Add('        																                                          WHEN (KCRK.CKBH=''VC1'' ) THEN ''Nhap nguyen lieu vat lieu kho VC1 T'+smonth+'-'+syear+'''');
      //
      SQL.Add('        																                                          WHEN (KCRK.CKBH=''VTXW'') THEN ''Nguyen lieu vat lieu KHO HCA T'+smonth+'-'+syear+''' ELSE '''' END');
      SQL.Add('             WHEN KCZLS.CWBH like ''153%'' THEN KCRK.ZSBH+''-''+ KCRK.DOCNO+''-''+CASE WHEN (KCRK.CKBH=''VA12'') THEN ''Cong cu dung cu KHO A12 T'+smonth+'-'+syear+'''');
      SQL.Add('                                                                                 WHEN (KCRK.CKBH=''CDC'' OR KCRK.CKBH=''CDT'') THEN ''Nhap cong cu dung cu kho CDC T'+smonth+'-'+syear+'''');
      SQL.Add('        																                                          WHEN (KCRK.CKBH=''CBY'' ) THEN ''Nhap cong cu dung cu kho CBY T'+smonth+'-'+syear+'''');
      //20241218 them xuong VC
      SQL.Add('        																                                          WHEN (KCRK.CKBH=''VC2'' ) THEN ''Cong cu dung cu kho VC2 T'+smonth+'-'+syear+'''');
      SQL.Add('        																                                          WHEN (KCRK.CKBH=''VC1'' ) THEN ''Nhap cong cu dung cu kho VC1 T'+smonth+'-'+syear+'''');
      SQL.Add('        																                                          WHEN (KCRK.CKBH=''VC2X'' OR KCRK.CKBH=''VC2Y'' OR KCRK.CKBH=''VC2Z'') THEN ''Nhap cong cu dung cu kho tong vu VC T'+smonth+'-'+syear+'''');
      //
      SQL.Add('        																                                          WHEN (KCRK.CKBH=''VTXX'' OR KCRK.CKBH=''VTXY'' OR KCRK.CKBH=''VTXZ'') THEN ''Nhap cong cu dung cu kho tong vu A T'+smonth+'-'+syear+'''');
      SQL.Add('        																                                          WHEN (KCRK.CKBH=''VLXX'' OR KCRK.CKBH=''VLXY'' OR KCRK.CKBH=''VLXZ'') THEN ''Nhap cong cu dung cu kho tong vu A-VL T'+smonth+'-'+syear+''''+ ' ELSE '''' END');
      SQL.Add('             WHEN KCZLS.CWBH=''6277'' THEN KYHIEU_MAUSO+KYHIEU_HOADON+VATNO+''-''+CASE WHEN (KCRK.CKBH=''NHKA'') THEN ''22a.Chi phi thuc pham KHU A T'+smonth+'-'+syear+'''');
      SQL.Add('                                                                                       WHEN (KCRK.CKBH=''NHKB'') THEN ''22a.Chi phi thuc pham KHU B T'+smonth+'-'+syear+'''');
      SQL.Add('                                                                                       ELSE '''' END +''-SO HD:''+KCRK.DOCNO END) as GhichuDauDon ');
      //SQL.Add('    	  ,'''+BoPhan+''' as BoPhan   ');
      SQL.Add('      	,MAX(CASE WHEN (KCRK.CKBH=''VA12'') THEN ''A12'' ');
      SQL.Add('        		  WHEN (KCRK.CKBH=''CDC'' OR KCRK.CKBH=''CDT'') THEN ''KTHAC'' ');
      SQL.Add('        		  WHEN (KCRK.CKBH=''CBY'' ) THEN ''KTHACCBY'' ');
      //20241218 them xuong VC
      SQL.Add('        		  WHEN (KCRK.CKBH=''VC1'' ) THEN ''C-VC1'' ');
      SQL.Add('        		  WHEN (KCRK.CKBH=''VC2'' ) THEN ''C-VC2'' ');
      SQL.Add('        		  WHEN (KCRK.CKBH=''VC2X''  OR KCRK.CKBH=''VC2Y'' OR KCRK.CKBH=''VC2Z'') THEN ''C-TX'' ');
      //
      SQL.Add('        		  WHEN (KCRK.CKBH=''VTXX''  OR KCRK.CKBH=''VTXY'' OR KCRK.CKBH=''VTXZ'' or KCRK.CKBH=''VTXW'') THEN ''A-TX'' ');
      SQL.Add('        		  WHEN (KCRK.CKBH=''VLXX''  OR KCRK.CKBH=''VLXY'' OR KCRK.CKBH=''VLXZ'') THEN ''A-VL'' ');
      SQL.Add('             WHEN (KCRK.CKBH=''NHKA'') THEN ''A-TXNA'' ');
      SQL.Add('             WHEN (KCRK.CKBH=''NHKB'') THEN ''B-TXNA'' ');
      SQL.Add('       END) AS BoPhan ');
      //==================
      SQL.Add('    from  KCRKS  ');
      SQL.Add('    left join KCRK on KCRK.RKNO=KCRKS.RKNO  ');
      SQL.Add('    left join CLZL on CLZL.CLDH=KCRKS.CLBH  ');
      SQL.Add('    left join ZSZL on ZSZL.ZSDH=KCRK.ZSBH  ');
      SQL.Add('    left join KCZLS on KCZLS.CLBH=KCRKS.CLBH and KCZLS.CKBH=KCRK.CKBH   ');
      SQL.Add('    left join KCCK on KCCK.CKBH=KCRK.CKBH   ');
      SQL.Add('    left join KCPK on KCPK.PKNO=KCRK.RKNO   ');
      //SQL.Add('    left join CWYF on CWYF.DJNO=KCRKS.RKNO AND CWYF.CLBH=KCRKS.CLBH AND CWYF.CGBH=KCRKS.CGBH AND CWYF.DJLX=KCRKS.RKSB   ');
      //SQL.Add('    left join CWFK ON CWFK.FKBH=CWYF.FKBH    ');
      SQL.Add('    left join LacTyDB.LIY_ERP.dbo.CGZL_VATNO CGZL_VATNO on CGZL_VATNO.VATNO=KCRK.DOCNO and CGZL_VATNO.VATDate=KCRK.DOCDATE    ');
      SQL.Add('                            AND CGZL_VATNO.ZSBH_MST=zszl.tybh   ');
      SQL.Add('    LEFT JOIN #TempLoaiCT CT ON  CT.RKNO = KCRK.RKNO    ');
      SQL.Add('    WHERE 1=1    ');
      SQL.Add('    AND CONVERT(SMALLDATETIME,CONVERT(VARCHAR,KCRK.USERDate,111)) BETWEEN   ');
      SQL.Add('      '''+formatdatetime('yyyy/MM/dd',DTP1.Date)+''' AND '''+formatdatetime('yyyy/MM/dd',DTP2.Date)+'''  ');
      SQL.Add('    and ISNULL(KCPK.Declaretion,'''')=''''  ');
      SQL.Add('    AND ISNULL(KCRK.DOCNO,'''')<>''''    ');
      SQL.Add('    AND KCRKS.VNACC <> 0 ');
      SQL.Add('    AND ISNULL(TONGTIEN_THUE,0)<>0 ');
      if cbCT.Text <> '' then
         sql.Add('     and CT.LoaiCT ='''+cbCT.Text+''' ');
      if edit1.text<>'' then
        sql.add('      and KCRKS.CLBH like '''+edit1.text+'%''');
      if edit2.text<>'' then
        sql.add('      and CLZL.YWPM like ''%'+edit2.text+'%''');
      if edit3.text<>'' then
        sql.add('      and CLZL.YWPM like ''%'+edit3.text+'%'+'''');
      if edit4.text<>'' then
        sql.add('      and isnull(KCZLS.CWBH,'''') like '''+edit4.text+'%''');
      if Edit9.Text<>'' then
        sql.Add('      and KCPK.Export  like '''+Edit9.Text+'%''');
      if edit7.text<>'' then
        sql.add('      and KCRKS.CostID like '''+edit7.text+'%''');
      if edit5.text<>'' then
        sql.add('      and KCRKS.RKNO like '''+edit5.text+'%''');
      if edit6.text<>'' then
        sql.add('      and ZSZL.ZSYWJC like ''%'+edit6.Text+'%''');
      if Edit8.Text<>'' then
        sql.Add('      and KCPK.Declaretion like '''+edit8.text+'%''');
      if edtFKBH.Text <> '' then
        sql.Add('      and CWFK.FKBH like '''+edtFKBH.Text+'%''');
      if edtCGBH.Text <> '' then
        sql.Add('     and KCRKS.CGBH like '''+edtCGBH.Text+'%''');
      if cbYN.Text<> 'ALL' then
      begin
        sql.Add('   and KCRK.YN='''+cbYN.Text+'''');
      end;
      //
      sql.add('      and KCCK.GSBH='''+main.edit2.Text+''' ');
      if CBX3.Text<>'' then
      begin
        sql.Add('and KCCK.CKBH ='''+CBX3.text+'''');
      end;
      if cbInvoice.Text<>'' then
      begin
        sql.Add('and KCRK.DOCNO like '''+cbInvoice.text+'%''');
      end;
      if CBX6.ItemIndex>0 then
      begin
        if CBX6.ItemIndex>0 then
        begin
          if Pos('+',CBX6.Text)<0 then
          begin
            sql.add('and KCRK.HGLB='''+CBX6.Text+''' ')
          end else
          begin
            tmpList2:=TStringlist.Create;
            tmpList2:=FuncObj.SplitString(CBX6.Text,'+');
            for i:=0 to tmpList2.Count-1 do
            begin
              HGLBSQL2:=HGLBSQL2+''''+tmpList2.Strings[i]+''',';
            end;
            HGLBSQL2:='('+Copy(HGLBSQL2,1,length(HGLBSQL2)-1)+')';
            sql.add(' and KCRK.HGLB in '+HGLBSQL2+' ');
            tmpList.Free;
          end;
        end;
      end;
       // 20240925 check data transfer or not
      if cbtransfer.ItemIndex=1 then
          sql.add('AND EXISTS ( SELECT  XB016 FROM  '+LinkSV+'.ACPXB where XB016<>'''' AND XB016<>''002'' AND XB016=KCRKS.RKNO COLLATE Chinese_Taiwan_Stroke_CI_AS)');
      if cbtransfer.ItemIndex=2 then
          sql.add('AND NOT EXISTS ( SELECT  XB016 FROM  '+LinkSV+'.ACPXB where XB016<>'''' AND XB016<>''002'' AND XB016=KCRKS.RKNO COLLATE Chinese_Taiwan_Stroke_CI_AS)');
      //
      if ((CBX3.Text='NHKA') or (CBX3.Text='NHKB')) then
      begin
        SQL.Add('   GROUP BY   KCRK.ZSBH,CT.LoaiCT,KCRK.DOCNO,KCRK.DOCDATE,TONGTIEN_THUE,KYHIEU_MAUSO,KYHIEU_HOADON,VATNO,KCZLS.CWBH ');
      end else
      begin
        SQL.Add('    GROUP BY  KCRK.ZSBH,CT.LoaiCT,KCRK.DOCNO,KCRK.DOCDATE,TONGTIEN_THUE,KCZLS.CWBH,KYHIEU_MAUSO+KYHIEU_HOADON+VATNO  ');
      end;
      SQL.Add('--================================================================================================  ');
      SQL.Add('     UNION ALL    ');
      SQL.Add('    Select  KCRK.CKBH , KCRK.RKNO, SUM(KCRKS.Qty) Qty    ');
      //SQL.Add('    	  ,CASE WHEN CWBH=''152'' THEN ''1521''      ');
      //SQL.Add('      	         WHEN CWBH=''153'' THEN ''1531''    ');
      SQL.Add('         ,CASE WHEN (left(KCRK.CKBH,2)=''VC'' AND CWBH like ''152%'') THEN ''1523'' ');
      SQL.Add('       				WHEN (left(KCRK.CKBH,2)=''VC'' AND CWBH like ''153%'') THEN ''1533'' ');
      SQL.Add('       				WHEN (left(KCRK.CKBH,2) in (''VA'',''CD'',''CB'',''VT'',''VL'') AND CWBH like ''152%'') THEN ''1521'' ');
      SQL.Add('      	        WHEN (left(KCRK.CKBH,2) in (''VA'',''CD'',''CB'',''VT'',''VL'') AND CWBH like ''153%'') THEN ''1531'' ');
      SQL.Add('               WHEN CWBH=''6277'' THEN ''62777'' END CWBH ');
      SQL.Add('    	  ,KCRK.ZSBH    ');
      SQL.Add('    	  ,SUM(KCRKS.USACC) AS TienNguyenTe    ');
      SQL.Add('    	  ,SUM(KCRKS.USACC) AS TienNguyenTeChuaThue    ');
      SQL.Add('    	  ,KCRKS.CWHL AS  TyGia    ');
      SQL.Add('    	  ,SUM(KCRKS.VNACC) AS TienNoiTe     ');
      SQL.Add('    	  ,CT.LoaiCT    ');
      SQL.Add('    	  ,KCPK.Declaretion,KCRK.DOCDATE    ');
      SQL.Add('    	  ,''USD'' TienTe    ');
      //==================2024/10/07
      //SQL.Add('       ,CASE WHEN KCZLS.CWBH=''152'' THEN KCPK.Declaretion+''-''+'''+GhiChuDD_152+''' WHEN KCZLS.CWBH=''153'' THEN KCPK.Declaretion+''-''+'''+GhiChuDD_153+''' ');
      //SQL.Add('             WHEN KCZLS.CWBH=''6277'' THEN KCPK.Declaretion+''-''+'''+GhiChuDD_627+''' END as GhichuDauDon ');
      SQL.Add('       ,CASE WHEN KCZLS.CWBH like ''152%'' THEN KCPK.Declaretion+''-''+CASE WHEN (KCRK.CKBH=''VA12'') THEN ''Nguyen lieu vat lieu KHO A12 T'+smonth+'-'+syear+'''');
      SQL.Add('        															                                 WHEN (KCRK.CKBH=''CDC'' OR KCRK.CKBH=''CDT'') THEN ''Nhap nguyen lieu vat lieu kho CDC T'+smonth+'-'+syear+'''');
      SQL.Add('        																                               WHEN (KCRK.CKBH=''CBY'' ) THEN ''Nhap nguyen lieu vat lieu kho CBY T'+smonth+'-'+syear+'''');
      //20241218 them xuong VC
      SQL.Add('        																                               WHEN (KCRK.CKBH=''VC2'' ) THEN ''Nguyen lieu vat lieu kho VC2 T'+smonth+'-'+syear+'''');
      SQL.Add('        																                               WHEN (KCRK.CKBH=''VC1'' ) THEN ''Nhap nguyen lieu vat lieu kho VC1 T'+smonth+'-'+syear+'''');
      //
      SQL.Add('        																                               WHEN (KCRK.CKBH=''VTXW'') THEN ''Nguyen lieu vat lieu KHO HCA T'+smonth+'-'+syear+''' ELSE '''' END');
      SQL.Add('             WHEN KCZLS.CWBH like ''153%'' THEN KCPK.Declaretion+''-''+CASE WHEN (KCRK.CKBH=''VA12'') THEN ''Cong cu dung cu KHO A12 T'+smonth+'-'+syear+'''');
      SQL.Add('                                                                      WHEN (KCRK.CKBH=''CDC'' OR KCRK.CKBH=''CDT'') THEN ''Nhap cong cu dung cu kho CDC T'+smonth+'-'+syear+'''');
      SQL.Add('        																                               WHEN (KCRK.CKBH=''CBY'' ) THEN ''Nhap cong cu dung cu kho CBY T'+smonth+'-'+syear+'''');
      //20241218 them xuong VC
      SQL.Add('        																                               WHEN (KCRK.CKBH=''VC2'' ) THEN ''Cong cu dung cu kho VC2 T'+smonth+'-'+syear+'''');
      SQL.Add('        																                               WHEN (KCRK.CKBH=''VC1'' ) THEN ''Nhap cong cu dung cu kho VC1 T'+smonth+'-'+syear+'''');
      SQL.Add('        																                               WHEN (KCRK.CKBH=''VC2X'' OR KCRK.CKBH=''VC2Y'' OR KCRK.CKBH=''VC2Z'') THEN ''Nhap cong cu dung cu kho tong vu VC T'+smonth+'-'+syear+'''');
      //
      SQL.Add('        																                               WHEN (KCRK.CKBH=''VTXX'' OR KCRK.CKBH=''VTXY'' OR KCRK.CKBH=''VTXZ'') THEN ''Nhap cong cu dung cu kho tong vu A T'+smonth+'-'+syear+'''');
      SQL.Add('        																                               WHEN (KCRK.CKBH=''VLXX'' OR KCRK.CKBH=''VLXY'' OR KCRK.CKBH=''VLXZ'') THEN ''Nhap cong cu dung cu kho tong vu A-VL T'+smonth+'-'+syear+''''+ ' ELSE '''' END');
      SQL.Add('             WHEN KCZLS.CWBH=''6277'' THEN KCPK.Declaretion+''-''+CASE WHEN (KCRK.CKBH=''NHKA'') THEN ''22a.Chi phi thuc pham KHU A T'+smonth+'-'+syear+'''');
      SQL.Add('                                                                       WHEN (KCRK.CKBH=''NHKB'') THEN ''22a.Chi phi thuc pham KHU B T'+smonth+'-'+syear+'''');
      SQL.Add('                                                                       ELSE '''' END END as GhichuDauDon ');
      //SQL.Add('    	  ,'''+BoPhan+''' as BoPhan   ');
      SQL.Add('      	,CASE WHEN (KCRK.CKBH=''VA12'') THEN ''A12'' ');
      SQL.Add('        		  WHEN (KCRK.CKBH=''CDC'' OR KCRK.CKBH=''CDT'') THEN ''KTHAC'' ');
      SQL.Add('        		  WHEN (KCRK.CKBH=''CBY'' ) THEN ''KTHACCBY'' ');
      //20241218 them xuong VC
      SQL.Add('        		  WHEN (KCRK.CKBH=''VC1'' ) THEN ''C-VC1'' ');
      SQL.Add('        		  WHEN (KCRK.CKBH=''VC2'' ) THEN ''C-VC2'' ');
      SQL.Add('        		  WHEN (KCRK.CKBH=''VC2X''  OR KCRK.CKBH=''VC2Y'' OR KCRK.CKBH=''VC2Z'') THEN ''C-TX'' ');
      //
      SQL.Add('        		  WHEN (KCRK.CKBH=''VTXX''  OR KCRK.CKBH=''VTXY'' OR KCRK.CKBH=''VTXZ'' or KCRK.CKBH=''VTXW'') THEN ''A-TX'' ');
      SQL.Add('        		  WHEN (KCRK.CKBH=''VLXX''  OR KCRK.CKBH=''VLXY'' OR KCRK.CKBH=''VLXZ'') THEN ''A-VL'' ');
      SQL.Add('             WHEN (KCRK.CKBH=''NHKA'') THEN ''A-TXNA'' ');
      SQL.Add('             WHEN (KCRK.CKBH=''NHKB'') THEN ''B-TXNA'' ');
      SQL.Add('       END AS BoPhan ');
      //==================
      SQL.Add('    from  KCRKS  ');
      SQL.Add('    left join KCRK on KCRK.RKNO=KCRKS.RKNO  ');
      SQL.Add('    left join CLZL on CLZL.CLDH=KCRKS.CLBH  ');
      SQL.Add('    left join ZSZL on ZSZL.ZSDH=KCRK.ZSBH  ');
      SQL.Add('    left join KCZLS on KCZLS.CLBH=KCRKS.CLBH and KCZLS.CKBH=KCRK.CKBH   ');
      SQL.Add('    left join KCCK on KCCK.CKBH=KCRK.CKBH   ');
      SQL.Add('    left join KCPK on KCPK.PKNO=KCRK.RKNO   ');
      //SQL.Add('    left join CWYF on CWYF.DJNO=KCRKS.RKNO AND CWYF.CLBH=KCRKS.CLBH AND CWYF.CGBH=KCRKS.CGBH AND CWYF.DJLX=KCRKS.RKSB   ');
      //SQL.Add('    left join CWFK ON CWFK.FKBH=CWYF.FKBH    ');
      SQL.Add('    left join LacTyDB.LIY_ERP.dbo.CGZL_Declaration CGZL_Declaration on CGZL_Declaration.DECLARATION = KCPK.Declaretion AND NGAYTHONGQUAN=kcrk.DOCDATE    ');
      SQL.Add('    LEFT JOIN #TempLoaiCT CT ON  CT.RKNO = KCRK.RKNO    ');
      SQL.Add('    WHERE 1=1    ');
      SQL.Add('    AND CONVERT(SMALLDATETIME,CONVERT(VARCHAR,KCRK.USERDate,111)) BETWEEN      ');
      SQL.Add('      '''+formatdatetime('yyyy/MM/dd',DTP1.Date)+''' AND '''+formatdatetime('yyyy/MM/dd',DTP2.Date)+'''  ');
      SQL.Add('    and ISNULL(KCPK.Declaretion,'''')<>''''  ');
      SQL.Add('    AND ISNULL(KCRK.DOCNO,'''')<>''''    ');
      SQL.Add('    AND KCRKS.USACC <> 0 ');
      if cbCT.Text <> '' then
         sql.Add('     and CT.LoaiCT ='''+cbCT.Text+''' ');
      if edit1.text<>'' then
        sql.add('      and KCRKS.CLBH like '''+edit1.text+'%''');
      if edit2.text<>'' then
        sql.add('      and CLZL.YWPM like ''%'+edit2.text+'%''');
      if edit3.text<>'' then
        sql.add('      and CLZL.YWPM like ''%'+edit3.text+'%'+'''');
      if edit4.text<>'' then
        sql.add('      and isnull(KCZLS.CWBH,'''') like '''+edit4.text+'%''');
      if Edit9.Text<>'' then
        sql.Add('      and KCPK.Export  like '''+Edit9.Text+'%''');
      if edit7.text<>'' then
        sql.add('      and KCRKS.CostID like '''+edit7.text+'%''');
      if edit5.text<>'' then
        sql.add('      and KCRKS.RKNO like '''+edit5.text+'%''');
      if edit6.text<>'' then
        sql.add('      and ZSZL.ZSYWJC like ''%'+edit6.Text+'%''');
      if Edit8.Text<>'' then
        sql.Add('      and KCPK.Declaretion like '''+edit8.text+'%''');
      if edtFKBH.Text <> '' then
        sql.Add('      and CWFK.FKBH like '''+edtFKBH.Text+'%''');
      if edtCGBH.Text <> '' then
        sql.Add('     and KCRKS.CGBH like '''+edtCGBH.Text+'%''');
      //20220312
      if cbYN.Text<> 'ALL' then
      begin
        sql.Add('   and KCRK.YN='''+cbYN.Text+'''');
      end;
      //
      sql.add('      and KCCK.GSBH='''+main.edit2.Text+''' ');
      if CBX3.Text<>'' then
      begin
        sql.Add('and KCCK.CKBH ='''+CBX3.text+'''');
      end;
      if cbInvoice.Text<>'' then
      begin
        sql.Add('and KCRK.DOCNO like '''+cbInvoice.text+'%''');
      end;
      if CBX6.ItemIndex>0 then
      begin
        if CBX6.ItemIndex>0 then
        begin
          if Pos('+',CBX6.Text)<0 then
          begin
            sql.add('and KCRK.HGLB='''+CBX6.Text+''' ')
          end else
          begin
            tmpList3:=TStringlist.Create;
            tmpList3:=FuncObj.SplitString(CBX6.Text,'+');
            for i:=0 to tmpList3.Count-1 do
            begin
              HGLBSQL3:=HGLBSQL3+''''+tmpList3.Strings[i]+''',';
            end;
            HGLBSQL3:='('+Copy(HGLBSQL3,1,length(HGLBSQL3)-1)+')';
            sql.add(' and KCRK.HGLB in '+HGLBSQL3+' ');
            tmpList.Free;
          end;
        end;
      end;
      // 20240925 check data transfer or not
      if cbtransfer.ItemIndex=1 then
          sql.add('AND EXISTS ( SELECT  XB016 FROM  '+LinkSV+'.ACPXB where XB016<>'''' AND XB016<>''002'' AND XB016=KCRKS.RKNO COLLATE Chinese_Taiwan_Stroke_CI_AS)');
      if cbtransfer.ItemIndex=2 then
          sql.add('AND NOT EXISTS ( SELECT  XB016 FROM  '+LinkSV+'.ACPXB where XB016<>'''' AND XB016<>''002'' AND XB016=KCRKS.RKNO COLLATE Chinese_Taiwan_Stroke_CI_AS)');
      //
      SQL.Add('     GROUP BY  KCRK.CKBH ,KCRK.RKNO,KCZLS.CWBH,KCRK.ZSBH,KCRKS.CWHL,CT.LoaiCT,KCPK.Declaretion,KCRK.DOCDATE  ');
      SQL.Add('--================================================================================================  ');
      SQL.Add('    SELECT CKBH,NgayCT as NgayCT, NgayCT as NgayHD,ZSBH,TienTe,TyGia,''A00'' as MaThueSuat,'''' as MaHD,GhichuDauDon,TienNguyenTe,TienNguyenTeChuaThue,TienNoiTe,CWBH,BoPhan,RKNO,MaDonHang,LoaiCT,Qty  ');
      SQL.Add('    FROM  #TempTransfer  ');
      SQL.Add('    ORDER BY MaDonHang,CWBH DESC  ');
      //funcobj.WriteErrorLog(sql.Text);
      Active:=true;
    end;
  end;
end;

procedure TEntryCheck.Button3Click(Sender: TObject);
var i:integer;
begin
  EntryCheck_Print:=TEntryCheck_Print.create(self);
  EntryCheck_Print.quickrep1.prepare;
  i:=EntryCheck_Print.quickrep1.qrprinter.pagecount;
  EntryCheck_Print.page1.caption:=inttostr(i);
  EntryCheck_Print.quickrep1.preview;
  EntryCheck_Print.free;
end;

procedure TEntryCheck.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  action:=cafree;
end;

procedure TEntryCheck.ExportDefaultExcel();
var
  eclApp,WorkBook:olevariant;
  i,j:integer;
begin
  if query1.Active then
  begin
    if query1.recordcount=0 then
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
    for i:=0 to DBGrid1.Columns.Count-1 do
    begin
      eclApp.Cells(1,i+2):=DBGrid1.Columns[i].Title.Caption;
    end;
    query1.First;
    j:=2;
    while   not  query1.Eof   do
    begin
      eclApp.Cells(j,1):=j-1;
      for i:=0 to DBGrid1.Columns.Count-1 do
      begin
        eclApp.Cells[j,i+8].NumberFormatLocal:='@';
        eclApp.Cells(j,i+2):=DBGrid1.Fields[i].Value;
        eclApp.Cells.Cells.item[j,i+2].font.size:='8';
      end;
      query1.Next;
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

procedure TEntryCheck.ExportDefaultExcel1();
var
  eclApp,WorkBook:olevariant;
  i,j:integer;
begin
  if qry_report.Active then
  begin
    if qry_report.recordcount=0 then
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
    for i:=0 to DBGridEh_Report.Columns.Count-1 do
    begin
      eclApp.Cells(1,i+1):=DBGridEh_Report.Columns[i].Title.Caption;
      if ((DBGridEh_Report.Columns[i].Title.Caption='Ma Don Hang') or (DBGridEh_Report.Columns[i].Title.Caption='Ghi Chu Than Don'))  then
          eclApp.Columns[i+1].NumberFormat:='@';
    end;
    qry_report.First;
    j:=2;
    while   not  qry_report.Eof   do
    begin
      for i:=0 to DBGridEh_Report.Columns.Count-1 do
      begin
        //eclApp.Cells[j,i+8].NumberFormatLocal:='@';
        eclApp.Cells(j,i+1):=DBGridEh_Report.Fields[i].Value;
        eclApp.Cells.Cells.item[j,i+1].font.size:='10';
      end;
      qry_report.Next;
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

procedure TEntryCheck.ExportFormatExcel();
var eclApp,WorkBook:olevariant;
    i,j,k: integer;
begin
   if(not DirectoryExists(AppDir+'Additional\'))  then ForceDirectories(AppDir+'Additional\');
   CopyFile(Pchar('\\'+main.ServerIP+'\liy_erp\Additional\Account_SN172_new.xls'),Pchar(AppDir+'Additional\Account_SN172_new.xls'),false);
   if FileExists(AppDir+'Additional\Account_SN172_new.xls') then
   begin
      try
        eclApp:=CreateOleObject('Excel.Application');
        eclApp.DisplayAlerts := False;
        WorkBook:=CreateOleObject('Excel.Sheet');
      except
        Application.MessageBox('No Microsoft   Excel','Microsoft   Excel',MB_OK+MB_ICONWarning);
        Exit;
      end;
      try
        eclApp.WorkBooks.Open(AppDir+'Additional\Account_SN172_new.xls');
        eclApp.WorkSheets[1].Activate;
        eclApp.Cells(1,8):=cbInvoice.Text;
        eclApp.Cells(1,10):=query1.FieldByName('USERDATE').Value;
        eclApp.Cells(2,10):=query1.FieldByName('CWHL').Value;

        Query1.First;
        j:=4;
        for i:=1 to Query1.RecordCount do
        begin         
          eclApp.ActiveSheet.Rows[j+1].Insert(-4121);
          eclApp.Cells(j,1):=inttostr(i);
          eclApp.Cells(j,2):=Query1.FieldByName('CKBH').Value;
          eclApp.Cells(j,3):=Query1.FieldByName('RKNO').Value;
          eclApp.Cells(j,4):=Query1.FieldByName('CLBH').Value;
          eclApp.Cells(j,5):=Query1.FieldByName('YWPM').Value;
          eclApp.Cells(j,6):=Query1.FieldByName('CNO').Value;
          eclApp.Cells(j,7):=Query1.FieldByName('DWBH').Value;
          eclApp.Cells(j,8):=Query1.FieldByName('PaQty').Value;
          eclApp.Cells(j,9):=Query1.FieldByName('Qty').Value;
          eclApp.Cells(j,10):=Query1.FieldByName('USPrice').Value;
          eclApp.Cells(j,11):=Query1.FieldByName('USACC').Value;
          Query1.Next;
          inc(j);
        end;     
        eclApp.ActiveSheet.Rows[j].Delete;
        eclApp.Cells[i+3,8].Formula:='=SUM(H4:H'+inttostr(i+2)+')';
        eclApp.Cells[i+3,9].Formula:='=SUM(I4:I'+inttostr(i+2)+')';
        eclApp.Cells[i+3,11].Formula:='=SUM(K4:K'+inttostr(i+2)+')';

        {lApp.Cells(i+11,1):= 'GIAM DOC XUONG';
        eclApp.Cells(i+11,5):= 'CQ THU MUA                                        NV THU MUA';
        eclApp.Cells(i+11,6):= 'CQ KHO';
        eclApp.Cells(i+11,9):= 'NV KHO';
        eclApp.Cells(i+11,12):= 'LAP BIEU';

        eclApp.Cells(i+12,1):= '廠經理';
        eclApp.Cells(i+12,5):= '     採購主管                                               採購職員';
        eclApp.Cells(i+12,6):= '倉庫主管';
        eclApp.Cells(i+12,9):= '倉庫職員';
        eclApp.Cells(i+12,12):= '製表';

        eclApp.Range[eclApp.Cells[i+11,1],eclApp.Cells[i+11,3]].merge;
        eclApp.Range[eclApp.Cells[i+11,6],eclApp.Cells[i+11,7]].merge;
        eclApp.Range[eclApp.Cells[i+11,9],eclApp.Cells[i+11,10]].merge;
        eclApp.Range[eclApp.Cells[i+11,12],eclApp.Cells[i+11,13]].merge;

        eclApp.Range[eclApp.Cells[i+12,1],eclApp.Cells[i+12,3]].merge;
        eclApp.Range[eclApp.Cells[i+12,6],eclApp.Cells[i+12,7]].merge;
        eclApp.Range[eclApp.Cells[i+12,9],eclApp.Cells[i+12,10]].merge;
        eclApp.Range[eclApp.Cells[i+12,12],eclApp.Cells[i+12,13]].merge;
        eclApp.Range[eclApp.Cells[i+9,1],eclApp.Cells[i+12,13]].font.Bold:=true; }
        // add outline
        for k:=1 to 4 do
        begin
           eclApp.range[eclApp.cells[4,1],eclApp.cells[i+3,11]].borders[k].linestyle:=1;
        end;
          //
        //eclapp.columns.autofit;
        showmessage('Succeed.');
        eclApp.Visible:=True;
      except
        on   F:Exception   do
        showmessage(F.Message);
      end;
   end;
end;


procedure TEntryCheck.Button2Click(Sender: TObject);
begin
  if PC1.ActivePageIndex=0 then
  begin
    if  Messagedlg(Pchar('Format Export?'),mtInformation,[mbNo,mbYes],0)=mrYes then
    begin
       ExportFormatExcel();
    end else
    begin
      ExportDefaultExcel();
    end;
  end;
  if PC1.ActivePageIndex=1 then
  begin
    ExportDefaultExcel1();
  end;
end;

procedure TEntryCheck.FormDestroy(Sender: TObject);
begin
  EntryCheck:=nil;
end;

procedure TEntryCheck.FormCreate(Sender: TObject);
var
  myYear, myMonth, myDay : Word;
  i,j:integer;
begin
  with MatSite do
  begin
    active:=false;
    sql.Clear;
    sql.add('select getdate() as NDate ');
    active:=true;
    NDate:=fieldbyname('NDate').Value;
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
    active:=false;
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
      CBX2.ItemIndex:=i;
      CBX5.ItemIndex:=i;
      break;
    end;
  end;
  AppDir:=ExtractFilePath(Application.ExeName);
  readini();
  DTP1.Date:=StartOfTheMonth(Ndate);
  DTP2.Date:=EndOfTheMonth(Ndate);
  PC1.ActivePage:=TS1;
end;

procedure TEntryCheck.CBX1Change(Sender: TObject);
begin
  CBX4.Text:=CBX1.Text;
end;

procedure TEntryCheck.CBX2Change(Sender: TObject);
begin
  CBX5.Text:=CBX2.Text;
end;

procedure TEntryCheck.Button4Click(Sender: TObject);
var
  eclApp,WorkBook:olevariant;
  i,j:integer;
  sDate,eDate:Tdate;
  tmpList:TStringlist;
  HGLBSQL:String;
begin
  SDate:=EncodeDate(strtoint(CBX1.Text), strtoint(CBX2.Text), 1);
  EDate:=EncodeDate(strtoint(CBX4.Text), strtoint(CBX5.Text), 1);
  EDate:=EncodeDate(strtoint(CBX4.Text), strtoint(CBX5.Text), DaysOfItsMonth(EDate));
  with Matsite do
  begin
    active:=false;
    sql.Clear;
    sql.Add('Select KCRK.GSBH,Convert(date,convert(varchar,KCRK.USERDate,111)) as UserDate,KCRK.ZSBH,KCRKS.CWHL,sum(KCRKS.USACC) as USACC,sum(KCRKS.VNACC) as VNACC,KCRK.RKNO ');
    sql.Add('		,case when KCRK.HGLB in (''NK'',''TC'',''KD'') then KCPK.Declaretion else KCRK.DOCNO end as ''SO TK/HD'',KCRK.HGLB,ZSZL.ZSYWJC ');
    sql.add('from (select * from KCRKS union all select * from KCRKS_2014) KCRKS');
    sql.add('left join (select * from KCRK union all select * from KCRK_2014) KCRK on KCRK.RKNO=KCRKS.RKNO');
    sql.add('left join CLZL on CLZL.CLDH=KCRKS.CLBH');
    sql.add('left join ZSZL on ZSZL.ZSDH=KCRK.ZSBH');
    sql.add('left join KCZLS on KCZLS.CLBH=KCRKS.CLBH and KCZLS.CKBH=KCRK.CKBH ');
    sql.add('left join KCCK on KCCK.CKBH=KCRK.CKBH ');
    sql.add('left join KCPK on KCPK.PKNO=KCRK.RKNO ');
    sql.Add('where Convert(smalldatetime,convert(varchar,KCRK.USERDate,111)) between ');
    sql.add('      '''+formatdatetime('yyyy/MM/dd',sdate)+''' and '''+formatdatetime('yyyy/MM/dd',edate)+'''');
    if CBX3.Text<>'' then
    begin
      sql.Add('and KCCK.CKBH ='''+CBX3.text+'''');
    end;
    if edit1.text<>'' then
      sql.add('      and KCRKS.CLBH like '''+edit1.text+'%''');
    if edit2.text<>'' then
      sql.add('      and CLZL.YWPM like ''%'+edit2.text+'%''');
    if edit3.text<>'' then
      sql.add('      and CLZL.YWPM like ''%'+edit3.text+'%'+'''');
    if edit4.text<>'' then
      sql.add('      and isnull(KCZLS.CWBH,'''') like '''+edit4.text+'%''');
    if Edit9.Text<>'' then
      sql.Add('and KCPK.Export  like '''+Edit9.Text+'%''');
    if edit7.text<>'' then
      sql.add('      and KCRKS.CostID like '''+edit7.text+'%''');
    if edit5.text<>'' then
      sql.add('      and KCRKS.RKNO like '''+edit5.text+'%''');
    if edit6.text<>'' then
      sql.add('      and ZSZL.ZSYWJC like ''%'+edit6.Text+'%''');
    if Edit8.Text<>'' then
      sql.Add('    and KCPK.Declaretion like '''+edit8.text+'%''');
    //20220312
    if cbYN.Text<> 'ALL' then
    begin
      sql.Add('   and KCRK.YN='''+cbYN.Text+'''');
    end;
    //
    sql.add('      and KCCK.GSBH='''+main.edit2.Text+'''');
    if cbInvoice.Text<>'' then
    begin
      sql.Add('and KCRK.DOCNO like '''+cbInvoice.text+'%''');
    end;
    if CBX6.ItemIndex>0 then
    begin
      if CBX6.ItemIndex>0 then
      begin
        if Pos('+',CBX6.Text)<0 then
        begin
          sql.add('and KCRK.HGLB='''+CBX6.Text+''' ')
        end else
        begin
          tmpList:=TStringlist.Create;
          tmpList:=FuncObj.SplitString(CBX6.Text,'+');
          for i:=0 to tmpList.Count-1 do
          begin
            HGLBSQL:=HGLBSQL+''''+tmpList.Strings[i]+''',';
          end;
          HGLBSQL:='('+Copy(HGLBSQL,1,length(HGLBSQL)-1)+')';
          sql.add(' and KCRK.HGLB in '+HGLBSQL+' ');
          tmpList.Free;
        end;
      end;
    end;
    if IsHide_Warehouse_XT='Y' then  //隱藏XT
      sql.add('and KCRK.HGLB<>''XT'' ');
   sql.Add('GROUP BY KCRK.GSBH,Convert(date,convert(varchar,KCRK.USERDate,111)),KCRK.ZSBH,KCRKS.CWHL,KCRK.RKNO ');
   sql.Add('		    ,case when KCRK.HGLB in (''NK'',''TC'',''KD'') then KCPK.Declaretion else KCRK.DOCNO end,KCRK.HGLB,ZSZL.ZSYWJC');
   sql.Add('ORDER BY KCRK.RKNO');
   //funcobj.WriteErrorLog(sql.Text);
   active:=true;
  end;
  if Matsite.Active then
  begin
    if Matsite.recordcount=0 then
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
    for   i:=0   to   Matsite.fieldcount-1   do
    begin
      eclApp.Cells(1,i+1):=Matsite.fields[i].FieldName;
    end;
    Matsite.First;
    j:=2;
    while   not  Matsite.Eof   do
    begin
      for   i:=0   to   Matsite.fieldcount-1   do
      begin
        eclApp.Cells(j,i+1):=Matsite.Fields[i].Value;
        eclApp.Cells.Cells.item[j,i+1].font.size:='10';
      end;
      Matsite.Next;
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

procedure TEntryCheck.Button5Click(Sender: TObject);
begin
  if qry_report.RecordCount =0 then
    begin
      ShowMessage('No record.');
      abort;
    end;
  if MessageDlg('Are you sure transfer to WF!',mtInformation,[mbYes,mbNo],0)<>mrYes then
    Abort;
  with Qry_Temp do
  begin
    Active:=false;;
    SQL.Clear;
    SQL.Add('SET ANSI_NULLS ON');
    SQL.Add('SET ANSI_WARNINGS ON');
    ExecSQL;

    SQL.Clear;
    SQL.Add('  SELECT XB016 FROM '+LinkSV+'.ACPXB  ');
    SQL.Add('  LEFT JOIN '+LinkSV+'.ACPXA ON XA001=XB001 AND XA002=XB002  ');
    SQL.Add('  WHERE (EXISTS (SELECT 1 FROM #TempTransfer WHERE RKNO=XB016 COLLATE Chinese_Taiwan_Stroke_CI_AS AND RKNO<>''002''))  ');
    SQL.Add('        AND ISNULL(XA019,0)<>0  ');
    SQL.Add('  GROUP BY XB016');
    //funcobj.WriteErrorLog(Qry_Temp.SQL.Text);
    Active:=true;;
    mmoInf.Text:='';
    if not Eof then
    begin
      mmoInf.Text:='Nhung RKNO sau da duoc xu ly tren DingXin, vui long vao he thong DingXin kiem tra lai!'+#13+' Hoac bo qua nhung Invoice nay va tiep tuc chuyen du lieu?';
      mmoInf.Text:=mmoInf.Text+#13+' Yes: Tiep tuc. No: Huy thao tac ----- ';
    end;
    First;
    while not Eof do
    begin
      mmoInf.Text:=mmoInf.Text+#13+FieldByName('XB016').AsString+', ';
      Next;
    end;
    if mmoInf.Text<>'' then
    begin
      pnlInf.Visible:=True;
      Abort;
    end else
    begin
      TransferWF_LVL();
    end;
  end;
end;

procedure TEntryCheck.TransferWF_LVL();
var MAXID: Integer;
begin
  with Qry_temp do
  begin
      Close;
      SQL.Clear;
      SQL.Add('SET ANSI_NULLS ON');
      SQL.Add('SET ANSI_WARNINGS ON');
      ExecSQL;
      //--------- xoa nhung ma da co trong bang trung gian, chua chuyen qua bang chinh
      SQL.Clear;
      SQL.Add('  IF OBJECT_ID(''tempdb..#TempXA'') IS NOT NULL    ');
      SQL.Add('  begin drop table #TempXA end   ');
      SQL.Add('  SELECT XB001 XB001_XA,XB002 XB002_XA INTO #TempXA   ');
      SQL.Add('  FROM '+LinkSV+'.ACPXB ');
      SQL.Add('  LEFT JOIN '+LinkSV+'.ACPXA ON XA001=XB001 AND XA002=XB002    ');
      SQL.Add('  WHERE (EXISTS (SELECT 1 FROM #TempTransfer WHERE RKNO=XB016 COLLATE Chinese_Taiwan_Stroke_CI_AS AND RKNO<>''002''))    ');
      SQL.Add('  GROUP BY XB001,XB002  ');
      //funcobj.WriteErrorLog(sql.Text);
      ExecSQL;

      SQL.Clear;
      SQL.Add('DELETE '+LinkSV+'.ACPXB');
      SQL.Add('WHERE EXISTS(SELECT 1 FROM '+LinkSV+'.ACPXA WHERE XA001=XB001 AND XA002=XB002 AND ISNULL(XA019,0)=0)  ');
      SQL.Add('  AND (EXISTS (SELECT 1 FROM #TempXA  WHERE XB001_XA=XB001 COLLATE Chinese_Taiwan_Stroke_CI_AS  AND XB002_XA=XB002 COLLATE Chinese_Taiwan_Stroke_CI_AS))');

      SQL.Add('DELETE '+LinkSV+'.ACPXA');
      SQL.Add('WHERE ISNULL(XA019,0)=0  ');
      SQL.Add('  AND (EXISTS (SELECT 1 FROM #TempXA WHERE XB001_XA=XA001 COLLATE Chinese_Taiwan_Stroke_CI_AS AND XB002_XA=XA002 COLLATE Chinese_Taiwan_Stroke_CI_AS ))');
      //funcobj.WriteErrorLog(sql.Text);
      ExecSQL;
  end;
  with Qry_temp do
  begin
    active:=false;
    sql.clear;
    sql.add('SELECT ISNULL(RIGHT(MAX(XA002),14),0)MAXID FROM '+LinkSV+'.ACPXA WHERE CONVERT(VARCHAR,GETDATE(), 12)=LEFT(XA002,6) ');
    //funcobj.WriteErrorLog(sql.Text);
    open;
  end;
  MAXID:= Qry_temp.fieldByName('MAXID').Value;
  with Qry_temp do
  begin
      active:=false;
      SQL.Clear;
      //Da ton tai trong bang chinh cua Dingxin
      SQL.Add('  IF OBJECT_ID(''tempdb..#TempExists'') IS NOT NULL    ');
      SQL.Add('  begin drop table #TempExists end  ');
      SQL.Add('  SELECT DISTINCT MaDonHang,ZSBH   ');
      SQL.Add('  INTO #TempExists  ');
      SQL.Add('  FROM  #TempTransfer  ');
      SQL.Add('   WHERE EXISTS (SELECT 1 FROM '+LinkSV+'.ACPXB   ');
      SQL.Add('  				inner JOIN '+LinkSV+'.ACPXA ON XA001=XB001 AND XA002=XB002  ');
      SQL.Add('  												 WHERE RKNO=XB016 COLLATE Chinese_Taiwan_Stroke_CI_AS AND XA019=1 AND RKNO<>''002'' )   ');
      //funcobj.WriteErrorLog(sql.Text);
      ExecSQL;
      //----------------------------------------------------------
      SQL.Add('  IF OBJECT_ID(''tempdb..#TempDone'') IS NOT NULL    ');
      SQL.Add('  begin drop table #TempDone end   ');
      SQL.Add('  SELECT CONVERT(VARCHAR, GETDATE(), 112)Ngaychuyen,'+IntToStr(MAXID)+'+ A1.STTA  AS STTA   ');
      SQL.Add('  	  ,CASE WHEN TienTe=''USD'' THEN ROW_NUMBER() OVER(PARTITION BY A1.STTA ORDER BY RKNO)  ');
      SQL.Add('  			--WHEN RKNO=''002'' THEN RNKO  ');
      //SQL.Add('  	  ELSE ROW_NUMBER() OVER(PARTITION BY A1.STTA ORDER BY RKNO ASC ) END STTB  ');
      SQL.Add('  	  ELSE ROW_NUMBER() OVER(PARTITION BY A1.STTA ORDER BY RKNO DESC ) END STTB  ');   //20240925 tk 1521 truoc tk 1331
      SQL.Add('  	  ,RKNO,Qty,CWBH,TienNguyenTe,TienNguyenTeChuaThue,TyGia,TienNoiTe,LoaiCT  ');
      SQL.Add('  	  ,#TempTransfer.MaDonHang,NgayCT,#TempTransfer.ZSBH,TienTe,GhichuDauDon  ');
      SQL.Add('     ,CASE WHEN RKNO=''002'' THEN ''''  ');
      SQL.Add('  	  ELSE RKNO END AS  GhiChuThanDon,#TempTransfer.BoPhan  ');
      SQL.Add('  INTO #TempDone  ');
      SQL.Add('  FROM  #TempTransfer  ');
      SQL.Add('  LEFT JOIN (SELECT A.ZSBH,A.MaDonHang, ROW_NUMBER() OVER (ORDER BY A.ZSBH) STTA  ');
      SQL.Add('  			FROM (  ');
      SQL.Add('  				SELECT DISTINCT ZSBH,MaDonHang  ');
      SQL.Add('  				FROM  #TempTransfer   ');
      SQL.Add('  				WHERE NOT EXISTS (SELECT 1 FROM #TempExists   ');
      SQL.Add('  									WHERE #TempTransfer.ZSBH=#TempExists.ZSBH AND #TempTransfer.MaDonHang=#TempExists.MaDonHang )   ');
      SQL.Add('  				  )A  ');
      SQL.Add('  			) A1 ON A1.ZSBH = #TempTransfer.ZSBH AND A1.MaDonHang = #TempTransfer.MaDonHang  ');
      SQL.Add('  WHERE NOT EXISTS (SELECT 1 FROM #TempExists   ');
      SQL.Add('  									WHERE #TempTransfer.ZSBH=#TempExists.ZSBH AND #TempTransfer.MaDonHang=#TempExists.MaDonHang )  ');
      SQL.Add('  ORDER BY STTA  ');
      //funcobj.WriteErrorLog(sql.Text);
      ExecSQL;
      //----------------------------


      //--insert ACPXB
      sql.clear;
      SQL.Add('INSERT INTO '+LinkSV+'.ACPXB');
      SQL.Add('(XB001,XB002,XB003,XB005,XB006 ,XB009  ');
      SQL.Add(' ,XB010,XB011,XB012,XB013 ,XB014,XB015,XB016,XB017,XB020)  ');
      SQL.Add('  SELECT Ngaychuyen XB001  ');
      SQL.Add('  	  ,CONVERT(VARCHAR, GETDATE(), 12) + CASE WHEN  LEN(STTA)=1 THEN ''0000''  ');
      SQL.Add('  											WHEN  LEN(STTA)=2 THEN ''000''  ');
      SQL.Add('  											WHEN  LEN(STTA)=3 THEN ''00''  ');
      SQL.Add('  											WHEN  LEN(STTA)=4 THEN ''0''  ');
      SQL.Add('  										ELSE '''' END + CONVERT(VARCHAR,STTA) XB002  ');
      SQL.Add('     ,CASE --WHEN RKNO=''002'' THEN ''002''  ');
      SQL.Add('  			    WHEN LEN(STTB)=1 THEN ''000''+ CONVERT(VARCHAR,STTB)  ');
      SQL.Add('  				  WHEN LEN(STTB)=2 THEN ''00''+ CONVERT(VARCHAR,STTB)  ');
      SQL.Add('  				  WHEN LEN(STTB)=3 THEN ''0''+ CONVERT(VARCHAR,STTB)  ');
      SQL.Add('  				  ELSE '''' END  XB003  ');
      SQL.Add('  	  ,'''' XB005 ,Qty XB006,CWBH XB009  ');
      SQL.Add('  	  ,TienNguyenTe XB010,TienNguyenTeChuaThue XB011,0 XB012,TienNoiTe XB013 ,TienNoiTe XB014  ');
      SQL.Add('  	  ,0 XB015,GhiChuThanDon XB016, LoaiCT XB017	,BoPhan XB020			  ');
      SQL.Add('  FROM  #TempDone  ');
      SQL.Add('  ORDER BY XB002,XB003 ASC ');
      //funcobj.WriteErrorLog(sql.Text);
      ExecSQL;
      //ShowMessage(sql.Text);
      //--insert ACPXA
      sql.clear;
      SQL.Add('INSERT INTO '+LinkSV+'.ACPXA');
      SQL.Add('(XA001 ,XA002 ,XA003 ,XA004 ,XA005 ,XA006 ,XA007 ,XA008 ,XA009 ,XA010 ,  ');
      SQL.Add(' XA011 ,XA012 ,XA013 ,XA014 ,XA015 ,XA016 ,XA017 ,XA018 ,XA019 ,XA021,XA023) ');
      SQL.Add('  SELECT Ngaychuyen XA001  ');
      SQL.Add('  	  ,CONVERT(VARCHAR, GETDATE(), 12) + CASE WHEN  LEN(#TempDone.STTA)=1 THEN ''0000''  ');
      SQL.Add('  											WHEN  LEN(#TempDone.STTA)=2 THEN ''000''  ');
      SQL.Add('  											WHEN  LEN(#TempDone.STTA)=3 THEN ''00''  ');
      SQL.Add('  											WHEN  LEN(#TempDone.STTA)=4 THEN ''0''  ');
      SQL.Add('  										ELSE '''' END + CONVERT(VARCHAR,#TempDone.STTA) XAB002  ');
      SQL.Add('  	  ,CONVERT(VARCHAR, NgayCT, 112) XA003,ZSBH XA004,MaDonHang XA005,CONVERT(VARCHAR, NgayCT, 112) XA006  ');
      SQL.Add('  	  ,B.TienNoiTe XA007,0 XA008,TienTe XA009,TyGia XA010, ''A00''XA011  ');
      SQL.Add('  	  ,a.SoDong XA012,B.TienNguyenTe XA013,B.TienNguyenTe XA014,0 XA015  ');
      SQL.Add('  	  ,B.TienNoiTe XA016, B.TienNoiTe XA017, 0 XA018,0 XA019,LoaiCT XA021 ,GhiChuDauDon XA023  ');
      SQL.Add('  FROM #TempDone  ');
      SQL.Add('  LEFT JOIN (SELECT STTA,MAX(STTB)SoDong FROM #TempDone  ');
      SQL.Add('  			GROUP BY STTA)A ON A.STTA=#TempDone.STTA  ');
      SQL.Add('  LEFT JOIN (SELECT STTA , SUM(TienNoiTe)TienNoiTe,SUM(TienNguyenTe)TienNguyenTe FROM #TempDone --WHERE RKNO<>''002''  ');
      SQL.Add('  			GROUP BY STTA)B ON B.STTA=#TempDone.STTA  ');
      SQL.Add('  WHERE 1=1 AND GhichuDauDon<>''''   ');
      SQL.Add('  GROUP BY Ngaychuyen,#TempDone.STTA,NgayCT,ZSBH,TienTe,TyGia,A.SoDong,LoaiCT,B.TienNoiTe,B.TienNguyenTe,GhichuDauDon,MaDonHang  ');
      //funcobj.WriteErrorLog(sql.Text);
      ExecSQL;
      //ShowMessage(sql.Text);
  end;
  ShowMessage('Success!');
end;

procedure TEntryCheck.btn_YesClick(Sender: TObject);
begin
  TransferWF_LVL();
end;

procedure TEntryCheck.btn_NoClick(Sender: TObject);
begin
  pnlInf.Visible:=False;
end;

procedure TEntryCheck.Panel4Click(Sender: TObject);
begin
  pnlInf.Visible:=false;
end;

procedure TEntryCheck.btn1Click(Sender: TObject);
var i:integer;
begin
  EntryCheck_PrintFormat:=TEntryCheck_PrintFormat.create(self);
  EntryCheck_PrintFormat.qckrp1.prepare;
  i:=EntryCheck_PrintFormat.qckrp1.qrprinter.pagecount;
  EntryCheck_PrintFormat.qrlblPage1.caption:=inttostr(i);
  EntryCheck_PrintFormat.qckrp1.preview;
  EntryCheck_PrintFormat.free;
end;

end.
