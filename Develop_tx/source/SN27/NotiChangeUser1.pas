unit NotiChangeUser1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DB, DBTables, GridsEh, DBGridEh, StdCtrls, ExtCtrls;

type
  TNotiChangeUser = class(TForm)
    Panel1: TPanel;
    Label1: TLabel;
    Label2: TLabel;
    Button1: TButton;
    EDIT1: TEdit;
    Edit2: TEdit;
    DBGridEh1: TDBGridEh;
    DS_NCI: TDataSource;
    QryNCI: TQuery;
    QryNCIUSERID: TStringField;
    QryNCIUSERNAME: TStringField;
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
  NotiChangeUser: TNotiChangeUser;

implementation

uses NotiChange1;

{$R *.dfm}

procedure TNotiChangeUser.Button1Click(Sender: TObject);
begin
  with QryNCI do
  begin
    active:=false;
    sql.Clear;
    sql.add('select USERID,UserName from Busers ');
    sql.add('where 1=1  ');
    if  edit1.Text<>'' then
        sql.add(' and USERID like'+''''+edit1.Text+'%'+'''');
    if  edit2.Text<>'' then
        sql.add(' and UserName like'+''''+'%'+edit2.Text+'%'+'''');
    sql.add('order by USERID');
    active:=true;
  end;
end;

procedure TNotiChangeUser.DBGridEh1DblClick(Sender: TObject);
begin
  if QryNCI.RecordCount > 0 then
  begin
    with NotiChange.QryNoti do
    begin
      Edit;
      FieldByName(SelectedColumnID).Value := QryNCI.FieldByName('USERID').Value;
      FieldByName(SelectedColumnName).Value := QryNCI.FieldByName('UserName').Value;
    end;
    QryNCI.Active := False;
    Close;
  end;
end;

end.
