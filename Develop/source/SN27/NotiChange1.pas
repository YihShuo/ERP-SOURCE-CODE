unit NotiChange1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DBTables, DB, GridsEh, DBGridEh, StdCtrls, Buttons, ExtCtrls,ComObj,ShellAPI;

type
  TNotiChange = class(TForm)
    Panel7: TPanel;
    bbb4: TBitBtn;
    bbb5: TBitBtn;
    bbb6: TBitBtn;
    btExcel_Mat: TBitBtn;
    DBGridEh1: TDBGridEh;
    QryNoti: TQuery;
    QryNotiTestNo: TStringField;
    QryNotiFD: TStringField;
    QryNotistage: TStringField;
    QryNotiXieMing: TStringField;
    QryNotiArticle: TStringField;
    QryNotiNotiChangeNO: TStringField;
    QryNotiSerino: TIntegerField;
    QryNotiApplicationDate: TDateTimeField;
    QryNotiDescriptionBeforeChange: TStringField;
    QryNotiDescriptionAfterChange: TStringField;
    QryNotiReasonChange: TStringField;
    QryNotiProposalDepartment: TStringField;
    QryNotiResponsibleDepartment: TStringField;
    QryNotiUnitManager: TStringField;
    QryNotiManageRelatedUnits: TStringField;
    QryNotiIDLeader: TStringField;
    QryNotiUserID: TStringField;
    QryNotiUSERDATE: TDateTimeField;
    QryNoticheckdata: TIntegerField;
    QryNotiflowflag: TStringField;
    QryNotiYN: TStringField;
    QryNotiProposalDepartmentName: TStringField;
    QryNotiResponsibleDepartmentName: TStringField;
    QryNotiUnitManagerName: TStringField;
    QryNotiManageRelatedUnitsName: TStringField;
    QryNotiIDLeaderName: TStringField;
    DSNoti: TDataSource;
    UpdateSQLNoti: TUpdateSQL;
    QueryTemp: TQuery;
    procedure FormCreate(Sender: TObject);
    procedure bbb4Click(Sender: TObject);
    procedure bbb5Click(Sender: TObject);
    procedure bbb6Click(Sender: TObject);
    procedure btExcel_MatClick(Sender: TObject);
    procedure DBGridEh1Columns11EditButtonClick(Sender: TObject;
      var Handled: Boolean);
    procedure DBGridEh1Columns13EditButtonClick(Sender: TObject;
      var Handled: Boolean);
    procedure DBGridEh1Columns15EditButtonClick(Sender: TObject;
      var Handled: Boolean);
    procedure DBGridEh1Columns17EditButtonClick(Sender: TObject;
      var Handled: Boolean);
    procedure DBGridEh1Columns19EditButtonClick(Sender: TObject;
      var Handled: Boolean);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  NotiChange: TNotiChange;
  AppDir: string;

implementation

uses SamplePlan1, main1, NotiChangeDepartment1, NotiChangeUser1;

{$R *.dfm}

procedure TNotiChange.FormCreate(Sender: TObject);
begin
  with QryNoti do
  begin
    active:=false;
    SQL.Clear;
    SQL.Add('select ShoeTestPlan.Serino,ShoeTest.FD,ShoeTest.stage,ShoeTest.XieMing,ShoeTest.Article,Shoetest_NotiChange.*');
    SQL.Add(',CASE WHEN Shoetest_NotiChange.TestNo IS NULL THEN 0 ELSE 1 END AS CheckData');
    SQL.Add('from ShoeTest');
    SQL.Add('left join Shoetest_NotiChange on ShoeTest.TestNo=Shoetest_NotiChange.TestNo');
    SQL.Add('left join ShoeTestPlan on ShoeTest.TestNo=ShoeTestPlan.TestNo');
    if Assigned(SamplePlan) and Assigned(SamplePlan.shoetest) and SamplePlan.shoetest.Active then
    begin
      SQL.Add('where ShoeTest.TestNo=''' + SamplePlan.shoetest.FieldByName('TestNo').AsString + ''' ');
    end else
    begin
      SQL.Add('where ShoeTest.TestNo=''DEFAULT_VALUE'' ');
    end;
    //funcobj.WriteErrorLog(sql.Text);
    active:=true;
  end;
  AppDir:=ExtractFilePath(Application.ExeName);
  bbb4.Enabled:=true;
  btExcel_Mat.Enabled:=true;
end;

procedure TNotiChange.bbb4Click(Sender: TObject);
begin
  with QryNoti do
  begin
    requestlive := true;
    cachedupdates := true;
  end;
  DBGridEh1.Columns[11].ButtonStyle := cbsEllipsis;
  DBGridEh1.Columns[13].ButtonStyle := cbsEllipsis;
  DBGridEh1.Columns[15].ButtonStyle := cbsEllipsis;
  DBGridEh1.Columns[17].ButtonStyle := cbsEllipsis;
  DBGridEh1.Columns[19].ButtonStyle := cbsEllipsis;
  bbb4.enabled := false;
  bbb5.enabled := true;
  bbb6.enabled := true;
end;

procedure TNotiChange.bbb5Click(Sender: TObject);
var
  NotiChangeNO: string;
  NDate: TDate;
  i: integer;
  TestNoExists: Boolean;
begin
  // Get current date
  with QueryTemp do
  begin
    Active := false;
    SQL.Clear;
    SQL.Add('SELECT GETDATE() AS NDate');
    Active := true;
    NDate := FieldByName('NDate').Value;
    Active := false;
  end;

  with QueryTemp do
  begin
    Active := False;
    SQL.Clear;
    SQL.Add('SELECT NotiChangeNO FROM Shoetest_NotiChange WHERE TestNo = ''' + 
            SamplePlan.shoetest.FieldByName('TestNo').AsString + '''');
    Active := True;
    TestNoExists := RecordCount > 0;
    
    if TestNoExists then
      NotiChangeNO := FieldByName('NotiChangeNO').AsString;
    Active := False;
  end;

  if not TestNoExists then
  begin
    with QueryTemp do
    begin
      Active := False;
      SQL.Clear;
      SQL.Add('SELECT NotiChangeNO FROM Shoetest_NotiChange WHERE NotiChangeNO LIKE ''' + 
              FormatDateTime('yyyy', Now) + FormatDateTime('mm', Now) + '%'' ORDER BY NotiChangeNO');
      Active := True;
      if RecordCount > 0 then
      begin
        Last;
        NotiChangeNO := FieldByName('NotiChangeNO').AsString;
        NotiChangeNO := Copy(NotiChangeNO, 7, 5);
        NotiChangeNO := IntToStr(StrToInt(NotiChangeNO) + 1);
        while Length(NotiChangeNO) < 5 do
          NotiChangeNO := '0' + NotiChangeNO;
      end else
        NotiChangeNO := '00001';
      NotiChangeNO := FormatDateTime('yyyy', Now) + FormatDateTime('mm', Now) + NotiChangeNO;
      Active := False;
    end;

    // Insert new record
    QryNoti.Edit;
    QryNoti.FieldByName('NotiChangeNO').Value := NotiChangeNO;
    QryNoti.FieldByName('TestNo').Value := SamplePlan.shoetest.FieldByName('TestNo').AsString;
    QryNoti.FieldByName('userID').Value := main.edit1.text;
    QryNoti.FieldByName('userdate').Value := formatdatetime('yyyy/MM/dd', NDate);
    QryNoti.FieldByName('YN').Value := '1';
    UpdateSQLNoti.Apply(ukInsert);
  end
  else
  begin
    QryNoti.Edit;
    QryNoti.FieldByName('USERID').Value := main.Edit1.Text;
    QryNoti.FieldByName('USERDATE').Value := NDate;
    UpdateSQLNoti.Apply(ukModify);
  end;

  Showmessage('Success');
  bbb4.Enabled := true;
  bbb5.Enabled := false;
  bbb6.Enabled := false;
end;

procedure TNotiChange.bbb6Click(Sender: TObject);
begin
  with QryNoti do
  begin
    requestlive := true;
    cachedupdates := true;
  end;
  bbb4.enabled := true;
  bbb5.enabled := false;
  bbb6.enabled := false;
end;

procedure TNotiChange.btExcel_MatClick(Sender: TObject);
var
  eclApp, WorkBook, WorkSheet: OleVariant;
  i, j: Integer;
begin
  with QueryTemp do
  begin
    Active := False;
    SQL.Clear;
    SQL.Add('SELECT ShoeTestPlan.Serino, ShoeTest.FD, ShoeTest.stage, ShoeTest.XieMing, ShoeTest.Article, Shoetest_NotiChange.*, Busers.USERNAME as UsernameCreate');
    SQL.Add('FROM ShoeTest');
    SQL.Add('LEFT JOIN Shoetest_NotiChange ON ShoeTest.TestNo = Shoetest_NotiChange.TestNo');
    SQL.Add('LEFT JOIN ShoeTestPlan ON ShoeTest.TestNo = ShoeTestPlan.TestNo');
    SQL.Add('LEFT JOIN Busers ON Busers.USERID = Shoetest_NotiChange.UserID');
    SQL.Add('WHERE ShoeTest.TestNo = ''' + NotiChange.Dbgrideh1.DataSource.DataSet.FieldByName('TestNo').AsString + ''' ');
    //showmessage(sql.Text);
    Active := True;
  end;

  if QueryTemp.IsEmpty then
  begin
    ShowMessage('Khong co du lieu de xuat ra Excel.');
    Exit;
  end;

  if not DirectoryExists(AppDir + 'Additional\') then
    ForceDirectories(AppDir + 'Additional\');

  CopyFile(PChar('\\192.168.23.9\liy_erp\Additional\DevelopN27_PhatTB.xls'),
           PChar(AppDir + 'Additional\DevelopN27_PhatTB.xls'), False);

  if FileExists(AppDir + 'Additional\DevelopN27_PhatTB.xls') then
  begin
    try
      eclApp := CreateOleObject('Excel.Application');
      eclApp.DisplayAlerts := False;
      WorkBook := eclApp.WorkBooks.Open(AppDir + 'Additional\DevelopN27_PhatTB.xls');
      WorkSheet := WorkBook.Sheets[1];
      QueryTemp.First;
      j := 2;

      if not QueryTemp.IsEmpty then
      begin
        WorkSheet.Cells[2, 1] :=  'Ngay nop don 申請日期: ' + FormatDateTime('dd/mm/yyyy', QueryTemp.FieldByName('ApplicationDate').AsDateTime);
        WorkSheet.Cells[2, 5] := 'So hieu 編號: ' + QueryTemp.FieldByName('NotiChangeNO').AsString;
        WorkSheet.Cells[3, 1] := 'So TB TB編號: ' + QueryTemp.FieldByName('Serino').AsString;
        WorkSheet.Cells[3, 3] := 'So Test Test 編號: ' + QueryTemp.FieldByName('TestNo').AsString;
        WorkSheet.Cells[3, 5] := 'Nhom 組別: ' + QueryTemp.FieldByName('FD').AsString;
        WorkSheet.Cells[4, 1] := 'Mua phat trien/Giai doan 開發季節: ' + QueryTemp.FieldByName('Stage').AsString;
        WorkSheet.Cells[4, 3] := 'Ten kieu dang 型體名稱: ' + QueryTemp.FieldByName('XieMing').AsString;
        WorkSheet.Cells[4, 5] := 'SR#: ' + QueryTemp.FieldByName('Article').AsString;
        WorkSheet.Cells[6, 1] := QueryTemp.FieldByName('DescriptionBeforeChange').AsString;
        WorkSheet.Cells[6, 4] := QueryTemp.FieldByName('DescriptionAfterChange').AsString;
        WorkSheet.Cells[11, 1] := 'Ly do thay doi 更改原因: ' + QueryTemp.FieldByName('ReasonChange').AsString;
        WorkSheet.Cells[12, 2] := QueryTemp.FieldByName('ProposalDepartment').AsString + ' - ' + QueryTemp.FieldByName('ProposalDepartmentName').AsString;
        WorkSheet.Cells[12, 5] := QueryTemp.FieldByName('ResponsibleDepartment').AsString + ' - ' + QueryTemp.FieldByName('ResponsibleDepartmentName').AsString;
        WorkSheet.Cells[14, 1] := 'Chu quan don vi 單位主管: ' + QueryTemp.FieldByName('UnitManager').AsString + ' - ' + QueryTemp.FieldByName('UnitManagerName').AsString;
        WorkSheet.Cells[14, 3] := 'Chu quan don vi lien quan 相關單位主管: ' + QueryTemp.FieldByName('ManageRelatedUnits').AsString + ' - ' + QueryTemp.FieldByName('ManageRelatedUnitsName').AsString;  
        WorkSheet.Cells[14, 4] := 'To truong 組長: ' + QueryTemp.FieldByName('IDLeader').AsString + ' - ' + QueryTemp.FieldByName('IDLeaderName').AsString;
        //WorkSheet.Cells[14, 5] := 'Nguoi de xuat 提出人: ' + QueryTemp.FieldByName('UserID').AsString + ' - ' + QueryTemp.FieldByName('UsernameCreate').AsString;
      end;
      eclApp.Visible:=True;
      //eclApp.Columns.AutoFit;
      ShowMessage('Succeed.');
    except
      on F: Exception do
        ShowMessage(F.Message);
    end;
  end;
end;

procedure TNotiChange.DBGridEh1Columns11EditButtonClick(Sender: TObject;
  var Handled: Boolean);
begin
  NotiChangeDepartment:=TNotiChangeDepartment.create(self);
  NotiChangeDepartment.SelectedColumnID := 'ProposalDepartment';
  NotiChangeDepartment.SelectedColumnName := 'ProposalDepartmentName';
  NotiChangeDepartment.show;
end;

procedure TNotiChange.DBGridEh1Columns13EditButtonClick(Sender: TObject;
  var Handled: Boolean);
begin
  NotiChangeDepartment:=TNotiChangeDepartment.create(self);
  NotiChangeDepartment.SelectedColumnID := 'ResponsibleDepartment';
  NotiChangeDepartment.SelectedColumnName := 'ResponsibleDepartmentName';
  NotiChangeDepartment.show;
end;

procedure TNotiChange.DBGridEh1Columns15EditButtonClick(Sender: TObject;
  var Handled: Boolean);
begin
  NotiChangeUser:=TNotiChangeUser.create(self);
  NotiChangeUser.SelectedColumnID := 'UnitManager';
  NotiChangeUser.SelectedColumnName := 'UnitManagerName';
  NotiChangeUser.show;
end;

procedure TNotiChange.DBGridEh1Columns17EditButtonClick(Sender: TObject;
  var Handled: Boolean);
begin
  NotiChangeUser:=TNotiChangeUser.create(self);
  NotiChangeUser.SelectedColumnID := 'ManageRelatedUnits';
  NotiChangeUser.SelectedColumnName := 'ManageRelatedUnitsName';
  NotiChangeUser.show;
end;

procedure TNotiChange.DBGridEh1Columns19EditButtonClick(Sender: TObject;
  var Handled: Boolean);
begin
  NotiChangeUser:=TNotiChangeUser.create(self);
  NotiChangeUser.SelectedColumnID := 'IDLeader';
  NotiChangeUser.SelectedColumnName := 'IDLeaderName';
  NotiChangeUser.show;
end;

end.
