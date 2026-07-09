unit DetailRemQty01T1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DB, DBTables, GridsEh, DBGridEh, StdCtrls, ExtCtrls,comobj,
  ComCtrls,dateutils, Menus;

type
  TDetailRemQty01T = class(TForm)
    Panel1: TPanel;
    Label1: TLabel;
    Edit1: TEdit;
    Label2: TLabel;
    Edit2: TEdit;
    Edit3: TEdit;
    Edit5: TEdit;
    Edit6: TEdit;
    Button1: TButton;
    DBGridEh1: TDBGridEh;
    Query1: TQuery;
    DataSource1: TDataSource;
    Button2: TButton;
    Label4: TLabel;
    Edit4: TEdit;
    Query1CKBH: TStringField;
    Query1RKNO: TStringField;
    Query1CLBH: TStringField;
    Query1YWPM: TStringField;
    Query1DWBH: TStringField;
    Query1CGBH: TStringField;
    Query1Qty: TCurrencyField;
    Query1Price: TFloatField;
    Query1HGLB: TStringField;
    Query1USERDATE: TDateTimeField;
    Query1CFMDATE: TDateTimeField;
    Query1ZSBH: TStringField;
    Query1zsywjc: TStringField;
    Label3: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    Label7: TLabel;
    Edit7: TEdit;
    Label8: TLabel;
    Edit8: TEdit;
    Label9: TLabel;
    Edit9: TEdit;
    Label10: TLabel;
    Edit10: TEdit;
    Edit11: TEdit;
    lblFlag: TLabel;
    PopupMenu1: TPopupMenu;
    Excel1: TMenuItem;
    Query1Declaretion: TStringField;
    procedure Button1Click(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure Button2Click(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure Excel1Click(Sender: TObject);

  private

    { Private declarations }
  public
    { Public declarations }
  end;

var
  DetailRemQty01T: TDetailRemQty01T;

implementation

uses AccMonthStock1,Fununit;

{$R *.dfm}
function   DaysOfItsMonth(ADate:   TDateTime):   Word;
var
   Y,M,D:Word;
begin
    DecodeDate(ADate,Y,M,D);
    ADate:=EncodeDate(Y,M,1);
    Result:=Trunc(IncMonth(ADate,1)-ADate);
end;

procedure TDetailRemQty01T.Button1Click(Sender: TObject);
var sDate,eDate:Tdate;
begin
  EDate:=EncodeDate(strtoint(Edit7.Text), strtoint(Edit8.Text), 1);
  EDate:=EncodeDate(strtoint(Edit7.Text), strtoint(Edit8.Text), DaysOfItsMonth(EDate));
  With Query1 do
  begin 
    Active:=false;
    SQL.Clear;
    SQL.Add('  DECLARE @Year int = '+Edit7.Text+'  ');
    SQL.Add('  DECLARE @Month int = '+Edit8.Text+' ');

    SQL.Add('  DECLARE @Qty money;  ');
    SQL.Add('  DECLARE @CKBH VARCHAR(4);  ');
    SQL.Add('  DECLARE @CLBH VARCHAR(15);  ');
    SQL.Add('  DECLARE @HGLB VARCHAR(5);  ');
    SQL.Add('  DECLARE @Price float;  ');
    //2025-08-20 them xet KCPKLL
    SQL.Add('  DECLARE @PKNO_Old VARCHAR(15);');
    SQL.Add('  DECLARE @CLBH_Old VARCHAR(15);');
    SQL.Add('  DECLARE @LLQty money;');
    SQL.Add('  DECLARE @RemainingLLQty money;  -- Bien theo doi so luong LL con lai cho tung PKNO/CLBH');
    SQL.Add('  SET @PKNO_Old='''';');
    SQL.Add('  SET @CLBH_Old='''';');
    SQL.Add('  SET @LLQty=0;');
    SQL.Add('  SET @RemainingLLQty=0;');

    SQL.Add('  IF OBJECT_ID(''tempdb..#Temp'') IS NOT NULL        ');
    SQL.Add('  begin drop table #Temp end    ');
    if lblFlag.Caption='1' then
    begin
      SQL.Add('  -- Tao bang tam de luu ket qua tu CWCLZL_HG_Mon  ');
      SQL.Add('  ;WITH CWCLZL_HG_Mon_S AS (  ');
      SQL.Add('      select CWCLZL.*,convert(float,CWCLZL.RemACC)/CWCLZL.RemQty as Price  ');
      SQL.Add('  	from CWCLZL_HG_Mon CWCLZL  ');
      SQL.Add('  	where KCYEAR=@Year and KCMONTH=@Month  ');
      SQL.Add('  	and CKBH='''+Edit9.Text+''' and CLBH='''+Edit10.Text+''' and HGLB='''+Edit11.Text+'''  ');
      SQL.Add('  )  ');
    end;
    if lblFlag.Caption='All' then
    begin
      SQL.Add('  -- Tao bang tam de luu ket qua tu CWCLZL_HG_Mon  ');
      SQL.Add('  ;WITH CWCLZL_HG_Mon_S AS (  ');
      SQL.Add('      select CWCLZL.*,convert(float,CWCLZL.RemACC)/CWCLZL.RemQty as Price  ');
      SQL.Add('  	from CWCLZL_HG_Mon CWCLZL  ');
      SQL.Add('  	where KCYEAR=@Year and KCMONTH=@Month  ');
      SQL.Add('  	and CKBH='''+Edit9.Text+''' ');
      SQL.Add('  )  ');
    end;

    SQL.Add('  SELECT * INTO #Temp FROM CWCLZL_HG_Mon_S  ');

    SQL.Add('  IF OBJECT_ID(''tempdb..#TempKCRKS'') IS NOT NULL        ');
    SQL.Add('  begin drop table #TempKCRKS end    ');

    SQL.Add('  -- Tao bang tam de luu ket qua tu KCRKS  ');
    SQL.Add('  Select KCRK.CKBH,KCRK.RKNO,KCRKS.CLBH,KCRK.HGLB,KCRKS.CGBH,KCRKS.Qty,KCRK.USERDATE,KCRK.CFMDATE,KCPK.Declaretion,KCRK.ZSBH,ZSZL.zsywjc,cast(0 as float) as Price  ');
    SQL.Add('  INTO #TempKCRKS  ');
    //SQL.Add('  from KCRKS left join KCRK  ');
    SQL.Add('  From (select * from kcrks union all select * from KCRKS_2014) KCRKS ');
    SQL.Add('  left join (select * from kcrk union all select * from KCRK_2014) KCRK ');
    SQL.Add('  on KCRKS.RKNO=KCRK.RKNO  ');
    SQL.Add('  left join KCPK on KCRK.RKNO=KCPK.PKNO  ');
    SQL.Add('  left join zszl on KCRK.ZSBH=zszl.zsdh  ');
    SQL.Add('  WHERE 1 = 2  ');

    SQL.Add('  -- Khai bao con tro de duyet ket qua tu #Temp  ');
    SQL.Add('  DECLARE cursor_HG CURSOR FOR   ');
    //SQL.Add('      SELECT CKBH,CLBH,HGLB,RemQty01T,Price  ');
    SQL.Add('      SELECT CKBH,CLBH,HGLB,'+AccMonthStock.RemQty+',Price  ');
    SQL.Add('      FROM #Temp  ');

    SQL.Add('  OPEN cursor_HG  ');
    SQL.Add('  FETCH NEXT FROM cursor_HG INTO @CKBH,@CLBH,@HGLB,@Qty,@Price  ');

    SQL.Add('  WHILE @@FETCH_STATUS = 0  ');
    SQL.Add('  BEGIN  ');                          
    //2025-08-20 them xet KCPKLL
    SQL.Add('     -- Reset cac bien theo doi cho moi san pham ton kho');
    SQL.Add('     SET @PKNO_Old='''';');
    SQL.Add('     SET @CLBH_Old=@CLBH;');
    SQL.Add('     SET @RemainingLLQty=0;');   
    SQL.Add('     SET @LLQty=0;');
    
    SQL.Add('          -- Khai bao con tro de duyet ket qua tu KCRKS  ');
    SQL.Add('          DECLARE @CKBH_RK varchar(4),@RKNO_RK VARCHAR(11), @CLBH_RK VARCHAR(15), @HGLB_RK VARCHAR(4), @CGBH_RK VARCHAR(15), @Qty_RK money, @USERDate_RK SMALLDATETIME, @CFMDate_RK SMALLDATETIME,@Declaretion_RK varchar(50)');
    SQL.Add('                  ,@ZSBH_RK varchar(10),@ZSYWJC_RK varchar(20),@Price_RK money  ');

    SQL.Add('          DECLARE cursor_kcrks CURSOR FOR   ');

    SQL.Add('  		     Select KCRK.CKBH,KCRK.RKNO,KCRKS.CLBH,KCRK.HGLB,KCRKS.CGBH,KCRKS.Qty,KCRK.USERDATE,KCRK.CFMDATE,KCPK.Declaretion,KCRK.ZSBH,ZSZL.zsywjc,#Temp.Price  ');
    //SQL.Add('          From KCRKS left join KCRK  ');
    SQL.Add('          From (select * from kcrks union all select * from KCRKS_2014) KCRKS ');
    SQL.Add('          left join (select * from kcrk union all select * from KCRK_2014) KCRK ');
    SQL.Add('  		     on KCRKS.RKNO=KCRK.RKNO  ');
    SQL.Add('  		     Left join KCPK on KCRK.RKNO=KCPK.PKNO  ');
    SQL.Add('  		     Left join zszl on KCRK.ZSBH=zszl.zsdh  ');
    SQL.Add('  		     Left join #Temp on KCRK.CKBH=#Temp.CKBH and KCRK.HGLB=#Temp.HGLB and KCRKS.CLBH=#Temp.CLBH  ');
    SQL.Add('  		     Where KCRK.YN=''5''   ');
    SQL.Add('  		     and KCRK.CKBH=@CKBH and KCRKs.CLBH=@CLBH and KCRK.HGLB=@HGLB  ');
    //SQL.Add('  		     and (DATEDIFF(day, KCRK.USERDATE, '''+formatdatetime('yyyy/MM/dd',edate)+''')>0 AND DATEDIFF(day, KCRK.USERDATE, '''+formatdatetime('yyyy/MM/dd',edate)+''')<=30)  ');
    SQL.Add('          '+AccMonthStock.CheckDate+' ');
    //SQL.Add('  		     Order by KCRK.RKNO desc,KCRKS.CGBH desc  ');   
    SQL.Add('  		     Order by KCRK.USERDATE desc,KCRK.RKNO desc,KCRKS.CGBH desc  ');

    SQL.Add('  		     OPEN cursor_kcrks  ');
    SQL.Add('          FETCH NEXT FROM cursor_kcrks INTO @CKBH_RK,@RKNO_RK, @CLBH_RK, @HGLB_RK, @CGBH_RK, @Qty_RK, @USERDate_RK, @CFMDate_RK, @Declaretion_RK,@ZSBH_RK,@ZSYWJC_RK,@Price_RK  ');

    SQL.Add('  		     WHILE @@FETCH_STATUS = 0 AND @Qty > 0  ');
    SQL.Add('          BEGIN  ');
    //2025-08-20 them xet KCPKLL
    SQL.Add('             -- Kiem tra neu gap PKNO/CLBH moi');
    SQL.Add('             if (@PKNO_Old <> @RKNO_RK) AND (@CLBH_Old = @CLBH_RK)');
    SQL.Add('             begin');
    SQL.Add('               -- Lay so luong LL cho PKNO/CLBH moi');
    //SQL.Add('               Select @LLQty=ISNULL(SUM(Qty),0) from KCPKLL where YN=''2'' and PKNO=@RKNO_RK AND CLBH=@CLBH_RK group by PKNO, CLBH');  
    //2025-09-19 them xet KCPKLL theo ngay
    SQL.Add('               SET @LLQty=0 ');
    SQL.Add('               Select @LLQty=ISNULL(SUM(Qty),0) from KCPKLL');
    SQL.Add('               left join (select LLNO,CFMDate from kcll union all select LLNO,CFMDate from KCll_2014) KCll on KCPKLL.llno=KCll.llno');
    SQL.Add('               where KCPKLL.YN=''2'' and PKNO=@RKNO_RK AND CLBH=@CLBH_RK and DATEDIFF(MONTH, KCll.CFMDate, '''+formatdatetime('yyyy/MM/dd',edate)+''') >=0 group by PKNO, CLBH');
    SQL.Add('               SET @RemainingLLQty = @LLQty  -- Reset so luong LL con lai cho PKNO/CLBH moi');
    SQL.Add('             end');
    SQL.Add('             -- Logic xu ly LL quantity va phan bo');
    SQL.Add('             if (@RemainingLLQty > 0)');
    SQL.Add('             begin');
    SQL.Add('               -- Con LL quantity can tru truoc');
    SQL.Add('               if (@RemainingLLQty >= @Qty_RK)');
    SQL.Add('               begin');
    SQL.Add('                 -- LL quantity van con nhieu hon batch hien tai');
    SQL.Add('                 -- Tru het batch nay tu LLQty, khong phan bo gi');
    SQL.Add('                 SET @RemainingLLQty = @RemainingLLQty - @Qty_RK;');
    SQL.Add('               end else begin');
    SQL.Add('                 -- LLQty it hon batch hien tai');
    SQL.Add('                 -- Phan con lai sau khi tru LLQty se duoc phan bo');
    SQL.Add('                 DECLARE @AvailableAfterLL money;');
    SQL.Add('                 SET @AvailableAfterLL = @Qty_RK - @RemainingLLQty;');
    SQL.Add('                 SET @RemainingLLQty = 0;  -- LLQty da het');
    SQL.Add('                 -- Phan bo phan available');
    SQL.Add('                 if (@Qty >= @AvailableAfterLL)');
    SQL.Add('                 begin');
    SQL.Add('                   -- Lay het phan available');
    SQL.Add('                   INSERT INTO #TempKCRKS (CKBH, RKNO, CLBH, HGLB, CGBH, Qty, USERDATE, CFMDATE, Declaretion, ZSBH, zsywjc, Price)');
    SQL.Add('                   VALUES (@CKBH_RK, @RKNO_RK, @CLBH_RK, @HGLB_RK, @CGBH_RK, @AvailableAfterLL, @USERDate_RK, @CFMDate_RK, @Declaretion_RK, @ZSBH_RK, @ZSYWJC_RK, @Price_RK)');
    SQL.Add('                   SET @Qty = @Qty - @AvailableAfterLL;');
    SQL.Add('                 end else begin');
    SQL.Add('                   -- Lay mot phan cua available (du cho nhu cau)');
    SQL.Add('                   INSERT INTO #TempKCRKS (CKBH, RKNO, CLBH, HGLB, CGBH, Qty, USERDATE, CFMDATE, Declaretion, ZSBH, zsywjc, Price)');
    SQL.Add('                   VALUES (@CKBH_RK, @RKNO_RK, @CLBH_RK, @HGLB_RK, @CGBH_RK, @Qty, @USERDate_RK, @CFMDate_RK, @Declaretion_RK, @ZSBH_RK, @ZSYWJC_RK, @Price_RK)');
    SQL.Add('                   SET @Qty = 0;');
    SQL.Add('                 end');
    SQL.Add('               end');
    SQL.Add('             end else begin');
    SQL.Add('               -- Khong co LL restriction, phan bo binh thuong');
    SQL.Add('               if (@Qty >= @Qty_RK)');
    SQL.Add('               begin');
    SQL.Add('                 -- Lay het batch nay');
    SQL.Add('                 INSERT INTO #TempKCRKS (CKBH, RKNO, CLBH, HGLB, CGBH, Qty, USERDATE, CFMDATE, Declaretion, ZSBH, zsywjc, Price)');
    SQL.Add('                 VALUES (@CKBH_RK, @RKNO_RK, @CLBH_RK, @HGLB_RK, @CGBH_RK, @Qty_RK, @USERDate_RK, @CFMDate_RK, @Declaretion_RK, @ZSBH_RK, @ZSYWJC_RK, @Price_RK)');
    SQL.Add('                 SET @Qty = @Qty - @Qty_RK;');
    SQL.Add('               end else begin');
    SQL.Add('                 -- Lay mot phan batch nay (du cho nhu cau)');
    SQL.Add('                 INSERT INTO #TempKCRKS (CKBH, RKNO, CLBH, HGLB, CGBH, Qty, USERDATE, CFMDATE, Declaretion, ZSBH, zsywjc, Price)');
    SQL.Add('                 VALUES (@CKBH_RK, @RKNO_RK, @CLBH_RK, @HGLB_RK, @CGBH_RK, @Qty, @USERDate_RK, @CFMDate_RK, @Declaretion_RK, @ZSBH_RK, @ZSYWJC_RK, @Price_RK)');
    SQL.Add('                 SET @Qty = 0;');
    SQL.Add('               end');
    SQL.Add('             end');
    SQL.Add('             -- Cap nhat cac bien theo doi');
    SQL.Add('             SET @PKNO_Old = @RKNO_RK;');
    SQL.Add('             SET @CLBH_Old = @CLBH_RK;');

    {SQL.Add('  		     SET @Qty=@Qty-@Qty_RK  ');
    SQL.Add('  		     if (@Qty>0)  ');
    SQL.Add('  		     begin  ');
    SQL.Add('             		INSERT INTO #TempKCRKS (CKBH, RKNO, CLBH, HGLB, CGBH, Qty, USERDATE, CFMDATE, Declaretion, ZSBH, zsywjc,Price)  ');
    SQL.Add('  				        VALUES (@CKBH_RK,@RKNO_RK, @CLBH_RK, @HGLB_RK, @CGBH_RK, @Qty_RK, @USERDate_RK, @CFMDate_RK, @Declaretion_RK, @ZSBH_RK, @ZSYWJC_RK,@Price_RK)  ');
    SQL.Add('  		     end else begin  ');
    SQL.Add('             		INSERT INTO #TempKCRKS (CKBH, RKNO, CLBH, HGLB, CGBH, Qty, USERDATE, CFMDATE, Declaretion, ZSBH, zsywjc,Price)  ');
    SQL.Add('  				        VALUES (@CKBH_RK,@RKNO_RK, @CLBH_RK, @HGLB_RK, @CGBH_RK, @Qty +@Qty_RK, @USERDate_RK, @CFMDate_RK, @Declaretion_RK, @ZSBH_RK, @ZSYWJC_RK,@Price_RK)  ');
    SQL.Add('  		     SET @Qty=0  ');
    SQL.Add('  		     end  ');      }

    SQL.Add('          FETCH NEXT FROM cursor_kcrks INTO @CKBH_RK,@RKNO_RK, @CLBH_RK, @HGLB_RK, @CGBH_RK, @Qty_RK, @USERDate_RK, @CFMDate_RK, @Declaretion_RK,@ZSBH_RK,@ZSYWJC_RK,@Price_RK  ');
    SQL.Add('  		     END  ');
    SQL.Add('          CLOSE cursor_kcrks  ');
    SQL.Add('          DEALLOCATE cursor_kcrks  ');
    //2025-08-20 them dieu kien Qty>0
    SQL.Add('          if @Qty>0');
    SQL.Add('          begin');
    SQL.Add('           DECLARE @CKBH_PKRK varchar(4),@RKNO_PKRK VARCHAR(11), @CLBH_PKRK VARCHAR(15), @HGLB_PKRK VARCHAR(4), @CGBH_PKRK VARCHAR(15), @Qty_PKRK money, @USERDate_PKRK SMALLDATETIME, @CFMDate_PKRK SMALLDATETIME,@Declaretion_PKRK varchar(50)');
    SQL.Add('                   ,@ZSBH_PKRK varchar(10),@ZSYWJC_PKRK varchar(20),@Price_PKRK money');
    SQL.Add('           DECLARE cursor_kcpkrk CURSOR FOR');
    SQL.Add('             SELECT  KCRK.CKBH,KCRK.RKNO,KCRKS.CLBH,KCRK.HGLB,KCRKS.CGBH,case when KCPKRK.Qty<=KCRKS.Qty then KCPKRK.Qty else KCRKS.Qty end as Qty,KCRK.USERDATE,KCRK.CFMDATE,KCPK.Declaretion,KCRK.ZSBH,ZSZL.zsywjc,#Temp.Price');
    SQL.Add('             FROM KCPKRK');
    SQL.Add('             LEFT JOIN (select * from kcrks union all select * from KCRKS_2014) KCRKS');
    SQL.Add('                       on KCRKS.RKNO=KCPKRK.RKNO AND KCRKS.CLBH=KCPKRK.CLBH');
    SQL.Add('             left join (select * from kcrk union all select * from KCRK_2014) KCRK');
    SQL.Add('                       on KCRKS.RKNO=KCRK.RKNO');
    SQL.Add('             Left join KCPK on KCRK.RKNO=KCPK.PKNO');
    SQL.Add('             Left join zszl on KCRK.ZSBH=zszl.zsdh');
    SQL.Add('             Left join #Temp on KCRK.CKBH=#Temp.CKBH and KCRK.HGLB=#Temp.HGLB and KCRKS.CLBH=#Temp.CLBH');
    SQL.Add('             Where KCRK.YN=''5''');
    SQL.Add('             and KCRK.CKBH=@CKBH and KCPKRK.CLBH=@CLBH and KCRK.HGLB=@HGLB');
    SQL.Add('             '+AccMonthStock.CheckDate1+' ');
    SQL.Add('             Order by KCRK.USERDATE asc, by KCRK.RKNO asc,KCRKS.CGBH asc , KCPKRK.KCYEAR desc, KCPKRK.KCMONTH desc');
    SQL.Add('           OPEN cursor_kcpkrk');
    SQL.Add('           FETCH NEXT FROM cursor_kcpkrk INTO @CKBH_PKRK,@RKNO_PKRK, @CLBH_PKRK, @HGLB_PKRK, @CGBH_PKRK, @Qty_PKRK, @USERDate_PKRK, @CFMDate_PKRK, @Declaretion_PKRK,@ZSBH_PKRK,@ZSYWJC_PKRK,@Price_PKRK');
    SQL.Add('           WHILE @@FETCH_STATUS = 0 AND @Qty > 0');
    SQL.Add('           BEGIN');
    SQL.Add('             if (@Qty >= @Qty_PKRK)');
    SQL.Add('             begin');
    SQL.Add('               INSERT INTO #TempKCRKS (CKBH, RKNO, CLBH, HGLB, CGBH, Qty, USERDATE, CFMDATE, Declaretion, ZSBH, zsywjc, Price)');
    SQL.Add('               VALUES (@CKBH_PKRK, @RKNO_PKRK, @CLBH_PKRK, @HGLB_PKRK, @CGBH_PKRK, @Qty_PKRK, @USERDate_PKRK, @CFMDate_PKRK, @Declaretion_PKRK, @ZSBH_PKRK, @ZSYWJC_PKRK, @Price_PKRK)');
    SQL.Add('               SET @Qty = @Qty - @Qty_PKRK;');
    SQL.Add('             end else begin');
    SQL.Add('               INSERT INTO #TempKCRKS (CKBH, RKNO, CLBH, HGLB, CGBH, Qty, USERDATE, CFMDATE, Declaretion, ZSBH, zsywjc, Price)');
    SQL.Add('               VALUES (@CKBH_PKRK, @RKNO_PKRK, @CLBH_PKRK, @HGLB_PKRK, @CGBH_PKRK, @Qty, @USERDate_PKRK, @CFMDate_PKRK, @Declaretion_PKRK, @ZSBH_PKRK, @ZSYWJC_PKRK, @Price_PKRK)');
    SQL.Add('               SET @Qty = 0;');
    SQL.Add('             end');
    SQL.Add('           FETCH NEXT FROM cursor_kcpkrk INTO @CKBH_PKRK,@RKNO_PKRK, @CLBH_PKRK, @HGLB_PKRK, @CGBH_PKRK, @Qty_PKRK, @USERDate_PKRK, @CFMDate_PKRK, @Declaretion_PKRK,@ZSBH_PKRK,@ZSYWJC_PKRK,@Price_PKRK');
    SQL.Add('           END');
    SQL.Add('           CLOSE cursor_kcpkrk');
    SQL.Add('           DEALLOCATE cursor_kcpkrk');
    SQL.Add('         end');

    SQL.Add('  FETCH NEXT FROM cursor_HG INTO @CKBH,@CLBH,@HGLB,@Qty,@Price  ');
    SQL.Add('  END  ');
    SQL.Add('  CLOSE cursor_HG  ');
    SQL.Add('  DEALLOCATE cursor_HG  ');

    SQL.Add('  SELECT #TempKCRKS.CKBH,#TempKCRKS.RKNO,#TempKCRKS.CLBH,CLZL.YWPM,CLZL.DWBH,#TempKCRKS.CGBH,#TempKCRKS.Qty,#TempKCRKS.Price,#TempKCRKS.HGLB,#TempKCRKS.USERDATE,#TempKCRKS.CFMDATE,#TempKCRKS.Declaretion,#TempKCRKS.ZSBH,#TempKCRKS.zsywjc    ');
    SQL.Add('  FROM #TempKCRKS   ');
    SQL.Add('  Left join clzl on #TempKCRKS.CLBH=clzl.cldh  ');
    SQL.Add('  Where 1=1 ');
    if Edit1.Text <> '' then
      SQL.Add(' and #TempKCRKS.CLBH like '''+Edit1.Text+'%'' ');
    if Edit2.Text <> '' then
      SQL.Add(' and #TempKCRKS.RKNO like '''+Edit2.Text+'%'' ');
    if Edit3.Text <> '' then
      SQL.Add(' and #TempKCRKS.ZSBH like '''+Edit3.Text+'%'' ');
    if Edit4.Text <> '' then
      SQL.Add(' and CLZL.YWPM like ''%'+Edit4.Text+'%'' ');
    if Edit5.Text <> '' then
      SQL.Add(' and #TempKCRKS.Declaretion like '''+Edit5.Text+'%'' ');
    if Edit6.Text <> '' then
      SQL.Add(' and #TempKCRKS.zsywjc like ''%'+Edit6.Text+'%'' ');
    //funcobj.WriteErrorLog(sql.Text);
    Active:=true;
  end;

end;

procedure TDetailRemQty01T.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  action:=cafree;
end;

procedure TDetailRemQty01T.Button2Click(Sender: TObject);
var eclApp,WorkBook:olevariant;
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
    for i:=0 to DBGridEh1.Columns.Count-1 do
    begin
      eclApp.Cells(1,i+1):=DBGridEh1.Columns[i].Title.Caption;
      eclApp.Cells.Cells.item[1,i+1].font.name := 'Calibri';
      eclApp.Cells.Cells.item[1,i+1].font.size:='10';
    end;
    query1.First;
    j:=2;
    while   not  query1.Eof   do
    begin
      eclApp.Cells(j,1):=j-1;
      for i:=0 to DBGridEh1.Columns.Count-1 do
      begin
         eclApp.Cells(j,i+1):=DBGridEh1.Fields[i].Value;
         eclApp.Cells.Cells.item[j,i+1].font.size:='10';
         eclApp.Cells.Cells.item[j,i+1].font.name := 'Calibri';
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

procedure TDetailRemQty01T.FormDestroy(Sender: TObject);
begin
  DetailRemQty01T:=nil;
end;




procedure TDetailRemQty01T.Excel1Click(Sender: TObject);
begin
  Button2.Click;
end;

end.
