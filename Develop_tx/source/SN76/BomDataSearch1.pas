unit BomDataSearch1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, ComCtrls, Grids, DBGrids, Mask, DBCtrls, Buttons,
  ExtCtrls, DB, DBTables, GridsEh, DBGridEh, Menus, comobj, ADODB, DBGridEhImpExp, ShellAPI;
type
  TBomDataSearch = class(TForm)
    Panel1: TPanel;
    SampleQry: TQuery;
    SampleDS: TDataSource;
    ProdDS: TDataSource;
    ProdQry: TQuery;
    tempQ: TQuery;
    PageControl1: TPageControl;
    TabSheet1: TTabSheet;
    Panel2: TPanel;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label7: TLabel;
    Label8: TLabel;
    Label11: TLabel;
    Label12: TLabel;
    Label14: TLabel;
    Label15: TLabel;
    CuttingDie: TLabel;
    Label46: TLabel;
    Label33: TLabel;
    Label34: TLabel;
    Label35: TLabel;
    Button1: TButton;
    jijiet: TEdit;
    Staget: TEdit;
    Buynoc: TCheckBox;
    Buyno: TEdit;
    Shoenamet: TEdit;
    SplitCK: TCheckBox;
    Panel4: TPanel;
    Label5: TLabel;
    Label6: TLabel;
    MatNO: TLabel;
    MatEngt: TEdit;
    MatChineset: TEdit;
    MatNOt: TEdit;
    Panel5: TPanel;
    Label9: TLabel;
    Label10: TLabel;
    Label13: TLabel;
    NotMatEngt: TEdit;
    notMatChineset: TEdit;
    NotMatNOt: TEdit;
    SupplierNOt: TEdit;
    SupplierDest: TEdit;
    Outsolet: TEdit;
    Lastt: TEdit;
    DAOMHt: TEdit;
    Button2: TButton;
    CheckBox1: TCheckBox;
    devtype: TComboBox;
    CB4: TCheckBox;
    CB7: TCheckBox;
    Edit1: TEdit;
    Edit2: TEdit;
    Edit3: TEdit;
    Panel3: TPanel;
    DBGridEh1: TDBGridEh;
    Memo1: TMemo;
    TabSheet2: TTabSheet;
    Panel6: TPanel;
    Label18: TLabel;
    Label19: TLabel;
    Label20: TLabel;
    Label21: TLabel;
    Label22: TLabel;
    Label23: TLabel;
    Label24: TLabel;
    Label25: TLabel;
    Label26: TLabel;
    Label17: TLabel;
    Button3: TButton;
    jijiep: TEdit;
    c2: TCheckBox;
    buynop: TEdit;
    shoenamep: TEdit;
    c1: TCheckBox;
    Panel7: TPanel;
    Label27: TLabel;
    Label28: TLabel;
    Label29: TLabel;
    matengp: TEdit;
    matchinesep: TEdit;
    matnop: TEdit;
    Panel8: TPanel;
    Label30: TLabel;
    Label31: TLabel;
    Label32: TLabel;
    NotMatEngp: TEdit;
    NotMatChineseP: TEdit;
    NotMatNop: TEdit;
    suppliernop: TEdit;
    supplierdesp: TEdit;
    Outsolep: TEdit;
    Lastp: TEdit;
    DAOMHp: TEdit;
    Button4: TButton;
    CheckBox2: TCheckBox;
    devtypeep: TComboBox;
    DBGridEh2: TDBGridEh;
    Memo2: TMemo;
    DateCK: TCheckBox;
    DTP1: TDateTimePicker;
    Label38: TLabel;
    DTP2: TDateTimePicker;
    Label37: TLabel;
    Edit4: TEdit;
    Label36: TLabel;
    unit_in: TEdit;
    Label39: TLabel;
    not_unit: TEdit;
    Label40: TLabel;
    Edit5: TEdit;
    Label41: TLabel;
    Edit6: TEdit;
    Label42: TLabel;
    Edit7: TEdit;
    cboDate: TCheckBox;
    DTP3: TDateTimePicker;
    Label43: TLabel;
    DTP4: TDateTimePicker;
    Label44: TLabel;
    Edit8: TEdit;
    Label45: TLabel;
    Edit9: TEdit;
    Label16: TLabel;
    Label47: TLabel;
    Label48: TLabel;
    Edit10: TEdit;
    Label49: TLabel;
    Edit11: TEdit;
    Edit12: TEdit;
    Label50: TLabel;
    Label51: TLabel;
    edtInclude: TEdit;
    Label52: TLabel;
    edtNotInclude: TEdit;
    Label53: TLabel;
    buynopEndP: TEdit;
    CostSeasonP: TEdit;
    Label54: TLabel;
    buynopEnd: TEdit;
    Label55: TLabel;
    CostSeason: TEdit;
    Label56: TLabel;
    Label58: TLabel;
    ComboBox2: TComboBox;
    Label57: TLabel;
    ComboBox1: TComboBox;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormDestroy(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure Button3Click(Sender: TObject);
    procedure Button4Click(Sender: TObject);
    procedure CheckBox1Click(Sender: TObject);
    procedure CheckBox2Click(Sender: TObject);
  private
      AppDir:String;
    { Private declarations }
  public
    { Public declarations }
    SQL1: String;
  end;

var
  BomDataSearch: TBomDataSearch;

implementation
   uses main1,FunUnit;
{$R *.dfm}

procedure TBomDataSearch.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  action:=cafree;
end;

procedure TBomDataSearch.FormDestroy(Sender: TObject);
begin
  bomdatasearch:=nil;
end;

procedure TBomDataSearch.Button1Click(Sender: TObject);
var
   tmpList :TStringlist;
   i:integer;

begin

  with SampleQry do
  begin
    active:=false;
    sql.Clear;
    sql.Add('select');
    sql.Add('kfxxzl.jijie,');
    sql.Add('main.xiexing,');
    sql.Add('main.shehao,');
    sql.Add('kfxxzl.devcode,');
    sql.Add('kfxxzl.article,');
    sql.Add('kfxxzl.xieming,');
    sql.Add('kfxxzl.xtmh,');
    sql.Add('kfxxzl.daomh,');
    sql.Add('kfxxzl.ddmh,');
    sql.Add('main.clbh,');
    sql.Add('main.CLSL,');
    sql.Add('clzl.ywpm,');
    sql.Add('clzl.zwpm,');
    sql.Add('clzl.dwbh,');
    sql.Add('clzl.clzmlb as Extra,');
    sql.Add('main.BWBH,');
    sql.Add('bwzl.ywsm,');
    if buynoc.Checked then
       sql.Add('ddzl.buyno,');
    sql.Add('main.csbh,');
    sql.Add('kfxxzl.devtype,');
    sql.Add('main.kfjd Stage,');
    sql.Add('main.fd Developer,');
    sql.Add('main.SampleOrderID SampleOrderMaker,');
    //sql.Add('main.USERNAME as BOMTaker,');
    //=====2025.03.17
    sql.Add('main.Engname as BOMTaker,');
    //=====
    sql.Add('zszl.zsywjc,main.DateCreate_SR,');
    sql.Add('main.Costing_Proportion,');
    sql.Add('CLZL_FLEX.cldhflex as FlexID,');
    //=====14.11
    sql.Add('CLLBZL.YWSM as CYWSM');
    //=====
    //=====2025.03.17
    sql.Add(',xxzl.Gender,main.ypdh,zszl_dev.SamplePurchaser ');
    //=====
    sql.Add(' from (');
    sql.Add('select ypzl.fd,ypzl.userid sampleorderID,Busers.Engname,kfxxzl.jijie,kfxxzl.XieXing,kfxxzl.shehao,ypzl.kfjd,ypzls.clbh,kfxxzl.khdh,ypzls.BWBH,ypzls.USERDATE,ypzls.CSBH,ypzls.CLSL,YPZL.BuildDate as DateCreate_SR,ypzls.Costing_Proportion ');
    sql.Add(',ypzl.ypdh from ypzls');
    sql.Add('left join ypzl on ypzl.ypdh=ypzls.ypdh');
    sql.Add('left join kfxxzl on kfxxzl.xiexing=ypzl.xiexing and kfxxzl.shehao=ypzl.shehao');
    sql.Add('left join Busers on ypzl.USERID=Busers.USERID');
    sql.Add('where kfxxzl.khdh in '+SQL1+'');
    if Staget.text<>'' then
       sql.Add('and ypzl.kfjd like '''+'%'+Staget.Text+'%'+'''');
    if jijiet.text<>'' then
       sql.Add('and kfxxzl.jijie like '''+'%'+jijiet.Text+'%'+'''');
    sql.Add('union');
    sql.Add('select ypzl.fd,ypzl.userid sampleorderID,Busers.Engname,kfxxzl.jijie,kfxxzl.XieXing,kfxxzl.shehao,ypzl.kfjd,clzhzl.cldh1,kfxxzl.khdh,ypzls.BWBH,clzhzl.USERDATE,clzhzl.zsdh CSBH,ypzls.CLSL,YPZL.BuildDate as DateCreate_SR,ypzls.Costing_Proportion,ypzl.ypdh');
    sql.Add('from ypzls');
    sql.Add('inner join clzhzl on clzhzl.cldh=ypzls.clbh');
    sql.Add('left join ypzl on ypzl.ypdh=ypzls.ypdh');
    sql.Add('left join kfxxzl on kfxxzl.xiexing=ypzl.xiexing and kfxxzl.shehao=ypzl.shehao');
    sql.Add('left join Busers on ypzl.USERID=Busers.USERID');
    sql.Add('where kfxxzl.khdh in '+SQL1+'');
    if Staget.text<>'' then
           sql.Add('and ypzl.kfjd like '''+'%'+Staget.Text+'%'+'''');
    if jijiet.text<>'' then
       sql.Add('and kfxxzl.jijie like '''+'%'+jijiet.Text+'%'+'''');
    sql.Add('union');
    sql.Add('select fd,userid,Engname,jijie,XieXing,shehao,kfjd,clzhzl.cldh1,khdh,bwbh,clzhzl.USERDATE,clzhzl.zsdh CSBH,CLSL,DateCreate_SR,Costing_Proportion,ypdh from (');
    sql.Add('select ypzl.fd,ypzl.userid sampleorderID,Busers.Engname,kfxxzl.jijie,kfxxzl.XieXing,kfxxzl.shehao,ypzl.kfjd,clzhzl.CLDH1,kfxxzl.khdh,ypzls.BWBH,clzhzl.USERDATE,clzhzl.zsdh CSBH,ypzls.CLSL,YPZL.BuildDate as DateCreate_SR,ypzls.Costing_Proportion,ypzl.ypdh');
    sql.Add('from ypzls');
    sql.Add('inner join clzhzl on clzhzl.cldh=ypzls.clbh');
    sql.Add('left join ypzl on ypzl.ypdh=ypzls.ypdh');
    sql.Add('left join kfxxzl on kfxxzl.xiexing=ypzl.xiexing and kfxxzl.shehao=ypzl.shehao');
    sql.Add('left join Busers on ypzl.USERID=Busers.USERID');
    sql.Add('where kfxxzl.khdh in '+SQL1+'');
    if Staget.text<>'' then
       sql.Add('and ypzl.kfjd like '''+'%'+Staget.Text+'%'+'''');
    if jijiet.text<>'' then
       sql.Add('and kfxxzl.jijie like '''+'%'+jijiet.Text+'%'+'''');
    sql.Add(')clzhzl2');
    sql.Add('inner join clzhzl on clzhzl.cldh=clzhzl2.CLDH1');
    sql.Add(')main');
    sql.Add('left join kfxxzl on kfxxzl.XieXing=main.XieXing and kfxxzl.shehao=main.shehao');
    sql.Add('left join clzl on clzl.cldh=main.CLBH');
    sql.Add('left join bwzl on bwzl.bwdh=main.BWBH');
    sql.Add('left join ddzl on ddzl.XieXing=main.XieXing and ddzl.shehao=main.shehao');
    sql.Add('left join zszl on zszl.zsdh=main.csbh');
    sql.Add('left join xxzlKF on xxzlKF.Xiexing = main.XieXing and xxzlKF.SheHao = main.shehao ');
    SQL.Add('left join xxzlPD on xxzlPD.Xiexing = main.XieXing and xxzlPD.SheHao = main.shehao ');
    sql.Add('left join CLZL_FLEX on CLZL_FLEX.cldh=clzl.cldh');
    sql.Add('left join xxzl on main.XieXing=xxzl.XieXing and main.SheHao=xxzl.SheHao');
    sql.Add('left join CLLBZL on CLLBZL.CLLB=XXZL.CLID');
    //=====2025.03.17
    sql.Add('left join zszl_dev ON zszl_dev.zsdh = zszl.zsdh   and zszl_dev.GSBH='''+main.Edit2.Text+''' ');   
    if CostSeason.text<>'' then
    begin
        sql.Add('inner join (select DISTINCT  SKU,PricingSeason from(');
        sql.Add('select SKU,PricingSeason from CostingPriceList UNION ALL select SKU,CostingSeason from CostingPriceListNew )CostingPriceList');
        sql.Add(')CostingPriceList on CostingPriceList.SKU = left(kfxxzl.article,LEN(CostingPriceList.SKU))');
        sql.Add('and CostingPriceList.PricingSeason like '''+CostSeason.Text+'%''');
    end;
    //=====
    sql.Add('where kfxxzl.khdh in '+SQL1+'');
    if supplierNOt.text<>'' then
       sql.Add('and main.csbh like '''+'%'+supplierNOt.Text+'%'+'''');
    if outsolet.text<>'' then
       sql.Add('and kfxxzl.DDMH like '''+'%'+outsolet.Text+'%'+'''');
    if devtype.text<>'' then
       sql.Add('and kfxxzl.devtype like '''+devtype.Text+'''');
    if Lastt.text<>'' then
       sql.Add('and kfxxzl.XTMH like '''+'%'+Lastt.Text+'%'+'''');
    if DAOMHt.text<>'' then
       sql.Add('and kfxxzl.DAOMH like '''+'%'+DAOMHt.Text+'%'+'''');
    if supplierDest.text<>'' then
       sql.Add('and zszl.zsywjc like '''+'%'+supplierDest.Text+'%'+'''');

    if ((buyno.text<>'') and (buynopEnd.text='')) then
       sql.Add('and ddzl.buyno like '''+'%'+buyno.Text+'%'+'''')
    else if ((buyno.text<>'') and (buynopEnd.text<>'')) then
       sql.Add('and CAST(LEFT(ddzl.buyno, 6) AS INT) BETWEEN '+buyno.Text+' AND '+buynopEnd.Text+' ');
    if shoenamet.text<>'' then
       sql.Add('and kfxxzl.xieming like '''+'%'+shoenamet.Text+'%'+'''');
    if edit10.text<>'' then
       sql.Add('and main.xiexing like '''+'%'+edit10.Text+'%'+'''');
    if Edit4.text<>'' then
       sql.Add('and kfxxzl.devcode like '''+'%'+Edit4.Text+'%'+'''');
    if Edit3.text<>'' then
       sql.Add('and bwzl.bwdh like '''+'%'+Edit3.Text+'%'+'''');
    if Edit1.text<>'' then
       sql.Add('and bwzl.ywsm like '''+'%'+Edit1.Text+'%'+'''');
    if Edit2.text<>'' then
       sql.Add('and bwzl.zwsm like '''+'%'+Edit2.Text+'%'+'''');
    if CB4.Checked=false then
        SQL.Add(' and IsNull(xxzlKF.Dropped,0)=0');
    if CB7.Checked=false then
        SQL.Add(' and IsNull(xxzlPD.Dropped,0)=0');
    if DateCK.Checked=true then
    begin
      sql.add('    and (convert(smalldatetime,convert(varchar,main.DateCreate_SR,111)) between   '''+formatdatetime('yyyy/MM/dd',DTP1.Date) +''' and '''+formatdatetime('yyyy/MM/dd',DTP2.Date) +''') ');
    end;
    if matengt.text <>'' then
    begin
      if SplitCK.Checked=true then
        tmpList:=FuncObj.SplitString(matengt.Text,'*')
      else
        tmpList:=FuncObj.SplitString(matengt.Text,' ');
      for i:=0 to tmpList.Count-1 do
      begin
      if trim(tmpList.Strings[i])<>'' then
          SQL.Add('AND CLZL.ywpm like ''%'+StringReplace(trim(tmpList.Strings[i]),':','',[rfReplaceAll, rfIgnoreCase])+'%''')
      end;
      tmpList.Free;
    end;
    if MatNot.text <>'' then
    begin
      if SplitCK.Checked=true then
        tmpList:=FuncObj.SplitString(MatNot.Text,'*')
      else
        tmpList:=FuncObj.SplitString(MatNot.Text,' ');
      for i:=0 to tmpList.Count-1 do
      begin
      if trim(tmpList.Strings[i])<>'' then
          SQL.Add('AND main.clbh like ''%'+StringReplace(trim(tmpList.Strings[i]),':','',[rfReplaceAll, rfIgnoreCase])+'%''')
      end;
      tmpList.Free;
    end;
    if matchineset.text <>'' then
    begin
      if SplitCK.Checked=true then
        tmpList:=FuncObj.SplitString(matchineset.Text,'*')
      else
        tmpList:=FuncObj.SplitString(matchineset.Text,' ');
      for i:=0 to tmpList.Count-1 do
      begin
      if trim(tmpList.Strings[i])<>'' then
          SQL.Add('AND CLZL.zwpm like ''%'+StringReplace(trim(tmpList.Strings[i]),':','',[rfReplaceAll, rfIgnoreCase])+'%''')
      end;
      tmpList.Free;
    end;
    if unit_in.text <>'' then
    begin
      if SplitCK.Checked=true then
        tmpList:=FuncObj.SplitString(unit_in.Text,'*')
      else
        tmpList:=FuncObj.SplitString(unit_in.Text,' ');
      for i:=0 to tmpList.Count-1 do
      begin
      if trim(tmpList.Strings[i])<>'' then
          SQL.Add('AND clzl.dwbh like ''%'+StringReplace(trim(tmpList.Strings[i]),':','',[rfReplaceAll, rfIgnoreCase])+'%''')
      end;
      tmpList.Free;
    end;

    //
    if notmatengt.text <>'' then
    begin
      if SplitCK.Checked=true then
        tmpList:=FuncObj.SplitString(notmatengt.Text,'*')
      else
        tmpList:=FuncObj.SplitString(notmatengt.Text,' ');
      for i:=0 to tmpList.Count-1 do
      begin
      if trim(tmpList.Strings[i])<>'' then
          SQL.Add('AND CLZL.ywpm NOT like ''%'+StringReplace(trim(tmpList.Strings[i]),':','',[rfReplaceAll, rfIgnoreCase])+'%''')
      end;
      tmpList.Free;
    end;
    if notMatnot.text <>'' then
    begin
      if SplitCK.Checked=true then
        tmpList:=FuncObj.SplitString(notMatnot.Text,'*')
      else
        tmpList:=FuncObj.SplitString(notMatnot.Text,' ');
      for i:=0 to tmpList.Count-1 do
      begin
      if trim(tmpList.Strings[i])<>'' then
          SQL.Add('AND main.clbh NOT like ''%'+StringReplace(trim(tmpList.Strings[i]),':','',[rfReplaceAll, rfIgnoreCase])+'%''')
      end;
      tmpList.Free;
    end;
    if notmatchineset.text <>'' then
    begin
      if SplitCK.Checked=true then
        tmpList:=FuncObj.SplitString(notmatchineset.Text,'*')
      else
        tmpList:=FuncObj.SplitString(notmatchineset.Text,' ');
      for i:=0 to tmpList.Count-1 do
      begin
      if trim(tmpList.Strings[i])<>'' then
          SQL.Add('AND CLZL.zwpm NOT like ''%'+StringReplace(trim(tmpList.Strings[i]),':','',[rfReplaceAll, rfIgnoreCase])+'%''')
      end;
      tmpList.Free;
    end;
    if not_unit.text <>'' then
    begin
      if SplitCK.Checked=true then
        tmpList:=FuncObj.SplitString(not_unit.Text,'*')
      else
        tmpList:=FuncObj.SplitString(not_unit.Text,' ');
      for i:=0 to tmpList.Count-1 do
      begin
      if trim(tmpList.Strings[i])<>'' then
          SQL.Add('AND clzl.dwbh NOT like ''%'+StringReplace(trim(tmpList.Strings[i]),':','',[rfReplaceAll, rfIgnoreCase])+'%''')
      end;
      tmpList.Free;
    end;
    //======================================================================16.06.2025
    if ComboBox2.Text = 'Y' then
      SQL.Add('AND clzl.clzmlb = ''Y''')
    else if ComboBox2.Text = 'N' then
      SQL.Add('AND clzl.clzmlb = ''N''');
    //======================================================================
    sql.Add('group by');
    sql.Add('kfxxzl.jijie,');
    sql.Add('kfxxzl.devtype,');
    sql.Add('main.xiexing,');
    sql.Add('main.shehao,');
    sql.Add('kfxxzl.devcode,');
    sql.Add('kfxxzl.article,');
    sql.Add('kfxxzl.xieming,');
    sql.Add('kfxxzl.xtmh,');
    sql.Add('kfxxzl.daomh,');
    sql.Add('kfxxzl.ddmh,');
    sql.Add('main.clbh,main.CLSL,');
    sql.Add('clzl.ywpm,');
    sql.Add('clzl.zwpm,');
    sql.Add('main.BWBH,');
    sql.Add('bwzl.ywsm,');
    if buynoc.Checked then
       sql.Add('ddzl.buyno,');
    sql.Add('main.csbh,');
    sql.Add('main.kfjd,');
    sql.Add('main.fd,');
    sql.Add('clzl.dwbh,');
    sql.Add('clzl.clzmlb,');
    sql.Add('main.sampleorderID,');
    //sql.Add('main.USERNAME,');
    //=====2025.03.17
    sql.Add('main.Engname,');
    //=====
    sql.Add('zszl.zsywjc,main.DateCreate_SR,');
    sql.Add('main.Costing_Proportion,');
    sql.Add('CLZL_FLEX.cldhflex,');
    //=====14.11
    sql.Add('CLLBZL.YWSM');
    //=====
    //=====2025.03.17
    sql.Add(',xxzl.Gender,main.ypdh,zszl_dev.SamplePurchaser ');
    //=====
    //funcobj.WriteErrorLog(sql.Text);
    //showmessage(sql.Text);
    active:=true;
  end;
  with DBGrideh1 do
  begin
    columns[0].Width:=50;
    columns[2].Width:=50;
    columns[11].Width:=450;
    columns[12].Width:=450;
    columns[13].Width:=50;
    columns[14].Width:=50;
    columns[15].Width:=50;
    columns[16].Width:=200;
    columns[17].Width:=50;
    columns[18].Width:=60;
    columns[19].Width:=50;
    columns[23].Width:=80;
  end;
end;

procedure TBomDataSearch.FormCreate(Sender: TObject);
begin
  DTP1.Date:=Date()-30;
  DTP2.Date:=Date();
  DTP3.Date:=Date()-30;
  DTP4.Date:=Date();
  FuncObj:=TFuncObj.Create;
  FuncObj.setParameter(true,ExtractFilePath(Application.ExeName));
  tempQ.Close;
  tempQ.SQL.Text := 'Select KHBH from kfzl_GS where GSBH = '''+main.Edit2.Text+'''';
  tempQ.Open;
  SQL1 := '';
  while not tempQ.Eof do
  begin
    if SQL1 = '' then
      SQL1 :=  '('''+TempQ.Fields[0].AsString+''''
    else
      SQL1 := SQL1 + ','''+TempQ.Fields[0].AsString+'''';
    tempQ.Next;
  end;
  SQL1 := SQL1 + ')';
end;

procedure TBomDataSearch.Button2Click(Sender: TObject);
var   a:string;
      eclApp,WorkBook:olevariant;
      i,j:integer;
 begin
  {if  sampleqry.active  then
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
        for   i:=0   to   sampleqry.fieldcount-1   do
        begin
            eclApp.Cells(1,i+1):=sampleqry.fields[i].FieldName;
        end;

        sampleqry.First;
        j:=2;
        while   not   sampleqry.Eof   do
        begin
          for   i:=0   to  sampleqry.fieldcount-1  do
          begin
            eclApp.Cells(j,i+1):=sampleqry.Fields[i].Value;
          end;
        sampleqry.Next;
        inc(j);
        end;
      eclapp.columns.autofit;
      showmessage('Succeed');
       eclApp.Visible:=True;
      except
        on   F:Exception   do
          showmessage(F.Message);
      end;
    end;}
  //=====2025.03.17
  if  sampleqry.active  then
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
        eclApp.Cells(1,2):='Style No';
        eclApp.Cells(1,3):='Color No';
        eclApp.Cells(1,4):='Dev type';
        eclApp.Cells(1,5):='Dev Code';
        eclApp.Cells(1,6):='Art No';
        eclApp.Cells(1,7):='Gender';
        eclApp.Cells(1,8):='Sample No';
        eclApp.Cells(1,9):='Stage';
        eclApp.Cells(1,10):='Art Name';
        eclApp.Cells(1,11):='Last No';
        eclApp.Cells(1,12):='Outsole No';
        eclApp.Cells(1,13):='Cutting die No';
        eclApp.Cells(1,14):='Part No';
        eclApp.Cells(1,15):='Part name';
        eclApp.Cells(1,16):='Mat No';
        eclApp.Cells(1,17):='Mat Name';
        eclApp.Cells(1,18):='FlexID';
        eclApp.Cells(1,19):='Unit';
        eclApp.Cells(1,20):='Supplier No';
        eclApp.Cells(1,21):='Supplier Name';
        eclApp.Cells(1,22):='Usage';
        eclApp.Cells(1,23):='Costing_Proportion';
        eclApp.Cells(1,24):='Extra';
        eclApp.Cells(1,25):='Developer';
        eclApp.Cells(1,26):='Purchaser';
        eclApp.Cells(1,27):='BOMTaker';
        eclApp.Cells(1,28):='DateCreate_SR';
        eclApp.Cells(1,29):='Main material';
        sampleqry.First;
        j:=2;
        while   not   sampleqry.Eof   do
          begin
            for   i:=0   to  sampleqry.fieldcount-1  do
            begin
               eclApp.Cells(j,1):=sampleqry.FieldByName('jijie').value;
               eclApp.Cells(j,2):=sampleqry.FieldByName('xiexing').value;
               eclApp.Cells[j,3].NumberFormatLocal:='@';
               eclApp.Cells(j,3):=sampleqry.FieldByName('shehao').value;
               eclApp.Cells(j,4):=sampleqry.FieldByName('devtype').value;
               eclApp.Cells(j,5):=sampleqry.FieldByName('devcode').Value;
               eclApp.Cells(j,6):=sampleqry.FieldByName('article').value;
               eclApp.Cells(j,7):=sampleqry.FieldByName('Gender').value;
               eclApp.Cells(j,8):=sampleqry.FieldByName('ypdh').value;
               eclApp.Cells(j,9):=sampleqry.FieldByName('Stage').value;
               eclApp.Cells(j,10):=sampleqry.FieldByName('xieming').value;
               eclApp.Cells(j,11):=sampleqry.FieldByName('xtmh').value;
               eclApp.Cells(j,12):=sampleqry.FieldByName('ddmh').value;
               eclApp.Cells(j,13):=sampleqry.FieldByName('daomh').value;
               eclApp.Cells(j,14):=sampleqry.FieldByName('BWBH').value;
               eclApp.Cells(j,15):=sampleqry.FieldByName('ywsm').value;
               eclApp.Cells(j,16):=sampleqry.FieldByName('clbh').value;
               eclApp.Cells(j,17):=sampleqry.FieldByName('ywpm').value;
               eclApp.Cells(j,18):=sampleqry.FieldByName('FlexID').value;
               eclApp.Cells(j,19):=sampleqry.FieldByName('dwbh').value;
               eclApp.Cells(j,20):=sampleqry.FieldByName('csbh').value;
               eclApp.Cells(j,21):=sampleqry.FieldByName('zsywjc').value;
               eclApp.Cells(j,22):=sampleqry.FieldByName('CLSL').value;
               eclApp.Cells(j,23):=sampleqry.FieldByName('Costing_Proportion').value;
               eclApp.Cells(j,24):=sampleqry.FieldByName('Extra').value;
               eclApp.Cells(j,25):=sampleqry.FieldByName('Developer').value;
               eclApp.Cells[j,26].NumberFormatLocal:='@';
               eclApp.Cells(j,26):=sampleqry.FieldByName('SamplePurchaser').value;
               eclApp.Cells(j,27):=sampleqry.FieldByName('BOMTaker').value;
               eclApp.Cells(j,28):=sampleqry.FieldByName('DateCreate_SR').value;
               eclApp.Cells(j,29):=sampleqry.FieldByName('CYWSM').value;
            end;
            sampleqry.Next;
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


procedure TBomDataSearch.Button3Click(Sender: TObject);
var
   tmpList :TStringlist;
   i:integer;

begin

  with prodQry do
  begin
    active:=false;
    sql.Clear;
    sql.Add('select');
    sql.Add('kfxxzl.jijie,');
    sql.Add('main.xiexing,');
    sql.Add('main.shehao,');
    sql.Add('kfxxzl.devcode,');
    sql.Add('kfxxzl.article,');
    sql.Add('kfxxzl.xieming,');
    sql.Add('kfxxzl.xtmh,');
    sql.Add('kfxxzl.daomh,');
    sql.Add('kfxxzl.ddmh,');
    sql.Add('main.clbh,');
    sql.Add('main.CLSL,');
    sql.Add('clzl.ywpm,');
    sql.Add('clzl.zwpm,');
    sql.Add('clzl.dwbh,');
    sql.Add('clzl.clzmlb as Extra,');
    sql.Add('main.BWBH,');
    sql.Add('bwzl.ywsm,');
    if c2.Checked then
       sql.Add('ddzl.buyno,');
    sql.Add('kfxxzl.devtype,');
    sql.Add('main.csbh,');
    sql.Add('main.bwlb,');
    sql.Add('zszl.zsywjc,');
    //======================================================================
    sql.Add('main.DateCreate_SR,');
    sql.Add('main.GENDER,');
    sql.Add('main.CYWSM,');
    sql.Add('CLZL_FLEX.cldhflex as FlexID,');
    sql.Add('CCQQ,CCQZ');
    //=====2025.03.17
    sql.Add(',main.Engname as BOMTaker ');
    //======================================================================
    sql.Add(' from (');
    //sql.Add('select kfxxzl.jijie,kfxxzl.XieXing,kfxxzl.shehao,xxzls.clbh,kfxxzl.khdh,xxzls.BWBH,xxzls.USERDATE,xxzls.CSBH,xxzls.bwlb from xxzls');
    //======================================================================
    sql.Add('select kfxxzl.jijie,kfxxzl.XieXing,kfxxzl.shehao,xxzls.clbh,kfxxzl.khdh,xxzls.BWBH,xxzls.USERDATE,xxzls.CSBH,xxzls.CLSL,xxzls.bwlb,xxzls.USERDATE as DateCreate_SR, xxzl.GENDER as GENDER, CLLBZL.YWSM as CYWSM, CCQQ,CCQZ,Busers.Engname from xxzls');
    //======================================================================
    sql.Add('left join xxzl on xxzl.xiexing=xxzls.xiexing and xxzl.shehao=xxzls.shehao');
    sql.Add('left join kfxxzl on kfxxzl.xiexing=xxzl.xiexing and kfxxzl.shehao=xxzl.shehao');
    sql.Add('left join ypzl on xxzls.XieXing = ypzl.XieXing and xxzls.SheHao = YPZL.SheHao');
    sql.Add('left join CLLBZL on CLLBZL.CLLB=XXZL.CLID');
    //=====2025.03.17
    sql.Add('left join Busers on ypzl.USERID=Busers.USERID ');
    //=====
    sql.Add('where kfxxzl.khdh in '+SQL1+'');
    if jijiep.text<>'' then
       sql.Add('and kfxxzl.jijie like '''+'%'+jijiep.Text+'%'+'''');
    sql.Add('union');
    //======================================================================
    //sql.Add('select kfxxzl.jijie,kfxxzl.XieXing,kfxxzl.shehao,clzhzl.cldh1,kfxxzl.khdh,xxzls.BWBH,xxzls.USERDATE,clzhzl.zsdh as csbh,xxzls.bwlb from xxzls');
    sql.Add('select kfxxzl.jijie,kfxxzl.XieXing,kfxxzl.shehao,clzhzl.cldh1,kfxxzl.khdh,xxzls.BWBH,xxzls.USERDATE,clzhzl.zsdh as csbh,xxzls.CLSL,xxzls.bwlb,xxzls.USERDATE as DateCreate_SR, xxzl.GENDER as GENDER, CLLBZL.YWSM as CYWSM, CCQQ,CCQZ,Busers.Engname from xxzls');
    //======================================================================
    sql.Add('inner join clzhzl on clzhzl.cldh=xxzls.clbh');
    sql.Add('left join xxzl on xxzl.xiexing=xxzls.xiexing and xxzl.shehao=xxzls.shehao');
    sql.Add('left join kfxxzl on kfxxzl.xiexing=xxzl.xiexing and kfxxzl.shehao=xxzl.shehao');
    sql.Add('left join ypzl on xxzls.XieXing = ypzl.XieXing and xxzls.SheHao = YPZL.SheHao');
    sql.Add('left join CLLBZL on CLLBZL.CLLB=XXZL.CLID');
    //=====2025.03.17
    sql.Add('left join Busers on ypzl.USERID=Busers.USERID ');
    //=====
    sql.Add('where kfxxzl.khdh in '+SQL1+'');
    if jijiep.text<>'' then
       sql.Add('and kfxxzl.jijie like '''+'%'+jijiep.Text+'%'+'''');
    sql.Add('union');
    //======================================================================
    //sql.Add('select jijie,XieXing,shehao,clzhzl.cldh1,khdh,bwbh,clzhzl2.USERDATE,clzhzl2.CSBH,bwlb from (');
    //sql.Add('select kfxxzl.jijie,kfxxzl.XieXing,kfxxzl.shehao,clzhzl.cldh1 as clbh,kfxxzl.khdh,xxzls.BWBH,xxzls.USERDATE,clzhzl.zsdh as csbh,xxzls.bwlb from xxzls');
    sql.Add('select jijie,XieXing,shehao,clzhzl.cldh1,khdh,bwbh,clzhzl2.USERDATE,clzhzl2.CSBH,CLSL,bwlb,DateCreate_SR, GENDER, CYWSM, CCQQ,CCQZ,Engname from (');
    sql.Add('select kfxxzl.jijie,kfxxzl.XieXing,kfxxzl.shehao,clzhzl.cldh1 as clbh,kfxxzl.khdh,xxzls.BWBH,xxzls.USERDATE,clzhzl.zsdh as csbh,xxzls.CLSL,xxzls.bwlb,xxzls.USERDATE as DateCreate_SR, xxzl.GENDER as GENDER, CLLBZL.YWSM as CYWSM, CCQQ,CCQZ ');
    SQL.Add(',Busers.Engname from xxzls');
    //======================================================================
    sql.Add('inner join clzhzl on clzhzl.cldh=xxzls.clbh');
    sql.Add('left join xxzl on xxzl.xiexing=xxzls.xiexing and xxzl.shehao=xxzls.shehao');
    sql.Add('left join kfxxzl on kfxxzl.xiexing=xxzl.xiexing and kfxxzl.shehao=xxzl.shehao');
    sql.Add('left join ypzl on xxzls.XieXing = ypzl.XieXing and xxzls.SheHao = YPZL.SheHao');
    sql.Add('left join CLLBZL on CLLBZL.CLLB=XXZL.CLID');
    //=====2025.03.17
    sql.Add('left join Busers on ypzl.USERID=Busers.USERID ');
    //=====
    sql.Add('where kfxxzl.khdh in '+SQL1+'');
    if jijiep.text<>'' then
       sql.Add('and kfxxzl.jijie like '''+'%'+jijiep.Text+'%'+'''');
    sql.Add(')clzhzl2');
    sql.Add('inner join clzhzl on clzhzl.cldh=clzhzl2.clbh');
    sql.Add(')main');
    sql.Add('left join kfxxzl on kfxxzl.XieXing=main.XieXing and kfxxzl.shehao=main.shehao');
    sql.Add('left join clzl on clzl.cldh=main.CLBH');
    sql.Add('left join bwzl on bwzl.bwdh=main.BWBH');
    sql.Add('left join ddzl on ddzl.XieXing=main.XieXing and ddzl.shehao=main.shehao');
    sql.Add('left join zszl on zszl.zsdh=main.csbh');
    sql.Add('left join CLZL_FLEX on CLZL_FLEX.cldh=clzl.cldh');
    if CostSeasonP.text<>'' then
    begin
        sql.Add('inner join (select DISTINCT  SKU,PricingSeason from(');
        sql.Add('select SKU,PricingSeason from CostingPriceList UNION ALL select SKU,CostingSeason from CostingPriceListNew )CostingPriceList');
        sql.Add(')CostingPriceList on CostingPriceList.SKU = left(kfxxzl.article,LEN(CostingPriceList.SKU))');
        sql.Add('and CostingPriceList.PricingSeason like '''+CostSeasonP.Text+'%''');
    end;
    sql.Add('where kfxxzl.khdh in '+SQL1+'');
    if suppliernop.text<>'' then
       sql.Add('and main.csbh like '''+'%'+suppliernop.Text+'%'+'''');
    if devtypeep.text<>'' then
       sql.Add('and kfxxzl.devtype like '''+devtypeep.Text+'''');
    if outsolep.text<>'' then
       sql.Add('and kfxxzl.DDMH like '''+'%'+outsolep.Text+'%'+'''');
    if Lastp.text<>'' then
       sql.Add('and kfxxzl.XTMH like '''+'%'+Lastp.Text+'%'+'''');
    if DAOMHp.text<>'' then
       sql.Add('and kfxxzl.DAOMH like '''+'%'+DAOMHp.Text+'%'+'''');
    if supplierDesp.text<>'' then
       sql.Add('and zszl.zsywjc like '''+'%'+supplierDesp.Text+'%'+'''');
    if ((buynop.text<>'') and (buynopEndp.text='')) then
       sql.Add('and ddzl.buyno like '''+'%'+buynop.Text+'%'+'''')
    else if ((buynop.text<>'') and (buynopEndp.text<>'')) then
       sql.Add('and CAST(LEFT(ddzl.buyno, 6) AS INT) BETWEEN '+buynop.Text+' AND '+buynopEndP.Text+' ');
    if shoenamep.text<>'' then
       sql.Add('and kfxxzl.xieming like '''+'%'+shoenamep.Text+'%'+'''');
    if Edit9.text<>'' then
       sql.Add('and main.xiexing like '''+'%'+edit9.Text+'%'+'''');
    //======================================================================
    if Edit8.text<>'' then               //SR
       sql.Add('and kfxxzl.devcode like '''+'%'+Edit8.Text+'%'+'''');
    if Edit5.text<>'' then              //PartNO
       sql.Add('and bwzl.bwdh like '''+'%'+Edit5.Text+'%'+'''');
    if Edit7.text<>'' then              //PartEn
       sql.Add('and bwzl.ywsm like '''+'%'+Edit7.Text+'%'+'''');
    if Edit6.text<>'' then              //PartCN
       sql.Add('and bwzl.zwsm like '''+'%'+Edit6.Text+'%'+'''');
    if cboDate.Checked=true then
    begin
      sql.add('    and (convert(smalldatetime,convert(varchar,main.DateCreate_SR,111)) between   '''+formatdatetime('yyyy/MM/dd',DTP3.Date) +''' and '''+formatdatetime('yyyy/MM/dd',DTP4.Date) +''') ');
    end;
    if (Edit11.Text <> '') and (Edit12.Text <> '') then
    begin
      if StrToFloat(Edit11.Text) < StrToFloat(Edit12.Text) then
      begin
        sql.Add('AND CCQQ BETWEEN ''' + Edit11.Text + ''' AND ''' + Edit12.Text + '''');
        sql.Add('AND CCQZ BETWEEN ''' + Edit11.Text + ''' AND ''' + Edit12.Text + '''');
      end else
        begin
          ShowMessage('Gia tri size phai tu nho den lon');
          Exit;
        end;
    end;
    //======================================================================
    if matengp.text <>'' then
      begin
        if SplitCK.Checked=true then
          tmpList:=FuncObj.SplitString(matengp.Text,'*')
        else
          tmpList:=FuncObj.SplitString(matengp.Text,' ');
        for i:=0 to tmpList.Count-1 do
        begin
        if trim(tmpList.Strings[i])<>'' then
            SQL.Add('AND CLZL.ywpm like ''%'+StringReplace(trim(tmpList.Strings[i]),':','',[rfReplaceAll, rfIgnoreCase])+'%''')
        end;
      tmpList.Free;
    end;
    if MatNop.text <>'' then
      begin
        if SplitCK.Checked=true then
          tmpList:=FuncObj.SplitString(MatNop.Text,'*')
        else
          tmpList:=FuncObj.SplitString(MatNop.Text,' ');
        for i:=0 to tmpList.Count-1 do
        begin
        if trim(tmpList.Strings[i])<>'' then
            SQL.Add('AND main.clbh like ''%'+StringReplace(trim(tmpList.Strings[i]),':','',[rfReplaceAll, rfIgnoreCase])+'%''')
        end;
      tmpList.Free;
    end;
    if matchinesep.text <>'' then
      begin
        if SplitCK.Checked=true then
          tmpList:=FuncObj.SplitString(matchinesep.Text,'*')
        else
          tmpList:=FuncObj.SplitString(matchinesep.Text,' ');
        for i:=0 to tmpList.Count-1 do
        begin
        if trim(tmpList.Strings[i])<>'' then
            SQL.Add('AND CLZL.zwpm like ''%'+StringReplace(trim(tmpList.Strings[i]),':','',[rfReplaceAll, rfIgnoreCase])+'%''')
        end;
      tmpList.Free;
    end;

    if notmatengp.text <>'' then
      begin
        if SplitCK.Checked=true then
          tmpList:=FuncObj.SplitString(notmatengp.Text,'*')
        else
          tmpList:=FuncObj.SplitString(notmatengp.Text,' ');
        for i:=0 to tmpList.Count-1 do
        begin
        if trim(tmpList.Strings[i])<>'' then
            SQL.Add('AND CLZL.ywpm NOT like ''%'+StringReplace(trim(tmpList.Strings[i]),':','',[rfReplaceAll, rfIgnoreCase])+'%''')
        end;
      tmpList.Free;
    end;
    if notMatnop.text <>'' then
      begin
        if SplitCK.Checked=true then
          tmpList:=FuncObj.SplitString(notMatnop.Text,'*')
        else
          tmpList:=FuncObj.SplitString(notMatnop.Text,' ');
        for i:=0 to tmpList.Count-1 do
        begin
        if trim(tmpList.Strings[i])<>'' then
            SQL.Add('AND main.clbh NOT like ''%'+StringReplace(trim(tmpList.Strings[i]),':','',[rfReplaceAll, rfIgnoreCase])+'%''')
        end;
      tmpList.Free;
    end;

    if notmatchinesep.text <>'' then
      begin
        if SplitCK.Checked=true then
          tmpList:=FuncObj.SplitString(notmatchinesep.Text,'*')
        else
          tmpList:=FuncObj.SplitString(notmatchinesep.Text,' ');
        for i:=0 to tmpList.Count-1 do
        begin
        if trim(tmpList.Strings[i])<>'' then
            SQL.Add('AND CLZL.zwpm NOT like ''%'+StringReplace(trim(tmpList.Strings[i]),':','',[rfReplaceAll, rfIgnoreCase])+'%''')
        end;
      tmpList.Free;
    end;

    //======================================================================
    if edtInclude.text <>'' then
    begin
      if SplitCK.Checked=true then
        tmpList:=FuncObj.SplitString(edtInclude.Text,'*')
      else
        tmpList:=FuncObj.SplitString(edtInclude.Text,' ');
      for i:=0 to tmpList.Count-1 do
      begin
      if trim(tmpList.Strings[i])<>'' then
          SQL.Add('AND clzl.dwbh like ''%'+StringReplace(trim(tmpList.Strings[i]),':','',[rfReplaceAll, rfIgnoreCase])+'%''')
      end;
      tmpList.Free;
    end;

    if edtNotInclude.text <>'' then
    begin
      if SplitCK.Checked=true then
        tmpList:=FuncObj.SplitString(edtNotInclude.Text,'*')
      else
        tmpList:=FuncObj.SplitString(edtNotInclude.Text,' ');
      for i:=0 to tmpList.Count-1 do
      begin
      if trim(tmpList.Strings[i])<>'' then
          SQL.Add('AND clzl.dwbh NOT like ''%'+StringReplace(trim(tmpList.Strings[i]),':','',[rfReplaceAll, rfIgnoreCase])+'%''')
      end;
      tmpList.Free;
    end;
    //======================================================================16.06.2025
    if ComboBox1.Text = 'Y' then
      SQL.Add('AND clzl.clzmlb = ''Y''')
    else if ComboBox1.Text = 'N' then
      SQL.Add('AND clzl.clzmlb = ''N''');
    //======================================================================
    sql.Add('group by');
    sql.Add('kfxxzl.jijie,');
    sql.Add('kfxxzl.devtype,');
    sql.Add('main.xiexing,');
    sql.Add('main.shehao,');
    sql.Add('kfxxzl.devcode,');
    sql.Add('kfxxzl.article,');
    sql.Add('kfxxzl.xieming,');
    sql.Add('kfxxzl.xtmh,');
    sql.Add('kfxxzl.daomh,');
    sql.Add('kfxxzl.ddmh,');
    sql.Add('main.clbh,');
    sql.Add('main.CLSL,');
    sql.Add('clzl.ywpm,');
    sql.Add('clzl.zwpm,');
    sql.Add('clzl.dwbh,');
    sql.Add('clzl.clzmlb,');
    sql.Add('main.BWBH,');
    sql.Add('bwzl.ywsm,');
    if c2.Checked then
       sql.Add('ddzl.buyno,');
    sql.Add('main.csbh,');
    sql.Add('main.bwlb,');
    sql.Add('zszl.zsywjc,');
    //======================================================================
    sql.Add('main.DateCreate_SR,');
    sql.Add('main.GENDER,');
    sql.Add('main.CYWSM,');
    sql.Add('CLZL_FLEX.cldhflex, ');
    sql.Add('CCQQ,CCQZ');
    //=====2025.03.17
    sql.Add(',main.Engname ');
    //======================================================================
    memo2.text:=sql.text;
    //showmessage(Sql.Text);
    active:=true;
  end;
  with DBGrideh2 do
  begin
    columns[0].Width:=50;
    columns[2].Width:=50;
    columns[10].Width:=50;
    columns[11].Width:=450;
    columns[12].Width:=450;
    columns[13].Width:=50;
    columns[14].Width:=50;
    columns[15].Width:=50;
    columns[16].Width:=50;
    columns[17].Width:=40;
    columns[19].Width:=40;
  end;
end;
procedure TBomDataSearch.Button4Click(Sender: TObject);
var   a:string;
      eclApp,WorkBook:olevariant;
      i,j:integer;
 begin
  {if  prodqry.active  then
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
        for   i:=0   to   prodqry.fieldcount-1   do
          begin
              eclApp.Cells(1,i+1):=prodqry.fields[i].FieldName;
          end;

        prodqry.First;
        j:=2;
        while   not   prodqry.Eof   do
          begin
            for   i:=0   to  prodqry.fieldcount-1  do
            begin
              eclApp.Cells(j,i+1):=prodqry.Fields[i].Value;
            end;
          prodqry.Next;
          inc(j);
          end;
      eclapp.columns.autofit;
      showmessage('Succeed');
       eclApp.Visible:=True;
      except
        on   F:Exception   do
          showmessage(F.Message);
      end;
    end;}
  //=====2025.03.17
  if  ProdQry.active  then
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
        eclApp.Cells(1,2):='Style No';
        eclApp.Cells(1,3):='Color No';
        eclApp.Cells(1,4):='devtype';
        eclApp.Cells(1,5):='Dev Code';
        eclApp.Cells(1,6):='Art No';
        eclApp.Cells(1,7):='GENDER';
        eclApp.Cells(1,8):='Art Name';
        eclApp.Cells(1,9):='Last No';
        eclApp.Cells(1,10):='Outsole No';
        eclApp.Cells(1,11):='Cutting die No';
        eclApp.Cells(1,12):='Type';
        eclApp.Cells(1,13):='Part No';
        eclApp.Cells(1,14):='Part name';
        eclApp.Cells(1,15):='Mat No';
        eclApp.Cells(1,16):='Mat Name';
        eclApp.Cells(1,17):='FlexID';
        eclApp.Cells(1,18):='Unit';
        eclApp.Cells(1,19):='Extra';
        eclApp.Cells(1,20):='Supplier No';
        eclApp.Cells(1,21):='Supplier Name';
        eclApp.Cells(1,22):='Usage';
        eclApp.Cells(1,23):='Size From';
        eclApp.Cells(1,24):='Size To';
        eclApp.Cells(1,25):='DateCreate BOM';
        eclApp.Cells(1,26):='Main Material';
        eclApp.Cells(1,27):='BOM TAKER';
        ProdQry.First;
        j:=2;
        while   not   ProdQry.Eof   do
          begin
            for   i:=0   to  ProdQry.fieldcount-1  do
            begin
               eclApp.Cells(j,1):=ProdQry.FieldByName('jijie').value;
               eclApp.Cells(j,2):=ProdQry.FieldByName('xiexing').value;
               eclApp.Cells[j,3].NumberFormatLocal:='@';
               eclApp.Cells(j,3):=ProdQry.FieldByName('shehao').value;
               eclApp.Cells(j,4):=ProdQry.FieldByName('devtype').value;
               eclApp.Cells(j,5):=ProdQry.FieldByName('devcode').Value;
               eclApp.Cells(j,6):=ProdQry.FieldByName('article').value;
               eclApp.Cells(j,7):=ProdQry.FieldByName('GENDER').value;
               eclApp.Cells(j,8):=ProdQry.FieldByName('xieming').value;
               eclApp.Cells(j,9):=ProdQry.FieldByName('xtmh').value;
               eclApp.Cells(j,10):=ProdQry.FieldByName('ddmh').value;
               eclApp.Cells(j,11):=ProdQry.FieldByName('daomh').value;
               eclApp.Cells(j,12):=ProdQry.FieldByName('bwlb').value;
               eclApp.Cells(j,13):=ProdQry.FieldByName('BWBH').value;
               eclApp.Cells(j,14):=ProdQry.FieldByName('ywsm').value;
               eclApp.Cells(j,15):=ProdQry.FieldByName('clbh').value;
               eclApp.Cells(j,16):=ProdQry.FieldByName('ywpm').value;
               eclApp.Cells(j,17):=ProdQry.FieldByName('FlexID').value;
               eclApp.Cells(j,18):=ProdQry.FieldByName('dwbh').value;
               eclApp.Cells(j,19):=ProdQry.FieldByName('Extra').value;
               eclApp.Cells(j,20):=ProdQry.FieldByName('csbh').value;
               eclApp.Cells(j,21):=ProdQry.FieldByName('zsywjc').value;
               eclApp.Cells(j,22):=ProdQry.FieldByName('CLSL').value;
               eclApp.Cells[j,23].NumberFormatLocal:='@';
               eclApp.Cells(j,23):=ProdQry.FieldByName('CCQQ').value;
               eclApp.Cells[j,24].NumberFormatLocal:='@';
               eclApp.Cells(j,24):=ProdQry.FieldByName('CCQZ').value;
               eclApp.Cells(j,25):=ProdQry.FieldByName('DateCreate_SR').value;
               eclApp.Cells(j,26):=ProdQry.FieldByName('CYWSM').value;
               eclApp.Cells(j,27):=ProdQry.FieldByName('BOMTaker').value;
            end;
            ProdQry.Next;
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



procedure TBomDataSearch.CheckBox1Click(Sender: TObject);
begin
  if checkbox1.Checked then
     memo1.Visible:=true
  else
     memo1.Visible:=false;
end;

procedure TBomDataSearch.CheckBox2Click(Sender: TObject);
begin
  if checkbox2.Checked then
     memo2.Visible:=true
  else
     memo2.Visible:=false;
end;

end.
