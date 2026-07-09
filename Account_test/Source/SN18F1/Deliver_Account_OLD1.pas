unit Deliver_Account_OLD1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Menus, DB, DBTables, GridsEh, DBGridEh, StdCtrls, ComCtrls,
  ExtCtrls, IniFiles, comobj;

type
  TDeliver_Account_OLD = class(TForm)
    Panel1: TPanel;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Button1: TButton;
    DTP1: TDateTimePicker;
    DTP2: TDateTimePicker;
    Edit1: TEdit;
    Button2: TButton;
    Edit2: TEdit;
    Edit3: TEdit;
    Button3: TButton;
    DBGridEh1: TDBGridEh;
    DBGridEh2: TDBGridEh;
    DS3: TDataSource;
    DelMas: TQuery;
    DelMasLLNO: TStringField;
    DelMasSCBH: TStringField;
    DelMasDepID: TStringField;
    DelMasDepName: TStringField;
    DelMasUSERDATE: TDateTimeField;
    DelMasUSERID: TStringField;
    DelMasCFMDate: TDateTimeField;
    DelMasCFMID: TStringField;
    DelMasYN: TStringField;
    DelMasGSBH: TStringField;
    DelMasCKBH: TStringField;
    DelMasCFMID_1: TStringField;
    DelMasCFMDate_1: TDateTimeField;
    DelMasCFMID1: TStringField;
    DelMasCFMDATE1: TDateTimeField;
    DelMasCFMID2: TStringField;
    DelMasCFMDATE2: TDateTimeField;
    UpMas: TUpdateSQL;
    DelDet: TQuery;
    DelDetLLNO: TStringField;
    DelDetCLBH: TStringField;
    DelDetYWPM: TStringField;
    DelDetDWBH: TStringField;
    DelDetTempQty: TCurrencyField;
    DelDetQty: TCurrencyField;
    DelDetUSPrice: TCurrencyField;
    DelDetCostID: TStringField;
    DelDetSCBH: TStringField;
    DelDetUSERDATE: TDateTimeField;
    DelDetUSERID: TStringField;
    DelDetYN: TStringField;
    DelDetDFL: TStringField;
    DelDetKCBH: TStringField;
    DelDetDDYN: TStringField;
    DelDetHGLB: TStringField;
    DelDetCNO: TStringField;
    DelDetVNPrice: TCurrencyField;
    DelDetCWHL: TCurrencyField;
    DelDetLLMemo: TStringField;
    DS4: TDataSource;
    UPDet: TUpdateSQL;
    PopupMenu1: TPopupMenu;
    Excel1: TMenuItem;
    Button4: TButton;
    Pan_SetPrint_Label: TPanel;
    Label9: TLabel;
    chk_A4: TRadioButton;
    chk_A4A5: TRadioButton;
    Panel3: TPanel;
    Btn_Print2: TButton;
    chk_A5: TRadioButton;
    TmpQuery: TQuery;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormDestroy(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure Excel1Click(Sender: TObject);
    procedure Button3Click(Sender: TObject);
    procedure Button4Click(Sender: TObject);
    procedure Btn_Print2Click(Sender: TObject);
  private
    procedure ReadIni();
    { Private declarations }
  public
    VNPrice_DiplayFormat:string;
    VNPrice_Decimal:Byte;
    WH_Decimal:String;
    WH_DiplayFormat:String;
    ComName:string;
    ComNameCH:string;
    Account_N18C_ISO:string;
    CFMID,CFMID1,CFMID2:string;

    { Public declarations }
  end;

var
  Deliver_Account_OLD: TDeliver_Account_OLD;

implementation

uses main1, FDeliver_Print1, FDelOther_PrintA51, FDelMaterial_PrintA51,
     FDelother_C_PrintA51, FDelOther_M_PrintA51;

{$R *.dfm}
procedure TDeliver_Account_OLD.ReadIni();
var MyIni :Tinifile;
    AppDir:string;
begin
  //
  VNPrice_DiplayFormat:='#,##0';
  VNPrice_Decimal:=0;
  WH_Decimal:='2';
  WH_DiplayFormat:='#,##0.00';
  Account_N18C_ISO:='T-KH-QP010-05AERP';
  //CFMID:='00186';
  //CFMID1:='51181';
  //CFMID2:='00056';
  AppDir:=ExtractFilePath(Application.ExeName);
  if FileExists(AppDir+'\ComName.ini')=true then
  begin
    try
      MyIni := Tinifile.Create(AppDir+'\ComName.ini');
      VNPrice_DiplayFormat:=MyIni.ReadString('VNPrice','DiplayFormat','#,##0');
      VNPrice_Decimal:=strtoint(MyIni.ReadString('VNPrice','Decimal','0'));
      WH_Decimal:=MyIni.ReadString('Warehouse','Decimal','2');
      WH_DiplayFormat:=MyIni.ReadString('Warehouse','DiplayFormat','#,##0.00');
      ComName:=MyIni.ReadString('ERP','ComName','');
      ComNameCH:=MyIni.ReadString('ERP','ComNameCH','');
      Account_N18C_ISO:=MyIni.ReadString('ERP','Account_N18C_ISO','');
      //CFMID:=MyIni.ReadString('ERP','Account_N18C_CFMID_'+main.Edit2.Text,'');
      //CFMID1:=MyIni.ReadString('ERP','Account_N18C_CFMID1_'+main.Edit2.Text,'');
      //CFMID2:=MyIni.ReadString('ERP','Account_N18C_CFMID2_'+main.Edit2.Text,'');
     
    finally
      MyIni.Free;
    end;
  end;
  TCurrencyField(DelDet.FieldByName('VNPrice')).DisplayFormat:=VNPrice_DiplayFormat;
  TCurrencyField(DelDet.FieldByName('CWHL')).DisplayFormat:=VNPrice_DiplayFormat;
  TCurrencyField(DelDet.FieldByName('TempQty')).DisplayFormat:=WH_DiplayFormat;
  TCurrencyField(DelDet.FieldByName('Qty')).DisplayFormat:=WH_DiplayFormat;
end;

procedure TDeliver_Account_OLD.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  action:=cafree;
end;

procedure TDeliver_Account_OLD.FormDestroy(Sender: TObject);
begin
   Deliver_Account_OLD:=nil;
end;

procedure TDeliver_Account_OLD.FormCreate(Sender: TObject);
begin
  DTP1.Date:=date-3;
  DTP2.Date:=date;
  ReadIni();
end;

procedure TDeliver_Account_OLD.Button1Click(Sender: TObject);
begin
  with DelMas do
  begin
    Active:=false;
    sql.Clear;
    sql.add('select KCLL.*,BDepartment.DepName ');
    sql.Add('       ,KCLL_DK_CFM.CFMID,KCLL_DK_CFM.CFMDate,KCLL_DK_CFM.CFMID1,KCLL_DK_CFM.CFMDATE1,KCLL_DK_CFM.CFMID2,KCLL_DK_CFM.CFMDATE2');
    sql.add('from KCLL_1416 KCLL ');
    sql.add('left join BDepartment on KCLL.DepID=BDepartment.ID  ');
    sql.add('left join KCCK on KCCK.CKBH=KCLL.CKBH ');
    sql.Add('left join KCLL_DK_CFM on KCLL_DK_CFM.LLNO=KCLL.LLNO');
    sql.add('where convert(smalldatetime,convert(varchar,KCLL.USERDATE,111)) between '+''''+formatdatetime('yyyy/MM/dd',DTP1.date )+'''');
    sql.add('and '+''''+formatdatetime('yyyy/MM/dd',DTP2.date )+'''');
    sql.add('and KCLL.LLNO like '+''''+edit1.Text+'%'+'''');
    //sql.add('and KCCK.GSBH='+''''+main.Edit2.Text+'''');
    if Edit2.Text<>'' then
    sql.add('and exists (select LLNO from KCLLS_1416 KCLLS where KCLLS.LLNO=KCLL.LLNO and  KCLLS.HGLB like '''+Edit2.Text+'%'' Group by LLNO ) ');
    if Edit3.Text<>'' then
    sql.add('and exists (select LLNO from KCLLS_1416 KCLLS where KCLLS.LLNO=KCLL.LLNO and  KCLLS.CNO like '''+Edit3.Text+'%'' Group by LLNO ) ');
    sql.add('order by KCLL.LLNO  ');
    active:=true;
  end;
  if DelDet.requestlive=true then
  begin
    with DelDet do
    begin
      active:=false;
      requestlive:=false;
      cachedupdates:=false;
    end;
  end;
  DelDet.Active:=true;
end;

procedure TDeliver_Account_OLD.Button2Click(Sender: TObject);
var
      eclApp,WorkBook:olevariant;
      i,j,s:integer;
begin
  if DelMas.Active then
  begin
    if DelMas.recordcount=0 then
    begin
      showmessage('No record.');
      abort;
    end;
  end else
  begin
    showmessage('No record.');
    abort;
  end;

  try
    eclApp:=CreateOleObject('Excel.Application');
    WorkBook:=CreateOleObject('Excel.Sheet');
  except
    Application.MessageBox('NO Microsoft   Excel','Microsoft   Excel',MB_OK+MB_ICONWarning);
    Exit;
  end;

  try
    WorkBook:=eclApp.workbooks.Add;
    for i:=3 to DelMas.RecordCount do
      eclapp.workbooks[1].sheets.add;
    eclapp.workbooks[1].sheets[1].name:='Deliver List';
    eclApp.workbooks[1].sheets[1].Cells(1,1):='NO';

    DelDet.active:=false;

    for   i:=1   to   DelMas.fieldcount   do
    begin
      eclApp.workbooks[1].sheets[1].Cells(1,i+1):=DelMas.fields[i-1].FieldName;
    end;
    DelMas.First;
    j:=2;
    while   not  DelMas.Eof   do
    begin
      eclApp.workbooks[1].sheets[1].Cells(j,1):=j-1;
      for   i:=1   to   DelMas.fieldcount   do
      begin
        eclApp.workbooks[1].sheets[1].Cells(j,i+1):=DelMas.Fields[i-1].Value;
        eclApp.workbooks[1].sheets[1].Cells.Cells.item[j,i+1].font.size:='8';
      end;
      DelMas.Next;
      inc(j);
    end;
      //  eclapp.columns.autofit;

    //產生明細 edit by billweng 2011/6/29
    DelMas.First;
    DelDet.active:=true;
    s:=2;
    while   not  DelMas.Eof   do
    begin
  //    eclapp.workbooks[1].sheets[s].name:=DelMas.fields[0].value + inttostr(DelMas.fields[1].value);
      eclapp.workbooks[1].sheets[s].name:=DelMas.fields[0].asstring;
      eclApp.workbooks[1].sheets[s].Cells(1,1):='NO';

      for   i:=1   to   DelDet.fieldcount   do
      begin
        eclApp.workbooks[1].sheets[s].Cells(1,i+1):=DelDet.fields[i-1].FieldName;
      end;
      DelDet.First;
      j:=2;
      while   not  DelDet.Eof   do
      begin
        eclApp.workbooks[1].sheets[s].Cells(j,1):=j-1;
        for   i:=1   to   DelDet.fieldcount   do
        begin
          eclApp.workbooks[1].sheets[s].Cells(j,i+1):=DelDet.Fields[i-1].Value;
          eclApp.workbooks[1].sheets[s].Cells.Cells.item[j,i+1].font.size:='8';
        end;
        DelDet.Next;
        inc(j);
      end;
      S:=S+1;
      DelMas.Next;
    end;
  //結束

    eclapp.columns.autofit;
    showmessage('Succeed.');
    eclApp.Visible:=True;
  except
    on   F:Exception   do
      showmessage(F.Message);
  end;


end;

procedure TDeliver_Account_OLD.Excel1Click(Sender: TObject);
var
      eclApp,WorkBook:olevariant;
 //     xlsFileName:string;
      i,j:integer;
begin
  if DelMas.Active then
  begin
    if DelMas.recordcount=0 then
    begin
      showmessage('No record.');
      abort;
    end;
  end else
  begin
    showmessage('No record.');
    abort;
  end;

  try
    eclApp:=CreateOleObject('Excel.Application');
    WorkBook:=CreateOleObject('Excel.Sheet');
  except
    Application.MessageBox('NO Microsoft   Excel','Microsoft   Excel',MB_OK+MB_ICONWarning);
    Exit;
  end;

  try
    DelDet.Active:=false;
    WorkBook:=eclApp.workbooks.Add;
    eclApp.Cells(1,1):='NO';
    for   i:=1   to   DelMas.fieldcount   do
    begin
      eclApp.Cells(1,i+1):=DelMas.fields[i-1].FieldName;
    end;
    DelMas.First;
    j:=2;
    while   not  DelMas.Eof   do
    begin
      eclApp.Cells(j,1):=j-1;
      for   i:=1   to   DelMas.fieldcount   do
      begin
        eclApp.Cells(j,i+1):=DelMas.Fields[i-1].Value;
        eclApp.Cells.Cells.item[j,i+1].font.size:='8';
      end;
      DelMas.Next;
      inc(j);
    end;
    eclapp.columns.autofit;
    showmessage('Succeed.');
    eclApp.Visible:=True;
    DelDet.Active:=true;
  except
    on   F:Exception   do
      showmessage(F.Message);
  end;

end;

procedure TDeliver_Account_OLD.Button3Click(Sender: TObject);
begin
  if DelDet.RequestLive then
  begin
    showmessage('Pls save data first.');
    abort;
  end else
  begin
    with DelDet do
    begin
      FDeliver_Print:=TFDeliver_Print.Create(nil);
      FDeliver_Print.quickrep1.prepare;
      FDeliver_Print.Qpage1.caption:=inttostr(FDeliver_Print.quickrep1.QRPrinter.pagecount);
      FDeliver_Print.quickrep1.preview;
      FDeliver_Print.Free;
      Active:=false;
      cachedupdates:=false;
      requestlive:=false;
      Active:=true;
    end;
  end;
end;

procedure TDeliver_Account_OLD.Button4Click(Sender: TObject);
begin
  chk_A5.Checked:=True;
  //Pan_SetPrint_Label.Visible:=True;
  Btn_Print2.Click;
end;

procedure TDeliver_Account_OLD.Btn_Print2Click(Sender: TObject);
  var SCBH,CFMID,CFMID1,CFMID2: string;
begin
  SCBH:='';
  if (DelMas.FieldByName('CKBH').AsString='VA12') then
  begin
    CFMID:='CQ_VA12';
    CFMID1:='X_VA12';
    CFMID2:='';
  end;
  if (DelMas.FieldByName('CKBH').AsString='VA3') then
  begin
    CFMID:='CQ_VA3';
    CFMID1:='X_VA3';
    CFMID2:='';
  end;
  if (DelMas.FieldByName('CKBH').AsString='VB2') then
  begin
    CFMID:='CQ_VB2';
    CFMID1:='X_VB2';
    CFMID2:='';
  end;
  if (DelMas.FieldByName('CKBH').AsString='CDC') then
  begin
    CFMID:='CQ_CDC';
    CFMID1:='X_CDC';
    CFMID2:='';
  end;
  if (DelMas.FieldByName('CKBH').AsString='KDC') then
  begin
    CFMID:='CQ_KDC';
    CFMID1:='X_KDC';
    CFMID2:='';
  end;
  if (DelMas.FieldByName('CKBH').AsString='VTXW')  then
  begin
    CFMID:='CQ_VTXW';
    CFMID1:='X_VTXW';
    CFMID2:='';
  end;
  if ((DelMas.FieldByName('CKBH').AsString='VB1') or  (DelMas.FieldByName('CKBH').AsString='VB7') ) then
  begin
    CFMID:='CQ_VB1';
    CFMID1:='X_VB1';
    CFMID2:='';
  end;
  if DelDet.RequestLive then
  begin
    showmessage('Pls save data first.');
    abort;
  end else
  begin
    with TmpQuery do
    begin
      Active:=false;
      SQL.Clear;
      SQL.Add('select KCLL_DK_CFM.CFMID,KCLL_DK_CFM.CFMID1,KCLL_DK_CFM.CFMID2');
      SQL.Add('from KCLL_DK_CFM');
      SQL.Add('where LLNO='''+DelMas.fieldbyname('LLNO').AsString+''' ');
      Active:=true;
      if RecordCount>0 then
      begin
        Active:=false;
        SQL.Clear;
        SQL.Add('  update KCLL_DK_CFM  ');
        SQL.Add('  set CFMID='''+CFMID+''', CFMDATE=getdate()  ');
        SQL.Add('      ,CFMID1='''+CFMID1+''', CFMDATE1=getdate()  ');
        SQL.Add('  	   ,CFMID2='''+CFMID2+''', CFMDATE2=getdate()  ');
        SQL.Add('  where LLNO='''+DelMas.FieldByName('LLNO').AsString+'''  ');
        ExecSQL;
      end else
      begin
        Active:=false;
        SQL.Clear;
        SQL.Add('  insert into KCLL_DK_CFM(LLNO,CFMID,CFMDATE,CFMID1,CFMDATE1) values ');
        SQL.Add('    ( '''+DelMas.FieldByName('LLNO').AsString+'''  ');
        SQL.Add('      ,'''+CFMID+''', getdate()  ');
        SQL.Add('      ,'''+CFMID1+''', getdate() ) ');
        //SQL.Add('  	   ,'''+CFMID2+''', getdate() )');
        ExecSQL;
      end;
    end;
    with TmpQuery do
    begin
      active:=false;
      sql.Clear;
      sql.Add('select DDBH as DDBH from DDZL where DDBH= '''+DelMas.FieldByName('SCBH').AsString+'''');
      sql.Add('union all');
      sql.Add('select YPDH as DDBH from YPZL where YPDH= '''+DelMas.FieldByName('SCBH').AsString+'''');
      sql.Add('union all');
      sql.Add('select distinct MasterOrder as DDBH from CBY_Orders where MasterOrder='''+DelMas.FieldByName('SCBH').AsString+'''');
      active:=true;
    end;
    if TmpQuery.RecordCount>0 then SCBH:= TmpQuery.FieldByName('DDBH').AsString;

    if (DelMas.FieldByName('SCBH').AsString='WWWWWWWWWW') or (DelMas.FieldByName('SCBH').AsString='JJJJJJJJJJ') or (DelMas.FieldByName('SCBH').AsString='RRRRRRRRRR') then
    begin
      if chk_A5.Checked then
        FDelOther_C_PrintA51.sPaperSize := 'A5'
      else if chk_A4A5.Checked then
        FDelOther_C_PrintA51.sPaperSize := 'A4_A5'
      else if chk_A4.Checked then
        FDelOther_C_PrintA51.sPaperSize := 'A4';
      FDelOther_C_PrintA5 := TFDelOther_C_PrintA5.create(nil);
      FDelOther_C_PrintA5.QRLabel6.Caption:=ComName;
      FDelOther_C_PrintA5.qrlbl13.Caption:=ComNameCH;
      FDelOther_C_PrintA5.qrlbl1.Caption:='T-KH-QP010-05AERP';
      FDelOther_C_PrintA5.Quickrep1.Prepare;
      FDelOther_C_PrintA5.Qpage1.caption:=inttostr(FDelOther_C_PrintA5.quickrep1.QRPrinter.pagecount);
      FDelOther_C_PrintA5.quickrep1.preview;
      FDelOther_C_PrintA5.Free;
    end else
    if DelMas.FieldByName('SCBH').AsString=SCBH then
    begin
      if chk_A5.Checked then
        FDelMaterial_PrintA51.sPaperSize := 'A5'
      else if chk_A4A5.Checked then
        FDelMaterial_PrintA51.sPaperSize := 'A4_A5'
      else if chk_A4.Checked then
        FDelMaterial_PrintA51.sPaperSize := 'A4';
      FDelMaterial_PrintA5:=TFDelMaterial_PrintA5.Create(nil);
      FDelMaterial_PrintA5.QRLabel6.Caption:=ComName;
      FDelMaterial_PrintA5.qrlbl13.Caption:=ComNameCH;
      FDelMaterial_PrintA5.qrlbl1.Caption:='T-KH-QP010-05AERP';
      FDelMaterial_PrintA5.quickrep1.prepare;
      FDelMaterial_PrintA5.Qpage1.caption:=inttostr(FDelMaterial_PrintA5.quickrep1.QRPrinter.pagecount);
      FDelMaterial_PrintA5.quickrep1.preview;
      FDelMaterial_PrintA5.Free;
    end else
    begin
      with DelDet do
      begin
        if chk_A5.Checked then
          FDelOther_PrintA51.sPaperSize := 'A5'
        else if chk_A4A5.Checked then
          FDelOther_PrintA51.sPaperSize := 'A4_A5'
        else if chk_A4.Checked then
          FDelOther_PrintA51.sPaperSize := 'A4';
        FDelOther_PrintA5:=TFDelOther_PrintA5.Create(nil);
        FDelOther_PrintA5.QRLabel6.Caption:=ComName;
        FDelOther_PrintA5.qrlbl13.Caption:=ComNameCH;
        FDelOther_PrintA5.qrlbl1.Caption:='T-KH-QP010-05AERP';
        FDelOther_PrintA5.quickrep1.prepare;
        FDelOther_PrintA5.Qpage1.caption:=inttostr(FDelOther_PrintA5.quickrep1.QRPrinter.pagecount);
        FDelOther_PrintA5.quickrep1.preview;
        FDelOther_PrintA5.Free;
        Active:=false;
        cachedupdates:=false;
        requestlive:=false;
        Active:=true;
      end;
    end;
  end;
  Pan_SetPrint_Label.Visible:=false;
end;

end.
