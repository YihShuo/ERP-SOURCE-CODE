unit ScanStockDet1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Menus, DB, DBTables, PrnDbgeh, GridsEh, DBGridEh, StdCtrls,
  ExtCtrls,comobj, ComCtrls, ADODB;

type
  TScanStockDet = class(TForm)
    Panel1: TPanel;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    Edit1: TEdit;
    Edit2: TEdit;
    Edit3: TEdit;
    Edit4: TEdit;
    Button1: TButton;
    DBGridEh1: TDBGridEh;
    PrintDBGridEh1: TPrintDBGridEh;
    Query1: TQuery;
    Query1DDBH: TStringField;
    Query1YSBH: TStringField;
    Query1Article: TStringField;
    Query1XieMing: TStringField;
    Query1Country: TStringField;
    Query1KFJC: TStringField;
    Query1Qty: TFloatField;
    Query1okQty: TIntegerField;
    Query1LackQty: TFloatField;
    Query1CTS: TIntegerField;
    Query1okCTS: TIntegerField;
    Query1LackCTS: TIntegerField;
    Query1ETD: TDateTimeField;
    DS1: TDataSource;
    PopupMenu1: TPopupMenu;
    Excel1: TMenuItem;
    Print1: TMenuItem;
    DetailSize1: TMenuItem;
    DetailCarton1: TMenuItem;
    Query1LastInDate: TDateTimeField;
    Query1DZQty: TIntegerField;
    CheckBox1: TCheckBox;
    Label6: TLabel;
    Label7: TLabel;
    Label8: TLabel;
    Label9: TLabel;
    Label10: TLabel;
    Label11: TLabel;
    CheckBox2: TCheckBox;
    Label12: TLabel;
    Label13: TLabel;
    Query1DepName: TStringField;
    Query1KCBH: TStringField;
    Query1InDate: TDateTimeField;
    DTP: TDateTimePicker;
    Label14: TLabel;
    Query1YSSM: TStringField;
    Query1KHPO: TStringField;
    Label16: TLabel;
    Query1Status: TStringField;
    Query1SB: TStringField;
    Query1POMEMO2: TStringField;
    Query1KVBH: TStringField;
    Label15: TLabel;
    Label17: TLabel;
    Label18: TLabel;
    Label19: TLabel;
    Label20: TLabel;
    Label21: TLabel;
    Label22: TLabel;
    Label23: TLabel;
    Label24: TLabel;
    Label25: TLabel;
    Label26: TLabel;
    CBX1: TComboBox;
    procedure FormDestroy(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure Button1Click(Sender: TObject);
    procedure DBGridEh1GetCellParams(Sender: TObject; Column: TColumnEh;
      AFont: TFont; var Background: TColor; State: TGridDrawState);
    procedure Excel1Click(Sender: TObject);
    procedure Print1Click(Sender: TObject);
    procedure DetailSize1Click(Sender: TObject);
    procedure DetailCarton1Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure DBGridEh1DrawColumnCell(Sender: TObject; const Rect: TRect;
      DataCol: Integer; Column: TColumnEh; State: TGridDrawState);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  ScanStockDet: TScanStockDet;

implementation

uses main1, ScanStockDet_Det1, ScanStockDet_Car1, FunUnit;

{$R *.dfm}

procedure TScanStockDet.FormDestroy(Sender: TObject);
begin
  ScanStockDet:=nil;
end;

procedure TScanStockDet.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  action:=cafree;
end;

{procedure TScanStockDet.Button1Click(Sender: TObject);
begin
    if checkBox2.Checked then
    begin
      DBGridEh1.Columns[2].Visible := true;
      DBGridEh1.Columns[10].Visible := false;
      DBGridEh1.Columns[13].Visible := false;
    end
    else
    begin
      DBGridEh1.Columns[2].Visible := false;
      DBGridEh1.Columns[10].Visible := true;
      DBGridEh1.Columns[13].Visible := true;
    end;
  with query1 do
  begin
    active := false;
    sql.Clear;
    // B? sung cac l?nh SET ?? tranh l?i
    SQL.Add('SET ANSI_NULLS ON');
    SQL.Add('SET QUOTED_IDENTIFIER ON');
    SQL.Add('SET CONCAT_NULL_YIELDS_NULL ON');
    SQL.Add('SET ANSI_WARNINGS ON');
    SQL.Add('SET ANSI_PADDING ON');
    SQL.Add('SET ARITHABORT ON');


    if SameText(Main.Edit2.Text, 'HBA') then
    begin
    sql.add('select YWCP.DDBH,YWDD.YSBH,');
    if checkBox2.Checked then
    begin
      sql.add('     BDepartment.DepName,');
    end
    else
    begin
      sql.Add('     ''1'' as DepName,');
    end;
    sql.Add('       XXZL.Article,max (YWCP.KCBH) as KCBH,ISNULL(STUFF((SELECT '', '' + kv2.KVBH + ''('' + CAST(SUM(kv2.Qty) AS VARCHAR(10)) + '')''FROM YWCP kv2 WITH (NOLOCK)  ');
    sql.Add(' WHERE kv2.DDBH = YWCP.DDBH AND SB=1 GROUP BY kv2.KVBH ');
    sql.Add(' FOR XML PATH(''''), TYPE).value(''.'', ''VARCHAR(500)''),1,2,''''),''NO('' + CAST(SUM(YWCP.Qty) AS VARCHAR(10)) + '')'') AS KVBH    ');
    sql.Add(' , Person as Status ');
    sql.Add('       ,XXZL.XieMing,YWDD.ETD,LBZLS.YWSM as Country,KFZL.KFJC,');

    sql.add('       YWDD.Qty,sum(YWCP.Qty) as okQty,YWDD.Qty-isnull(sum(YWCP.Qty),0) as LackQty,sum(YWDDSDZ.Qty) as DZQty,');
    sql.add('       YWBZPO.CTS,count(YWCP.DDBH) as okCTS,YWBZPO.CTS-count(YWCP.DDBH) as LackCTS,max(YWCP.LastInDate) as LastInDate,max(YWCP.InDate) as InDate,XXZL.yssm,KHPO,');
    sql.add('       STUFF((SELECT ''-'' + CAST(SB AS varchar(10))FROM (SELECT DISTINCT SB FROM YWCP cp2 WITH (NOLOCK) WHERE cp2.DDBH = YWCP.DDBH) t FOR XML PATH(''''), TYPE).value(''.'', ''VARCHAR(8000)''),1,1,'''') AS SB,'''' Status,CONVERT(VARCHAR(8000), YWBZPO.MEMO) AS POMEMO');
    sql.add('from YWCP  with (nolock)');
    sql.add('left join YWDD  with (nolock) on YWDD.DDBH=YWCP.DDBH ');
    sql.add('left join (select CartonBar,sum(Qty) as Qty from YWDDSDZ ');
    sql.add('           group by CartonBar ) YWDDSDZ on YWDDSDZ.CartonBar=YWCP.CartonBar ');
    sql.add('left join DDZL  with (nolock) on YWDD.YSBH=DDZl.DDBH ');
    sql.add('left join XXZL  with (nolock) on DDZl.XieXing=XXZl.XieXing and DDZL.SheHao=XXZL.Shehao ');
    sql.add('left join LBZLS  with (nolock) on LBZLS.LB='+''''+'13'+''''+' and LBZLS.LBDH=DDZL.Dest');
    sql.add('left join KFZL  with (nolock) on KFZL.KFDH=DDZL.KHBH ');
    sql.add('left join DDZL_PASS with (nolock) on YWCP.DDBH=DDZL_PASS.DDBH ');
    sql.add('LEFT JOIN (SELECT A.DDBH,SUM(A.CTS) AS CTS,STUFF((SELECT ''/'' + B.MEMO FROM (SELECT DISTINCT DDBH, MEMO  ');
    sql.add('FROM YWBZPOS WITH (NOLOCK)) B WHERE B.DDBH = A.DDBH FOR XML PATH(''''), TYPE).value(''.'', ''VARCHAR(MAX)''), 1, 1, '''') AS MEMO FROM ( ');
    sql.add('SELECT DISTINCT DDBH, XH, CTS, MEMO FROM YWBZPOS WITH (NOLOCK) WHERE DDBH LIKE '''+edit1.Text+'%'') A GROUP BY A.DDBH) YWBZPO ON YWCP.DDBH = YWBZPO.DDBH');
    if checkBox2.Checked then
      sql.add('left join BDepartment on YWCP.DepNO = BDepartment.ID');
    sql.Add('where DDZL.DDBH like '''+edit1.Text+'%''');
    sql.add('      and YWCP.KCBH like '''+edit2.Text+'%''');
    sql.add('      and isnull(KFZL.KFJC,'''') like ''%'+edit3.text+'%''');
    sql.add('      and isnull(LBZLS.YWSM,'''') like ''%'+edit4.text+'%''');
    sql.add('      and DDZL.GSBH='''+main.edit2.text+''' ');
    sql.add('      and IsNull(YWCP.SB,'''')<>'''' and convert(varchar,YWCP.Indate,111) <= '''+formatdatetime('yyyy/MM/dd',DTP.Date)+''' ');
    sql.add('      and YWCP.CARTONBAR not in (Select CARTONBAR from YWCP where SB=''3'' and convert(varchar,YWCP.EXEDATE,111) <='''+formatdatetime('yyyy/MM/dd',DTP.Date)+''')');
    if checkbox1.checked=false then
    begin
      sql.add('    and YWCP.CARTONBAR not in (Select CARTONBAR from YWCP where SB in (''2'',''4'') and convert(varchar,IsNull(YWCP.OUTDATE,GetDate()-7200),111) <='''+formatdatetime('yyyy/MM/dd',DTP.Date)+''')');
    end;
    sql.add('group by YWCP.DDBH,YWDD.YSBH,');
    if checkBox2.Checked then
      sql.add('     BDepartment.DepName,');
    sql.add('         XXZL.Article,XXZL.XieMing,YWDD.ETD,LBZLS.YWSM,KFZL.KFJC,YWDD.Qty,YWBZPO.CTS,XXZL.yssm,KHPO,YWBZPO.MEMO, Person');
    sql.add('order by YWCP.DDBH ');
    // FuncObj.WriteErrorLog(sql.Text);
      end
     else
     begin
     sql.add('select YWCP.DDBH,YWDD.YSBH,');
    if checkBox2.Checked then
    begin
      sql.add('     BDepartment.DepName,');
    end
    else
    begin
      sql.Add('     ''1'' as DepName,');
    end;
     sql.Add('       XXZL.Article,max (YWCP.KCBH) as KCBH,ISNULL(STUFF((SELECT '', '' + kv2.KVBH + ''('' + CAST(SUM(kv2.Qty) AS VARCHAR(10)) + '')''FROM YWCP kv2 WITH (NOLOCK)  ');
    sql.Add(' WHERE kv2.DDBH = YWCP.DDBH AND SB=1 GROUP BY kv2.KVBH ');
    sql.Add(' FOR XML PATH(''''), TYPE).value(''.'', ''VARCHAR(500)''),1,2,''''),''NO('' + CAST(SUM(YWCP.Qty) AS VARCHAR(10)) + '')'') AS KVBH    ');
    sql.Add(' , '''' as Status ');
    sql.Add('       ,XXZL.XieMing,YWDD.ETD,LBZLS.YWSM as Country,KFZL.KFJC,');

    sql.add('       YWDD.Qty,sum(YWCP.Qty) as okQty,YWDD.Qty-isnull(sum(YWCP.Qty),0) as LackQty,sum(YWDDSDZ.Qty) as DZQty,');
    sql.add('       YWBZPO.CTS,count(YWCP.DDBH) as okCTS,YWBZPO.CTS-count(YWCP.DDBH) as LackCTS,max(YWCP.LastInDate) as LastInDate,max(YWCP.InDate) as InDate,XXZL.yssm,KHPO,');
    sql.add('STUFF((SELECT ''-'' + CAST(SB AS varchar(10))FROM ( ');
    sql.add('       SELECT DISTINCT SB FROM YWCP cp2 WITH (NOLOCK) WHERE cp2.DDBH = YWCP.DDBH) t FOR XML PATH(''''), TYPE).value(''.'', ''VARCHAR(8000)''),1,1,'''') AS SB,ywcp.Status Status,CONVERT(VARCHAR(8000), YWBZPO.MEMO) AS POMEMO');
    sql.add('from YWCP  with (nolock)');
    sql.add('left join YWDD  with (nolock) on YWDD.DDBH=YWCP.DDBH ');
    sql.add('left join (select CartonBar,sum(Qty) as Qty from YWDDSDZ WITH (NOLOCK) ');
    sql.add('           group by CartonBar ) YWDDSDZ on YWDDSDZ.CartonBar=YWCP.CartonBar ');
    sql.add('left join DDZL  with (nolock) on YWDD.YSBH=DDZl.DDBH ');
    sql.add('left join XXZL  with (nolock) on DDZl.XieXing=XXZl.XieXing and DDZL.SheHao=XXZL.Shehao ');
    sql.add('left join LBZLS  with (nolock) on LBZLS.LB='+''''+'13'+''''+' and LBZLS.LBDH=DDZL.Dest');
    sql.add('left join KFZL  with (nolock) on KFZL.KFDH=DDZL.KHBH ');
    sql.add('--left join (SELECT DISTINCT SCBH , Result FROM WOPR_MA WITH (NOLOCK)) WOPR_MA on YWCP.DDBH=WOPR_MA.SCBH  ');
    sql.add('LEFT JOIN (SELECT A.DDBH,SUM(A.CTS) AS CTS,STUFF((SELECT ''/'' + B.MEMO FROM (SELECT DISTINCT DDBH, MEMO  ');
    sql.add('FROM YWBZPOS WITH (NOLOCK)) B WHERE B.DDBH = A.DDBH FOR XML PATH(''''), TYPE).value(''.'', ''VARCHAR(MAX)''), 1, 1, '''') AS MEMO FROM ( ');
    sql.add('SELECT DISTINCT DDBH, XH, CTS, MEMO FROM YWBZPOS WITH (NOLOCK) WHERE DDBH LIKE '''+edit1.Text+'%'') A GROUP BY A.DDBH) YWBZPO ON YWCP.DDBH = YWBZPO.DDBH');
    if checkBox2.Checked then
      sql.add('left join BDepartment on YWCP.DepNO = BDepartment.ID');
    sql.Add('where DDZL.DDBH like '''+edit1.Text+'%''');
    sql.add('      and YWCP.KCBH like '''+edit2.Text+'%''');
    sql.add('      and isnull(KFZL.KFJC,'''') like ''%'+edit3.text+'%''');
    sql.add('      and isnull(LBZLS.YWSM,'''') like ''%'+edit4.text+'%''');
    sql.add('      and DDZL.GSBH='''+main.edit2.text+''' ');
    sql.add('      and IsNull(YWCP.SB,'''')<>'''' and convert(varchar,YWCP.Indate,111) <= '''+formatdatetime('yyyy/MM/dd',DTP.Date)+''' ');
    sql.add('      and YWCP.CARTONBAR not in (Select CARTONBAR from YWCP WITH (NOLOCK) where SB=''3'' and convert(varchar,YWCP.EXEDATE,111) <='''+formatdatetime('yyyy/MM/dd',DTP.Date)+''')');
    if cbx1.Text <> 'All' then
      sql.Add('      and ywcp.sb = '+CBX1.text+' ');
    if checkbox1.checked=false then
    begin
      sql.add('    and YWCP.CARTONBAR not in (Select CARTONBAR from YWCP WITH (NOLOCK) where SB in (''2'',''4'') and convert(varchar,IsNull(YWCP.OUTDATE,GetDate()-7200),111) <='''+formatdatetime('yyyy/MM/dd',DTP.Date)+''')');
    end;
    sql.add('group by YWCP.DDBH,YWDD.YSBH,');
    if checkBox2.Checked then
      sql.add('     BDepartment.DepName,');
    sql.add('         XXZL.Article,XXZL.XieMing,YWDD.ETD,LBZLS.YWSM,KFZL.KFJC,YWDD.Qty,YWBZPO.CTS,XXZL.yssm,KHPO,YWBZPO.MEMO,ywcp.Status--, Result');
    sql.add('order by YWCP.DDBH ');
    end;
    //FuncObj.WriteErrorLog(sql.Text);
    active := true;
//  FuncObj.WriteErrorLog(sql.Text);
  end;
end;
          }

          // code moi
          procedure TScanStockDet.Button1Click(Sender: TObject);
var
  strNextDate: string;
begin
  if checkBox2.Checked then
  begin
    DBGridEh1.Columns[2].Visible := true;
    DBGridEh1.Columns[10].Visible := false;
    DBGridEh1.Columns[13].Visible := false;
  end
  else
  begin
    DBGridEh1.Columns[2].Visible := false;
    DBGridEh1.Columns[10].Visible := true;
    DBGridEh1.Columns[13].Visible := true;
  end;

  // Tính tru?c ngày ti?p theo d? truy v?n không c?n dùng CONVERT làm ch?m Index
  strNextDate := FormatDateTime('yyyy/MM/dd', DTP.Date + 1);

  with query1 do
  begin
    active := false;
    sql.Clear;
    // B? sung các l?nh SET d? tránh l?i
    SQL.Add('SET ANSI_NULLS ON');
    SQL.Add('SET QUOTED_IDENTIFIER ON');
    SQL.Add('SET CONCAT_NULL_YIELDS_NULL ON');
    SQL.Add('SET ANSI_WARNINGS ON');
    SQL.Add('SET ANSI_PADDING ON');
    SQL.Add('SET ARITHABORT ON');

    if SameText(Main.Edit2.Text, 'HBA') then
    begin
      sql.add('select YWCP.DDBH,YWDD.YSBH,');
      if checkBox2.Checked then
      begin
        sql.add('     BDepartment.DepName,');
      end
      else
      begin
        sql.Add('     ''1'' as DepName,');
      end;
      
      // GI? NGUYÊN 100% C?U TRÚC SELECT VÀ TÍNH TOÁN
      sql.Add('       XXZL.Article,max (YWCP.KCBH) as KCBH,ISNULL(STUFF((SELECT '', '' + kv2.KVBH + ''('' + CAST(SUM(kv2.Qty) AS VARCHAR(10)) + '')''FROM YWCP kv2 WITH (NOLOCK)  ');
      sql.Add(' WHERE kv2.DDBH = YWCP.DDBH AND SB=1 GROUP BY kv2.KVBH ');
      sql.Add(' FOR XML PATH(''''), TYPE).value(''.'', ''VARCHAR(500)''),1,2,''''),''NO('' + CAST(SUM(YWCP.Qty) AS VARCHAR(10)) + '')'') AS KVBH    ');
      sql.Add(' , Person as Status ');
      sql.Add('       ,XXZL.XieMing,YWDD.ETD,LBZLS.YWSM as Country,KFZL.KFJC,');
      sql.add('       YWDD.Qty,sum(YWCP.Qty) as okQty,YWDD.Qty-isnull(sum(YWCP.Qty),0) as LackQty,sum(YWDDSDZ.Qty) as DZQty,');
      sql.add('       YWBZPO.CTS,count(YWCP.DDBH) as okCTS,YWBZPO.CTS-count(YWCP.DDBH) as LackCTS,max(YWCP.LastInDate) as LastInDate,max(YWCP.InDate) as InDate,XXZL.yssm,KHPO,');
      sql.add('       STUFF((SELECT ''-'' + CAST(SB AS varchar(10))FROM (SELECT DISTINCT SB FROM YWCP cp2 WITH (NOLOCK) WHERE cp2.DDBH = YWCP.DDBH) t FOR XML PATH(''''), TYPE).value(''.'', ''VARCHAR(8000)''),1,1,'''') AS SB,'''' Status,CONVERT(VARCHAR(8000), YWBZPO.MEMO) AS POMEMO');
      
      // GI? NGUYÊN 100% CÁC B?NG VÀ PHÉP JOIN
      sql.add('from YWCP  with (nolock)');
      sql.add('left join YWDD  with (nolock) on YWDD.DDBH=YWCP.DDBH ');
      sql.add('left join (select CartonBar,sum(Qty) as Qty from YWDDSDZ ');
      sql.add('           group by CartonBar ) YWDDSDZ on YWDDSDZ.CartonBar=YWCP.CartonBar ');
      sql.add('left join DDZL  with (nolock) on YWDD.YSBH=DDZl.DDBH ');
      sql.add('left join XXZL  with (nolock) on DDZl.XieXing=XXZl.XieXing and DDZL.SheHao=XXZL.Shehao ');
      sql.add('left join LBZLS  with (nolock) on LBZLS.LB='+''''+'13'+''''+' and LBZLS.LBDH=DDZL.Dest');
      sql.add('left join KFZL  with (nolock) on KFZL.KFDH=DDZL.KHBH ');
      sql.add('left join DDZL_PASS with (nolock) on YWCP.DDBH=DDZL_PASS.DDBH ');
      sql.add('LEFT JOIN (SELECT A.DDBH,SUM(A.CTS) AS CTS,STUFF((SELECT ''/'' + B.MEMO FROM (SELECT DISTINCT DDBH, MEMO  ');
      sql.add('FROM YWBZPOS WITH (NOLOCK)) B WHERE B.DDBH = A.DDBH FOR XML PATH(''''), TYPE).value(''.'', ''VARCHAR(MAX)''), 1, 1, '''') AS MEMO FROM ( ');
      sql.add('SELECT DISTINCT DDBH, XH, CTS, MEMO FROM YWBZPOS WITH (NOLOCK) WHERE DDBH LIKE '''+edit1.Text+'%'') A GROUP BY A.DDBH) YWBZPO ON YWCP.DDBH = YWBZPO.DDBH');
      
      if checkBox2.Checked then
        sql.add('left join BDepartment on YWCP.DepNO = BDepartment.ID');

      // T?I UU M?NH Ð? WHERE
      sql.Add('where DDZL.DDBH like '''+edit1.Text+'%''');
      sql.add('      and YWCP.KCBH like '''+edit2.Text+'%''');
      sql.add('      and isnull(KFZL.KFJC,'''') like ''%'+edit3.text+'%''');
      sql.add('      and isnull(LBZLS.YWSM,'''') like ''%'+edit4.text+'%''');
      sql.add('      and DDZL.GSBH='''+main.edit2.text+''' ');
      
      // Ð?i ngày và NOT EXISTS
      sql.add('      and IsNull(YWCP.SB,'''')<>'''' and YWCP.Indate < ''' + strNextDate + ''' ');
      sql.add('      and NOT EXISTS (Select 1 from YWCP EX1 where EX1.CARTONBAR = YWCP.CARTONBAR and EX1.SB=''3'' and EX1.EXEDATE < ''' + strNextDate + ''')');
      
      if checkbox1.checked=false then
      begin
        sql.add('    and NOT EXISTS (Select 1 from YWCP EX2 where EX2.CARTONBAR = YWCP.CARTONBAR and EX2.SB in (''2'',''4'') and IsNull(EX2.OUTDATE,GetDate()-7200) < ''' + strNextDate + ''')');
      end;

      // GI? NGUYÊN GROUP BY VÀ ORDER BY
      sql.add('group by YWCP.DDBH,YWDD.YSBH,');
      if checkBox2.Checked then
        sql.add('     BDepartment.DepName,');
      sql.add('         XXZL.Article,XXZL.XieMing,YWDD.ETD,LBZLS.YWSM,KFZL.KFJC,YWDD.Qty,YWBZPO.CTS,XXZL.yssm,KHPO,YWBZPO.MEMO, Person');
      sql.add('order by YWCP.DDBH ');
      // FuncObj.WriteErrorLog(sql.Text);
    end
    else
    begin
      sql.add('select YWCP.DDBH,YWDD.YSBH,');
      if checkBox2.Checked then
      begin
        sql.add('     BDepartment.DepName,');
      end
      else
      begin
        sql.Add('     ''1'' as DepName,');
      end;
      
      // GI? NGUYÊN 100% C?U TRÚC SELECT VÀ TÍNH TOÁN
      sql.Add('       XXZL.Article,max (YWCP.KCBH) as KCBH,ISNULL(STUFF((SELECT '', '' + kv2.KVBH + ''('' + CAST(SUM(kv2.Qty) AS VARCHAR(10)) + '')''FROM YWCP kv2 WITH (NOLOCK)  ');
      sql.Add(' WHERE kv2.DDBH = YWCP.DDBH AND SB=1 GROUP BY kv2.KVBH ');
      sql.Add(' FOR XML PATH(''''), TYPE).value(''.'', ''VARCHAR(500)''),1,2,''''),''NO('' + CAST(SUM(YWCP.Qty) AS VARCHAR(10)) + '')'') AS KVBH    ');
      sql.Add(' , '''' as Status ');
      sql.Add('       ,XXZL.XieMing,YWDD.ETD,LBZLS.YWSM as Country,KFZL.KFJC,');
      sql.add('       YWDD.Qty,sum(YWCP.Qty) as okQty,YWDD.Qty-isnull(sum(YWCP.Qty),0) as LackQty,sum(YWDDSDZ.Qty) as DZQty,');
      sql.add('       YWBZPO.CTS,count(YWCP.DDBH) as okCTS,YWBZPO.CTS-count(YWCP.DDBH) as LackCTS,max(YWCP.LastInDate) as LastInDate,max(YWCP.InDate) as InDate,XXZL.yssm,KHPO,');
      sql.add('STUFF((SELECT ''-'' + CAST(SB AS varchar(10))FROM ( ');
      sql.add('       SELECT DISTINCT SB FROM YWCP cp2 WITH (NOLOCK) WHERE cp2.DDBH = YWCP.DDBH) t FOR XML PATH(''''), TYPE).value(''.'', ''VARCHAR(8000)''),1,1,'''') AS SB,ywcp.Status Status,CONVERT(VARCHAR(8000), YWBZPO.MEMO) AS POMEMO');
      
      // GI? NGUYÊN 100% CÁC B?NG VÀ PHÉP JOIN
      sql.add('from YWCP  with (nolock)');
      sql.add('left join YWDD  with (nolock) on YWDD.DDBH=YWCP.DDBH ');
      sql.add('left join (select CartonBar,sum(Qty) as Qty from YWDDSDZ WITH (NOLOCK) ');
      sql.add('           group by CartonBar ) YWDDSDZ on YWDDSDZ.CartonBar=YWCP.CartonBar ');
      sql.add('left join DDZL  with (nolock) on YWDD.YSBH=DDZl.DDBH ');
      sql.add('left join XXZL  with (nolock) on DDZl.XieXing=XXZl.XieXing and DDZL.SheHao=XXZL.Shehao ');
      sql.add('left join LBZLS  with (nolock) on LBZLS.LB='+''''+'13'+''''+' and LBZLS.LBDH=DDZL.Dest');
      sql.add('left join KFZL  with (nolock) on KFZL.KFDH=DDZL.KHBH ');
      sql.add('--left join (SELECT DISTINCT SCBH , Result FROM WOPR_MA WITH (NOLOCK)) WOPR_MA on YWCP.DDBH=WOPR_MA.SCBH  ');
      sql.add('LEFT JOIN (SELECT A.DDBH,SUM(A.CTS) AS CTS,STUFF((SELECT ''/'' + B.MEMO FROM (SELECT DISTINCT DDBH, MEMO  ');
      sql.add('FROM YWBZPOS WITH (NOLOCK)) B WHERE B.DDBH = A.DDBH FOR XML PATH(''''), TYPE).value(''.'', ''VARCHAR(MAX)''), 1, 1, '''') AS MEMO FROM ( ');
      sql.add('SELECT DISTINCT DDBH, XH, CTS, MEMO FROM YWBZPOS WITH (NOLOCK) WHERE DDBH LIKE '''+edit1.Text+'%'') A GROUP BY A.DDBH) YWBZPO ON YWCP.DDBH = YWBZPO.DDBH');
      
      if checkBox2.Checked then
        sql.add('left join BDepartment on YWCP.DepNO = BDepartment.ID');
        
      // T?I UU M?NH Ð? WHERE
      sql.Add('where DDZL.DDBH like '''+edit1.Text+'%''');
      sql.add('      and YWCP.KCBH like '''+edit2.Text+'%''');
      sql.add('      and isnull(KFZL.KFJC,'''') like ''%'+edit3.text+'%''');
      sql.add('      and isnull(LBZLS.YWSM,'''') like ''%'+edit4.text+'%''');
      sql.add('      and DDZL.GSBH='''+main.edit2.text+''' ');
      
      // Ð?i ngày và NOT EXISTS
      sql.add('      and IsNull(YWCP.SB,'''')<>'''' and YWCP.Indate < ''' + strNextDate + ''' ');
      sql.add('      and NOT EXISTS (Select 1 from YWCP EX1 WITH (NOLOCK) where EX1.CARTONBAR = YWCP.CARTONBAR and EX1.SB=''3'' and EX1.EXEDATE < ''' + strNextDate + ''')');
      
      if cbx1.Text <> 'All' then
        sql.Add('      and ywcp.sb = '+CBX1.text+' ');
        
      if checkbox1.checked=false then
      begin
        sql.add('    and NOT EXISTS (Select 1 from YWCP EX2 WITH (NOLOCK) where EX2.CARTONBAR = YWCP.CARTONBAR and EX2.SB in (''2'',''4'') and IsNull(EX2.OUTDATE,GetDate()-7200) < ''' + strNextDate + ''')');
      end;

      // GI? NGUYÊN GROUP BY VÀ ORDER BY
      sql.add('group by YWCP.DDBH,YWDD.YSBH,');
      if checkBox2.Checked then
        sql.add('     BDepartment.DepName,');
      sql.add('         XXZL.Article,XXZL.XieMing,YWDD.ETD,LBZLS.YWSM,KFZL.KFJC,YWDD.Qty,YWBZPO.CTS,XXZL.yssm,KHPO,YWBZPO.MEMO,ywcp.Status--, Result');
      sql.add('order by YWCP.DDBH ');
    end;
    
    //FuncObj.WriteErrorLog(sql.Text);
    active := true;
//  FuncObj.WriteErrorLog(sql.Text);
  end;
end;




procedure TScanStockDet.DBGridEh1GetCellParams(Sender: TObject;
  Column: TColumnEh; AFont: TFont; var Background: TColor;
  State: TGridDrawState);
begin
  if query1.FieldByName('LackQty').value<=0 then
  begin
    dbgrideh1.canvas.font.color:=clBlue;
  end;
 if (Column.Index <= 7) then
  begin
    if query1.FieldByName('InDate').AsDateTime <= (Date - 30) then
      Background := RGB(255,165,0);
  end;
end;

procedure TScanStockDet.Excel1Click(Sender: TObject);
var
      eclApp,WorkBook:olevariant;
 //     xlsFileName:string;
      i,j:integer;
begin

if query1.Active then
  begin
    if query1.recordcount=0 then
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
  for   i:=1   to   query1.fieldcount   do
    begin
      eclApp.Cells(1,i+1):=query1.fields[i-1].FieldName;
    end;
  query1.First;
  j:=2;
  while   not  query1.Eof   do
    begin
      eclApp.Cells(j,1):=j-1;
     for i := 1 to query1.FieldCount do
       begin
         if SameText(query1.Fields[i-1].FieldName, 'SB') then
           begin
             eclApp.Cells.Item[j, i+1].NumberFormat := '@'; // ép ki?u Text
            eclApp.Cells(j, i+1) := query1.Fields[i-1].AsString;
          end
          else
           eclApp.Cells(j, i+1) := query1.Fields[i-1].AsString;

           eclApp.Cells.Item[j, i+1].Font.Size := 8;
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

procedure TScanStockDet.Print1Click(Sender: TObject);
begin
PrintDBGrideh1.Preview;
end;

procedure TScanStockDet.DetailSize1Click(Sender: TObject);
begin
ScanStockDet_Det:=TScanStockDet_Det.create(self);
ScanStockDet_Det.show;
end;

procedure TScanStockDet.DetailCarton1Click(Sender: TObject);
begin
ScanStockDet_Car:=TScanStockDet_Car.create(self);
ScanStockDet_Car.show;
end;

procedure TScanStockDet.FormCreate(Sender: TObject);
var
  pnl: TPanel;
begin
  DTP.Date := Date;

  pnl := TPanel.Create(Self);
  pnl.Parent := Self;
  pnl.Left := 712;
  pnl.Top := 15;
  pnl.Width := 34;
  pnl.Height := 21;
  pnl.Color := clBlue;
  pnl.BevelOuter := bvRaised;

  // ===== Khung VANG =====
  pnl := TPanel.Create(Self);
  pnl.Parent := Self;
  pnl.Left := 712;
  pnl.Top := 48;
  pnl.Width := 33;
  pnl.Height := 21;
  pnl.Color := clYellow;
  pnl.BevelOuter := bvRaised;

  // ===== Khung XANH LA =====
  pnl := TPanel.Create(Self);
  pnl.Parent := Self;
  pnl.Left := 842;
  pnl.Top := 11;
  pnl.Width := 30;
  pnl.Height := 21;
  pnl.Color := clGreen;
  pnl.BevelOuter := bvRaised;

  // ===== Khung ?? =====
  pnl := TPanel.Create(Self);
  pnl.Parent := Self;
  pnl.Left := 842;
  pnl.Top := 46;
  pnl.Width := 29;
  pnl.Height := 21;
  pnl.Color := clRed;
  pnl.BevelOuter := bvRaised;

  // ===== Khung CAM (RGB 255,165,0) =====
  pnl := TPanel.Create(Self);
  pnl.Parent := Self;
  pnl.Left := 963;
  pnl.Top := 8;
  pnl.Width := 36;
  pnl.Height := 21;
  pnl.Color := RGB(255,165,0);
  pnl.BevelOuter := bvRaised;
end;

procedure TScanStockDet.DBGridEh1DrawColumnCell(Sender: TObject;
  const Rect: TRect; DataCol: Integer; Column: TColumnEh;
  State: TGridDrawState);
var
  statusVal, sbVal: string;
  sbField: TField;
begin
  statusVal := Trim(Query1.FieldByName('Status').AsString);
  sbField := Query1.FieldByName('SB');

  if (sbField = nil) or sbField.IsNull then
    sbVal := ''
  else
    sbVal := Trim(sbField.AsString);
  if Column.FieldName = 'Status' then
  begin
    if (Query1.FieldByName('LackQty').AsFloat > 0)   then
      DBGridEh1.Canvas.Brush.Color := clYellow
    else
      DBGridEh1.Canvas.Brush.Color := clBlue;
    if DBGridEh1.Canvas.Brush.Color = clBlue then
      DBGridEh1.Canvas.Font.Color := clBlue
    else
      DBGridEh1.Canvas.Font.Color := clYellow;

    DBGridEh1.Canvas.FillRect(Rect);
    DBGridEh1.DefaultDrawColumnCell(Rect, DataCol, Column, State);
  end
  else if Column.FieldName = 'SB' then
  begin
    if SameText(sbVal, '1') and SameText(statusVal, 'P') then
    begin
      DBGridEh1.Canvas.Brush.Color := clGreen;
      DBGridEh1.Canvas.Font.Color := clWhite;
    end
    else if SameText(sbVal, '1') then
    begin
      DBGridEh1.Canvas.Brush.Color := clWhite;
      DBGridEh1.Canvas.Font.Color := clBlack;
    end
    else if (SameText(sbVal, '2') or SameText(sbVal, '1-2') or
             SameText(sbVal, '2-4') or SameText(sbVal, '1-2-4')) then
    begin
      DBGridEh1.Canvas.Brush.Color := clRed;
      DBGridEh1.Canvas.Font.Color := clWhite;
    end
    else if SameText(sbVal, '1-4') then
    begin
      DBGridEh1.Canvas.Brush.Color := clBlue;
      DBGridEh1.Canvas.Font.Color := clWhite;
    end
    else
    begin
      DBGridEh1.Canvas.Brush.Color := clWindow;
      DBGridEh1.Canvas.Font.Color := clWindowText;
    end;

    DBGridEh1.Canvas.FillRect(Rect);
    DBGridEh1.DefaultDrawColumnCell(Rect, DataCol, Column, State);
  end
  else
    DBGridEh1.DefaultDrawColumnCell(Rect, DataCol, Column, State);
end;



end.
