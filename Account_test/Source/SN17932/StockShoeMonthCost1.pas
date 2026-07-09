unit StockShoeMonthCost1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DB, DBTables, GridsEh, DBGridEh, StdCtrls, ComCtrls, ExtCtrls,comobj
  ,DateUtils, StrUtils, Menus;

type
  TStockShoeMonthCost = class(TForm)
    Qry_Temp: TQuery;
    Qry_MonthStock: TQuery;
    DS_MonthStock: TDataSource;
    SaveDialog1: TSaveDialog;
    Qry_StockACC: TQuery;
    DS_ACC_Stock: TDataSource;
    Qry_StockACCKCYEAR: TStringField;
    Qry_StockACCKCMONTH: TStringField;
    Qry_StockACCDDBH: TStringField;
    Qry_StockACCLastQty: TCurrencyField;
    Qry_StockACCLastACC: TFloatField;
    Qry_StockACCRKQty: TCurrencyField;
    Qry_StockACCRKACC: TFloatField;
    Qry_StockACCCKQty: TCurrencyField;
    Qry_StockACCCKACC: TFloatField;
    Qry_StockACCRemQty: TCurrencyField;
    Qry_StockACCRemACC: TFloatField;
    Qry_StockACCLast_MatCost: TFloatField;
    Qry_StockACCLast_LaborCost: TFloatField;
    Qry_StockACCLast_FacCost: TFloatField;
    Qry_StockACCRK_MatCost: TFloatField;
    Qry_StockACCRK_LaborCost: TFloatField;
    Qry_StockACCRK_FacCost: TFloatField;
    Qry_StockACCCK_MatCost: TFloatField;
    Qry_StockACCCK_LaborCost: TFloatField;
    Qry_StockACCCK_FacCost: TFloatField;
    Qry_StockACCRem_MatCost: TFloatField;
    Qry_StockACCRem_LaborCost: TFloatField;
    Qry_StockACCRem_FacCost: TFloatField;
    PC1: TPageControl;
    TS_OrderACC: TTabSheet;
    Panel3: TPanel;
    Label7: TLabel;
    Label8: TLabel;
    Label14: TLabel;
    Label15: TLabel;
    edt_RYACC: TEdit;
    btn_QueryACC: TButton;
    cbx_YearACC: TComboBox;
    cbx_MonthACC: TComboBox;
    btn_MonthlyACC: TButton;
    btn_ExcelACC: TButton;
    btn_PrintACC: TButton;
    DBG_StockACC: TDBGridEh;
    TS2: TTabSheet;
    Panel2: TPanel;
    Label1: TLabel;
    Label12: TLabel;
    Label13: TLabel;
    Edt_RY1: TEdit;
    btn_Query: TButton;
    cbx_Year: TComboBox;
    cbx_Month: TComboBox;
    btn_Monthly: TButton;
    Button3: TButton;
    DBG_MonthStock: TDBGridEh;
    Qry_StockACCXuong: TStringField;
    Qry_MonthStockKCYEAR: TStringField;
    Qry_MonthStockKCMONTH: TStringField;
    Qry_MonthStockDDBH: TStringField;
    Qry_MonthStockRemQty: TCurrencyField;
    Qry_MonthStockRemACC: TCurrencyField;
    Qry_MonthStockRem_MatCost: TCurrencyField;
    Qry_MonthStockRem_LaborCost: TCurrencyField;
    Qry_MonthStockRem_FacCost: TCurrencyField;
    Qry_MonthStockXuong: TStringField;
    Qry_MonthStockRemQty01T: TCurrencyField;
    Qry_MonthStockRemACC01T: TCurrencyField;
    Qry_MonthStockRemQty02T: TCurrencyField;
    Qry_MonthStockRemACC02T: TCurrencyField;
    Qry_MonthStockRemQty03T: TCurrencyField;
    Qry_MonthStockRemACC03T: TCurrencyField;
    Qry_MonthStockRemQty04T: TCurrencyField;
    Qry_MonthStockRemACC04T: TCurrencyField;
    Qry_MonthStockRemQty05T: TCurrencyField;
    Qry_MonthStockRemACC05T: TCurrencyField;
    Qry_MonthStockRemQty06T: TCurrencyField;
    Qry_MonthStockRemACC06T: TCurrencyField;
    Qry_MonthStockRemQty07T: TCurrencyField;
    Qry_MonthStockRemACC07T: TCurrencyField;
    Qry_MonthStockRemQty08T: TCurrencyField;
    Qry_MonthStockRemACC08T: TCurrencyField;
    Label5: TLabel;
    Button1: TButton;
    Button4: TButton;
    procedure FormCreate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormDestroy(Sender: TObject);
    procedure btn_QueryClick(Sender: TObject);
    procedure Qry_MonthStockAfterOpen(DataSet: TDataSet);
    procedure btn_MonthlyClick(Sender: TObject);
    procedure btn_QueryACCClick(Sender: TObject);
    procedure btn_MonthlyACCClick(Sender: TObject);
    procedure Qry_StockACCAfterOpen(DataSet: TDataSet);
    procedure btn_ExcelACCClick(Sender: TObject);
    procedure Button3Click(Sender: TObject);
    procedure btn_PrintACCClick(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure Button4Click(Sender: TObject);
  private
    { Private declarations }
    procedure FormatExcelACC();
    procedure DefaultExcelACC();
    procedure FormatExcelMon();
    procedure DefaultExcelMon();
  public
    { Public declarations }
  end;

var
  StockShoeMonthCost: TStockShoeMonthCost;
  sdate,edate,NDate: TDate;
  ayear,amonth:string;

implementation

uses main1, StockShoeMonthCost_Print1,fununit;

{$R *.dfm}


procedure TStockShoeMonthCost.FormCreate(Sender: TObject);
var i : integer;
begin
  with Qry_Temp do
  begin
    active:=false;
    sql.Clear;
    sql.add('select getdate() NDate ');
    active:=true;
    NDate:=fieldbyname('NDate').Value;
  end;
  // Load year-month
  i:=strtoint(formatdatetime('yyyy',Ndate))-10;
  cbx_Year.Clear;
  cbx_YearACC.Clear;
  while i<(strtoint(formatdatetime('yyyy',Ndate))+3) do
  begin
      cbx_Year.Items.Add(inttostr(i));
      cbx_YearACC.Items.Add(inttostr(i));
      i:=i+1;
  end;
  cbx_Year.ItemIndex:=cbx_Year.Items.IndexOf(formatdatetime('yyyy',Ndate));
  cbx_YearACC.ItemIndex:=cbx_YearACC.Items.IndexOf(formatdatetime('yyyy',Ndate));
  cbx_Month.ItemIndex:=cbx_Month.Items.IndexOf(formatdatetime('mm',Ndate));
  cbx_MonthACC.ItemIndex:=cbx_MonthACC.Items.IndexOf(formatdatetime('mm',Ndate));
  PC1.ActivePage:=TS_OrderACC;    
  if main.edit1.text = '00067' then
  begin
    Button1.Visible:=True;
    Button4.Visible:=True;
  end else begin
    Button1.Visible:=False;
    Button4.Visible:=False;
  end;
end;

procedure TStockShoeMonthCost.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  with Qry_Temp do
  begin
    Active:=false;
    sql.Clear;
    SQL.Add('if object_id(''tempdb..#YWCPDDTR'') is not null  ');
    SQL.Add('begin drop table #YWCPDDTR end  ');
    SQL.Add('if object_id(''tempdb..#ACCKC'') is not null  ');
    SQL.Add('begin drop table #ACCKC end  ');
    SQL.Add('if object_id(''tempdb..#ACCRY'') is not null  ');
    SQL.Add('begin drop table #ACCRY end  ');
    sql.add('if object_id(''tempdb..#EntryStockRY'') is not null');
    sql.add('begin drop table #EntryStockRY end');
    ExecSQL;
  end;
  Action:=Cafree;
end;

procedure TStockShoeMonthCost.FormDestroy(Sender: TObject);
begin
   StockShoeMonthCost:=Nil;
end;


procedure TStockShoeMonthCost.btn_QueryClick(Sender: TObject);
begin
  With Qry_MonthStock do
  begin
    active:=false;
    SQL.Clear;
    SQL.Add('SELECT CM.KCYEAR,CM.KCMONTH,CM.DDBH,CM.RemQty,CM.RemACC,CWDDZL.Rem_MatCost,CWDDZL.Rem_LaborCost,CWDDZL.Rem_FacCost,FACDFL.DFL as Xuong  ');
    SQL.Add('        ,RemQty01T,RemACC01T,RemQty02T,RemACC02T,RemQty03T,RemACC03T,RemQty04T,RemACC04T,RemQty05T,RemACC05T  ');
    SQL.Add('  	     ,RemQty06T,RemACC06T,RemQty07T,RemACC07T,RemQty08T,RemACC08T  ');
    SQL.Add('FROM CWDDZL_Mon CM  ');
    SQL.Add('LEFT JOIN CWDDZL ON CWDDZL.KCYEAR=CM.KCYEAR AND CWDDZL.KCMONTH=CM.KCMONTH AND CWDDZL.DDBH=CM.DDBH  ');
    SQL.Add('LEFT JOIN FACDFL on CM.CKBH= FACDFL.CKBH');
    SQL.Add('WHERE CM.KCYEAR= '''+cbx_Year.Text+'''  AND CM.KCMONTH= '''+cbx_Month.Text+'''  ');
    if edt_RY1.Text<>'' then
      SQL.Add('    AND CM.DDBH LIKE '''+edt_RY1.Text+'%'' ');
    SQL.Add('ORDER BY FACDFL.DFL ');
    //funcobj.WriteErrorLog(sql.Text);
    active:=true;
 end;
end;

procedure TStockShoeMonthCost.Qry_MonthStockAfterOpen(DataSet: TDataSet);
begin
  with Qry_Temp do
  begin
    active:=false;
    sql.Clear;
    sql.Add('Select 1 ');
    SQL.Add('FROM CWDDZL_Mon ');
    sql.Add('where KCYEAR='''+cbx_Year.Text+''' and KCMONTH='''+cbx_Month.Text+''' ');
    active:=true;
  end;
  if (Qry_Temp.RecordCount=0) then
  begin
    if messagedlg('No data '+cbx_Year.Text+'/'+cbx_Month.Text+'. Do you want to calculate it ?',mtCustom, [mbYes,mbNo], 0)=mrYes then
    begin
      btn_Monthly.Click;
    end;
  end;
end;

procedure TStockShoeMonthCost.btn_MonthlyClick(Sender: TObject);
var STD:String;
begin
  STD:=cbx_Year.Text+'/'+cbx_Month.Text+'/01';
  with Qry_Temp do
  begin
    active:=false;
    sql.Clear;
    sql.Add('SELECT 1 FROM CWDDZL_Mon');
    sql.Add('WHERE KCYEAR='''+cbx_Year.Text+''' AND KCMONTH='''+cbx_Month.Text+''' ');
    active:=true;
    if RecordCount>0 then
    begin
      if messagedlg('Are you sure to calculate it again?',mtCustom, [mbYes,mbNo], 0)=mrYes then
      begin
        with Qry_Temp do
        begin
          active:=false;
          sql.Clear;
          sql.Add('DELETE CWDDZL_Mon');
          sql.Add('WHERE KCYEAR='''+cbx_Year.Text+''' AND KCMONTH='''+cbx_Month.Text+''' ');
          ExecSQL;
        end;
      end;
    end;
  end;
  //
  With Qry_Temp do
  begin 
    Close;
    SQL.Clear;
    SQL.Add('if object_id(''tempdb..#EntryStockRY'') is not null    ');
    SQL.Add('begin drop table #EntryStockRY end    ');
    SQL.Add('SELECT '''+cbx_Year.Text+''' KCYEAR,'''+cbx_Month.Text+''' KCMONTH,DDBH,CKBH  ');
    SQL.Add('       ,Isnull(RKQty,0) RKQty,(Isnull(RK_MatCost,0)+Isnull(RK_LaborCost,0)+Isnull(RK_FacCost,0))RKACC  ');
    SQL.Add('  	    ,Isnull(RemQty,0) RemQty,(Isnull(Rem_MatCost,0)+Isnull(Rem_LaborCost,0)+Isnull(Rem_FacCost,0))RemACC  ');
    SQL.Add('  	    ,DATEDIFF(MONTH,KCYEAR+''-''+KCMONTH+''-01'','''+STD+''' ) [Month] INTO #EntryStockRY  ');
    SQL.Add('FROM CWDDZL  ');
    SQL.Add('WHERE DATEDIFF(MONTH,KCYEAR+''-''+KCMONTH+''-01'','''+STD+''')<13  and DATEDIFF(MONTH,KCYEAR+''-''+KCMONTH+''-01'','''+STD+''')>-1     ');
    SQL.Add('--==================================================    ');
    SQL.Add('Create INDEX #EntryStockRY_index on #EntryStockRY(DDBH,[Month])    ');
    SQL.Add('Insert into CWDDZL_Mon (KCYEAR,KCMONTH,DDBH,CKBH,RemQty,RemACC,RemQty01T,RemACC01T,RemQty02T,RemACC02T,RemQty03T,RemACC03T,RemQty04T,RemACC04T  ');
    SQL.Add('                                      ,RemQty05T,RemACC05T,RemQty06T,RemACC06T,RemQty07T,RemACC07T,RemQty08T,RemACC08T,USERID,USERDate,YN)     ');
    SQL.Add('SELECT d.KCYear,d.KCMonth,d.DDBH,d.CKBH  ');
    SQL.Add('       ,isnull(d.RemQty,0) RemQty   ');
    SQL.Add('  	    ,isnull(d.RemACC,0) RemACC  ');
    SQL.Add('       ,isnull(Sum(d.c0),0) RemQty01T -- [<30]   ');
    SQL.Add('  	    ,isnull(Sum(d.c0ACC),0) RemACC01T -- [<30]   ');
    SQL.Add('       ,isnull(Sum(d.c1),0) RemQty02T --[31~60]  ');
    SQL.Add('  	    ,isnull(Sum(d.c1ACC),0) RemACC02T --[31~60]  ');
    SQL.Add('       ,isnull(Sum(d.c2),0) RemQty03T --[61~90]   ');
    SQL.Add('  	    ,isnull(Sum(d.c2ACC),0) RemACC03T --[61~90]   ');
    SQL.Add('       ,isnull(Sum(d.c3),0) RemQty04T --[91~120]   ');
    SQL.Add('  	    ,isnull(Sum(d.c3ACC),0) RemACC04T --[91~120]   ');
    SQL.Add('       ,isnull(Sum(d.c4),0) RemQty05T --[121~150]  ');
    SQL.Add('  	    ,isnull(Sum(d.c4ACC),0) RemACC05T --[121~150]  ');
    SQL.Add('  	    ,isnull(Sum(d.c5),0) RemQty06T --[151~180]  ');
    SQL.Add('  	    ,isnull(Sum(d.c5ACC),0) RemACC06T --[151~180]  ');
    SQL.Add('       ,isnull(Sum(d.c6),0)+isnull(Sum(d.c7),0)+isnull(Sum(d.c8),0)+isnull(Sum(d.c9),0)+isnull(Sum(d.c10),0)+isnull(Sum(d.c11),0) RemQty07T --[181~360]    ');
    SQL.Add('  	    ,isnull(Sum(d.c6ACC),0)+isnull(Sum(d.c7ACC),0)+isnull(Sum(d.c8ACC),0)+isnull(Sum(d.c9ACC),0)+isnull(Sum(d.c10ACC),0)+isnull(Sum(d.c11ACC),0) RemACC07T --[181~360]    ');
    SQL.Add('       ,isnull(Sum(d.c12),0) RemQty08T--[>360]  ');
    SQL.Add('  	    ,isnull(Sum(d.c12ACC),0) RemACC08T--[>360]   ');
    SQL.Add('       ,'''+main.Edit1.Text+''' USERID,GetDate() UserDate,''1'' YN     ');
    SQL.Add('FROM (    ');
    SQL.Add('    	 SELECT *    ');
    SQL.Add('    	        ,CASE WHEN c.[Month]=0 THEN c.Qty END c0     ');
    SQL.Add('    	        ,CASE WHEN c.[Month]=1 THEN c.Qty END c1    ');
    SQL.Add('    	        ,CASE WHEN c.[Month]=2 THEN c.Qty END c2    ');
    SQL.Add('    	        ,CASE WHEN c.[Month]=3 THEN c.Qty END c3    ');
    SQL.Add('    	        ,CASE WHEN c.[Month]=4 THEN c.Qty END c4    ');
    SQL.Add('    	        ,CASE WHEN c.[Month]=5 THEN c.Qty END c5    ');
    SQL.Add('    	        ,CASE WHEN c.[Month]=6 THEN c.Qty END c6    ');
    SQL.Add('    	        ,CASE WHEN c.[Month]=7 THEN c.Qty END c7    ');
    SQL.Add('    	        ,CASE WHEN c.[Month]=8 THEN c.Qty END c8    ');
    SQL.Add('    	        ,CASE WHEN c.[Month]=9 THEN c.Qty END c9    ');
    SQL.Add('    	        ,CASE WHEN c.[Month]=10 THEN c.Qty END c10    ');
    SQL.Add('    	        ,CASE WHEN c.[Month]=11 THEN c.Qty END c11    ');
    SQL.Add('    	        ,CASE WHEN c.[Month]=12 THEN c.Qty END c12   ');
    SQL.Add('  			      ,CASE WHEN c.[Month]=0 THEN c.VNACC END c0ACC     ');
    SQL.Add('    	        ,CASE WHEN c.[Month]=1 THEN c.VNACC END c1ACC    ');
    SQL.Add('    	        ,CASE WHEN c.[Month]=2 THEN c.VNACC END c2ACC    ');
    SQL.Add('    	        ,CASE WHEN c.[Month]=3 THEN c.VNACC END c3ACC    ');
    SQL.Add('    	        ,CASE WHEN c.[Month]=4 THEN c.VNACC END c4ACC    ');
    SQL.Add('    	        ,CASE WHEN c.[Month]=5 THEN c.VNACC END c5ACC    ');
    SQL.Add('    	        ,CASE WHEN c.[Month]=6 THEN c.VNACC END c6ACC    ');
    SQL.Add('    	        ,CASE WHEN c.[Month]=7 THEN c.VNACC END c7ACC    ');
    SQL.Add('    	        ,CASE WHEN c.[Month]=8 THEN c.VNACC END c8ACC    ');
    SQL.Add('    	        ,CASE WHEN c.[Month]=9 THEN c.VNACC END c9ACC    ');
    SQL.Add('    	        ,CASE WHEN c.[Month]=10 THEN c.VNACC END c10ACC    ');
    SQL.Add('    	        ,CASE WHEN c.[Month]=11 THEN c.VNACC END c11ACC    ');
    SQL.Add('    	        ,CASE WHEN c.[Month]=12 THEN c.VNACC END c12ACC  ');
    SQL.Add('    	  FROM (    ');
    SQL.Add('    	        SELECT b.*    ');
    SQL.Add('    	               ,CASE WHEN b.[month]=b1.MaxMonth THEN (CASE WHEN b.RemQty-b.SumRKqty>0 THEN b.RemQty-b.SumRKqty ELSE 0 END)     ');
    SQL.Add('    				          ELSE (CASE WHEN b.RemQty>(b.RKQty+b.SumRKqty) THEN b.RKQty     ');
    SQL.Add('    					              ELSE     ');
    SQL.Add('    					      	        (CASE WHEN b.RemQty-b.SumRKqty>0  THEN b.RemQty-b.SumRKqty ELSE 0 END)      ');
    SQL.Add('    						            END )     ');
    SQL.Add('    				          END Qty  ');
    SQL.Add('  					         ,CASE WHEN b.[month]=b1.MaxMonth THEN (CASE WHEN b.RemACC-b.SumRKACC>0 THEN b.RemACC-b.SumRKACC ELSE 0 END)     ');
    SQL.Add('    				          ELSE (CASE WHEN b.RemACC>(b.RKACC+b.SumRKACC) THEN b.RKACC     ');
    SQL.Add('    					              ELSE     ');
    SQL.Add('    					      	        (CASE WHEN b.RemACC-b.SumRKACC>0  THEN b.RemACC-b.SumRKACC ELSE 0 END)      ');
    SQL.Add('    						            END )     ');
    SQL.Add('    				          END VNACC  ');
    SQL.Add('    	        FROM (    ');
    SQL.Add('    	              SELECT a1.KCYEAR,a1.KCMonth,a1.DDBH,a1.CKBH,a2.[Month]  ');
    SQL.Add('  	                       ,SUM(a1.RKQty) SumRKqty,SUM(a1.RKACC) SumRKACC  ');
    SQL.Add('  		                     ,a2.RKQty,a2.RKACC  ');
    SQL.Add('  	                       ,SUM(CASE WHEN (a1.[Month]=0)THEN a1.RemQty END) RemQty  ');
    SQL.Add('  		                     ,SUM(CASE WHEN (a1.[Month]=0)THEN a1.RemACC END) RemACC    ');
    SQL.Add('    	              FROM #EntryStockRY a1    ');
    SQL.Add('    	              LEFT JOIN #EntryStockRY a2 on a2.DDBH=a1.DDBH and a2.CKBH=a1.CKBH     ');
    SQL.Add('    	              WHERE a2.[Month]>a1.[Month]    ');
    SQL.Add('    	              GROUP BY a1.KCYEAR,a1.KCMonth,a1.DDBH,a1.CKBH,a2.[Month],a2.RKQTY,a2.RKACC    ');
    SQL.Add('    	              UNION ALL   ');
    SQL.Add('    	              SELECT KCYEAR,KCMonth,DDBH,CKBH,[Month],0 SumRKqty,0 SumRKACC,RKQty,RKACC,RemQty,RemACC  ');
    SQL.Add('  	                FROM #EntryStockRY    ');
    SQL.Add('    	              WHERE [Month]=0 ) b     ');
    SQL.Add('    	        LEFT JOIN (    ');
    SQL.Add('    	                   SELECT KCYEAR,KCMONTH,DDBH,CKBH,MAX([Month]) MaxMonth     ');
    SQL.Add('    	                   FROM (    ');
    SQL.Add('    		                       SELECT a1.KCYEAR,a1.KCMonth,a1.DDBH,a1.CKBH,a2.[Month]  ');
    SQL.Add('  					                          ,SUM(a1.RKQty) SumRKqty,SUM(a1.RKACC) SumRKACC  ');
    SQL.Add('  					                          ,a2.RKQty,a2.RKACC  ');
    SQL.Add('  							                      ,SUM(CASE WHEN (a1.[Month]=0)THEN a1.RemQty END) RemQty  ');
    SQL.Add('  							                      ,SUM(CASE WHEN (a1.[Month]=0)THEN a1.RemACC END) RemACC   ');
    SQL.Add('    		                       FROM #EntryStockRY a1    ');
    SQL.Add('    		                       LEFT JOIN #EntryStockRY a2 on a2.DDBH=a1.DDBH and a2.CKBH=a1.CKBH     ');
    SQL.Add('    		                       WHERE a2.[Month]>a1.[Month]    ');
    SQL.Add('    		                       GROUP BY a1.KCYEAR,a1.KCMonth,a1.DDBH,a1.DDBH,a1.CKBH,a2.[Month],a2.RKQTY,a2.RKACC    ');
    SQL.Add('    		                       UNION ALL   ');
    SQL.Add('    		                       SELECT KCYEAR,KCMonth,DDBH,CKBH,[Month],0 SumRKqty,0 SumRKACC,RKQty,RKACC,RemQty,RemACC   ');
    SQL.Add('  					                   FROM #EntryStockRY    ');
    SQL.Add('    		                       WHERE  [Month]=0)  Alldata    ');
    SQL.Add('    	                   GROUP BY KCYEAR,KCMONTH,DDBH,CKBH    ');
    SQL.Add('    	                   ) b1 on b1.KCYEAR=b.KCYEAR and b1.KCMONTH=b.KCMONTH and b1.DDBH=b.DDBH and b1.CKBH=b.CKBH     ');
    SQL.Add('            ) c    ');
    SQL.Add('  	) d    ');
    SQL.Add('WHERE d.RemQty>0    ');
    SQL.Add('GROUP BY d.KCYear,d.KCMonth,d.DDBH,d.CKBH,d.RemQty,d.RemACC    ');
    //funcobj.WriteErrorLog(sql.Text);
    ExecSQL;
  end;
  //
  showmessage('Finish');
  btn_Query.Click;
end;

procedure TStockShoeMonthCost.btn_QueryACCClick(Sender: TObject);
var iYear,iMonth:integer;
begin
  iYear:=strtoint(cbx_YearACC.Text);
  iMonth:=strtoint(cbx_MonthACC.Text);
  sdate:=encodedate(iYear,iMonth,1);
  edate:=endofthemonth(sdate);
  With Qry_StockACC do
  begin
    Active:=false;
    SQL.Clear;
    SQL.Add('SELECT KCYEAR,KCMONTH,DDBH ');
    SQL.Add('       ,LastQty,(Last_MatCost+Last_LaborCost+Last_FacCost) LastACC,Last_MatCost,Last_LaborCost,Last_FacCost  ');
    SQL.Add('       ,RKQty,(RK_MatCost+RK_LaborCost+RK_FacCost) RKACC,RK_MatCost,RK_LaborCost,RK_FacCost  ');
    SQL.Add('       ,CKQty,(CK_MatCost+CK_LaborCost+CK_FacCost) CKACC,CK_MatCost,CK_LaborCost,CK_FacCost  ');
    SQL.Add('       ,RemQty,(Rem_MatCost+Rem_LaborCost+Rem_FacCost) RemACC,Rem_MatCost,Rem_LaborCost,Rem_FacCost  ');
    SQL.Add('       ,FACDFL.DFL as Xuong');
    SQL.Add('FROM  CWDDZL ');
    SQL.Add('LEFT JOIN FACDFL on CWDDZL.CKBH= FACDFL.CKBH');
    SQL.Add('WHERE KCYEAR='''+cbx_YearACC.Text+''' AND KCMONTH='''+cbx_MonthACC.Text+'''  ');
    if edt_RYACC.Text<>'' then
      SQL.Add('    AND CWDDZL.DDBH LIKE '''+edt_RYACC.Text+'%'' ');
    SQL.Add('ORDER BY FACDFL.DFL');
    Active:=true;
  end;

end;

procedure TStockShoeMonthCost.btn_MonthlyACCClick(Sender: TObject);
var iYear,iMonth:integer;
begin
  if (cbx_YearACC.text = '') or (cbx_MonthACC.text = '') then
  begin
    showmessage('You have to select the year and month first.');
    abort;
  end;
  iYear := strtoint(cbx_YearACC.Text);
  iMonth := strtoint(cbx_MonthACC.Text);
  sdate := encodedate(iYear, iMonth, 1);
  edate := endofthemonth(sdate);

  if (iYear > 2999) or (iYear < 1900) then
  begin
    showmessage('Pls key in right year');
    abort;
  end;
  if (iMonth = 0) or (iMonth > 12) then
  begin
    showmessage('Pls key in right month');
    abort;
  end;

  if strtoint(cbx_MonthACC.Text) > 1 then
  begin
    amonth := inttostr(strtoint(cbx_MonthACC.Text) - 1);
    ayear := cbx_YearACC.Text;
  end
  else
  begin
    amonth := '12';
    ayear := inttostr(strtoint(cbx_YearACC.Text) - 1);
  end;
  if length(amonth) < 2 then
  begin
    amonth := '0' + amonth;
  end;
  //
  if (iYear <= 2023)then
  begin
    showmessage('Do not allow calculate <= 2023');
    abort;
  end;
  with Qry_Temp do
  begin
    active:=false;
    sql.Clear;
    sql.Add('SELECT top 1 YN FROM CWDDZL');
    sql.Add('WHERE KCYEAR='''+cbx_YearACC.Text+''' AND KCMONTH='''+cbx_MonthACC.Text+''' ');
    active:=true;
    if RecordCount>0 then
    begin           
      if Qry_Temp.FieldByName('YN').AsString='5' then
      begin
        showmessage('Gia Thanh da confirm, khong the sua');
        abort;
      end;
      if messagedlg('Are you sure to calculate it again?',mtCustom, [mbYes,mbNo], 0)=mrYes then
      begin
        with Qry_Temp do
        begin
          active:=false;
          sql.Clear;
          sql.Add('DELETE CWDDZL');
          sql.Add('WHERE KCYEAR='''+cbx_YearACC.Text+''' AND KCMONTH='''+cbx_MonthACC.Text+'''  ');
          ExecSQL;
        end;
      end;
    end;
  end;
  //
  With Qry_Temp do
  begin
    Active:=False;
    SQL.Clear;
    SQL.Add('  if object_id(''tempdb..#YWCPDDTR'') is not null  ');
    SQL.Add('   begin drop table #YWCPDDTR end  ');
    SQL.Add('  Select DDBH,DDBH1,Qty into #YWCPDDTR  ');
    SQL.Add('  From YWCPMONTH_DDZLTR     ');
    SQL.Add('  	Where YWCPMONTH_DDZLTR.KCYEAR ='''+ayear+''' and YWCPMONTH_DDZLTR.KCMONTH = '''+amonth+''' and YWCPMONTH_DDZLTR.DDBH in   ');
    SQL.Add('  	(  ');
    SQL.Add('  	 Select DDBH from (  ');
    SQL.Add('     Select case when DDZLTR.DDBH1 is not null then DDZLTR.DDBH1 else  YWCPMONTH.DDBH end  as DDBH  ');
    SQL.Add('     From YWCPMONTH left join DDZLTR on YWCPMONTH.DDBH=DDZLTR.DDBH1     ');
    SQL.Add('     where YWCPMONTH.KCYEAR='''+ayear+'''  and YWCPMONTH.KCMONTH='''+amonth+'''   ');
    SQL.Add('  	  Union all  ');
    SQL.Add('     Select case when DDZLTR.DDBH1 is not null then DDZLTR.DDBH1 else  YWCP.DDBH end  as DDBH   ');
    SQL.Add('  	  from (select * from YWCP where 1=1 and IsNull(SB,'''')<>'''' union all select * from YWCPOld where 1=1 and IsNull(SB,'''')<>'''' ) YWCP left join DDZLTR on YWCP.DDBH=DDZLTR.DDBH1  ');
    SQL.Add('  	  where convert(smalldatetime,convert(varchar,YWCP.INDATE,111)) between '''+formatdatetime('yyyy/MM/dd',sDate)+''' and '''+formatdatetime('yyyy/MM/dd',eDate)+''' and IsNull(SB,'''')<>''''   ');
    SQL.Add('  	  Group by case when DDZLTR.DDBH1 is not null then DDZLTR.DDBH1 else  YWCP.DDBH end   ) YWCP Group by DDBH  ');
    SQL.Add('    )  ');
    
    SQL.Add('  if object_id(''tempdb..#ACCKC'') is not null    ');
    SQL.Add('  begin drop table #ACCKC end    ');
    SQL.Add('  Select *  ');
    SQL.Add('  into #ACCKC  ');
    SQL.Add('  From (  ');
    SQL.Add('  Select YWDDM.DDBH,YWDDM.YSBH,isnull(DDZL.GSBH,YWDDM.CKBH) as CKBH,IsNull(YWDD.Qty,DDZL.Pairs) as Pairs,YWDDM.LastRem,YWDDM.RKQty,YWDDM.XHQty,YWDDM.TRQty,YWDDM.Qty,  ');
    SQL.Add('         DDZL.ShipDate,DDZL.ARTICLE,DDZL.DDZT,YWCPMemo.Memo  ');
    SQL.Add('  From (  ');
    SQL.Add('   Select YSBH as DDBH,YSBH,CKBH,Sum(LastRem) as LastRem,Sum(RKQty) as RKQty,Sum(XHQty) as XHQty,Sum(TRQty) as TRQty,Sum(Qty) as Qty   ');
    SQL.Add('  	From (   ');
    SQL.Add('    Select YWCP.DDBH,IsNull(CONVERT(VARCHAR(50),YWDD.YSBH),YWCP.DDBH) as YSBH,Max(YWCP.CKBH) as CKBH,Sum(YWCPMonth.Qty) as LastRem,Sum(YWCPRK.Qty) as RKQty,  ');
    SQL.Add('           Sum(YWCPXH.Qty) as XHQty,SUM(YWCPMONTH_DDZLTR.Qty) as TRQty,Case when SUM(YWCP.Qty) is not null and SUM(YWCPMONTH_DDZLTR.Qty) is not null then SUM(YWCP.Qty)-SUM(YWCPMONTH_DDZLTR.Qty) else SUM(YWCP.Qty) end as Qty  ');
    SQL.Add('    From (  ');
    SQL.Add('  	   Select DDBH,Max(CKBH) as CKBH, Sum(Qty) as Qty From (  ');
    SQL.Add('      Select YWCPMONTH.CKBH,case when DDZLTR.DDBH1 is not null then DDZLTR.DDBH1 else  YWCPMONTH.DDBH end  as DDBH,YWCPMONTH.Qty,''1'' as SB   ');
    SQL.Add('      From YWCPMONTH left join DDZLTR on YWCPMONTH.DDBH=DDZLTR.DDBH1     ');
    SQL.Add('      Where YWCPMONTH.KCYEAR='''+ayear+'''   ');
    SQL.Add('  		  and YWCPMONTH.KCMONTH='''+amonth+'''   ');
    SQL.Add('  	Union all  ');
    SQL.Add('   Select CKBH,DDBH,Sum(Qty) as Qty,SB From (' );
    SQL.Add('  	Select Max(YWCP.KCBH) as CKBH,case when ddzltr.DDBH1 is not null then ddzltr.DDBH else case when DDZLTR.DDBH1 is not null then DDZLTR.DDBH1 else  YWCP.DDBH end  end DDBH,Sum(YWCP.Qty) as Qty,''2'' as SB  ');
    SQL.Add('  	From (Select * from YWCP where 1=1 and IsNull(SB,'''')<>'''' union all select * from YWCPOld where 1=1 and IsNull(SB,'''')<>'''' ) YWCP left join DDZLTR on YWCP.DDBH=DDZLTR.DDBH1  ');
    SQL.Add('         Left join DDZL on YWCP.DDBH=DDZL.DDBH   ');
    SQL.Add('  	      Where convert(smalldatetime,convert(varchar,YWCP.INDATE,111)) between '''+formatdatetime('yyyy/MM/dd',sDate)+''' and '''+formatdatetime('yyyy/MM/dd',eDate)+''' and IsNull(SB,'''')<>''''   ');
    SQL.Add('           and ywcp.DDBH not in (select DDBH from DDZLTR)   ');
    SQL.Add('  	      Group by case when DDZLTR.DDBH1 is not null then DDZLTR.DDBH1 else  YWCP.DDBH end ,ddzltr.DDBH1,ddzltr.DDBH) YWCPIn Group by CKBH,DDBH,SB  ');
    SQL.Add('  	Union all  ');
    SQL.Add('   Select CKBH,DDBH,Sum(Qty) as Qty,SB From (' );
    SQL.Add('  	Select Max(YWCP.KCBH) as CKBH,case when ddzltr.DDBH1 is not null then ddzltr.DDBH else case when DDZLTR.DDBH1 is not null then DDZLTR.DDBH1 else  YWCP.DDBH end  end DDBH, ');
    SQL.Add('  	       -1*Sum( Case when YWCP.SB=''3'' then ISNULL(YWCP_OUT.Qty_Out,YWCP.Qty) else 0 end) as Qty,''3'' as SB  ');
    SQL.Add('  	From (select * from YWCP where 1=1 and IsNull(SB,'''')<>'''' union all select * from YWCPOld where 1=1 and IsNull(SB,'''')<>'''' ) YWCP left join DDZLTR on YWCP.DDBH=DDZLTR.DDBH1  ');
    SQL.Add('   Left join DDZL on YWCP.DDBH=DDZL.DDBH   ');                                                                
    sql.add('   left join YWCP_OUT on YWCP_OUT.CARTONBAR=YWCP.CARTONBAR ');
    SQL.Add('  	Where convert(smalldatetime,convert(varchar,ISNULL(YWCP_OUT.ExeDate,YWCP.ExeDate),111)) between '''+formatdatetime('yyyy/MM/dd',sDate)+''' and '''+formatdatetime('yyyy/MM/dd',eDate)+''' and IsNull(YWCP.SB,'''')<>''''  ');
    SQL.Add('     and ywcp.DDBH not in (select DDBH from DDZLTR)   ');
    SQL.Add('  	Group by case when DDZLTR.DDBH1 is not null then DDZLTR.DDBH1 else  YWCP.DDBH end ,ddzltr.DDBH1,ddzltr.DDBH )YWCPOut Group by CKBH,DDBH,SB   ');
    //GC 2025/08/14
    SQL.Add('  	Union all  ');
    SQL.Add('  	select GSBH as CKBH,NameExtra as DDBH, sum(qty) as Qty, ''4'' as SB from CW_MatCostMonth_GC   ');
    SQL.Add('  	where KCYEAR='''+cbx_YearACC.Text+''' and KCMONTH='''+cbx_MonthACC.Text+''' and NameExtra is not null group by GSBH,NameExtra    '); 
    //GCTP 2026/03/11
    SQL.Add('  	Union all  ');
    SQL.Add('  	select GSBH as CKBH,YWCP_OEM.DDBH, sum(YWCP_OEM.qty) as Qty, ''5'' as SB from YWCP_OEM      ');
    SQL.Add('  	Left join DDZL_OEM on YWCP_OEM.DDBH=DDZL_OEM.DDBH      ');
    SQL.Add('  	Where convert(smalldatetime,convert(varchar,YWCP_OEM.INDATE,111)) between '''+formatdatetime('yyyy/MM/dd',sDate)+''' and '''+formatdatetime('yyyy/MM/dd',eDate)+''' and IsNull(SB,'''')<>''''   ');
    SQL.Add('  	group by GSBH,YWCP_OEM.DDBH    ');
    SQL.Add('  	) YWCPMONTH  ');
    SQL.Add('  	Group by DDBH  ) YWCP    ');
    SQL.Add('    Left join  (  ');
    SQL.Add('      Select YWCPMONTH.CKBH,case when DDZLTR.DDBH1 is not null then DDZLTR.DDBH1 else  YWCPMONTH.DDBH end  as DDBH,YWCPMONTH.Qty,''1'' as SB   ');
    SQL.Add('  	   From YWCPMONTH left join DDZLTR on YWCPMONTH.DDBH=DDZLTR.DDBH1     ');
    SQL.Add('  	   Where YWCPMONTH.KCYEAR='''+ayear+'''    ');
    SQL.Add('  		  and YWCPMONTH.KCMONTH='''+amonth+'''  ) YWCPMonth on YWCP.DDBH=YWCPMonth.DDBH  ');
    SQL.Add('    Left join  (  ');
    SQL.Add('      Select CKBH,DDBH,Sum(Qty) as Qty,SB From (' );
    SQL.Add('  	   Select Max(YWCP.KCBH) as CKBH,case when ddzltr.DDBH1 is not null then ddzltr.DDBH else case when DDZLTR.DDBH1 is not null then DDZLTR.DDBH1 else  YWCP.DDBH end  end DDBH,Sum(YWCP.Qty) as Qty,''2'' as SB  ');
    SQL.Add('  	   From (select * from YWCP where 1=1 and IsNull(SB,'''')<>'''' union all select * from YWCPOld where 1=1 and IsNull(SB,'''')<>'''' ) YWCP left join DDZLTR on YWCP.DDBH=DDZLTR.DDBH1  ');
    SQL.Add('      Left join DDZL on YWCP.DDBH=DDZL.DDBH   ');
    SQL.Add('  	   Where convert(smalldatetime,convert(varchar,YWCP.INDATE,111)) between '''+formatdatetime('yyyy/MM/dd',sDate)+''' and '''+formatdatetime('yyyy/MM/dd',eDate)+''' and IsNull(SB,'''')<>''''   ');
    SQL.Add('         and ywcp.DDBH not in (select DDBH from DDZLTR)   ');
    SQL.Add('  	   Group by case when DDZLTR.DDBH1 is not null then DDZLTR.DDBH1 else  YWCP.DDBH end ,ddzltr.DDBH1,ddzltr.DDBH )YWCPIn Group by CKBH,DDBH,SB ');
    //GC 2025/08/14
    SQL.Add('  	    Union all  ');
    SQL.Add('  	    select GSBH as CKBH,NameExtra as DDBH, sum(qty) as Qty, ''4'' as SB from CW_MatCostMonth_GC   ');
    SQL.Add('  	    where KCYEAR='''+cbx_YearACC.Text+''' and KCMONTH='''+cbx_MonthACC.Text+''' and NameExtra is not null group by GSBH,NameExtra    ');
    //GCTP 2026/03/11
    SQL.Add('     	Union all  ');
    SQL.Add('  	    select GSBH as CKBH,YWCP_OEM.DDBH, sum(YWCP_OEM.qty) as Qty, ''5'' as SB from YWCP_OEM      ');
    SQL.Add('  	    Left join DDZL_OEM on YWCP_OEM.DDBH=DDZL_OEM.DDBH      ');
    SQL.Add('  	    Where convert(smalldatetime,convert(varchar,YWCP_OEM.INDATE,111)) between '''+formatdatetime('yyyy/MM/dd',sDate)+''' and '''+formatdatetime('yyyy/MM/dd',eDate)+''' and IsNull(SB,'''')<>''''   ');
    SQL.Add('  	    group by GSBH,YWCP_OEM.DDBH    ');
    SQL.Add('  	   ) YWCPRK on YWCP.DDBH=YWCPRK.DDBH  ');
    SQL.Add('    Left join  (  ');
    SQL.Add('      Select CKBH,DDBH,Sum(Qty) as Qty,SB From (' );
    SQL.Add('  	   Select Max(YWCP.KCBH) as CKBH,case when ddzltr.DDBH1 is not null then ddzltr.DDBH else case when DDZLTR.DDBH1 is not null then DDZLTR.DDBH1 else  YWCP.DDBH end  end DDBH, ');
    SQL.Add('  	          Sum( Case when YWCP.SB=''3'' then ISNULL(YWCP_OUT.Qty_Out,YWCP.Qty) else 0 end) as Qty,''5'' as SB  ');
    SQL.Add('  	   From (select * from YWCP where 1=1 and IsNull(SB,'''')<>'''' union all select * from YWCPOld where 1=1 and IsNull(SB,'''')<>'''' ) YWCP left join DDZLTR on YWCP.DDBH=DDZLTR.DDBH1   ');
    SQL.Add('      Left join DDZL on YWCP.DDBH=DDZL.DDBH   ');                                                               
    sql.add('      left join YWCP_OUT on YWCP_OUT.CARTONBAR=YWCP.CARTONBAR ');
    SQL.Add('  	   Where convert(smalldatetime,convert(varchar,ISNULL(YWCP_OUT.ExeDate,YWCP.ExeDate),111)) between '''+formatdatetime('yyyy/MM/dd',sDate)+''' and '''+formatdatetime('yyyy/MM/dd',eDate)+''' and IsNull(YWCP.SB,'''')<>''''  ');
    SQL.Add('         and ywcp.DDBH not in (select DDBH from DDZLTR)   ');
    SQL.Add('  	   Group by case when DDZLTR.DDBH1 is not null then DDZLTR.DDBH1 else  YWCP.DDBH end ,ddzltr.DDBH1,ddzltr.DDBH )YWCPOut Group by CKBH,DDBH,SB ');
    //GC 2025/08/14                                                                                                     
    SQL.Add('  	    Union all  ');
    SQL.Add('  	    select GSBH as CKBH,NameExtra as DDBH, sum(qty) as Qty, ''4'' as SB from CW_MatCostMonth_GC   ');
    SQL.Add('  	    where KCYEAR='''+cbx_YearACC.Text+''' and KCMONTH='''+cbx_MonthACC.Text+''' and NameExtra is not null group by GSBH,NameExtra    ');
    //GCTP 2026/03/11
    SQL.Add('     	Union all  ');
    SQL.Add('  	    select GSBH as CKBH,YWCP_OEM.DDBH, sum(YWCP_OEM.qty) as Qty, ''5'' as SB from YWCP_OEM      ');
    SQL.Add('  	    Left join DDZL_OEM on YWCP_OEM.DDBH=DDZL_OEM.DDBH      ');
    SQL.Add('  	    Where convert(smalldatetime,convert(varchar,YWCP_OEM.INDATE,111)) between '''+formatdatetime('yyyy/MM/dd',sDate)+''' and '''+formatdatetime('yyyy/MM/dd',eDate)+''' and IsNull(SB,'''')<>''''   ');
    SQL.Add('  	    group by GSBH,YWCP_OEM.DDBH    ');
    SQL.Add('  	   ) YWCPXH on YWCP.DDBH=YWCPXH.DDBH  ');
    SQL.Add('    Left join (  ');
    SQL.Add('      Select YWCPDDTR.CKBH,YWCPDDTR.DDBH, Case when IsNull(YWCP.Qty,0)<YWCPDDTR.Qty then IsNull(YWCP.Qty,0) else YWCPDDTR.Qty end as  Qty,YWCPDDTR.SB from (  ');
    SQL.Add('      Select null as CKBH,#YWCPDDTR.DDBH,Sum(#YWCPDDTR.Qty) as Qty,''6'' as SB   ');
    SQL.Add('  	   From #YWCPDDTR    ');
    SQL.Add('  	   Group by #YWCPDDTR.DDBH  ');
    SQL.Add('   ) YWCPDDTR   ');
    SQL.Add('    Left join (  ');
    SQL.Add('     Select #YWCPDDTR.DDBH,Sum(YWCP.Qty) as Qty  ');
    SQL.Add('     From YWCP  ');
    SQL.Add('     inner join #YWCPDDTR on #YWCPDDTR.DDBH1=YWCP.DDBH  ');
    SQL.Add('     Where  IsNull(SB,'''')<>''''  and convert(smalldatetime,convert(varchar,YWCP.INDATE,111))<='''+formatdatetime('yyyy/MM/dd',eDate)+'''     ');
    SQL.Add('     Group by #YWCPDDTR.DDBH  ');
    SQL.Add('    ) YWCP on YWCPDDTR.DDBH=YWCP.DDBH  ');
    SQL.Add('    ) YWCPMONTH_DDZLTR on YWCP.DDBH=YWCPMONTH_DDZLTR.DDBH  ');
    SQL.Add('    Left join YWDD on YWDD.DDBH=YWCP.DDBH   ');
    SQL.Add('    Group by YWDD.YSBH,YWCP.DDBH  ');
    SQL.Add('  ) YWDDM Group by YSBH,CKBH   ');
    SQL.Add('     ) YWDDM  ');
    SQL.Add('  Left join YWCPMemo on YWCPMemo.DDBH=YWDDM.YSBH   ');
    SQL.Add('  Left join DDZL on YWDDM.YSBH=DDZL.DDBH   ');
    SQL.Add('  Left join YWDD on YWDDM.DDBH=YWDD.DDBH   ');
    SQL.Add('  Where 1=1   ');
    SQL.Add('  Union All  ');
    SQL.Add('  Select ShoeTest.YPDH as DDBH,Shoetest.TestNo as YSBH,YPZL.GSDH as CKBH,YPZL.Quantity as Pairs,ShoeTestMonth.Qty as LastRem,ShoeTestIn.Qty as RKQty,ShoeTestship.Qty as XHQty,NULL as TRQty,ShoetestAll.Qty,YPZL.JHRQ,  ');
    SQL.Add('          ShoeTest.Article,Case when ShoeTest.TBCancel=1 then ''C'' else ''Y'' end as DDZT,ShoeTestMonth_Memo.Memo  ');
    SQL.Add('  From (  ');
    SQL.Add('    Select  TestNo , Sum(Qty) as Qty  ');
    SQL.Add('    From (  ');
    SQL.Add('  	  Select TestNo,Qty,''1'' as SB  ');
    SQL.Add('  	  From ShoeTestMonth  ');
    SQL.Add('  	  Where ShoeTestMonth.KCYEAR='''+ayear+'''   ');
    SQL.Add('  	   and ShoeTestMonth.KCMONTH='''+amonth+'''   ');
    SQL.Add('  	   and IsNull(ShoeTestMonth.CKBH,'''')<>''CBY''  ');
    SQL.Add('  	Union all  ');
    SQL.Add('  	Select  shoetest.TestNo,Sum(shoetest2.qty) as Qty,''2'' as SB  ');
    SQL.Add('  	From shoetest  ');
    SQL.Add('  	Left join (select testno,sum(qty) as qty from shoetest2 group by testno ) shoetest2 on  shoetest2.testno=shoetest.testno  ');
    SQL.Add('  	Where Convert(varchar,shoetest.complete, 111) between '''+formatdatetime('yyyy/MM/dd',sDate)+''' and '''+formatdatetime('yyyy/MM/dd',eDate)+'''   ');
    SQL.Add('  		  and SUBSTRING(shoetest.YPDH,4,1)=''V''   ');
    SQL.Add('  	Group by shoetest.TestNo  ');
    SQL.Add('  	Union all   ');
    SQL.Add('  	Select  shoetest.TestNo,-1*Sum(shoetestshipping.qty) as Qty,''3'' as SB  ');
    SQL.Add('  	From shoetest  ');
    SQL.Add('  	Left join (Select TestNO,shipdate_final,Sum(Qty) as Qty from shoetestshipping   Group by TestNO,shipdate_final ) shoetestshipping on shoetest.testno=shoetestshipping.testno  ');
    SQL.Add('  	Left join (select testno,sum(qty) as qty from shoetest2 group by testno ) shoetest2 on  shoetest2.testno=shoetest.testno  ');
    SQL.Add('  	Where Convert(varchar,shoetestshipping.shipdate_final, 111) between '''+formatdatetime('yyyy/MM/dd',sDate)+''' and '''+formatdatetime('yyyy/MM/dd',eDate)+'''   and shoetest.Complete is not null  ');
    SQL.Add('  		    and SUBSTRING(shoetest.YPDH,4,1)=''V''   ');
    SQL.Add('  	Group by shoetest.TestNo  )  Shoetest  Group by TestNo )  ShoetestAll  ');
    SQL.Add('  Left join (  ');
    SQL.Add('  	Select TestNo,Qty,''1'' as SB  ');
    SQL.Add('  	From ShoeTestMonth  ');
    SQL.Add('  	Where ShoeTestMonth.KCYEAR='''+ayear+'''   ');
    SQL.Add('  	   and ShoeTestMonth.KCMONTH='''+amonth+''' ) ShoeTestMonth on ShoeTestMonth.TestNo=ShoetestAll.TestNo  ');
    SQL.Add('  Left join (  ');
    SQL.Add('  	Select  shoetest.TestNo,Sum(shoetest2.qty) as Qty,''2'' as SB  ');
    SQL.Add('  	From shoetest  ');
    SQL.Add('  	Left join (select testno,sum(qty) as qty from shoetest2 group by testno ) shoetest2 on  shoetest2.testno=shoetest.testno  ');
    SQL.Add('  	Where Convert(varchar,shoetest.complete, 111) between '''+formatdatetime('yyyy/MM/dd',sDate)+''' and '''+formatdatetime('yyyy/MM/dd',eDate)+'''  ');
    SQL.Add('  		    and SUBSTRING(shoetest.YPDH,4,1)=''V''   ');
    SQL.Add('  	Group by shoetest.TestNo ) ShoeTestIn on ShoeTestIn.TestNo=ShoetestAll.TestNo  ');
    SQL.Add('  Left join (  ');
    SQL.Add('  	Select  shoetest.TestNo,Sum(shoetestshipping.qty) as Qty,''3'' as SB  ');
    SQL.Add('  	From shoetest  ');
    SQL.Add('  	Left join (Select TestNO,shipdate_final,Sum(Qty) as Qty from shoetestshipping   Group by TestNO,shipdate_final ) shoetestshipping on shoetest.testno=shoetestshipping.testno  ');
    SQL.Add('  	Left join (select testno,sum(qty) as qty from shoetest2 group by testno ) shoetest2 on  shoetest2.testno=shoetest.testno  ');
    SQL.Add('  	Where Convert(varchar,shoetestshipping.shipdate_final, 111) between '''+formatdatetime('yyyy/MM/dd',sDate)+''' and '''+formatdatetime('yyyy/MM/dd',eDate)+'''  and shoetest.Complete is not null  ');
    SQL.Add('  		    and SUBSTRING(shoetest.YPDH,4,1)=''V''   ');
    SQL.Add('  	Group by shoetest.TestNo ) ShoeTestship on ShoeTestship.TestNo=ShoetestAll.TestNo  ');
    SQL.Add('  Left join ShoeTest on ShoeTest.TestNo=ShoetestAll.TestNo  ');
    SQL.Add('  Left join YPZL on YPZL.YPDH=ShoeTest.YPDH  ');
    SQL.Add('  Left join ShoeTestMonth_Memo on ShoeTestMonth_Memo.testNo=ShoetestAll.TestNo  ');
    SQL.Add('  Where 1=1   ');
    SQL.Add('  Union all  ');
    SQL.Add('  Select CBY_Orders_Fin.DDBH,TestNo as YSBH, CBY_Orders_Fin.CKBH, (select Sum(total) as total from CBY_Orders where CBY_Orders_Fin.DDBH=CBY_Orders.MasterOrder) as Pairs,  ');
    SQL.Add('         CBY_Orders_Fin.LastRem,CBY_Orders_Fin.RKQty,CBY_Orders_Fin.XHQty,NULL as TRQty,CBY_Orders_Fin.Qty,CBY_Orders_Fin.JHRQ,CBY_Orders_Fin.Article,CBY_Orders_Fin.DDZT,CBY_Orders_Fin.Memo ');
    SQL.Add('  From (   ');
    SQL.Add('  Select DDBH,Max(CKBH) as CKBH,Sum(Pairs) as Pairs,Sum(IsNull(LastRem,0)) as LastRem,Sum(IsNull(RKQty,0)) as RKQty,  ');
    SQL.Add('         Sum(IsNull(XHQty,0)) as XHQty,Sum(Qty) as Qty,Max(JHRQ) as JHRQ,''ZZZZ'' as TestNo,Max(Article) as Article, Max(DDZT) as DDZT,Max(Memo) as Memo   ');
    SQL.Add('   From (   ');
    SQL.Add('     Select CBY_Orders.MasterOrder as DDBH,''CBY ''as CKBH,CBY_Orders.total as Pairs,ShoeTestMonth.Qty as LastRem, ShoeTestIn.Qty as RKQty, ShoeTestship.Qty as XHQty, CBYShoetestAll.Qty,CBY_Orders.requiredShipDate as JHRQ,   ');
    SQL.Add('            CBYShoetestAll.workOrderId as TestNo,CBY_Orders.style as Article,Case when CBY_Orders.Cancel=1 then ''C'' else ''Y'' end DDZT,ShoeTestMonth_Memo.Memo  ');
    SQL.Add('     From (   ');
    SQL.Add('       Select  TestNo as workOrderId, Sum(Qty) as Qty from (  ');
    SQL.Add('         Select testNo,Qty,''1'' as SB From ShoeTestMonth  ');
    SQL.Add('         Where ShoeTestMonth.KCYEAR='''+ayear+'''    ');
    SQL.Add('           and ShoeTestMonth.KCMONTH='''+amonth+'''   ');
    SQL.Add('           and ShoeTestMonth.CKBH=''CBY''  ');
    SQL.Add('      Union all  ');
    SQL.Add('      Select CBY_Orders.workOrderId,CBY_Orders.total as Qty, ''2'' as SB From CBY_Orders  ');
    SQL.Add('      Where Convert(varchar,CBY_Orders.StockDate, 111) between '''+formatdatetime('yyyy/MM/dd',sDate)+''' and '''+formatdatetime('yyyy/MM/dd',eDate)+'''  ');
    SQL.Add('      Union all   ');
    SQL.Add('      Select CBY_Orders.workOrderId,-1*CBY_Orders.total as Qty, ''3'' as SB From CBY_Orders  ');
    SQL.Add('      Where Convert(varchar,CBY_Orders.ShipDate, 111) between '''+formatdatetime('yyyy/MM/dd',sDate)+''' and '''+formatdatetime('yyyy/MM/dd',eDate)+'''  ');
    SQL.Add('    ) AS Shoetest  ');
    SQL.Add('    Group by TestNo  ');
    SQL.Add('  ) AS CBYShoetestAll  ');
    SQL.Add('  Left join (  ');
    SQL.Add('    Select TestNo as workOrderId,Qty,''1'' as SB from ShoeTestMonth  ');
    SQL.Add('    Where ShoeTestMonth.KCYEAR='''+ayear+'''    ');
    SQL.Add('     and ShoeTestMonth.KCMONTH='''+amonth+'''   ');
    SQL.Add('     and ShoeTestMonth.CKBH=''CBY''  ');
    SQL.Add('  ) AS ShoeTestMonth on ShoeTestMonth.workOrderId=CBYShoetestAll.workOrderId  ');
    SQL.Add('  Left join (  ');
    SQL.Add('    Select CBY_Orders.workOrderId,CBY_Orders.total as Qty, ''2'' as SB From CBY_Orders  ');
    SQL.Add('    Where Convert(varchar,CBY_Orders.StockDate, 111) between '''+formatdatetime('yyyy/MM/dd',sDate)+''' and '''+formatdatetime('yyyy/MM/dd',eDate)+'''  ');
    SQL.Add('  ) AS ShoeTestIn on ShoeTestIn.workOrderId=CBYShoetestAll.workOrderId   ');
    SQL.Add('  Left join (  ');
    SQL.Add('    Select CBY_Orders.workOrderId,CBY_Orders.total as Qty, ''3'' as SB From CBY_Orders  ');
    SQL.Add('    Where Convert(varchar,CBY_Orders.ShipDate, 111) between '''+formatdatetime('yyyy/MM/dd',sDate)+''' and '''+formatdatetime('yyyy/MM/dd',eDate)+'''  ');
    SQL.Add('  ) AS ShoeTestship on ShoeTestship.workOrderId=CBYShoetestAll.workOrderId  ');
    SQL.Add('  Left join CBY_Orders on CBY_Orders.workOrderId=CBYShoetestAll.workOrderId  ');
    SQL.Add('  Left join ShoeTestMonth_Memo on ShoeTestMonth_Memo.testNo=CBYShoetestAll.workOrderId  ');
    SQL.Add('  Where 1=1   ');
    SQL.Add('  ) CBY_Orders Group by CBY_Orders.DDBH)  CBY_Orders_Fin  ');
    SQL.Add('  Union all  ');
    SQL.Add('  Select Outsole_MonthAll.DDBH,Outsole_MonthAll.DDBH as YSBH,DDZL.CQDH as CKBH,DDZL.Pairs,isnull(Outsole_Month.Qty,0) as LastRem, isnull(RK.Qty,0) as RKQty, isnull(LL.Qty,0) as XHQty,NULL as TRQty, Outsole_MonthAll.Qty   ');
    SQL.Add('          ,DDZL.SCRQ,DDZL.Article,DDZL.DDZT, NULL as Memo from (   ');
    SQL.Add('   Select DDBH, sum(Qty) as Qty from (   ');
    SQL.Add('   Select DDBH,Qty,''1'' as SB   ');
    SQL.Add('     From LIY_DD.dbo.OUTSOLE_Month Outsole_Month   ');
    SQL.Add('     Where Outsole_Month.KCYEAR='''+ayear+'''    ');
    SQL.Add('    	and Outsole_Month.KCMONTH='''+amonth+'''   ');
    SQL.Add('   Union all   ');
    SQL.Add('   Select RK.DDBH,sum(RK.Qty) as Qty,''2'' as SB   ');
    SQL.Add('     From LIY_DD.dbo.OUTSOLE_RK RK   ');
    SQL.Add('     Where Convert(varchar,RK.InDate, 111) between '''+formatdatetime('yyyy/MM/dd',sDate)+''' and '''+formatdatetime('yyyy/MM/dd',eDate)+'''   ');
    SQL.Add('     Group by RK.DDBH   ');
    SQL.Add('   Union all    ');
    SQL.Add('     Select LL.DDBH,-1*sum(LL.Qty) as Qty,''3'' as SB   ');
    SQL.Add('     From LIY_DD.dbo.OUTSOLE_LL LL   ');
    SQL.Add('     Where Convert(varchar,LL.LLDate, 111) between '''+formatdatetime('yyyy/MM/dd',sDate)+''' and '''+formatdatetime('yyyy/MM/dd',eDate)+'''   ');
    SQL.Add('     Group by LL.DDBH) Outsole_Month  Group by DDBH) Outsole_MonthAll   ');
    SQL.Add('   Left join (   ');
    SQL.Add('     Select DDBH,Qty,''1'' as SB   ');
    SQL.Add('     From LIY_DD.dbo.OUTSOLE_Month Outsole_Month    ');
    SQL.Add('     Where Outsole_Month.KCYEAR='''+ayear+'''    ');
    SQL.Add('    	and Outsole_Month.KCMONTH='''+amonth+''' ) Outsole_Month on Outsole_Month.DDBH=Outsole_MonthAll.DDBH   ');
    SQL.Add('   Left join (   ');
    SQL.Add('     Select RK.DDBH,sum(RK.Qty) as Qty,''2'' as SB   ');
    SQL.Add('    	From LIY_DD.dbo.OUTSOLE_RK RK    ');
    SQL.Add('    	Where Convert(varchar,RK.InDate, 111) between '''+formatdatetime('yyyy/MM/dd',sDate)+''' and '''+formatdatetime('yyyy/MM/dd',eDate)+'''   ');
    SQL.Add('    	Group by RK.DDBH) RK on RK.DDBH=Outsole_MonthAll.DDBH    ');
    SQL.Add('   Left join (   ');
    SQL.Add('    	Select LL.DDBH,sum(LL.Qty) as Qty,''3'' as SB   ');
    SQL.Add('    	From LIY_DD.dbo.OUTSOLE_LL LL   ');
    SQL.Add('    	Where Convert(varchar,LL.LLDate, 111) between '''+formatdatetime('yyyy/MM/dd',sDate)+''' and '''+formatdatetime('yyyy/MM/dd',eDate)+'''  ');
    SQL.Add('    	Group by LL.DDBH) LL on LL.DDBH=Outsole_MonthAll.DDBH    ');
    SQL.Add('   Left join LIY_DD.dbo.DDZL DDZL on DDZL.DDBH=Outsole_MonthAll.DDBH    ');
    SQL.Add('   where 1=1 and DDZL.CQDH=''VR3'' ) AllRY  ');
    SQL.Add('--================================================================================================  ');
    SQL.Add('  if object_id(''tempdb..#ACCRY'') is not null    ');
    SQL.Add('  begin drop table #ACCRY end    ');
    SQL.Add('  select KC.DDBH           ');
    SQL.Add('      	   ,isnull(KC.LastRem,0) LastQty,isnull(LastCost.Rem_MatCost,0) Last_MatCost,isnull(LastCost.Rem_LaborCost,0)Last_LaborCost,isnull(LastCost.Rem_FacCost,0)Last_FacCost      ');
    SQL.Add('  		   ,isnull(KC.RKQty,0) RKQty,ISNULL(MOC.AE_TCPNVL,0) RK_MatCost, isnull(MOC.U_CP622,0) RK_LaborCost,isnull(MOC.V_CP627,0) RK_FacCost     ');
    SQL.Add('      	   ,isnull(KC.XHQty,0) as CKQty      ');
    SQL.Add('      	   ,round(round((isnull(convert(float,LastCost.Rem_MatCost),0)+isnull(convert(float,MOC.AE_TCPNVL),0))/nullif(isnull(convert(float,KC.LastRem),0)+ISNULL(convert(float,KC.RKQty),0),0)*isnull(convert(float,KC.XHQty),0),2),0)CK_MatCost     ');
    SQL.Add('    		   ,round(round((isnull(convert(float,LastCost.Rem_LaborCost),0)+isnull(convert(float,MOC.U_CP622),0))/nullif(isnull(convert(float,KC.LastRem),0)+ISNULL(convert(float,KC.RKQty),0),0)*isnull(convert(float,KC.XHQty),0),2),0)CK_LaborCost     ');
    SQL.Add('    		   ,round(round((isnull(convert(float,LastCost.Rem_FacCost),0)+isnull(convert(float,MOC.V_CP627),0))/nullif(isnull(convert(float,KC.LastRem),0)+ISNULL(convert(float,KC.RKQty),0),0)*isnull(convert(float,KC.XHQty),0),2),0)CK_FacCost     ');
    SQL.Add('          ,isnull(KC.LastRem,0)+isnull(KC.RKQty,0)-isnull(KC.XHQty,0) as RemQty      ');
    SQL.Add('          ,KC.CKBH     ');
    SQL.Add('  into #ACCRY   ');
    SQL.Add('  from #ACCKC KC     ');
    SQL.Add('  LEFT JOIN (SELECT Total.G_DDBH,AE_TCPNVL + Isnull(Adjust.S_CPPB,0) + Isnull(Adjust_PB.S_CPPB,0) AE_TCPNVL,(Total.U_CP622 + Isnull(Adjust.U_CP622,0)) U_CP622,(Total.V_CP627 + Isnull(Adjust.V_CP627,0)) V_CP627   ');
    SQL.Add('  			      FROM  CW_MatCostMonth_Total  Total   ');
    SQL.Add('  			      Left join CW_MatCostMonth_Total_adjust Adjust on Total.KCYEAR=Adjust.KCYEAR and Total.KCMONTH=Adjust.KCMONTH and Total.G_DDBH=Adjust.DDBH     ');   
    SQL.Add('             left join (');
    SQL.Add('               SELECT AdjustPB.KCYEAR, AdjustPB.KCMONTH, AdjustPB.Factory, TotalM.DDBH,');
    SQL.Add('                      ROUND(ISNULL(AdjustPB.S_CPPB,0) / TotalSum.TotalInQty * ISNULL(TotalM.InQty,0), 0) AS S_CPPB');
    SQL.Add('               FROM CW_MatCostMonth_Total_adjust AdjustPB');
    SQL.Add('               LEFT JOIN CW_MatCostMonth TotalM ON TotalM.KCYEAR = AdjustPB.KCYEAR AND TotalM.KCMONTH = AdjustPB.KCMONTH AND TotalM.CKBH = AdjustPB.Factory');
    SQL.Add('               LEFT JOIN (SELECT KCYEAR, KCMONTH, CKBH AS Factory, SUM(ISNULL(InQty,0)) AS TotalInQty');
    SQL.Add('                          FROM CW_MatCostMonth');
    SQL.Add('                          GROUP BY KCYEAR, KCMONTH, CKBH');
    SQL.Add('                          UNION ALL');
    SQL.Add('                          SELECT CW_MatCostMonth.KCYEAR, CW_MatCostMonth.KCMONTH, CostF.Factory , SUM(ISNULL(InQty,0)) AS TotalInQty');
    SQL.Add('                          FROM CW_MatCostMonth');
    SQL.Add('                          left join (select KCYEAR, KCMONTH, CKBH, DDBH, Case When left(DDBH,3) <> ''CBY'' and SUBSTRING(DDBH,4,1)=''V'' then ''A-KT'' ');
    SQL.Add('                                            When left(DDBH,3) =''CBY'' and SUBSTRING(DDBH,4,1)=''V'' then ''A-KTCBY''');
    SQL.Add('                                            When DDBH in ( Select top 1 DDBH From LIY_DD.dbo.OUTSOLE_RK Where DDBH=Cost.DDBH) then ''A-DE'' else ''A'' end as Factory');
    SQL.Add('                                     from CW_MatCostMonth Cost) CostF on CostF.KCYEAR=CW_MatCostMonth.KCYEAR and CostF.KCMONTH=CW_MatCostMonth.KCMONTH');
    SQL.Add('                                                               and CostF.CKBH=CW_MatCostMonth.CKBH and CostF.DDBH=CW_MatCostMonth.DDBH');
    SQL.Add('                                     WHERE CW_MatCostMonth.CKBH=''VA12''');
    SQL.Add('                                     GROUP BY CW_MatCostMonth.KCYEAR, CW_MatCostMonth.KCMONTH, Factory');
    SQL.Add('                                    ) TotalSum ON TotalSum.KCYEAR = AdjustPB.KCYEAR AND TotalSum.KCMONTH = AdjustPB.KCMONTH AND TotalSum.Factory = AdjustPB.Factory');
    SQL.Add('                         ) Adjust_PB on Total.KCYEAR=Adjust_PB.KCYEAR and Total.KCMONTH=Adjust_PB.KCMONTH and Total.G_DDBH=Adjust_PB.DDBH');
    SQL.Add('             WHERE Total.KCYEAR='''+cbx_YearACC.Text+''' AND Total.KCMONTH='''+cbx_MonthACC.Text+''') MOC ON MOC.G_DDBH=KC.DDBH  ');
    SQL.Add('  LEFT JOIN ( SELECT DDBH,RemQty,Rem_MatCost,Rem_LaborCost,Rem_FacCost  ');
    SQL.Add('  			       FROM CWDDZL  ');
    SQL.Add('  			       WHERE KCYEAR='''+ayear+''' and KCMONTH='''+amonth+''' ) LastCost on LastCost.DDBH=KC.DDBH  ');
    SQL.Add('  Where 1=1  ');
    SQL.Add('--================================================================================================  ');
    SQL.Add('  INSERT INTO CWDDZL (KCYEAR,KCMONTH,CKBH,DDBH,LastQty,Last_MatCost,Last_LaborCost,Last_Faccost,RKQty,RK_MatCost,RK_LaborCost,RK_FacCost,CKQty,CK_MatCost,CK_LaborCost,CK_FacCost    ');
    SQL.Add('                      ,RemQty,Rem_MatCost,Rem_LaborCost,Rem_FacCost,USERID,USERDATE,YN)      ');
    SQL.Add('  SELECT '''+cbx_YearACC.Text+''' KCYEAR,'''+cbx_MonthACC.Text+''' KCMONTH,CKBH,DDBH    ');
    SQL.Add('         ,ISNULL(LastQty,0)LastQty,ISNULL(Last_MatCost,0)Last_MatCost,ISNULL(Last_LaborCost,0)Last_LaborCost,ISNULL(Last_FacCost,0)Last_FacCost    ');
    SQL.Add('         ,ISNULL(RKQty,0)RKQty,ISNULL(RK_MatCost,0)RK_MatCost,ISNULL(RK_LaborCost,0)RK_LaborCost,ISNULL(RK_FacCost,0)RK_FacCost      ');
    SQL.Add('         ,ISNULL(CKQty,0)CKQty,ISNULL(CK_MatCost,0)CK_MatCost,ISNULL(CK_LaborCost,0)CK_LaborCost,ISNULL(CK_FacCost,0)CK_FacCost      ');
    SQL.Add('       	,ISNULL(RemQty,0)RemQty,ISNULL(Last_MatCost,0)+ISNULL(RK_MatCost,0)-ISNULL(CK_MatCost,0) Rem_MatCost  ');
    SQL.Add('  		    ,ISNULL(Last_LaborCost,0)+ISNULL(RK_LaborCost,0)-ISNULL(CK_LaborCost,0) Rem_LaborCost  ');
    SQL.Add('  		    ,ISNULL(Last_FacCost,0)+ISNULL(RK_FacCost,0)-ISNULL(CK_FacCost,0) Rem_FacCost     ');
    SQL.Add('   	     ,'''+main.Edit1.Text+''' USERID,GETDATE() USERDATE,''1'' YN     ');
    SQL.Add('  FROM #ACCRY DD     ');
    //funcobj.WriteErrorLog(sql.Text);
    ExecSQL();
  end;
  showmessage('Finish');
  btn_QueryACC.Click;
end;

procedure TStockShoeMonthCost.Qry_StockACCAfterOpen(
  DataSet: TDataSet);
begin
  with Qry_Temp do
  begin
    active:=false;
    sql.Clear;
    sql.Add('Select top 1 YN from CWDDZL');
    sql.Add('where KCYEAR='''+cbx_YearACC.Text+''' and KCMONTH='''+cbx_MonthACC.Text+'''  ');
    active:=true;
  end;
  if Qry_Temp.RecordCount=0 then
  begin
    if messagedlg('No data '+cbx_YearACC.Text+'/'+cbx_MonthACC.Text+'. Do you want to calculate it ?',mtCustom, [mbYes,mbNo], 0)=mrYes then
    begin
      btn_MonthlyACC.Click;
    end;
  end else begin
    if Qry_Temp.FieldByName('YN').AsString='5' then
    begin
      Label5.Visible:=True;
    end else begin
      Label5.Visible:=False;
    end;
  end;
end;

procedure TStockShoeMonthCost.btn_ExcelACCClick(Sender: TObject);
begin
  if  Messagedlg(Pchar('Format Export?'),mtInformation,[mbNo,mbYes],0)=mrYes then
  begin
     FormatExcelACC();
  end else
  begin
    DefaultExcelACC();
  end;
end;

procedure TStockShoeMonthCost.FormatExcelACC();
var eclApp,WorkBook:olevariant;
    i,j,k: integer;
begin
  if Qry_StockACC.Active then
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
      WorkBook:=eclApp.workbooks.Add;
      eclApp.WorkSheets[1].Activate;
      //Header
      eclApp.Cells(2,1):='BAO CAO NHAP XUAT TON THANH PHAM';
      eclApp.Cells(3,10):='Thang '+Qry_StockACC.FieldByName('KCMONTH').AsString+'/'+Qry_StockACC.FieldByName('KCYEAR').AsString+' ';
      eclApp.Cells(4,1):= Qry_StockACC.FieldByName('KCYEAR').AsString+''+Qry_StockACC.FieldByName('KCMONTH').AsString+'る Θ珇--畐计ぇ厨';
      eclApp.Cells(7,1):='CHI LENH DUNG';
      eclApp.Cells(8,1):='タ絋 RY';
      //
      eclApp.Cells(7,2):='TON DAU KY 戳畐';
      eclApp.Cells(8,2):='SL计秖';
      eclApp.Cells(8,3):='T.TIEN肂';
      eclApp.Cells(8,4):='VAT TU戈';
      eclApp.Cells(8,5):='PHI 622禣ノ';
      eclApp.Cells(8,6):='PHI 627禣ノ';
      //
      eclApp.Cells(7,7):='NHAP ';
      eclApp.Cells(8,7):='SL计秖';
      eclApp.Cells(8,8):='T.TIEN肂';
      eclApp.Cells(8,9):='VAT TU戈';
      eclApp.Cells(8,10):='PHI 622禣ノ';
      eclApp.Cells(8,11):='PHI 627禣ノ';
      //
      eclApp.Cells(7,12):='XUAT ';
      eclApp.Cells(8,12):='SL计秖';
      eclApp.Cells(8,13):='T.TIEN肂';
      eclApp.Cells(8,14):='VAT TU戈';
      eclApp.Cells(8,15):='PHI 622禣ノ';
      eclApp.Cells(8,16):='PHI 627禣ノ';
      //
      eclApp.Cells(7,17):='TON CUOI KY 戳ソ畐:';
      eclApp.Cells(8,17):='SL计秖';
      eclApp.Cells(8,18):='T.TIEN肂';
      eclApp.Cells(8,19):='VAT TU戈';
      eclApp.Cells(8,20):='PHI 622禣ノ';
      eclApp.Cells(8,21):='PHI 627禣ノ';
      eclApp.Cells(8,22):='XUONG';
      //
      eclApp.Range[eclApp.Cells[2,1],eclApp.Cells[2,21]].merge;
      eclApp.Range[eclApp.Cells[3,10],eclApp.Cells[3,12]].merge;
      eclApp.Range[eclApp.Cells[4,1],eclApp.Cells[4,21]].merge;
      eclApp.Range[eclApp.Cells[7,2],eclApp.Cells[7,6]].merge;
      eclApp.Range[eclApp.Cells[7,7],eclApp.Cells[7,11]].merge;
      eclApp.Range[eclApp.Cells[7,12],eclApp.Cells[7,16]].merge;
      eclApp.Range[eclApp.Cells[7,17],eclApp.Cells[7,21]].merge;
      eclApp.Range[eclApp.Cells[7,22],eclApp.Cells[8,22]].merge;
      eclApp.Range[eclApp.Cells[1,1],eclApp.Cells[8,22]].font.Bold:=true;
      eclApp.ActiveSheet.Rows[2].font.size:='16';
      eclApp.Range[eclApp.Cells[1,1],eclApp.Cells[8,21]].Rows.HorizontalAlignment := $FFFFEFF4;
      eclapp.ActiveSheet.Columns[1].HorizontalAlignment := $FFFFEFF4;
      // Load Data
      Qry_StockACC.First;
      j:=9;
      while not Qry_StockACC.Eof   do
      begin
        eclApp.ActiveSheet.Rows[j].Font.Size:=10;
        for i:=2 to Qry_StockACC.FieldCount-1 do
        begin
          eclApp.Cells(j,i-1):=Qry_StockACC.Fields[i].Value;
          if pos('Qty',Qry_StockACC.Fields[i].FieldName)>1 then
            eclApp.Cells[j,i-1].NumberFormat:='#,##0.00'
          else
          if Qry_StockACC.Fields[i].FieldName<>'DDBH' then
            eclApp.Cells[j,i-1].NumberFormat:= '_(* #,##0_);_(* (#,##0);_(* "-"??_);_(@_)';
          eclapp.ActiveSheet.Columns[i-1].ColumnWidth := 15;
        end;
        Qry_StockACC.Next;
        inc(j);
      end;
      eclApp.Cells(j,1):= 'TONG CONG TOTAL';
      eclApp.Cells[j,2].Formula:='=SUM(B9:B'+inttostr(j-1)+')';
      eclApp.Cells[j,3].Formula:='=SUM(C9:C'+inttostr(j-1)+')';
      eclApp.Cells[j,4].Formula:='=SUM(D9:D'+inttostr(j-1)+')';
      eclApp.Cells[j,5].Formula:='=SUM(E9:E'+inttostr(j-1)+')';
      eclApp.Cells[j,6].Formula:='=SUM(F9:F'+inttostr(j-1)+')';
      eclApp.Cells[j,7].Formula:='=SUM(G9:G'+inttostr(j-1)+')';
      eclApp.Cells[j,8].Formula:='=SUM(H9:H'+inttostr(j-1)+')';
      eclApp.Cells[j,9].Formula:='=SUM(I9:I'+inttostr(j-1)+')';
      eclApp.Cells[j,10].Formula:='=SUM(J9:J'+inttostr(j-1)+')';
      eclApp.Cells[j,11].Formula:='=SUM(K9:K'+inttostr(j-1)+')';
      eclApp.Cells[j,12].Formula:='=SUM(L9:L'+inttostr(j-1)+')';
      eclApp.Cells[j,13].Formula:='=SUM(M9:M'+inttostr(j-1)+')';
      eclApp.Cells[j,14].Formula:='=SUM(N9:N'+inttostr(j-1)+')';
      eclApp.Cells[j,15].Formula:='=SUM(O9:O'+inttostr(j-1)+')';
      eclApp.Cells[j,16].Formula:='=SUM(P9:P'+inttostr(j-1)+')';
      eclApp.Cells[j,17].Formula:='=SUM(Q9:Q'+inttostr(j-1)+')';
      eclApp.Cells[j,18].Formula:='=SUM(R9:R'+inttostr(j-1)+')';
      eclApp.Cells[j,19].Formula:='=SUM(S9:S'+inttostr(j-1)+')';
      eclApp.Cells[j,20].Formula:='=SUM(T9:T'+inttostr(j-1)+')';
      eclApp.Cells[j,21].Formula:='=SUM(U9:U'+inttostr(j-1)+')';
      eclApp.ActiveSheet.Rows[j].Font.Size:=10;
      eclApp.Range[eclApp.Cells[j,1],eclApp.Cells[j,21]].font.Bold:=true;
      eclApp.Range[eclApp.Cells[j,2],eclApp.Cells[j,2]].NumberFormat:= '#,##0.00';
      eclApp.Range[eclApp.Cells[j,3],eclApp.Cells[j,6]].NumberFormat:= '#,##0';
      eclApp.Range[eclApp.Cells[j,7],eclApp.Cells[j,7]].NumberFormat:= '#,##0.00';
      eclApp.Range[eclApp.Cells[j,8],eclApp.Cells[j,11]].NumberFormat:= '#,##0';
      eclApp.Range[eclApp.Cells[j,12],eclApp.Cells[j,12]].NumberFormat:= '#,##0.00';
      eclApp.Range[eclApp.Cells[j,13],eclApp.Cells[j,16]].NumberFormat:= '#,##0';
      eclApp.Range[eclApp.Cells[j,17],eclApp.Cells[j,17]].NumberFormat:= '#,##0.00';
      eclApp.Range[eclApp.Cells[j,18],eclApp.Cells[j,21]].NumberFormat:= '#,##0';
      eclApp.Range[eclApp.Cells[1,1],eclApp.Cells[j,22]].font.Name:='Times New Roman';
      //  add outline
      for k:=1 to 4 do
      begin
        eclApp.range[eclApp.cells[7,1],eclApp.cells[j,i-2]].borders[k].linestyle:=1;
      end;
      showmessage('Succeed.');
      eclApp.Visible:=True;
      except
        on   F:Exception   do
        showmessage(F.Message);
    end;
  end;
end;

procedure TStockShoeMonthCost.DefaultExcelACC();
var
  eclApp,WorkBook:olevariant;
  i,j:integer;
begin
  if Qry_StockACC.Active then
  begin
    if Qry_StockACC.recordcount=0 then
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
    for i:=0 to DBG_StockACC.Columns.Count-1 do
    begin
      eclApp.Cells(1,i+2):=DBG_StockACC.Columns[i].Title.Caption;
    end;
    Qry_StockACC.First;
    j:=2;
    while   not  Qry_StockACC.Eof   do
    begin
      eclApp.Cells(j,1):=j-1;
      for i:=0 to DBG_StockACC.Columns.Count-1 do
      begin
        eclApp.Cells(j,i+2):=DBG_StockACC.Fields[i].Value;
      end;
      Qry_StockACC.Next;
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

procedure TStockShoeMonthCost.Button3Click(Sender: TObject);
begin
  if  Messagedlg(Pchar('Format Export?'),mtInformation,[mbNo,mbYes],0)=mrYes then
  begin
     FormatExcelMon();
  end else
  begin
    DefaultExcelMon();
  end;
end;

procedure TStockShoeMonthCost.FormatExcelMon();
var eclApp,WorkBook:olevariant;
    i,j,k: integer;
begin
  if Qry_MonthStock.Active then
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
      WorkBook:=eclApp.workbooks.Add;
      eclApp.WorkSheets[1].Activate;

      //Header
      eclApp.Cells(2,1):='BAO CAO NHAP XUAT TON THANH PHAM';
      eclApp.Cells(3,11):='Thang '+Qry_MonthStock.FieldByName('KCMONTH').AsString+'/'+Qry_MonthStock.FieldByName('KCYEAR').AsString+' ';
      eclApp.Cells(4,1):= Qry_MonthStock.FieldByName('KCYEAR').AsString+''+Qry_MonthStock.FieldByName('KCMONTH').AsString+'る Θ珇--畐计ぇ厨';
      eclApp.Cells(6,1):='CHI LENH DUNG';
      eclApp.Cells(7,1):='タ絋 RY';
      //
      eclApp.Cells(6,2):='TON CK 戳ソ畐';
      eclApp.Cells(7,2):='SL 计秖';
      eclApp.Cells(7,3):='T.TIEN 肂';
      eclApp.Cells(7,4):='VAT TU 戈';
      eclApp.Cells(7,5):='PHI 622 禣ノ';
      eclApp.Cells(7,6):='PHI 627 禣ノ';
      eclApp.Cells(6,7):='XUONG 紅';
      //
      eclApp.Cells(6,8):='30 ぱず';
      eclApp.Cells(7,8):='SL 计秖';
      eclApp.Cells(7,9):='T.TIEN 肂';
      //
      eclApp.Cells(6,10):='30~60 ぱ';
      eclApp.Cells(7,10):='SL 计秖';
      eclApp.Cells(7,11):='T.TIEN 肂';
      //
      eclApp.Cells(6,12):='61~90 ぱ';
      eclApp.Cells(7,12):='SL 计秖';
      eclApp.Cells(7,13):='T.TIEN 肂';
      //
      eclApp.Cells(6,14):='91~120 ぱ';
      eclApp.Cells(7,14):='SL 计秖';
      eclApp.Cells(7,15):='T.TIEN 肂';
      //
      eclApp.Cells(6,16):='121~150 ぱ';
      eclApp.Cells(7,16):='SL 计秖';
      eclApp.Cells(7,17):='T.TIEN 肂';
      //
      eclApp.Cells(6,18):='151~180 ぱ';
      eclApp.Cells(7,18):='SL 计秖';
      eclApp.Cells(7,19):='T.TIEN 肂';
      //
      eclApp.Cells(6,20):='181~360 ぱ';
      eclApp.Cells(7,20):='SL 计秖';
      eclApp.Cells(7,21):='T.TIEN 肂';
      //
      eclApp.Cells(6,22):='361 ぱ';
      eclApp.Cells(7,22):='SL 计秖';
      eclApp.Cells(7,23):='T.TIEN 肂';
      //
      eclApp.Range[eclApp.Cells[2,1],eclApp.Cells[2,23]].merge;
      eclApp.Range[eclApp.Cells[3,11],eclApp.Cells[3,13]].merge;
      eclApp.Range[eclApp.Cells[4,1],eclApp.Cells[4,23]].merge;
      eclApp.Range[eclApp.Cells[6,2],eclApp.Cells[6,6]].merge;
      eclApp.Range[eclApp.Cells[6,8],eclApp.Cells[6,9]].merge;
      eclApp.Range[eclApp.Cells[6,10],eclApp.Cells[6,11]].merge;
      eclApp.Range[eclApp.Cells[6,12],eclApp.Cells[6,13]].merge;
      eclApp.Range[eclApp.Cells[6,14],eclApp.Cells[6,15]].merge;
      eclApp.Range[eclApp.Cells[6,16],eclApp.Cells[6,17]].merge;
      eclApp.Range[eclApp.Cells[6,18],eclApp.Cells[6,19]].merge;
      eclApp.Range[eclApp.Cells[6,20],eclApp.Cells[6,21]].merge;
      eclApp.Range[eclApp.Cells[6,22],eclApp.Cells[6,23]].merge;
      eclApp.Range[eclApp.Cells[6,7],eclApp.Cells[7,7]].merge;

      eclApp.Range[eclApp.Cells[1,1],eclApp.Cells[7,23]].font.Bold:=true;
      eclApp.ActiveSheet.Rows[2].font.size:='16';
      eclApp.Range[eclApp.Cells[1,1],eclApp.Cells[7,23]].Rows.HorizontalAlignment := $FFFFEFF4;
      eclapp.ActiveSheet.Columns[1].HorizontalAlignment := $FFFFEFF4;
      // Load Data
      Qry_MonthStock.First;
      j:=8;
      while not Qry_MonthStock.Eof   do
      begin
        eclApp.ActiveSheet.Rows[j].Font.Size:=10;
        for i:=2 to Qry_MonthStock.FieldCount-1 do
        begin
          eclApp.Cells(j,i-1):=Qry_MonthStock.Fields[i].Value;
          if (pos('Qty',Qry_MonthStock.Fields[i].FieldName)>1) then
            eclApp.Cells[j,i-1].NumberFormat:='#,##0.00'
          else
          if (Qry_MonthStock.Fields[i].FieldName<>'DDBH') and (Qry_MonthStock.Fields[i].FieldName<>'Xuong') then
            eclApp.Cells[j,i-1].NumberFormat:= '_(* #,##0_);_(* (#,##0);_(* "-"??_);_(@_)';
          eclapp.ActiveSheet.Columns[i-1].ColumnWidth := 15;
        end;
        Qry_MonthStock.Next;
        inc(j);
      end;
      eclApp.Cells(j,1):= 'TONG CONG TOTAL';
      eclApp.Cells[j,2].Formula:='=SUM(B8:B'+inttostr(j-1)+')';
      eclApp.Cells[j,3].Formula:='=SUM(C8:C'+inttostr(j-1)+')';
      eclApp.Cells[j,4].Formula:='=SUM(D8:D'+inttostr(j-1)+')';
      eclApp.Cells[j,5].Formula:='=SUM(E8:E'+inttostr(j-1)+')';
      eclApp.Cells[j,6].Formula:='=SUM(F8:F'+inttostr(j-1)+')';
      eclApp.Cells[j,8].Formula:='=SUM(H8:H'+inttostr(j-1)+')';
      eclApp.Cells[j,9].Formula:='=SUM(I8:I'+inttostr(j-1)+')';
      eclApp.Cells[j,10].Formula:='=SUM(J8:J'+inttostr(j-1)+')';
      eclApp.Cells[j,11].Formula:='=SUM(K8:K'+inttostr(j-1)+')';
      eclApp.Cells[j,12].Formula:='=SUM(L8:L'+inttostr(j-1)+')';
      eclApp.Cells[j,13].Formula:='=SUM(M8:M'+inttostr(j-1)+')';
      eclApp.Cells[j,14].Formula:='=SUM(N8:N'+inttostr(j-1)+')';
      eclApp.Cells[j,15].Formula:='=SUM(O8:O'+inttostr(j-1)+')';
      eclApp.Cells[j,16].Formula:='=SUM(P8:P'+inttostr(j-1)+')';
      eclApp.Cells[j,17].Formula:='=SUM(Q8:Q'+inttostr(j-1)+')';
      eclApp.Cells[j,18].Formula:='=SUM(R8:R'+inttostr(j-1)+')';
      eclApp.Cells[j,19].Formula:='=SUM(S8:S'+inttostr(j-1)+')';
      eclApp.Cells[j,20].Formula:='=SUM(T8:T'+inttostr(j-1)+')';
      eclApp.Cells[j,21].Formula:='=SUM(U8:U'+inttostr(j-1)+')';
      eclApp.Cells[j,22].Formula:='=SUM(V8:V'+inttostr(j-1)+')';
      eclApp.Cells[j,23].Formula:='=SUM(W8:W'+inttostr(j-1)+')';
      eclApp.ActiveSheet.Rows[j].Font.Size:=10;
      eclApp.Range[eclApp.Cells[j,1],eclApp.Cells[j,23]].font.Bold:=true;
      eclApp.Range[eclApp.Cells[j,2],eclApp.Cells[j,2]].NumberFormat:= '#,##0.00';
      eclApp.Range[eclApp.Cells[j,3],eclApp.Cells[j,6]].NumberFormat:= '#,##0';
      eclApp.Range[eclApp.Cells[j,8],eclApp.Cells[j,8]].NumberFormat:= '#,##0.00';
      eclApp.Range[eclApp.Cells[j,9],eclApp.Cells[j,9]].NumberFormat:= '#,##0';
      eclApp.Range[eclApp.Cells[j,10],eclApp.Cells[j,10]].NumberFormat:= '#,##0.00';
      eclApp.Range[eclApp.Cells[j,11],eclApp.Cells[j,11]].NumberFormat:= '#,##0';
      eclApp.Range[eclApp.Cells[j,12],eclApp.Cells[j,12]].NumberFormat:= '#,##0.00';
      eclApp.Range[eclApp.Cells[j,13],eclApp.Cells[j,13]].NumberFormat:= '#,##0';
      eclApp.Range[eclApp.Cells[j,14],eclApp.Cells[j,14]].NumberFormat:= '#,##0.00';
      eclApp.Range[eclApp.Cells[j,15],eclApp.Cells[j,15]].NumberFormat:= '#,##0';
      eclApp.Range[eclApp.Cells[j,16],eclApp.Cells[j,16]].NumberFormat:= '#,##0.00';
      eclApp.Range[eclApp.Cells[j,17],eclApp.Cells[j,17]].NumberFormat:= '#,##0';
      eclApp.Range[eclApp.Cells[j,18],eclApp.Cells[j,18]].NumberFormat:= '#,##0.00';
      eclApp.Range[eclApp.Cells[j,19],eclApp.Cells[j,19]].NumberFormat:= '#,##0';
      eclApp.Range[eclApp.Cells[j,20],eclApp.Cells[j,20]].NumberFormat:= '#,##0.00';
      eclApp.Range[eclApp.Cells[j,21],eclApp.Cells[j,21]].NumberFormat:= '#,##0';
      eclApp.Range[eclApp.Cells[j,22],eclApp.Cells[j,22]].NumberFormat:= '#,##0.00';
      eclApp.Range[eclApp.Cells[j,23],eclApp.Cells[j,23]].NumberFormat:= '#,##0';
      eclApp.Range[eclApp.Cells[1,1],eclApp.Cells[j,23]].font.Name:='Times New Roman';
      //  add outline
      for k:=1 to 4 do
      begin
        eclApp.range[eclApp.cells[6,1],eclApp.cells[j,i-2]].borders[k].linestyle:=1;
      end;
      showmessage('Succeed.');
      eclApp.Visible:=True;
      except
        on   F:Exception   do
        showmessage(F.Message);
    end;
  end;
end;

procedure TStockShoeMonthCost.DefaultExcelMon();
var
  eclApp,WorkBook:olevariant;
  i,j:integer;
begin

  if Qry_MonthStock.Active then
  begin
    if Qry_MonthStock.recordcount=0 then
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
    for i:=0 to DBG_MonthStock.Columns.Count-1 do
    begin
      eclApp.Cells(1,i+2):=DBG_MonthStock.Columns[i].Title.Caption;
    end;
    Qry_MonthStock.First;
    j:=2;
    while   not  Qry_MonthStock.Eof   do
    begin
      eclApp.Cells(j,1):=j-1;
      for i:=0 to DBG_MonthStock.Columns.Count-1 do
      begin
        eclApp.Cells(j,i+2):=DBG_MonthStock.Fields[i].Value;
      end;
      Qry_MonthStock.Next;
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

procedure TStockShoeMonthCost.btn_PrintACCClick(Sender: TObject);
begin
  StockShoeMonthCost_Print:=TStockShoeMonthCost_Print.Create(self);
  StockShoeMonthCost_Print.Quickrep1.prepare;
  StockShoeMonthCost_Print.PageN.caption:=inttostr(StockShoeMonthCost_Print.quickrep1.QRPrinter.pagecount);
  StockShoeMonthCost_Print.Quickrep1.preview;
  StockShoeMonthCost_Print.Free;
end;

procedure TStockShoeMonthCost.Button1Click(Sender: TObject);
begin
  with Qry_Temp do
  begin
    Active := false;
    SQL.Clear;
    SQL.Add('UPDATE CWDDZL ');
    SQL.Add('SET YN=''5'' ');
    SQL.Add('WHERE KCYEAR = ''' + cbx_YearACC.Text + ''' AND KCMONTH = ''' + cbx_MonthACC.Text + ''' ');
    ExecSQL;
  end;
  ShowMessage('Da khoa !');
  btn_QueryACC.Click;
end;

procedure TStockShoeMonthCost.Button4Click(Sender: TObject);
begin   
  with Qry_Temp do
  begin
    Active := false;
    SQL.Clear;
    SQL.Add('UPDATE CWDDZL ');
    SQL.Add('SET YN=''1'' ');
    SQL.Add('WHERE KCYEAR = ''' + cbx_YearACC.Text + ''' AND KCMONTH = ''' + cbx_MonthACC.Text + ''' ');
    ExecSQL;
  end;
  ShowMessage('Da mo khoa !');
  btn_QueryACC.Click;
end;

end.
