unit FlexCodeHistory1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, GridsEh, DBGridEh, DB, DBTables;

type
  TFlexCodeHistory = class(TForm)
    DBGridEh1: TDBGridEh;
    DS1: TDataSource;
    Query1: TQuery;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormDestroy(Sender: TObject);
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FlexCodeHistory: TFlexCodeHistory;

implementation

uses Flexcode1;

{$R *.dfm}

procedure TFlexCodeHistory.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
   action:=caFree;
end;

procedure TFlexCodeHistory.FormDestroy(Sender: TObject);
begin
    FlexCodeHistory:=nil;
end;

procedure TFlexCodeHistory.FormCreate(Sender: TObject);
begin
  with Query1 do
  begin
    active:=false;
    SQL.Clear;
    SQL.Add('select * from CLZL_FLEX_his ');
    SQL.Add('where cldh='''+FlexCode.Query2.fieldbyname('cldh').AsString+''' ');
    SQL.Add('order by VER');
    //funcobj.WriteErrorLog(sql.Text);
    active:=true;
  end;
end;

end.
