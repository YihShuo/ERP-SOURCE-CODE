unit ScanInvoice1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Buttons, ComCtrls, StdCtrls, ExtCtrls, Menus, DBTables, DB, ADODB,Math,
  GridsEh, DBGridEh, Mask, DBCtrls,strUtils,NumberToWords,comobj, iniFiles;

type
  TScanInvoice = class(TForm)
    Label4: TLabel;
    Panel3: TPanel;
    Label3: TLabel;
    Panel1: TPanel;
    Edit1: TEdit;
    Button2: TButton;
    DBGrid1: TDBGridEh;
    ScanData: TQuery;
    DS1: TDataSource;
    Qtemp: TQuery;
    Label2: TLabel;
    Edit2: TEdit;
    ScanDataINV_NO: TStringField;
    ScanDataUserDate: TDateTimeField;
    ScanDataRYNO: TStringField;
    ScanDataSTYLE_NAME: TStringField;
    ScanDataPO: TStringField;
    ScanDataARTICLE: TStringField;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormDestroy(Sender: TObject);
    procedure Edit1KeyPress(Sender: TObject; var Key: Char);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  ScanInvoice: TScanInvoice;

implementation
 uses main1;
{$R *.dfm}

procedure TScanInvoice.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
   Action := caFree;
end;

procedure TScanInvoice.FormDestroy(Sender: TObject);
begin
     ScanInvoice := nil;
end;

procedure TScanInvoice.Edit1KeyPress(Sender: TObject; var Key: Char);
begin
 if Key = #13 then  // Ki?m tra n?u nh?n Enter
  begin
  if (edit1.text='')then
    begin
    ShowMessage('du lieu trong');
        Exit;
    end;
    with ScanData do
      begin
        active:=false;
        sql.Clear;
        sql.Add('  select a.INV_NO,b.UserDate, b.RYNO, b.STYLE_NAME,b.PO,b.ARTICLE from INVOICE_M A');
        sql.Add(' left join INVOICE_D B on a.INV_NO=b.INV_NO  ');
        sql.Add(' where a.INV_NO ='''+edit1.text+'''  ');
        active:=true;
      end;
    end;
   edit1.text:='';
end;

end.
