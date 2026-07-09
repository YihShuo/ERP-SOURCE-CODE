unit DeliverCheck_SonA1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DB, DBTables, GridsEh, DBGridEh;

type
  TDeliverCheck_SonA = class(TForm)
    DBGridEh1: TDBGridEh;
    Query1: TQuery;
    DataSource1: TDataSource;
    procedure FormCreate(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  DeliverCheck_SonA: TDeliverCheck_SonA;

implementation

{$R *.dfm}

procedure TDeliverCheck_SonA.FormCreate(Sender: TObject);
begin
query1.Active:=true;
end;

procedure TDeliverCheck_SonA.FormDestroy(Sender: TObject);
begin
  delivercheck_sonA:=nil;
end;

procedure TDeliverCheck_SonA.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  action:=Cafree;
end;

end.
