unit DeleteYWCP1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DBTables, DB, GridsEh, DBGridEh, StdCtrls, Buttons, ExtCtrls;

type
  TDeleteYWCP = class(TForm)
    Panel1: TPanel;
    Label1: TLabel;
    Label3: TLabel;
    BB1: TBitBtn;
    BB3: TBitBtn;
    BB4: TBitBtn;
    BB5: TBitBtn;
    BB6: TBitBtn;
    Button1: TButton;
    edtDDBH: TEdit;
    edtUSERNAME: TEdit;
    DBGrid1: TDBGridEh;
    Query1: TQuery;
    DS1: TDataSource;
    UpSQL1: TUpdateSQL;
    Qtemp: TQuery;
    OpenDialog1: TOpenDialog;
    BB2: TBitBtn;
    Query1CARTONBAR: TStringField;
    Query1DDBH: TStringField;
    Query1CARTONNO: TIntegerField;
    Query1XH: TStringField;
    Query1Qty: TIntegerField;
    Query1SB: TStringField;
    Query1CKBH: TStringField;
    Query1DepNO: TStringField;
    Query1KCBH: TStringField;
    Query1KVBH: TStringField;
    Query1INCS: TSmallintField;
    Query1INDATE: TDateTimeField;
    Query1LastInDate: TDateTimeField;
    Query1INUSER: TStringField;
    Query1OUTCS: TSmallintField;
    Query1OUTDATE: TDateTimeField;
    Query1INSPECTCS: TIntegerField;
    Query1INSPECTDATE: TDateTimeField;
    Query1EXEDATE: TDateTimeField;
    Query1MEMO: TStringField;
    Query1CON_NO: TStringField;
    Query1USERID: TStringField;
    Query1USERDATE: TDateTimeField;
    Query1YN: TStringField;
    Query1sgw: TFloatField;
    Query1rgw: TFloatField;
    Query1ogw: TFloatField;
    Query1LPNBarCode: TStringField;
    Query1RECS: TSmallintField;
    Query1REDATE: TDateTimeField;
    Query1Status: TStringField;
    Query1BIEN_SO: TStringField;
    Query1Status1: TStringField;
    Query1StatusDate: TDateTimeField;
    Query1Status1Date: TDateTimeField;
    procedure Button1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  DeleteYWCP: TDeleteYWCP;

implementation

{$R *.dfm}

procedure TDeleteYWCP.Button1Click(Sender: TObject);
begin
  with query1 do
    begin
      active:=false;
      sql.Clear;
      sql.add('select * ');
      sql.add('from YWCP');
      sql.add('where DDBH = '''+edtDDBH.Text+''' ');
      active:=true;
    end;
end;

end.
