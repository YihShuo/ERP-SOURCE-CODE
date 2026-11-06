unit AssemblyRYDlg1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, GridsEh, DBGridEh, ExtCtrls, StdCtrls, DB, DBTables;

type
  TAssemblyRYDlg = class(TForm)
    Panel1: TPanel;
    DBGridEh1: TDBGridEh;
    ED_RY: TEdit;
    Label3: TLabel;
    Button1: TButton;
    Query1: TQuery;
    DS1: TDataSource;
    Label1: TLabel;
    ED_CuttingDie: TEdit;
    ED_SKU: TEdit;
    Label2: TLabel;
    Query1DDBH: TStringField;
    Query1DAOMH: TStringField;
    Query1ARTICLE: TStringField;
    Query1Pairs: TIntegerField;
    procedure Button1Click(Sender: TObject);
    procedure DBGridEh1DblClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  AssemblyRYDlg: TAssemblyRYDlg;

implementation

uses
  ScheduleUpload1;

{$R *.dfm}

procedure TAssemblyRYDlg.Button1Click(Sender: TObject);
begin
  if (Length(ED_RY.Text) <= 6) then
  begin
    ShowMessage('Please enter at least 7 characters in the RY field');
    Exit;
  end;

  with Query1 do
  begin
    Active := false;
    SQL.Clear;
    SQL.Add('SELECT DDZL.DDBH, XXZL.DAOMH, XXZL.ARTICLE, DDZL.Pairs FROM DDZL');
    SQL.Add('LEFT JOIN XXZL ON XXZL.XieXing = DDZL.XieXing AND XXZL.SheHao = DDZL.SheHao');
    SQL.Add('WHERE DDZL.DDZT = ''Y'' AND DDZL.DDBH NOT LIKE ''F%''');
    SQL.Add('AND XXZL.DAOMH LIKE ''%' + ED_CuttingDie.Text + '%'' AND XXZL.ARTICLE LIKE ''%' + ED_SKU.Text + '%'' AND DDZL.DDBH LIKE ''' + ED_RY.Text + '%''');
    SQL.Add('ORDER BY XXZL.DAOMH, XXZL.ARTICLE, DDZL.DDBH');
    Active := true;
  end;
end;

procedure TAssemblyRYDlg.DBGridEh1DblClick(Sender: TObject);
begin
  ScheduleUpload.Query_AP.Edit;
  ScheduleUpload.Query_AP.FieldByName('ZLBH').Value := Query1.FieldByName('DDBH').AsString;
  Close;
end;

end.
