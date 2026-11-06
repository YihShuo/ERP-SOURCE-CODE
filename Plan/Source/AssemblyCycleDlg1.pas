unit AssemblyCycleDlg1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DB, DBTables, GridsEh, DBGridEh;

type
  TAssemblyCycleDlg = class(TForm)
    DBGridEh1: TDBGridEh;
    Query1: TQuery;
    DS1: TDataSource;
    Query1DDBH: TStringField;
    Query1Pairs: TIntegerField;
    QTemp: TQuery;
    procedure DBGridEh1DblClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    procedure LoadRYData(RY: string);
  end;

var
  AssemblyCycleDlg: TAssemblyCycleDlg;

implementation

uses
  ScheduleUpload1;

{$R *.dfm}

procedure TAssemblyCycleDlg.LoadRYData(RY: string);
begin
  with Query1 do
  begin
    Active := false;
    SQL.Clear;
    SQL.Add('SELECT DDBH, Qty AS Pairs FROM SMDD');
    SQL.Add('WHERE YSBH = ''' + RY + ''' AND GXLB = ''A''');
    SQL.Add('ORDER BY DDBH');
    Active := true;
  end;
end;

procedure TAssemblyCycleDlg.DBGridEh1DblClick(Sender: TObject);
begin
  with QTemp do
  begin
    Active := false;
    SQL.Clear;
    SQL.Add('SELECT XXCC, Qty FROM SMDDS');
    SQL.Add('WHERE DDBH = ''' + Query1.FieldByName('DDBH').AsString + '''');
    SQL.Add('ORDER BY XXCC');
    Active := true;
  end;

  ScheduleUpload.Query_APS.Edit;
  ScheduleUpload.Query_APS.FieldByName('DDBH').Value := Query1.FieldByName('DDBH').AsString;
  while not QTemp.Eof do
  begin
    ScheduleUpload.Query_APS.FieldByName(QTemp.FieldByName('XXCC').AsString).Value := QTemp.FieldByName('Qty').AsInteger;
    QTemp.Next;
  end;
  Close;
end;

end.
