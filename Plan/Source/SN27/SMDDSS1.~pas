unit SMDDSS1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DB, DBTables, StdCtrls, Buttons, ExtCtrls, GridsEh, DBGridEh;

type
  TSMDDSS2 = class(TForm)
    DBGrideh2: TDBGridEh;
    Panel1: TPanel;
    Label1: TLabel;
    Edit1: TEdit;
    Button1: TButton;
    Query: TQuery;
    DS9: TDataSource;
    Delete: TBitBtn;
    CB1: TComboBox;
    Label2: TLabel;
    QueryDDBH: TStringField;
    QueryGXLB: TStringField;
    QueryXXCC: TStringField;
    QueryXH: TStringField;
    QueryCODEBAR: TStringField;
    QueryQty: TIntegerField;
    QueryCTS: TIntegerField;
    QueryokCTS: TIntegerField;
    QueryUSERDate: TDateTimeField;
    QueryUSERID: TStringField;
    QueryYN: TStringField;
    QueryScanSDate: TDateTimeField;
    QueryScanEDate: TDateTimeField;
    Button2: TButton;
    procedure FormDestroy(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure Button1Click(Sender: TObject);
    procedure DeleteClick(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  SMDDSS2: TSMDDSS2;

implementation

uses main1;

{$R *.dfm}

procedure TSMDDSS2.FormDestroy(Sender: TObject);
begin
    SMDDSS2 := nil;
end;

procedure TSMDDSS2.FormClose(Sender: TObject; var Action: TCloseAction);
begin
    Action := caFree;
end;

procedure TSMDDSS2.Button1Click(Sender: TObject);
begin
  with query do
    begin
      active:=false;
      sql.Clear;
      sql.Add('select * from smddss where ddbh ='''+edit1.Text+''' and gxlb = '''+CB1.Text+''' order by xxcc,XH ');
      active:=true;
    end;
end;

procedure TSMDDSS2.DeleteClick(Sender: TObject);
begin
  // Thong bao xac nhan truoc khi thuc hien
  if MessageDlg('Ban co chac chan xoa hay khong?', mtConfirmation, [mbYes, mbNo], 0) = mrYes then
  begin
    with query do
    begin
      // --- BUOC 1: SAO LUU DU LIEU ---
      Close;
      SQL.Clear;
      SQL.Add('INSERT INTO BDelRec ');
      SQL.Add('SELECT ''smddss'', ddbh, ');
      // Cong chuoi kem dau gach cheo va ep kieu de tranh loi so thap phan
      SQL.Add('CAST(ISNULL(codebar, '''') AS VARCHAR) + ''/'' + ');
      SQL.Add('CAST(ISNULL(xxcc, '''') AS VARCHAR) + ''/'' + ');
      SQL.Add('CAST(ISNULL(cts, '''') AS VARCHAR) + ''/'' + ');
      SQL.Add('CAST(ISNULL(okcts, '''') AS VARCHAR), ');
      SQL.Add('userid, :p_edit, GETDATE()');
      SQL.Add('FROM smddss WHERE ddbh = :p_ddbh AND gxlb = :p_gxlb');

      // Gan gia tri tham so (bao gom ca CB1)
      ParamByName('p_ddbh').AsString := Edit1.Text;
      ParamByName('p_gxlb').AsString := CB1.Text; 
      ParamByName('p_edit').AsString := Main.Edit1.Text;
      ExecSQL;

      // --- BUOC 2: XOA DU LIEU ---
      Close;
      SQL.Clear;
      SQL.Add('DELETE FROM smddss WHERE ddbh = :p_ddbh AND gxlb = :p_gxlb');

      // Gan lai tham so de xoa dung ban ghi vua copy
      ParamByName('p_ddbh').AsString := Edit1.Text;
      ParamByName('p_gxlb').AsString := CB1.Text;
      ExecSQL;

      ShowMessage('Xoa du lieu va sao luu thanh cong!');
    end;
  end;
end;

procedure TSMDDSS2.Button2Click(Sender: TObject);
begin
  with query do
    begin
      active:=false;
      sql.Clear;
      sql.Add('select * from smddss where ddbh  like''%'+edit1.Text+'%'' and gxlb = '''+CB1.Text+''' order by xxcc,XH');
      active:=true;
    end;
end;
procedure TSMDDSS2.FormCreate(Sender: TObject);
begin
if ((main.Edit1.text ='313761') or (main.Edit1.text = '321221')) then
 delete.Visible := true;
end;

end.


