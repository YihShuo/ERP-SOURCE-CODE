unit ImportHaiQuanLL_Child1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls,ComObj, DB, DBTables,StrUtils;

type
  TImportHaiQuanLL_Child = class(TForm)
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
    Label6: TLabel;
    Label7: TLabel;
    Label8: TLabel;
    Button2: TButton;
    Label9: TLabel;
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
  ImportHaiQuanLL_Child: TImportHaiQuanLL_Child;

implementation
uses main1,FunUnit,SemiImportPrice1;
{$R *.dfm}

procedure TImportHaiQuanLL_Child.Button1Click(Sender: TObject);
var
  ExcelApp: Variant;
  S_LLNO,S_CLBH,S_DFL,S_SCBH,S_HGLB,S_HGBH,S_TYLE: string;
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
    {if ((ExcelApp.Cells[1,1].Value<>'LLNO') or (ExcelApp.Cells[1,2].Value<>'CLBH') or (ExcelApp.Cells[1,3].Value<>'DFL') or (ExcelApp.Cells[1,4].Value<>'SCBH') or (ExcelApp.Cells[1,5].Value<>'HGLB') or (ExcelApp.Cells[1,6].Value<>'HGBH')) then
    begin
      Showmessage('Excel Format is not exact');
      exit;
    end; }

    //
    i:=2;
    S_LLNO:=ExcelApp.Cells[i,1].Value;
    S_CLBH:=ExcelApp.Cells[i,2].Value;
    S_DFL:=ExcelApp.Cells[i,3].Value;
    S_SCBH:=ExcelApp.Cells[i,4].Value;
    while ((trim(S_LLNO)<>'') and (trim(S_CLBH)<>'') and (trim(S_DFL)<>'') and (trim(S_SCBH)<>''))  do
    begin
      S_LLNO:=ExcelApp.Cells[i,1].Value;
      S_CLBH:=ExcelApp.Cells[i,2].Value;
      S_DFL:=ExcelApp.Cells[i,3].Value;
      S_SCBH:=ExcelApp.Cells[i,4].Value;
      S_HGLB:=ExcelApp.Cells[i,5].Value;
      S_HGBH:=ExcelApp.Cells[i,6].Value;
      S_TYLE:=ExcelApp.Cells[i,7].Value;
      Query1.Close;
      Query1.SQL.Clear;
      Query1.SQL.Add('Select * From KCLLS_1416_Child');
      Query1.SQL.Add('Where LLNO ='''+S_LLNO+''' and CLBH= '''+S_CLBH+''' and DFL='''+S_DFL+''' and SCBH='''+S_SCBH+''' ');
      Query1.ExecSQL;
      Query1.Open;
      if Query1.RecordCount>0 then
      begin
        Query1.Close;
        Query1.SQL.Clear;

        Query1.SQL.Add('Update KCLLS_1416_Child set HGLB='''+S_HGLB+''',CNO='''+S_HGBH+''' ,RateC='''+S_TYLE+'''');
        Query1.SQL.Add('Where LLNO ='''+S_LLNO+''' and CLBH= '''+S_CLBH+''' and DFL='''+S_DFL+''' and SCBH='''+S_SCBH+''' ');
        Query1.ExecSQL;
        Memo1.Lines.Add('Update LLNO:'+S_LLNO+', CLBH:'+S_CLBH+', DFL:'+S_DFL+', SCBH:'+S_SCBH+', HGLB:'+S_HGLB+', HGBH:'+S_HGBH+', TYLE:'+S_TYLE+' ...OK!');
      end;

      i:=i+1;
      S_LLNO:=ExcelApp.Cells[i,1].Value;
      S_CLBH:=ExcelApp.Cells[i,2].Value;
      S_DFL:=ExcelApp.Cells[i,3].Value;
      S_SCBH:=ExcelApp.Cells[i,4].Value;
    end;

    ExcelApp.WorkBooks.Close;
    ExcelApp.Quit;

    Memo1.Lines.Add('');
    Memo1.Lines.Add('Import '+inttostr(i-2)+' rows successfuly!');
  end;
end;

procedure TImportHaiQuanLL_Child.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  Action:=caFree;
end;

procedure TImportHaiQuanLL_Child.FormDestroy(Sender: TObject);
begin
   ImportHaiQuanLL_Child:=nil;
end;

procedure TImportHaiQuanLL_Child.Button2Click(Sender: TObject);
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

    eclApp.Cells(1,1):='LLNO';
    eclApp.Cells(2,1):='20140100299';
    eclApp.Cells(3,1):='20140100299';

    eclApp.Cells(1,2):='CLBH';
    eclApp.Cells(2,2):='H130000035';
    eclApp.Cells(3,2):='L090000773';

    eclApp.Cells(1,3):='DFL';
    eclApp.Cells(2,3):='A';
    eclApp.Cells(3,3):='A';

    eclApp.Cells(1,4):='SCBH';
    eclApp.Cells(2,4):='YV1402-0173';
    eclApp.Cells(3,4):='YV1402-0173';

    eclApp.Cells(1,5):='HGLB';
    eclApp.Cells(2,5):='NK';
    eclApp.Cells(3,5):='NK';

    eclApp.Cells(1,6):='HGBH';
    eclApp.Cells(2,6):='HOP';
    eclApp.Cells(3,6):='NHAN';

    eclApp.Cells(1,7):='TY LE';
    eclApp.Cells(2,7):='1';
    eclApp.Cells(3,7):='1';

    eclApp.ActiveSheet.Rows[1].font.bold :=true;

    eclApp.Caption:='ACCOUNT N17A4 Sample File';
    eclapp.columns.autofit;       
    showmessage('Download excel SAMPLE successful.');
    eclApp.Visible:=True;

  except
    on   F:Exception   do
      showmessage(F.Message);
  end;
end;

end.
