unit ImportHaiQuanRK1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls,ComObj, DB, DBTables,StrUtils;

type
  TImportHaiQuanRK = class(TForm)
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
    Label10: TLabel;
    Label11: TLabel;
    Label12: TLabel;
    Label13: TLabel;
    Label14: TLabel;
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
  ImportHaiQuanRK: TImportHaiQuanRK;

implementation
uses main1,FunUnit;
{$R *.dfm}

procedure TImportHaiQuanRK.Button1Click(Sender: TObject);
var
  ExcelApp: Variant;
  S_RKNO,S_CLBH,S_CGBH,S_RKSB,S_HGLB,S_CNO,S_CTTT,S_TENHQ,S_DVT,S_TYLE,S_Quantity,S_TOKHAI: string;
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
    {if ((ExcelApp.Cells[1,1].Value<>'RKNO') or (ExcelApp.Cells[1,2].Value<>'CLBH') or (ExcelApp.Cells[1,3].Value<>'CGBH') or (ExcelApp.Cells[1,4].Value<>'RKSB') or (ExcelApp.Cells[1,5].Value<>'HGLB') or (ExcelApp.Cells[1,6].Value<>'HaiQuan') or (ExcelApp.Cells[1,7].Value<>'SoCTTT')) then
    begin
      Showmessage('Excel Format is not exact');
      exit;
    end; }

    //
    i:=2;
    S_RKNO:=ExcelApp.Cells[i,1].Value;
    S_CLBH:=ExcelApp.Cells[i,2].Value;
    S_CGBH:=ExcelApp.Cells[i,3].Value;
    S_RKSB:=ExcelApp.Cells[i,4].Value;
    while ((trim(S_RKNO)<>'') and (trim(S_CLBH)<>'') and (trim(S_CGBH)<>'') and (trim(S_RKSB)<>''))  do
    begin
      S_RKNO:=ExcelApp.Cells[i,1].Value;
      S_CLBH:=ExcelApp.Cells[i,2].Value;
      S_CGBH:=ExcelApp.Cells[i,3].Value;
      S_RKSB:=ExcelApp.Cells[i,4].Value;
      S_HGLB:=ExcelApp.Cells[i,5].Value;
      S_CNO:=ExcelApp.Cells[i,6].Value;
      S_CTTT:=ExcelApp.Cells[i,7].Value;
      S_TENHQ:=ExcelApp.Cells[i,8].Value;
      S_DVT:=ExcelApp.Cells[i,9].Value;
      S_TYLE:=ExcelApp.Cells[i,10].Value;
      S_Quantity:=ExcelApp.Cells[i,11].Value;
      S_TOKHAI:=ExcelApp.Cells[i,12].Value;
      Query1.Close;
      Query1.SQL.Clear;
      Query1.SQL.Add('Select * From KCRKS_1416');
      Query1.SQL.Add('Where RKNO ='''+S_RKNO+''' and CLBH= '''+S_CLBH+''' and CGBH='''+S_CGBH+''' and RKSB='''+S_RKSB+''' ');
      Query1.ExecSQL;
      Query1.Open;
      if Query1.RecordCount>0 then
      begin
        Query1.Close;
        Query1.SQL.Clear;
        {Query1.SQL.Add('Update KCRK_1416 set HGLB='''+S_HGLB+''' ');
        Query1.SQL.Add('Where RKNO ='''+S_RKNO+''' '); }
        
        Query1.SQL.Add('Update KCRKS_1416 set CNO='''+S_CNO+''',PaymentNo='''+S_CTTT+''',HGPM='''+S_TENHQ+''',UnitC='''+S_DVT+''', RateC='''+S_TYLE+''' ,Quantity='''+S_Quantity+''',Declaretion='''+S_TOKHAI+''' ');
        Query1.SQL.Add('Where RKNO ='''+S_RKNO+''' and CLBH= '''+S_CLBH+''' and CGBH='''+S_CGBH+''' and RKSB='''+S_RKSB+''' ');
        Query1.ExecSQL;
        Memo1.Lines.Add('Update RKNO:'+S_RKNO+', CLBH:'+S_CLBH+', CGBH:'+S_CGBH+', RKSB:'+S_RKSB+', CNO:'+S_CNO+', CTTT:'+S_CTTT+' ...OK!');
      end;

      i:=i+1;
      S_RKNO:=ExcelApp.Cells[i,1].Value;
      S_CLBH:=ExcelApp.Cells[i,2].Value;
      S_CGBH:=ExcelApp.Cells[i,3].Value;
      S_RKSB:=ExcelApp.Cells[i,4].Value;
    end;

    ExcelApp.WorkBooks.Close;
    ExcelApp.Quit;

    Memo1.Lines.Add('');
    Memo1.Lines.Add('Import '+inttostr(i-2)+' rows successfuly!');
  end;
end;

procedure TImportHaiQuanRK.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  Action:=caFree;
end;

procedure TImportHaiQuanRK.FormDestroy(Sender: TObject);
begin
   ImportHaiQuanRK:=nil;
end;

procedure TImportHaiQuanRK.Button2Click(Sender: TObject);
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

    eclApp.Cells(1,1):='RKNO';
    eclApp.Cells(2,1):='20140100003';
    eclApp.Cells(3,1):='20140100003';

    eclApp.Cells(1,2):='CLBH';
    eclApp.Cells(2,2):='C020003176';
    eclApp.Cells(3,2):='C020003244';

    eclApp.Cells(1,3):='CGBH';
    eclApp.Cells(2,3):='YV1401-0563';
    eclApp.Cells(3,3):='YV1401-0563';

    eclApp.Cells(1,4):='RKSB';
    eclApp.Cells(2,4):='VN';
    eclApp.Cells(3,4):='VN';

    eclApp.Cells(1,5):='HGLB';
    eclApp.Cells(2,5):='NK';
    eclApp.Cells(3,5):='NK';

    eclApp.Cells(1,6):='HaiQuan';
    eclApp.Cells(2,6):='VD';
    eclApp.Cells(3,6):='VD';

    eclApp.Cells(1,7):='SoCTTT';
    eclApp.Cells(2,7):='311/4';
    eclApp.Cells(3,7):='311/4';

    eclApp.Cells(1,8):='Ten HQ';
    eclApp.Cells(2,8):='Nhan giay';
    eclApp.Cells(3,8):='Nhan giay';

    eclApp.Cells(1,9):='DVT HQ';
    eclApp.Cells(2,9):='PCE';
    eclApp.Cells(3,9):='PCE';

    eclApp.Cells(1,10):='TY LE HQ';
    eclApp.Cells(2,10):='1';
    eclApp.Cells(3,10):='1';

    eclApp.Cells(1,11):='SL QUI DOI';
    eclApp.Cells(2,11):='120';
    eclApp.Cells(3,11):='120';

    eclApp.Cells(1,12):='TO KHAI';
    eclApp.Cells(2,12):='1010123456';
    eclApp.Cells(3,12):='1010123456';

    eclApp.ActiveSheet.Rows[1].font.bold :=true;

    eclApp.Caption:='ACCOUNT N17A2 Sample File';
    eclapp.columns.autofit;
    showmessage('Download excel SAMPLE successful.');
    eclApp.Visible:=True;

  except
    on   F:Exception   do
      showmessage(F.Message);
  end;
end;

end.
