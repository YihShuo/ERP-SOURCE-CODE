unit reason1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DB, GridsEh, DBGridEh, DBTables, StdCtrls, ExtCtrls;

type
  TReason = class(TForm)
    Reason: TLabel;
    Edit1: TEdit;
    Search: TButton;
    Query1: TQuery;
    DataSource1: TDataSource;
    DBGridEh1: TDBGridEh;
    Query1Reason: TStringField;
    Query1Location: TStringField;
    Query1YN: TIntegerField;
    Panel1: TPanel;
    procedure SearchClick(Sender: TObject);
    procedure DBGridEh1DblClick(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
  private
    F_RY: string;
    F_SupID: string;
    F_MatID: string;
    F_ArrivalDate: TDateTime;
    QUpd: TQuery;
  public
    procedure SetContext(const ARY, ASupID, AMatID: string; AArrivalDate: TDateTime);
  end;

implementation

uses main1;

{$R *.dfm}

procedure TReason.SetContext(const ARY, ASupID, AMatID: string; AArrivalDate: TDateTime);
begin
  F_RY := ARY;
  F_SupID := ASupID;
  F_MatID := AMatID;
  F_ArrivalDate := AArrivalDate;

  if QUpd = nil then
  begin
    QUpd := TQuery.Create(Self);
    QUpd.DatabaseName := Query1.DatabaseName;
  end;
end;

procedure TReason.FormDestroy(Sender: TObject);
begin
  QUpd := nil;
end;

procedure TReason.SearchClick(Sender: TObject);
begin
  with Query1 do
  begin
    Close;
    SQL.Clear;
    SQL.Add('SELECT Reason, Location, YN FROM Reason');
    SQL.Add('WHERE Reason LIKE ''%' + Trim(Edit1.Text) + '%'' AND YN=1 AND Location=''KVT''');
    Open;
  end;
end;

procedure TReason.DBGridEh1DblClick(Sender: TObject);
var
  S, M: string;
begin
  if Query1.IsEmpty then Exit;

  S := Trim(Query1.FieldByName('Reason').AsString);

  // neu chon "KHAC" thi bat nhap memo
  if SameText(S, 'Khac ¨ä¥L') then
  begin
    M := '';
    if not InputQuery('Nhap noi dung', 'Vui long nhap nguyen nhan chi tiet:', M) then
      Exit;

    M := Trim(M);
    if M = '' then
    begin
      ShowMessage('Ban phai nhap noi dung.');
      Exit;
    end;
  end
  else
    M := '';

  if (F_RY = '') or (F_SupID = '') or (F_MatID = '') then
  begin
    ShowMessage('Thieu context (RY/SupID/MatID).');
    Exit;
  end;

  if QUpd = nil then
  begin
    ShowMessage('QUpd chua duoc tao (chua goi SetContext).');
    Exit;
  end;

  QUpd.Close;
  QUpd.SQL.Clear;
  QUpd.SQL.Add('UPDATE schedule_materials');
  QUpd.SQL.Add('SET reason = :R, memo = :M, USERID = :UID, USERDATE = GETDATE()');
  QUpd.SQL.Add('WHERE DDBH = :DDBH AND CSBH = :CSBH AND CLBH = :CLBH AND ArrivalDate = :ArrivalDate');

  QUpd.ParamByName('R').AsString := S;
  QUpd.ParamByName('M').AsString := M;
  QUpd.ParamByName('UID').AsString := Main.Edit1.Text;

  QUpd.ParamByName('DDBH').AsString := F_RY;
  QUpd.ParamByName('CSBH').AsString := F_SupID;
  QUpd.ParamByName('CLBH').AsString := F_MatID;

  QUpd.ParamByName('ArrivalDate').AsDateTime := F_ArrivalDate;

  QUpd.ExecSQL;

  ModalResult := mrOk;
end;

end.

