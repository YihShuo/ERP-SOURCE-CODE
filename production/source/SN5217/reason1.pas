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
    F_ID: Integer;   // <-- context m?i: ID c?a dòng c?n update
    QUpd: TQuery;
  public
    procedure SetContext(AID: Integer);
  end;

implementation

uses main1;

{$R *.dfm}

procedure TReason.SetContext(AID: Integer);
begin
  F_ID := AID;

  if QUpd = nil then
  begin
    QUpd := TQuery.Create(Self);
    QUpd.DatabaseName := Query1.DatabaseName; // dùng chung DB v?i Query1 (Reason list)
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
    // l?y danh sách reason
    SQL.Add('SELECT Reason, Location, YN FROM Reason');
    SQL.Add('WHERE Reason LIKE ''%' + Trim(Edit1.Text) + '%'' AND YN=1 AND Location=''KTP''');
    Open;
  end;
end;

procedure TReason.DBGridEh1DblClick(Sender: TObject);
var
  S, M: string;
begin
  if Query1.IsEmpty then Exit;

  S := Trim(Query1.FieldByName('Reason').AsString);

  // N?u ch?n "Khac" thì b?t nh?p memo
  // (B?n có th? d?i di?u ki?n này cho dúng chu?i "Khac" c?a b?n)
  if SameText(S, 'Khac ¨ä¥L') or SameText(S, 'Khac') then
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

  if (F_ID <= 0) then
  begin
    ShowMessage('Thieu context (ID).');
    Exit;
  end;

  if QUpd = nil then
  begin
    ShowMessage('QUpd chua duoc tao (chua goi SetContext).');
    Exit;
  end;

  // UPDATE theo ID vào b?ng YWCP_Problem
  QUpd.Close;
  QUpd.SQL.Clear;
  QUpd.SQL.Add('UPDATE YWCP_Problem');
  QUpd.SQL.Add('SET Reason = :R, Memo = :M, USERID = :UID, USERDATE = GETDATE()');
  QUpd.SQL.Add('WHERE ID = :ID');

  QUpd.ParamByName('R').AsString := S;
  QUpd.ParamByName('M').AsString := M;
  QUpd.ParamByName('UID').AsString := Main.Edit1.Text;  // ho?c 'system'
  QUpd.ParamByName('ID').AsInteger := F_ID;

  QUpd.ExecSQL;

  ModalResult := mrOk;
end;

end.

