unit NC2BP1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, GridsEh, DBGridEh, StdCtrls, Buttons, ExtCtrls, DB, DBTables,IniFiles,comobj,ShellAPI;

type
  TSNC2 = class(TForm)
    Panel2: TPanel;
    B_QueryP1: TBitBtn;
    B_InsertP1: TBitBtn;
    B_DeleteP1: TBitBtn;
    B_ModifyP1: TBitBtn;
    B_SaveP1: TBitBtn;
    B_CancelP1: TBitBtn;
    B_ExitP1: TBitBtn;
    Button2: TBitBtn;
    Panel1: TPanel;
    Label1: TLabel;
    Label6: TLabel;
    ED_BP: TEdit;
    Button1: TButton;
    ED_ProjectName: TEdit;
    Button3: TButton;
    DBGridEh1: TDBGridEh;
    OpenDialog1: TOpenDialog;
    Q_BP: TQuery;
    Qry_Import: TQuery;
    U_BP: TUpdateSQL;
    DS_BP: TDataSource;
    Q_BPBPNo: TStringField;
    Q_BPProjectName: TStringField;
    Q_BPVersion: TStringField;
    Q_BPBPFile: TStringField;
    Q_BPUserID: TStringField;
    Q_BPUserDate: TDateTimeField;
    Q_BPYN: TStringField;
    BDelRec: TQuery;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormDestroy(Sender: TObject);
    procedure B_QueryP1Click(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure B_InsertP1Click(Sender: TObject);
    procedure B_DeleteP1Click(Sender: TObject);
    procedure B_ModifyP1Click(Sender: TObject);
    procedure B_SaveP1Click(Sender: TObject);
    procedure B_CancelP1Click(Sender: TObject);
    procedure B_ExitP1Click(Sender: TObject);
    procedure DBGridEh1Columns3EditButtonClick(Sender: TObject;
      var Handled: Boolean);
    procedure Button2Click(Sender: TObject);
    procedure Button3Click(Sender: TObject);
    procedure DBGridEh1GetCellParams(Sender: TObject; Column: TColumnEh;
      AFont: TFont; var Background: TColor; State: TGridDrawState);
    procedure FormCreate(Sender: TObject);
    procedure Q_BPAfterOpen(DataSet: TDataSet);
    procedure DBGridEh1DblClick(Sender: TObject);
  private
    BPFilePath: string;
    procedure ReadIni();
    { Private declarations }
  public
    { Public declarations }
  end;

var
  SNC2: TSNC2;

implementation

uses main1,FunUnit;

{$R *.dfm}

procedure TSNC2.ReadIni();
var MyIni :Tinifile;
    AppDir:string;
begin
  BPFilePath := '\\192.168.123.111\Tech\ENGLISH TEAM\KHOA\TAI LIEU CONVERSE\';
  AppDir:=ExtractFilePath(Application.ExeName);
  if FileExists(AppDir+'\ComName.ini')=true then
  begin
    try
      MyIni := Tinifile.Create(AppDir+'\ComName.ini');
      BPFilePath:=MyIni.ReadString('BP2C','Develop_NC2_BPFilePath','\\192.168.123.111\Tech\ENGLISH TEAM\KHOA\TAI LIEU CONVERSE\');
    finally
      MyIni.Free;
    end;
  end;
end;

procedure TSNC2.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  if (B_SaveP1.Enabled) then
  begin
    MessageDlg('You have to save the data before exit.', mtWarning, [mbyes], 0);
    Action := caNone;
  end
  else begin
    Action := caFree;
  end;
end;

procedure TSNC2.FormDestroy(Sender: TObject);
begin
  SNC2:=nil;
end;

procedure TSNC2.B_QueryP1Click(Sender: TObject);
begin
  Panel1.Visible := true;
end;

procedure TSNC2.Button1Click(Sender: TObject);
begin
  with Q_BP do
  begin
    Active := false;
    SQL.Clear;
    SQL.Add('SELECT * FROM BP_Document ');
    SQL.Add(' WHERE 1 = 1 ');
    if trim(ED_BP.Text) <> '' then
      SQL.Add('and BPNo LIKE '''+ED_BP.Text+'%''');
    if trim(ED_ProjectName.Text) <> '' then
      SQL.Add('and ProjectName LIKE '''+ED_ProjectName.Text+'%''');
    Active := true;
  end;
  B_InsertP1.Enabled := true;
  B_DeleteP1.Enabled := true;
  B_ModifyP1.Enabled := true;
end;

procedure TSNC2.B_InsertP1Click(Sender: TObject);
begin
  with Q_BP do
  begin
    RequestLive := true;
    CachedUpdates := true;
    First;
    Insert;
  end;

  B_SaveP1.Enabled := true;
  B_CancelP1.Enabled := true;
  DBGridEh1.Columns[3].ButtonStyle := cbsEllipsis;
end;

procedure TSNC2.B_DeleteP1Click(Sender: TObject);
begin
  with Q_BP do
  begin
    RequestLive := true;
    CachedUpdates := true;
    Edit;
    FieldByName('YN').Value := 0;
  end;

  B_SaveP1.Enabled := true;
  B_CancelP1.Enabled := true;
end;

procedure TSNC2.B_ModifyP1Click(Sender: TObject);
begin
  with Q_BP do
  begin
    RequestLive := true;
    CachedUpdates := true;
    Edit;
  end;

  B_SaveP1.Enabled := true;
  B_CancelP1.Enabled := true;
  DBGridEh1.Columns[3].ButtonStyle := cbsEllipsis;
end;

procedure TSNC2.B_SaveP1Click(Sender: TObject);
var i: integer;
begin
  try
    Q_BP.First;
    for i := 1 to Q_BP.RecordCount do
    begin
      case Q_BP.UpdateStatus of
        usInserted:
        begin
          if (Q_BP.FieldByName('BPNo').IsNull) then
          begin
            Q_BP.Delete;
          end
          else
          begin
            Q_BP.Edit;
            Q_BP.FieldByName('USERID').Value := main.Edit1.Text;
            Q_BP.FieldByName('YN').Value := 1;
            U_BP.Apply(ukInsert);
          end;
        end;

        usModified:
        begin
        if Q_BP.FieldByName('UserID').Value=main.Edit1.Text then
          begin
          if (Q_BP.FieldByName('YN').Value = 0) then
          begin
            with BDelRec do
            begin
            Active := false;
            SQL.Clear;
            SQL.Add('INSERT INTO BDelRec (TableName, TNO, CLBH, OldID, DelID, DelDate)');
            SQL.Add('VALUES (:TableName, :TNO, :CLBH, :OldID, :DelID, getdate())');
            Params.ParamByName('TableName').AsString := 'BP_Document';
            Params.ParamByName('TNO').AsString := Q_BP.FieldByName('BPNo').AsString;
            Params.ParamByName('CLBH').AsString := '';
            Params.ParamByName('OldID').AsString := Q_BP.FieldByName('USERID').AsString;
            Params.ParamByName('DelID').AsString := main.Edit1.Text;
            ExecSQL;
          end;

            U_BP.Apply(ukDelete);
          end
          else
          begin
            Q_BP.Edit;
            Q_BP.FieldByName('UserID').Value := main.Edit1.text;
            U_BP.Apply(ukModify);
          end;
        end
        else
        begin
          Showmessage('It is not yours, can not modify.');
        end;
      end;
      end;
      Q_BP.Next;
    end;

    Q_BP.Active := false;
    Q_BP.CachedUpdates := false;
    Q_BP.RequestLive := false;
    Q_BP.Active := true;
    B_SaveP1.Enabled := false;
    B_CancelP1.Enabled := false;
    DBGridEh1.Columns[3].ButtonStyle := cbsNone;
  except
    MessageDlg('Failed to save the data!', mtWarning, [mbyes], 0);
  end;
end;


procedure TSNC2.B_CancelP1Click(Sender: TObject);
begin
  with Q_BP do
  begin
    Active := false;
    RequestLive := false;
    CachedUpdates := false;
    Active := true;
  end;

  B_SaveP1.Enabled := false;
  B_CancelP1.Enabled := false;
  DBGridEh1.Columns[3].ButtonStyle := cbsNone;
end;

procedure TSNC2.B_ExitP1Click(Sender: TObject);
begin
  Close;
end;


procedure TSNC2.DBGridEh1DblClick(Sender: TObject);
begin
  if (DBGridEh1.SelectedField.FieldName = 'BPFile') and (Q_BP.FieldByName('BPFile').AsString <> '') and (B_SaveP1.Enabled = false) then
    ShellExecute(0, 'open', PChar(BPFilePath + Q_BP.FieldByName('BPFile').AsString), nil, nil, SW_Normal);
end;


procedure TSNC2.DBGridEh1Columns3EditButtonClick(Sender: TObject;
  var Handled: Boolean);
  var BPFileName: string;
begin
  if (OpenDialog1.Execute) then
  begin
    BPFileName := ExtractFileName(OpenDialog1.FileName);
    if (FileExists(BPFilePath + BPFileName) = false) then
    begin
      Q_BP.FieldByName('BPFile').Value := ExtractFileName(OpenDialog1.FileName);
      CopyFile(PChar(OpenDialog1.FileName), PChar(BPFilePath + BPFileName), true);
    end else
    begin
      if (MessageDlg('File ''' + BPFileName + ''' already exists. Do you want to replace it?', mtConfirmation, [mbYes, mbNo], 0) = mrYes) then
      begin
        Q_BP.FieldByName('BPFile').Value := ExtractFileName(OpenDialog1.FileName);
        CopyFile(PChar(OpenDialog1.FileName), PChar(BPFilePath + BPFileName), false);
      end
    end;
  end;
end;

procedure TSNC2.Button2Click(Sender: TObject);
  var Excel,arrData: Variant;
      Rows,Cols,i,j,count,temp: Integer;
      Error: Boolean;
begin
  if (B_SaveP1.Enabled) then
  begin
    showmessage('Pls. Save data first !');
    abort;
  end else
  begin
    if not OpenDialog1.Execute then
      abort;
    Excel:=CreateOleObject('Excel.Application');
    Excel.WorkBooks.Open(OpenDialog1.FileName);
    Excel.WorkSheets[1].Activate;
    Rows := Excel.WorkSheets[1].UsedRange.EntireRow.count;

    try
      //-----Format excel-----
      Excel.Columns[1].NumberFormat:='@';   //BPNo
      Excel.Columns[2].NumberFormat:='@';   //ProjectName
      Excel.Columns[3].NumberFormat:='@';   //Version

      //-----Start import-----
      arrData:= Excel.WorkSheets[1].UsedRange.Value;
      i:=2;
      count:=0;
      temp:=0;

      while (count<3) and (i<=Rows) do
      begin
        try
          if trim(arrData[i,1])='' then
            Inc(count)
          else
          begin
            count:=1;
            Qry_Import.Close;
            Qry_Import.SQL.Clear;
            Qry_Import.SQL.Add('Select * from BP_Document');
            Qry_Import.SQL.Add('Where BPNo='''+trim(arrData[i,1])+''' ');
            Qry_Import.ExecSQL;
            Qry_Import.Open;
            if Qry_Import.RecordCount>0 then
            begin
              Qry_Import.Active:=false;
              Qry_Import.sql.Clear;
              Qry_Import.sql.Add('UPDATE BP_Document SET ');
              Qry_Import.sql.Add('   ProjectName ='''+trim(arrData[i,2])+''' ');
              Qry_Import.sql.Add('   ,Version = '''+trim(arrData[i,3])+''' ');
              Qry_Import.sql.Add('   ,UserID ='''+main.Edit1.Text+''' ');
              Qry_Import.sql.Add('   ,UserDate = GETDATE() ');
              Qry_Import.sql.Add('   ,YN = ''1'' ');
              Qry_Import.SQL.Add('Where BPNo='''+trim(arrData[i,1])+''' ');
              Qry_Import.ExecSQL;
            end else
            begin
              Qry_Import.Active:=false;
              Qry_Import.sql.Clear;
              Qry_Import.sql.Add('INSERT INTO BP_Document(BPNo, ProjectName, Version, USERID, USERDATE, YN)');
              Qry_Import.sql.Add('VALUES(');
              Qry_Import.sql.Add('   '''+trim(arrData[i,1])+''', '''+trim(arrData[i,2])+''', '''+trim(arrData[i,3])+''' ');
              Qry_Import.sql.Add('   ,'''+main.Edit1.Text+''' ');
              Qry_Import.sql.Add('   ,GETDATE() ');
              Qry_Import.sql.Add('   ,''1'') ');
              Qry_Import.ExecSQL;
            end;
            Inc(temp);
            inc(i);
          end;
        except
          Error:=true;
          Break;
        end;
      end;
    finally
      IntToStr(temp);
      if Error then
        MessageDlg('Error: PMRNo '+trim(arrData[i,1])+'. Import '+IntToStr(temp)+' rows complete!!!',mtError,[mbOK],0)
      else
      begin
        MessageDlg('OK !!!, Import ('+IntToStr(temp)+') rercords !!', mtConfirmation,[mbOK],0);
        Qry_Import.Close;
      end;

      Excel.ActiveWorkBook.Close(SaveChanges:=0);
      Excel.Quit;
      Excel:=Unassigned;
      arrData:=Unassigned;
    end;
    Button1.Click;
  end;
end;


procedure TSNC2.Button3Click(Sender: TObject);
  var a: string;
      eclApp, WorkBook: olevariant;
      i, j: integer;
begin
  if (Q_BP.Active) then
  begin
    try
      eclApp := CreateOleObject('Excel.Application');
      WorkBook := CreateOleObject('Excel.Sheet');
    except
      Application.MessageBox('No Microsoft Excel', 'Microsoft Excel', MB_OK + MB_ICONWarning);
      Exit;
    end;

    try
      WorkBook := eclApp.workbooks.Add;
      for i:=0 to Q_BP.FieldCount-2 do
      begin
        eclApp.Cells(1, i+1) := Q_BP.Fields[i].FieldName;
      end;

      Q_BP.First;
      j := 2;
      while not Q_BP.Eof do
      begin
        for i:=0 to Q_BP.FieldCount-2 do
        begin
          eclApp.Cells(j, i+1) := Q_BP.Fields[i].Value;
        end;
        Q_BP.Next;
        Inc(j);
      end;
      eclapp.columns.autofit;
      ShowMessage('Succeed');
      eclApp.Visible := True;
    except on F:Exception do
      ShowMessage(F.Message);
    end;
  end;
end;

procedure TSNC2.DBGridEh1GetCellParams(Sender: TObject; Column: TColumnEh;
  AFont: TFont; var Background: TColor; State: TGridDrawState);
begin
    if (Q_BP.FieldByName('YN').AsString = '0') then
    DBGridEh1.Canvas.Font.Color := clRed;
end;

procedure TSNC2.FormCreate(Sender: TObject);
begin
  ReadIni();
end;

procedure TSNC2.Q_BPAfterOpen(DataSet: TDataSet);
begin
  B_SaveP1.Enabled := false;
  B_CancelP1.Enabled := false;
end;

end.
