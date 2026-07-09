unit NotiChangeDepartment1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DB, DBTables, GridsEh, DBGridEh, StdCtrls, ExtCtrls;

type
  TNotiChangeDepartment = class(TForm)
    Panel1: TPanel;
    Label1: TLabel;
    Label2: TLabel;
    Button1: TButton;
    EDIT1: TEdit;
    Edit2: TEdit;
    DBGridEh1: TDBGridEh;
    DS_NCD: TDataSource;
    QryNCD: TQuery;
    QryNCDID: TStringField;
    QryNCDDepName: TStringField;
    QryNCDDepMemo: TStringField;
    QryNCDGSBH: TStringField;
    procedure Button1Click(Sender: TObject);
    procedure DBGridEh1DblClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    SelectedColumnID: string;
    SelectedColumnName: string;
  end;

var
  NotiChangeDepartment: TNotiChangeDepartment;

implementation

uses NotiChange1;

{$R *.dfm}

procedure TNotiChangeDepartment.Button1Click(Sender: TObject);
begin
  with QryNCD do
  begin
    active:=false;
    sql.Clear;
    sql.add('select ID,DepName,DepMemo,GSBH from BDepartment ');
    sql.add('where 1=1  ');
    if  edit1.Text<>'' then
        sql.add(' and ID like'+''''+edit1.Text+'%'+'''');
    if  edit2.Text<>'' then
        sql.add(' and DepName like'+''''+'%'+edit2.Text+'%'+'''');
    sql.add('order by ID');
    active:=true;
  end;
end;

procedure TNotiChangeDepartment.DBGridEh1DblClick(Sender: TObject);
begin
  if QryNCD.RecordCount > 0 then
  begin
    with NotiChange.QryNoti do
    begin
      Edit;
      FieldByName(SelectedColumnID).Value := QryNCD.FieldByName('ID').Value;
      FieldByName(SelectedColumnName).Value := QryNCD.FieldByName('DepName').Value;
    end;
    QryNCD.Active := False;
    Close;
  end;
end;

end.
