unit CheckNoInCostingPriceList1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, ExtCtrls, ComCtrls, GridsEh, DBGridEh, DB, DBTables,DateUtils,ComObj;

type
  TCheckNoInCostingPriceList = class(TForm)
    pgc1: TPageControl;
    ts1: TTabSheet;
    pnl1: TPanel;
    Edit3: TEdit;
    Label4: TLabel;
    btn1: TButton;
    TemQry: TQuery;
    ds1: TDataSource;
    dbgrdh1: TDBGridEh;
    Edit2: TEdit;
    btn2: TButton;
    procedure btn1Click(Sender: TObject);
    procedure btn2Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  CheckNoInCostingPriceList: TCheckNoInCostingPriceList;

implementation

//uses SupplierFLEXnERP1;

{$R *.dfm}

procedure TCheckNoInCostingPriceList.btn1Click(Sender: TObject);
var
  year,StartM,EndM:word;
  UserInput:string;
  StartDate, EndDate: TDate;
begin
    //計算季度
    UserInput:= copy(Edit2.Text,3,1);
    if UserInput = 'F' then
    begin
       year:=StrToInt(copy(Edit2.Text,1,2));
       StartM:=1;
       EndM:=3;
    end
    else if UserInput = 'H' then
    begin
       year:=StrToInt(copy(Edit2.Text,1,2));
       StartM:=4;
       EndM:=6;
    end
    else if UserInput = 'S' then
    begin
       year:=StrToInt(copy(Edit2.Text,1,2))-1;
       StartM:=7;
       EndM:=9;
    end
    else if UserInput = 'U' then
    begin
       year:=StrToInt(copy(Edit2.Text,1,2))-1;
       StartM:=10;
       EndM:=12;
    end;

  StartDate := EncodeDate(2000 + year, StartM, 1);
  EndDate := EndOfTheMonth(EncodeDate(2000 + year, EndM, 1)); // DateUtils 裡的函數


  with TemQry do
  begin
     active:=false;
     sql.Clear;     
     sql.add('WITH RankedData AS (');
     sql.add('    SELECT ');
     sql.add('        ROW_NUMBER() OVER (');
     sql.add('            PARTITION BY CostingSeason, Factory, SKU,EffectBuy');
     sql.add('            ORDER BY  CostingSeason, Factory, SKU, EffectBuy');
     sql.add('        ) AS RowNum,');
     sql.add('        CASE ');
     sql.add('            WHEN RIGHT(CostingSeason, 1) = ''F'' THEN (LEFT(CostingSeason, 2) + ''U'')');
     sql.add('            WHEN RIGHT(CostingSeason, 1) = ''H'' THEN (LEFT(CostingSeason, 2) + ''F'')');
     sql.add('            WHEN RIGHT(CostingSeason, 1) = ''S'' THEN (CAST(CAST(LEFT(CostingSeason, 2) AS INT) - 1 AS VARCHAR) + ''H'')');
     sql.add('            WHEN RIGHT(CostingSeason, 1) = ''U'' THEN (LEFT(CostingSeason, 2) + ''S'')');
     sql.add('        END as PreviousSeason,');
     sql.add('        round,');
     sql.add('        CostingSeason,');
     sql.add('        Factory,');
     sql.add('        SKU,');
     sql.add('        EffectBuy');
     sql.add('    FROM CostingPriceListNew');
     sql.add('    where round like ''FNL%''');
     sql.add('),');
     sql.add('RowNumOneOnly AS (');
     sql.add('    SELECT RankedData.*,ROW_NUMBER() OVER (PARTITION BY CostingSeason, Factory, SKU,EffectBuy ORDER BY RowNum) AS FinalIndex');
     sql.add('    FROM RankedData');
     sql.add('),');
     sql.add('RowNumOneOnly2 AS (');
     sql.add('    SELECT RowNumOneOnly.*');
     sql.add('        ,ROW_NUMBER() OVER (');
     sql.add('            PARTITION BY CostingSeason, Factory, SKU');
     sql.add('            ORDER BY  CostingSeason, Factory, SKU, EffectBuy');
     sql.add('        ) AS RowNum2');
     sql.add('    FROM RowNumOneOnly');
     sql.add('where FinalIndex=1');
     sql.add('),');

     sql.add('WithNext AS (');
     sql.add('    SELECT ');
     sql.add('        curr.*,');
     sql.add('        CASE ');
     sql.add('            WHEN next.EffectBuy IS NULL THEN ');
     sql.add('                CASE ');
     sql.add('                    WHEN RIGHT(curr.CostingSeason, 1) = ''F'' THEN (''20'' + LEFT(curr.CostingSeason, 2) + ''03'')');
     sql.add('                    WHEN RIGHT(curr.CostingSeason, 1) = ''H'' THEN (''20'' + LEFT(curr.CostingSeason, 2) + ''06'')');
     sql.add('                    WHEN RIGHT(curr.CostingSeason, 1) = ''S'' THEN (''20'' + CAST(CAST(LEFT(curr.CostingSeason, 2) AS INT) - 1 AS VARCHAR) + ''09'')');
     sql.add('                    WHEN RIGHT(curr.CostingSeason, 1) = ''U'' THEN (''20'' + CAST(CAST(LEFT(curr.CostingSeason, 2) AS INT) - 1 AS VARCHAR) + ''12'')');
     sql.add('                END');
     sql.add('            WHEN next.EffectBuy = curr.EffectBuy THEN '''' ');
     sql.add('            ELSE CAST(next.EffectBuy AS INT) - 1 ');
     sql.add('        END AS EndBuy,');
     sql.add('        CASE ');
     sql.add('            WHEN (PreviousSeasonCFM.SKU is null) and (curr.RowNum2=1) then ');
     sql.add('                CASE ');
     sql.add('                    WHEN RIGHT(curr.CostingSeason, 1) = ''F'' THEN (''20'' + CAST(CAST(LEFT(curr.CostingSeason, 2) AS INT) - 1 AS VARCHAR) + ''10'')');
     sql.add('                    WHEN RIGHT(curr.CostingSeason, 1) = ''H'' THEN (''20'' + LEFT(curr.CostingSeason, 2) + ''01'')');
     sql.add('                    WHEN RIGHT(curr.CostingSeason, 1) = ''S'' THEN (''20'' + CAST(CAST(LEFT(curr.CostingSeason, 2) AS INT) - 1 AS VARCHAR) + ''04'')');
     sql.add('                    WHEN RIGHT(curr.CostingSeason, 1) = ''U'' THEN (''20'' + CAST(CAST(LEFT(curr.CostingSeason, 2) AS INT) - 1 AS VARCHAR) + ''07'')');
     sql.add('                END');
     sql.add('        else ');
     sql.add('                curr.EffectBuy	');
     sql.add('        END AS PreviousSeasonBuy--,PreviousSeasonCFM.SKU as PreviousSeasonCFM');
     sql.add('    FROM RowNumOneOnly2 curr');
     sql.add('    LEFT JOIN RowNumOneOnly2 next ');
     sql.add('        ON curr.RowNum2 + 1 = next.RowNum2 ');
     sql.add('        AND curr.SKU = next.SKU');
     sql.add('        AND curr.CostingSeason = next.CostingSeason');
     sql.add('        AND curr.Factory = next.Factory');
     sql.add('    left join (select* from(');
     sql.add('        select SKU,PricingSeason,Factory  From CostingPriceList ');
     sql.add('        UNION all ');
     sql.add('        select SKU,CostingSeason as PricingSeason,Factory  From CostingPriceListnew )a');
     sql.add('        group by SKU,Factory,PricingSeason ');
     sql.add('        )PreviousSeasonCFM on PreviousSeasonCFM.SKU=curr.SKU and PreviousSeasonCFM.PricingSeason=curr.PreviousSeason and PreviousSeasonCFM.factory=curr.factory ');

     sql.add(')');
     sql.add('Select WithNext.sku,DDZL.ARTICLE,DDZL.BUYNO,YWDD.KHDDBH2DATE,DDZL.pairs,DDZL.DDLB,DDZL.DDZT from YWDD');
     sql.add('left join DDZL on YWDD.DDBH=DDZL.DDBH');
     sql.add('left join xxzl on xxzl.XieXing=DDZL.XieXing and xxzl.SheHao=DDZL.SheHao ');
     sql.add('left join WithNext on WithNext.SKU = left(xxzl.article,charindex(''/'',xxzl.article+''/'')-1)');
     sql.add('		and CONVERT(VARCHAR(6), KHDDBH2DATE, 112) between  WithNext.PreviousSeasonBuy and WithNext.EndBuy ');
     sql.add('WHERE YWDD.KHDDBH2DATE BETWEEN '+QuotedStr(FormatDateTime('yyyy-mm-dd', StartDate))+' AND '+QuotedStr(FormatDateTime('yyyy-mm-dd', EndDate)));
     sql.add('        AND DDZL.KHBH=''036''  AND WithNext.sku IS NULL ');
     //showmessage(SQL.text);
     active:=true;
  end;
end;

procedure TCheckNoInCostingPriceList.btn2Click(Sender: TObject);

var  eclApp,WorkBook:olevariant;
     i,j:integer;
begin
 //if DetQry<>nil then DetQry.Active:=false;
 if  TemQry.active  then
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
        for   i:=0   to   TemQry.fieldcount-1   do
        begin
            eclApp.Cells(1,i+2):=TemQry.fields[i].FieldName;
        end;

        TemQry.First;

        j:=2;
        while   not   TemQry.Eof   do
        begin
          eclApp.Cells(j,1):=j-1;
          for   i:=0   to  TemQry.fieldcount-1  do
          begin
            eclApp.Cells(j,i+2):=TemQry.Fields[i].Value;
          end;
        TemQry.Next;
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

end.
