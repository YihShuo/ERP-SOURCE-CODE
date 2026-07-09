unit ImportToKhai1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls,ComObj, DB, DBTables,StrUtils;

type
  TImportToKhai = class(TForm)
    Button1: TButton;
    Memo1: TMemo;
    OpenDialog1: TOpenDialog;
    Query1: TQuery;
    Label1: TLabel;
    Label3: TLabel;
    Label2: TLabel;
    Label5: TLabel;
    Query2: TQuery;
    Query3: TQuery;
    Button2: TButton;
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
  ImportToKhai: TImportToKhai;

implementation
uses main1,FunUnit;
{$R *.dfm}

procedure TImportToKhai.Button1Click(Sender: TObject);
var
  ExcelApp: Variant;
  S_RKNO,S_TOKHAI: string;
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
    if ((ExcelApp.Cells[1,1].Value<>'RKNO') or (ExcelApp.Cells[1,2].Value<>'ToKhai') ) then
    begin
      Showmessage('Excel Format is not exact');
      exit;
    end;

    //
    i:=2;
    S_RKNO:=ExcelApp.Cells[i,1].Value;
    S_TOKHAI:=ExcelApp.Cells[i,2].Value;
    while ((trim(S_RKNO)<>'') )  do
    begin
      S_RKNO:=ExcelApp.Cells[i,1].Value;
      S_TOKHAI:=ExcelApp.Cells[i,2].Value;
      Query1.Close;
      Query1.SQL.Clear;
      Query1.SQL.Add('Select * From KCPK_1416');
      Query1.SQL.Add('Where PKNO ='''+S_RKNO+'''  ');
      Query1.ExecSQL;
      Query1.Open;
      if Query1.RecordCount>0 then
      begin
        Query1.Close;
        Query1.SQL.Clear;

        Query1.SQL.Add('Update KCPK_1416 set Declaretion='''+S_TOKHAI+''' ');
        Query1.SQL.Add('Where PKNO ='''+S_RKNO+'''  ');
        Query1.ExecSQL;
        Memo1.Lines.Add('Update RKNO:'+S_RKNO+', ToKhai:'+S_TOKHAI+' ...OK!');
      end else
      begin
        Query1.Close;
        Query1.SQL.Clear;

        Query1.SQL.Add('Insert into KCPK_1416 (PKNO,Declaretion,UserID,UserDate,YN) ');
        Query1.SQL.Add('values ('''+S_RKNO+''','''+S_TOKHAI+''','''+Main.Edit1.Text+''',Getdate(),''1'') ');
        Query1.ExecSQL;
        Memo1.Lines.Add('Insert RKNO:'+S_RKNO+', ToKhai:'+S_TOKHAI+' ...OK!');
      end;

      i:=i+1;
      S_RKNO:=ExcelApp.Cells[i,1].Value;
      S_TOKHAI:=ExcelApp.Cells[i,2].Value;
    end;

    ExcelApp.WorkBooks.Close;
    ExcelApp.Quit;

    Memo1.Lines.Add('');
    Memo1.Lines.Add('Import '+inttostr(i-2)+' rows successfuly!');
  end;
end;

procedure TImportToKhai.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  Action:=caFree;
end;

procedure TImportToKhai.FormDestroy(Sender: TObject);
begin
   ImportToKhai:=nil;
end;

procedure TImportToKhai.Button2Click(Sender: TObject);
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

    eclApp.Cells(1,2):='ToKhai';
    eclApp.Cells(2,2):='100203678';
    eclApp.Cells(3,2):='100203678';

    eclApp.ActiveSheet.Rows[1].font.bold :=true;

    eclApp.Caption:='ACCOUNT N17A2 To Khai Sample File';
    eclapp.columns.autofit;       
    showmessage('Download excel SAMPLE successful.');
    eclApp.Visible:=True;

  except
    on   F:Exception   do
      showmessage(F.Message);
  end;
end;

end.
