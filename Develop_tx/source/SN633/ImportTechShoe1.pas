unit ImportTechShoe1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls,ComObj, DB, DBTables,StrUtils;

type
  TImportTechShoe = class(TForm)
    Button1: TButton;
    Memo1: TMemo;
    OpenDialog1: TOpenDialog;
    Query1: TQuery;
    Label1: TLabel;
    Label4: TLabel;
    Label3: TLabel;
    Label2: TLabel;
    Label5: TLabel;
    Query2: TQuery;
    Query3: TQuery;
    Button2: TButton;
    Label6: TLabel;
    Label7: TLabel;
    procedure Button1Click(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormDestroy(Sender: TObject);
    procedure Button2Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  ImportTechShoe: TImportTechShoe;

implementation
uses main1,FunUnit,TechShoeStock1;
{$R *.dfm}

procedure TImportTechShoe.Button1Click(Sender: TObject);
var
  ExcelApp: Variant;
  S_YPDH,S_SKU,S_CTS,S_Qty,S_Memo: string;
  i:integer;
  IsPriceColumn:boolean;
begin


  if OpenDialog1.Execute then
  begin
    Memo1.Lines.Clear;

    ExcelApp:=CreateOleObject('Excel.Application');
    ExcelApp.WorkBooks.Open(OpenDialog1.FileName);
    ExcelApp.WorkSheets[1].Activate;
    //檢查欄位格式
    if ((ExcelApp.Cells[1,1].Value<>'YPDH') or (ExcelApp.Cells[1,2].Value<>'SKU') or (ExcelApp.Cells[1,3].Value<>'So Thung') or (ExcelApp.Cells[1,4].Value<>'So Doi') or (ExcelApp.Cells[1,5].Value<>'Ghi Chu')) then
    begin
      Showmessage('Excel Format is not exact');
      exit;
    end;
    //
    i:=2;
    S_YPDH:=ExcelApp.Cells[i,1].Value;
    while ((trim(S_YPDH)<>''))  do
    begin

      S_YPDH:=ExcelApp.Cells[i,1].Value;
      S_SKU:=ExcelApp.Cells[i,2].Value;
      S_CTS:= ExcelApp.Cells[i,3].Value;
      S_Qty:= ExcelApp.Cells[i,4].Value;
      S_Memo:= ExcelApp.Cells[i,5].Value;
      Query1.Close;
      Query1.SQL.Clear;
      Query1.SQL.Add('Select * from ShoeTestMonth_Tech');
      Query1.SQL.Add('Where YPDH ='''+S_YPDH+''' and KCYEAR='''+TechShoeStock.CBX1.Text+''' and KCMONTH='''+TechShoeStock.CBX2.Text+''' and CKBH='''+main.Edit2.Text+''' and CTS='''+S_CTS+''' ');
      Query1.ExecSQL;
      Query1.Open;
      if Query1.RecordCount=0 then
      begin
          Query1.Close;
          Query1.SQL.Clear;
          Query1.SQL.Add('insert into ShoeTestMonth_Tech ');
          Query1.SQL.Add('(KCYEAR, KCMONTH, CKBH, YPDH, Article, CTS, Qty, Memo, UserID, UserDate, YN) ');
          Query1.SQL.Add('values('''+TechShoeStock.CBX1.Text+''','''+TechShoeStock.CBX2.Text+''','''+main.Edit2.Text+''','''+S_YPDH+''','''+S_SKU+''','''+S_CTS+''','''+S_Qty+''','''+S_Memo+''','''+Main.Edit1.Text+''',Getdate(),1) ');
          Query1.ExecSQL;
          Memo1.Lines.Add('Insert YPDH:'+S_YPDH+' ...OK!');
      end else
      begin
          Query1.Close;
          Query1.SQL.Clear;
          Query1.SQL.Add('update ShoeTestMonth_Tech set Article ='''+S_SKU+''', Qty='''+S_Qty+''', Memo='''+S_Memo+''' ');
          Query1.SQL.Add(',UserDate = GetDate() ');
          Query1.SQL.Add(',UserID ='''+Main.Edit1.Text+'''');
          Query1.SQL.Add('where YPDH ='''+S_YPDH+''' and KCYEAR='''+TechShoeStock.CBX1.Text+''' and KCMONTH='''+TechShoeStock.CBX2.Text+''' and CKBH='''+main.Edit2.Text+''' and CTS='''+S_CTS+'''');
          Query1.ExecSQL;
          Memo1.Lines.Add('Update YPDH:'+S_YPDH+'...OK!');
      end;
      i:=i+1;
      S_YPDH:=ExcelApp.Cells[i,1].Value;
      S_SKU:=ExcelApp.Cells[i,2].Value;
      S_CTS:= ExcelApp.Cells[i,3].Value;
      S_Qty:= ExcelApp.Cells[i,4].Value;
      S_Memo:= ExcelApp.Cells[i,5].Value;
    end;

    ExcelApp.WorkBooks.Close;
    ExcelApp.Quit;

    Memo1.Lines.Add('');
    Memo1.Lines.Add('Import '+inttostr(i-2)+' rows successfuly!');
  end;  
end;

procedure TImportTechShoe.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  Action:=caFree;
end;

procedure TImportTechShoe.FormDestroy(Sender: TObject);
begin
   ImportTechShoe:=nil;
end;

procedure TImportTechShoe.Button2Click(Sender: TObject);
var eclApp,WorkBook1,xlSheet1:olevariant;
begin
  try
    eclApp:=CreateOleObject('Excel.Application');
    WorkBook1:=CreateOleObject('Excel.Sheet');
  except
    Application.MessageBox('NO Microsoft   Excel','Microsoft   Excel',MB_OK+MB_ICONWarning);
    Exit;
  end;

  try
    WorkBook1:=eclApp.workbooks.Add;
    eclApp.WorkSheets[1].Activate;
    xlSheet1:=workBook1.WorkSheets[1];

    eclApp.Cells(1,1):='YPDH';
    eclApp.Cells(2,1):='LAIK210700036';

    eclApp.Cells(1,2):='SKU';
    eclApp.Cells(2,2):='G43094-SK153U-22R02';

    eclApp.Cells(1,3):='So Thung';
    eclApp.Cells[2,3].NumberFormatLocal:='@';
    eclApp.Cells(2,3):='1-1';

    eclApp.Cells(1,4):='So Doi';
    eclApp.Cells(2,4):='0.5';

    eclApp.Cells(1,5):='Ghi Chu';
    eclApp.Cells(2,5):='Keep 2 (Cons-JP)';

    eclApp.ActiveSheet.Rows[1].font.bold :=true;

    eclApp.Caption:='Develop N633 Sample File';
    eclapp.columns.autofit;       
    showmessage('Download excel SAMPLE successful.');
    eclApp.Visible:=True;

  except
    on   F:Exception   do
      showmessage(F.Message);
  end;
end;

end.
