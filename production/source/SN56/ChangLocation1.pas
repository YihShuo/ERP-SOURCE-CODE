unit ChangLocation1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DB, DBTables, GridsEh, DBGridEh, StdCtrls, ExtCtrls;

type
  TChangelocation = class(TForm)
    Panel1: TPanel;
    Label1: TLabel;
    Edit1: TEdit;
    Button1: TButton;
    DBGridEh1: TDBGridEh;
    Query1: TQuery;
    DS1: TDataSource;
    temp: TQuery;
    Button2: TButton;
    Query1CARTONBAR: TStringField;
    Query1DDBH: TStringField;
    Query1CARTONNO: TIntegerField;
    Query1qty: TIntegerField;
    Query1SB: TStringField;
    Query1CKBH: TStringField;
    Query1KCBH: TStringField;
    Query1KVBH: TStringField;
    Label3: TLabel;
    Label4: TLabel;
    Edit3: TEdit;
    Label5: TLabel;
    Edit4: TEdit;
    CheckBox1: TCheckBox;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormDestroy(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Changelocation: TChangelocation;

implementation

{$R *.dfm}

procedure TChangelocation.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  action:=cafree;
end;

procedure TChangelocation.FormDestroy(Sender: TObject);
begin
  Changelocation:=nil;
end;

procedure TChangelocation.Button1Click(Sender: TObject);
begin
   with query1 do
   begin
    active:=false;
    sql.Clear;
    sql.Add('select CARTONBAR, DDBH, CARTONNO,  qty, SB,CKBH,KCBH,KVBH  from YWCP where DDBH='''+edit1.Text+'''  and KCBH like ''%'+edit3.Text+'%'' ');
    if CheckBox1.Checked then sql.Add('and sb =1');
    active:=true;
   end;
end;

procedure TChangelocation.Button2Click(Sender: TObject);
begin
     with temp do
   begin
    active:=false;
    sql.Clear;
    SQl.Add('Update YWCP set KCBH='''+edit4.Text+''' ');
    sql.Add(' where DDBH='''+edit1.Text+'''  and KCBH like ''%'+edit3.Text+'%'' ');
    Sql.Add('and sb =1');
    ExecSQL;
   end;
    with query1 do
   begin
    active:=false;
    sql.Clear;
    sql.Add('select CARTONBAR, DDBH, CARTONNO,  qty, SB,CKBH,KCBH,KVBH  from YWCP where DDBH='''+edit1.Text+'''  and KCBH like ''%'+edit3.Text+'%'' ');
    if CheckBox1.Checked then sql.Add('and sb =1');
    active:=true;
   end;
end;

end.
