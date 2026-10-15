unit Material_Customer1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, DB, DBTables, GridsEh, DBGridEh, Buttons, ExtCtrls, ComObj,
  ComCtrls;

type
  TMaterial_Customer = class(TForm)
    pnl: TPanel;
    btnQuery: TBitBtn;
    btnModify: TBitBtn;
    btnSave: TBitBtn;
    btnCancel: TBitBtn;
    btnExit: TBitBtn;
    btnExportExcel: TBitBtn;
    Query1: TQuery;
    DataSource1: TDataSource;
    DBGridEh1: TDBGridEh;
    CLBH: TLabel;
    Edit1: TEdit;
    Button1: TButton;
    Label1: TLabel;
    Edit2: TEdit;
    PageControl1: TPageControl;
    TabSheet1: TTabSheet;
    TabSheet2: TTabSheet;
    Query1CLBH: TStringField;
    Query1Vendor: TStringField;
    Query1YWPM: TStringField;
    Query1ZWPM: TStringField;
    Query1USERID: TStringField;
    Query1USERDATE: TDateTimeField;
    BtnEdit: TBitBtn;
    UpdateSQL1: TUpdateSQL;
    Import: TButton;
    OpenDialog: TOpenDialog;
    Panel1: TPanel;
    Label2: TLabel;
    Label3: TLabel;
    BitBtn1: TBitBtn;
    BitBtn2: TBitBtn;
    BitBtn3: TBitBtn;
    BitBtn4: TBitBtn;
    BitBtn5: TBitBtn;
    BitBtn6: TBitBtn;
    Edit3: TEdit;
    Button2: TButton;
    Edit4: TEdit;
    BitBtn7: TBitBtn;
    Button3: TButton;
    DBGridEh2: TDBGridEh;
    Query2: TQuery;
    UpdateSQL2: TUpdateSQL;
    DataSource2: TDataSource;
    Query2CLBH: TStringField;
    Query2Vendor: TStringField;
    Query2CLDH: TStringField;
    Query2USERID: TStringField;
    Query2USERDATE: TDateTimeField;
    Query2ywpm: TStringField;
    Query2zwpm: TStringField;
    BitBtndel1: TBitBtn;
    BitBtndel2: TBitBtn;
    Query1Colorcode: TStringField;
    Query1ColorName: TStringField;
    Query2Color: TStringField;
    procedure FormCreate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormDestroy(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure BtnEditClick(Sender: TObject);
    procedure btnModifyClick(Sender: TObject);
    procedure btnSaveClick(Sender: TObject);
    procedure btnCancelClick(Sender: TObject);
    procedure btnExitClick(Sender: TObject);
    procedure btnExportExcelClick(Sender: TObject);
    procedure ImportClick(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure DBGridEh2Columns0EditButtonClick(Sender: TObject;
      var Handled: Boolean);
    procedure BitBtn7Click(Sender: TObject);
    procedure BitBtn2Click(Sender: TObject);
    procedure BitBtn3Click(Sender: TObject);
    procedure BitBtn4Click(Sender: TObject);
    procedure BitBtn5Click(Sender: TObject);
    procedure DBGridEh2Columns2EditButtonClick(Sender: TObject;
      var Handled: Boolean);
    procedure BitBtndel2Click(Sender: TObject);
    procedure BitBtndel1Click(Sender: TObject);
    procedure DBGridEh1GetCellParams(Sender: TObject; Column: TColumnEh;
      AFont: TFont; var Background: TColor; State: TGridDrawState);
    procedure DBGridEh2GetCellParams(Sender: TObject; Column: TColumnEh;
      AFont: TFont; var Background: TColor; State: TGridDrawState);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Material_Customer: TMaterial_Customer;

implementation

uses main1, Material_Yihshuo1, Material_CLZL1;

{$R *.dfm}

procedure TMaterial_Customer.FormCreate(Sender: TObject);
begin
  // DINH NGHIA CAU LENH CHO UpdateSQL1 KHI KHOI TAO FORM (TAB 1)
  with UpdateSQL1 do
  begin
    // 1. Cau lenh UPSERT thay the cho INSERT mac dinh tren MSSQL 2008 R2
    InsertSQL.Clear;
    InsertSQL.Add('IF EXISTS (SELECT 1 FROM CLZL_Customer WHERE CLBH = :CLBH AND Vendor = :Vendor AND Colorcode = :Colorcode)');
    InsertSQL.Add('BEGIN');
    InsertSQL.Add('  UPDATE CLZL_Customer');
    InsertSQL.Add('  SET ColorName = :ColorName, YWPM = :YWPM, ZWPM = :ZWPM, USERID = :USERID, USERDATE = GETDATE()');
    InsertSQL.Add('  WHERE CLBH = :CLBH AND Vendor = :Vendor AND Colorcode = :Colorcode');
    InsertSQL.Add('END');
    InsertSQL.Add('ELSE');
    InsertSQL.Add('BEGIN');
    InsertSQL.Add('  INSERT INTO CLZL_Customer (CLBH, Vendor, Colorcode, ColorName, YWPM, ZWPM, USERID, USERDATE)');
    InsertSQL.Add('  VALUES (:CLBH, :Vendor, :Colorcode, :ColorName, :YWPM, :ZWPM, :USERID, GETDATE())');
    InsertSQL.Add('END');

    // 2. Cau lenh UPDATE (Modify)
    ModifySQL.Clear;
    ModifySQL.Add('UPDATE CLZL_Customer');
    ModifySQL.Add('SET Vendor = :Vendor, Colorcode = :Colorcode, ColorName = :ColorName, YWPM = :YWPM, ZWPM = :ZWPM, USERID = :USERID, USERDATE = GETDATE()');
    ModifySQL.Add('WHERE CLBH = :OLD_CLBH AND Vendor = :OLD_Vendor AND Colorcode = :OLD_Colorcode');

    // 3. Cau lenh DELETE: Xoa theo to hop khoa (CLBH, Vendor, Colorcode)
    DeleteSQL.Clear;
    DeleteSQL.Add('DELETE FROM CLZL_Customer');
    DeleteSQL.Add('WHERE CLBH = :OLD_CLBH AND Vendor = :OLD_Vendor AND Colorcode = :OLD_Colorcode');
  end;

  // DINH NGHIA CAU LENH CHO UpdateSQL2 (TAB 2)
  with UpdateSQL2 do
  begin
    InsertSQL.Clear;
    InsertSQL.Add('INSERT INTO CLZL_Customers (CLBH, Vendor, CLDH, USERID, USERDATE, color)');
    InsertSQL.Add('VALUES (:CLBH, :Vendor, :CLDH, :USERID, GETDATE(), :color)');

    ModifySQL.Clear;
    ModifySQL.Add('UPDATE CLZL_Customers');
    ModifySQL.Add('SET Vendor = :Vendor, CLDH = :CLDH, USERID = :USERID, USERDATE = GETDATE(), color = :color');
    ModifySQL.Add('WHERE CLBH = :OLD_CLBH AND CLDH = :OLD_CLDH AND Vendor = :OLD_Vendor');

    DeleteSQL.Clear;
    DeleteSQL.Add('DELETE FROM CLZL_Customers');
    DeleteSQL.Add('WHERE CLBH = :OLD_CLBH AND CLDH = :OLD_CLDH AND Vendor = :OLD_Vendor');
  end;
end;

procedure TMaterial_Customer.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  Action := caFree;
end;

procedure TMaterial_Customer.FormDestroy(Sender: TObject);
begin
  Material_Customer := nil;
end;

procedure TMaterial_Customer.Button1Click(Sender: TObject);
begin
  // TRUY VAN DU LIEU TAB 1
  with Query1 do
  begin
    Active := False;
    UpdateObject := UpdateSQL1;
    RequestLive := True;
    CachedUpdates := True; 
    
    SQL.Clear;
    SQL.Add('SELECT * FROM CLZL_Customer ');
    SQL.Add('WHERE 1=1 ');
    SQL.Add('AND CLBH LIKE ''%' + Edit1.Text + '%'' ');
    SQL.Add('AND Vendor LIKE ''%' + Edit2.Text + '%'' ');
    Active := True;
  end;
  
  BtnEdit.Enabled := True;
  btnModify.Enabled := True;
  BitBtndel1.Enabled := True;
  DBGridEh1.ReadOnly := True;
end;

procedure TMaterial_Customer.BtnEditClick(Sender: TObject);
begin
  if not Query1.Active then Exit;
  
  DBGridEh1.ReadOnly := False; 
  Query1.First;
  Query1.Insert; 
  
  btnCancel.Enabled := True;
  btnSave.Enabled := True;
  BtnEdit.Enabled := False;
  btnModify.Enabled := False;
end;

procedure TMaterial_Customer.btnModifyClick(Sender: TObject);
begin
  if not Query1.Active or Query1.IsEmpty then Exit;
  
  DBGridEh1.ReadOnly := False; 
  Query1.Edit;
  
  btnCancel.Enabled := True;
  btnSave.Enabled := True;
  BtnEdit.Enabled := False;
  btnModify.Enabled := False;
end;

procedure TMaterial_Customer.btnSaveClick(Sender: TObject);
var
  CheckQry: TQuery;
  vCLBH, vVendor, vColorcode, vColorName: string;
begin
  if not Query1.Active then Exit;

  // 1. Kiem tra tinh hop le cua du lieu truoc khi Post
  if Query1.State in [dsEdit, dsInsert] then
  begin
    vCLBH      := Trim(Query1.FieldByName('CLBH').AsString);
    vVendor    := Trim(Query1.FieldByName('Vendor').AsString);
    vColorcode := Trim(Query1.FieldByName('Colorcode').AsString);
    vColorName := Trim(Query1.FieldByName('ColorName').AsString);

    // A. Kiem tra rong cho cac cot khoa chinh (CLBH, Vendor, Colorcode)
    if (vCLBH = '') or (vVendor = '') or (vColorcode = '') then
    begin
      ShowMessage('Cac cot Khoa chinh (CLBH, Vendor, Colorcode) khong duoc de trong!');
      DBGridEh1.SetFocus;
      Exit;
    end;

    { // B. Kiem tra trung to hop khoa chinh tren MSSQL 2008 R2 (neu can mo lai)
    CheckQry := TQuery.Create(nil);
    try
      CheckQry.DatabaseName := Query1.DatabaseName;
      CheckQry.SQL.Text := 'SELECT COUNT(*) AS SoLuong FROM CLZL_Customer ' +
                           'WHERE CLBH = :P1 AND Vendor = :P2 AND Colorcode = :P3';
      CheckQry.ParamByName('P1').AsString := vCLBH;
      CheckQry.ParamByName('P2').AsString := vVendor;
      CheckQry.ParamByName('P3').AsString := vColorcode;
      CheckQry.Open;
      
      if CheckQry.FieldByName('SoLuong').AsInteger > 0 then
      begin
        if (Query1.State = dsInsert) or 
           ((Query1.State = dsEdit) and 
            ((vCLBH <> Trim(VarToStr(Query1.FieldByName('CLBH').OldValue))) or 
             (vVendor <> Trim(VarToStr(Query1.FieldByName('Vendor').OldValue))) or 
             (vColorcode <> Trim(VarToStr(Query1.FieldByName('Colorcode').OldValue))))) then
        begin
          ShowMessage('Du lieu bi trung! To hop (CLBH, Vendor, Colorcode) da ton tai trong he thong.');
          DBGridEh1.SetFocus;
          Exit;
        end;
      end;
    finally
      CheckQry.Free;
    end; }

    // C. Gan USERID tu form main
    if Query1.FindField('USERID') <> nil then
      Query1.FieldByName('USERID').AsString := main.Edit1.Text;
      
    Query1.Post;
  end;

  // 2. Luu du lieu xuong CSDL thong qua UpdateSQL1
  if Query1.UpdatesPending then
  begin
    try
      Query1.ApplyUpdates; 
      Query1.CommitUpdates;
      ShowMessage('Luu du lieu thanh cong!');
      Button1Click(nil); // Refresh lai luoi
      DBGridEh1.ReadOnly := True; 
    except
      on E: Exception do
      begin
        ShowMessage('Co loi khi luu xuong he thong: ' + E.Message);
        Exit;
      end;
    end;
  end
  else
  begin
    ShowMessage('Khong co du lieu nao bi thay doi de luu.');
    DBGridEh1.ReadOnly := True; 
  end;
  
  btnCancel.Enabled := False;
  btnSave.Enabled := False;
  BtnEdit.Enabled := True;
  btnModify.Enabled := True;
end;

procedure TMaterial_Customer.btnCancelClick(Sender: TObject);
begin
  if not Query1.Active then Exit;

  if Query1.State in [dsEdit, dsInsert] then
    Query1.Cancel;

  if Query1.UpdatesPending then
    Query1.CancelUpdates;
    
  DBGridEh1.ReadOnly := True;
  btnCancel.Enabled := False;
  btnSave.Enabled := False;
  BtnEdit.Enabled := True;
  btnModify.Enabled := True;
end;

procedure TMaterial_Customer.btnExitClick(Sender: TObject);
begin
  Close;
end;

procedure TMaterial_Customer.btnExportExcelClick(Sender: TObject);
var
  eclApp, WorkBook: OLEVariant;
  i, j: Integer;
begin
  if not Query1.Active or Query1.IsEmpty then
  begin
    ShowMessage('Khong co du lieu de xuat!');
    Exit;
  end;

  try
    eclApp := CreateOleObject('Excel.Application');
    WorkBook := eclApp.WorkBooks.Add;
  except
    ShowMessage('Khong the mo Excel. Vui long kiem tra lai phan mem!');
    Exit;
  end;

  Query1.DisableControls; 
  try
    try
      for i := 0 to Query1.FieldCount - 1 do
      begin
        eclApp.Cells[1, i + 1] := Query1.Fields[i].FieldName;
        eclApp.ActiveSheet.Columns[i + 1].ColumnWidth := 15;
      end;

      Query1.First;
      j := 2;
      
      while not Query1.Eof do
      begin
        for i := 0 to Query1.FieldCount - 1 do
          eclApp.Cells[j, i + 1] := Query1.Fields[i].AsString;
          
        Inc(j);
        Query1.Next;
      end;

      ShowMessage('Xuat Excel thanh cong!');
      eclApp.Visible := True;

    except
      on E: Exception do
        ShowMessage('Loi xuat Excel: ' + E.Message);
    end;
  finally
    Query1.First;
    Query1.EnableControls;
  end;
end;

procedure TMaterial_Customer.ImportClick(Sender: TObject);
var
  eclApp, WorkBook, Sheet: OLEVariant;
  OpenDialog: TOpenDialog;
  Row: Integer;
  CLBH_Val: string;
begin
  OpenDialog := TOpenDialog.Create(nil);
  try
    OpenDialog.Filter := 'Excel Files|*.xls;*.xlsx';
    OpenDialog.Title := 'Chon file Excel de Import';
    
    if OpenDialog.Execute then
    begin
      with Query1 do
      begin
        Active := False;
        UpdateObject := UpdateSQL1; 
        RequestLive := True;
        CachedUpdates := True; 
        SQL.Clear;
        SQL.Add('SELECT * FROM CLZL_Customer WHERE 1=2');
        Active := True;
      end;

      try
        eclApp := CreateOleObject('Excel.Application');
        eclApp.Visible := False;
        
        WorkBook := eclApp.WorkBooks.Open(OpenDialog.FileName);
        Sheet := WorkBook.ActiveSheet;

        Query1.DisableControls;
        DBGridEh1.ReadOnly := False;
        
        Row := 2; // Bo qua dong tieu de (dong 1)
        CLBH_Val := Trim(VarToStr(Sheet.Cells[Row, 1].Value));
        
        // Thu tu cot Excel: 1:CLBH, 2:Vendor, 3:Colorcode, 4:ColorName, 5:YWPM, 6:ZWPM
        while CLBH_Val <> '' do
        begin
          Query1.Append;
          
          Query1.FieldByName('CLBH').AsString      := CLBH_Val;
          Query1.FieldByName('Vendor').AsString    := Trim(VarToStr(Sheet.Cells[Row, 2].Value));
          Query1.FieldByName('Colorcode').AsString := Trim(VarToStr(Sheet.Cells[Row, 3].Value));
          Query1.FieldByName('ColorName').AsString := Trim(VarToStr(Sheet.Cells[Row, 4].Value));
          Query1.FieldByName('YWPM').AsString      := Trim(VarToStr(Sheet.Cells[Row, 5].Value));
          Query1.FieldByName('ZWPM').AsString      := Trim(VarToStr(Sheet.Cells[Row, 6].Value));
          
          if Query1.FindField('USERID') <> nil then
            Query1.FieldByName('USERID').AsString := main.Edit1.Text;
            
          Query1.Post;
          
          Inc(Row);
          CLBH_Val := Trim(VarToStr(Sheet.Cells[Row, 1].Value));
        end;
        
        WorkBook.Close(False);
        eclApp.Quit;

        if Query1.UpdatesPending then
        begin
          ShowMessage('Da load ' + IntToStr(Row - 2) + ' dong tu Excel len luoi. Vui long kiem tra va bam Save de luu!');
          btnCancel.Enabled := True;
          btnSave.Enabled := True;
          BtnEdit.Enabled := False;
          btnModify.Enabled := False;
          btnQuery.Enabled := False;
        end
        else
        begin
          ShowMessage('File Excel rong hoac dong 2 khong co ma CLBH!');
          DBGridEh1.ReadOnly := True;
        end;

      except
        on E: Exception do
        begin
          ShowMessage('Loi Import Excel: ' + E.Message);
          if Query1.UpdatesPending then
            Query1.CancelUpdates;
            
          try
            eclApp.Quit;
          except
          end;
        end;
      end;
    end;
  finally
    OpenDialog.Free;
    Query1.First;
    Query1.EnableControls;
  end;
end;

procedure TMaterial_Customer.Button2Click(Sender: TObject);
begin
  with Query2 do
  begin
    Active := False;
    UpdateObject := UpdateSQL2; 
    RequestLive := True;
    CachedUpdates := True; 
    
    SQL.Clear;
    SQL.Add('SELECT A.*, B.ywpm, B.zwpm FROM CLZL_Customers A ');
    SQL.Add('LEFT JOIN CLZL B ON A.CLDH = B.cldh ');
    SQL.Add('WHERE 1=1 ');
    SQL.Add('AND A.CLBH LIKE ''%' + Edit3.Text + '%'' ');
    SQL.Add('AND A.Vendor LIKE ''%' + Edit4.Text + '%'' ');
    Active := True;
  end;

  BitBtn7.Enabled := True;  
  BitBtn2.Enabled := True;  
  BitBtn3.Enabled := False; 
  BitBtn4.Enabled := False; 
  BitBtndel2.Enabled := True;
  DBGridEh2.ReadOnly := True; 
end;

procedure TMaterial_Customer.DBGridEh2Columns0EditButtonClick(
  Sender: TObject; var Handled: Boolean);
begin
  if Material_Customer_Select = nil then
    Material_Customer_Select := TMaterial_Customer_Select.Create(Self);
  Material_Customer_Select.ShowModal;
end;

procedure TMaterial_Customer.BitBtn7Click(Sender: TObject);
begin
  if not Query2.Active then Exit;
  
  DBGridEh2.ReadOnly := False;
  Query2.First;
  Query2.Insert; 
  
  BitBtn7.Enabled := False;
  BitBtn2.Enabled := False;
  BitBtn3.Enabled := True;
  BitBtn4.Enabled := True;
end;

procedure TMaterial_Customer.BitBtn2Click(Sender: TObject);
begin
  if not Query2.Active or Query2.IsEmpty then Exit;
  
  DBGridEh2.ReadOnly := False;
  Query2.Edit;
  
  BitBtn7.Enabled := False;
  BitBtn2.Enabled := False;
  BitBtn3.Enabled := True;
  BitBtn4.Enabled := True;
end;

procedure TMaterial_Customer.BitBtn3Click(Sender: TObject);
var
  CheckQry: TQuery;
  vCLBH, vVendor, vCLDH: string;
begin
  if not Query2.Active then Exit;

  if Query2.State in [dsEdit, dsInsert] then
  begin
    vCLBH   := Trim(Query2.FieldByName('CLBH').AsString);
    vVendor := Trim(Query2.FieldByName('Vendor').AsString);
    vCLDH   := Trim(Query2.FieldByName('CLDH').AsString);

    if (vCLBH = '') or (vVendor = '') or (vCLDH = '') then
    begin
      ShowMessage('Cac cot Khoa chinh (CLBH, Vendor, CLDH) khong duoc de trong!');
      DBGridEh2.SetFocus;
      Exit;
    end;

    CheckQry := TQuery.Create(nil);
    try
      CheckQry.DatabaseName := Query2.DatabaseName;
      CheckQry.SQL.Text := 'SELECT COUNT(*) AS SoLuong FROM CLZL_Customers WHERE CLBH = :P1 AND Vendor = :P2 AND CLDH = :P3';
      CheckQry.ParamByName('P1').AsString := vCLBH;
      CheckQry.ParamByName('P2').AsString := vVendor;
      CheckQry.ParamByName('P3').AsString := vCLDH;
      CheckQry.Open;
      
      if CheckQry.FieldByName('SoLuong').AsInteger > 0 then
      begin
        if (Query2.State = dsInsert) or 
           ((Query2.State = dsEdit) and 
            ((vCLBH <> Trim(VarToStr(Query2.FieldByName('CLBH').OldValue))) or 
             (vVendor <> Trim(VarToStr(Query2.FieldByName('Vendor').OldValue))) or 
             (vCLDH <> Trim(VarToStr(Query2.FieldByName('CLDH').OldValue))))) then
        begin
          ShowMessage('Du lieu bi trung! To hop (CLBH, Vendor, CLDH) da ton tai trong he thong.');
          DBGridEh2.SetFocus;
          Exit;
        end;
      end;
    finally
      CheckQry.Free;
    end;

    if Query2.FindField('USERDATE') <> nil then
      Query2.FieldByName('USERDATE').AsDateTime := Now;

    if Query2.FindField('USERID') <> nil then
      Query2.FieldByName('USERID').AsString := main.Edit1.Text;

    Query2.Post;
  end;

  if Query2.UpdatesPending then
  begin
    try
      Query2.ApplyUpdates;
      Query2.CommitUpdates;

      ShowMessage('Luu du lieu thanh cong!');
      Button2Click(nil);

    except
      on E: Exception do
      begin
        ShowMessage('Co loi khi luu xuong he thong: ' + E.Message);
        Exit; 
      end;
    end;
  end
  else
  begin
    ShowMessage('Khong co du lieu nao bi thay doi de luu.');
    DBGridEh2.ReadOnly := True; 
  end;
  
  BitBtn3.Enabled := False;
  BitBtn4.Enabled := False;
  BitBtn7.Enabled := True;
  BitBtn2.Enabled := True;
end;

procedure TMaterial_Customer.BitBtn4Click(Sender: TObject);
begin
  if not Query2.Active then Exit;

  if Query2.State in [dsEdit, dsInsert] then
    Query2.Cancel;

  if Query2.UpdatesPending then
    Query2.CancelUpdates;

  DBGridEh2.ReadOnly := True;

  BitBtn3.Enabled := False;
  BitBtn4.Enabled := False;
  BitBtn7.Enabled := True;
  BitBtn2.Enabled := True;
end;

procedure TMaterial_Customer.BitBtn5Click(Sender: TObject);
begin
  Close;
end;

procedure TMaterial_Customer.DBGridEh2Columns2EditButtonClick(
  Sender: TObject; var Handled: Boolean);
begin
  if Material_CLZL = nil then
    Material_CLZL := TMaterial_CLZL.Create(Self);
  Material_CLZL.ShowModal;
end;

procedure TMaterial_Customer.BitBtndel1Click(Sender: TObject);
begin
  if not Query1.Active or Query1.IsEmpty then Exit;

  Query1.UpdateRecordTypes := [rtUnmodified, rtModified, rtInserted, rtDeleted];
  Query1.Delete;

  btnCancel.Enabled := True;
  btnSave.Enabled := True;
  BtnEdit.Enabled := False;
  btnModify.Enabled := False;
end;

procedure TMaterial_Customer.BitBtndel2Click(Sender: TObject);
begin
  if not Query2.Active or Query2.IsEmpty then Exit;

  Query2.UpdateRecordTypes := [rtUnmodified, rtModified, rtInserted, rtDeleted];
  Query2.Delete;

  BitBtn3.Enabled := True; 
  BitBtn4.Enabled := True; 
  BitBtn7.Enabled := False;
  BitBtn2.Enabled := False;
end;

procedure TMaterial_Customer.DBGridEh1GetCellParams(Sender: TObject;
  Column: TColumnEh; AFont: TFont; var Background: TColor;
  State: TGridDrawState);
begin
  if Query1.Active and (Query1.UpdateStatus = usDeleted) then
  begin
    Background := clRed;
    AFont.Color := clWhite;
  end;
end;

procedure TMaterial_Customer.DBGridEh2GetCellParams(Sender: TObject;
  Column: TColumnEh; AFont: TFont; var Background: TColor;
  State: TGridDrawState);
begin
  if Query2.Active and (Query2.UpdateStatus = usDeleted) then
  begin
    Background := clRed;
    AFont.Color := clWhite;
  end;
end;

end.
