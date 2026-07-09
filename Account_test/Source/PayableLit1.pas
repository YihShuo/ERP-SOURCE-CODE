unit PayableLit1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DBTables, DB, ComCtrls, StdCtrls, DBCtrls, Grids, DBGrids, Mask,
  Buttons, ExtCtrls, GridsEh, DBGridEh,comobj, Menus, iniFiles;

type
  TPayableLit = class(TForm)
    Panel1: TPanel;
    Label18: TLabel;
    BB2: TBitBtn;
    BB3: TBitBtn;
    BB4: TBitBtn;
    BB5: TBitBtn;
    BB6: TBitBtn;
    BB7: TBitBtn;
    BB1: TBitBtn;
    BBT1: TBitBtn;
    BBT2: TBitBtn;
    BBT3: TBitBtn;
    BBT4: TBitBtn;
    bbt6: TBitBtn;
    Panel6: TPanel;
    Label17: TLabel;
    BD2: TBitBtn;
    BD3: TBitBtn;
    BD4: TBitBtn;
    BD5: TBitBtn;
    BD6: TBitBtn;
    BD7: TBitBtn;
    BDT1: TBitBtn;
    BDT2: TBitBtn;
    BDT3: TBitBtn;
    BDT4: TBitBtn;
    BDT5: TBitBtn;
    BDT6: TBitBtn;
    PC1: TPageControl;
    TS3: TTabSheet;
    Panel4: TPanel;
    Label9: TLabel;
    Label11: TLabel;
    Label12: TLabel;
    DBEdit3: TDBEdit;
    DBEdit5: TDBEdit;
    DBEdit6: TDBEdit;
    DBGrid3: TDBGridEh;
    TS4: TTabSheet;
    Panel3: TPanel;
    Label7: TLabel;
    Label8: TLabel;
    Label15: TLabel;
    Label16: TLabel;
    Label19: TLabel;
    Label20: TLabel;
    DBEdit9: TDBEdit;
    DBEdit10: TDBEdit;
    DBEdit11: TDBEdit;
    DBEdit12: TDBEdit;
    DBEdit13: TDBEdit;
    BBTT2: TBitBtn;
    DBGrid4: TDBGridEh;
    Panel2: TPanel;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Edit1: TEdit;
    Button1: TButton;
    DTP1: TDateTimePicker;
    DTP2: TDateTimePicker;
    DS4: TDataSource;
    PayDet: TQuery;
    UPDet: TUpdateSQL;
    DS3: TDataSource;
    PayMas: TQuery;
    UpMas: TUpdateSQL;
    Edit2: TEdit;
    Query1: TQuery;
    PayMasFKBH: TStringField;
    PayMasZHBH: TStringField;
    PayMasZSBH: TStringField;
    PayMasFKDate: TDateTimeField;
    PayMasUSERDATE: TDateTimeField;
    PayMasUSERID: TStringField;
    PayMasYN: TStringField;
    PayMasBankNo: TStringField;
    PayMasZHJC: TStringField;
    PayMasZSYWJC: TStringField;
    BBTT3: TBitBtn;
    DBMemo1: TDBMemo;
    UpTemp: TQuery;
    PayMasUSACC: TCurrencyField;
    PayMasUSQty: TCurrencyField;
    PayDetZSBH: TStringField;
    PayDetDJNO: TStringField;
    PayDetDJLX: TStringField;
    PayDetCGBH: TStringField;
    PayDetCLBH: TStringField;
    PayDetDJDATE: TDateTimeField;
    PayDetQty: TCurrencyField;
    PayDetUSPrice: TCurrencyField;
    PayDetUSACC: TCurrencyField;
    PayDetUSQty: TCurrencyField;
    PayDetCostID: TStringField;
    PayDetFKBH: TStringField;
    PayDetUSERDATE: TDateTimeField;
    PayDetUSERID: TStringField;
    PayDetYN: TStringField;
    PayDetYWPM: TStringField;
    PayDetDWBH: TStringField;
    PayMasGSBH: TStringField;
    CB1: TCheckBox;
    PopupMenu1: TPopupMenu;
    N1: TMenuItem;
    Button2: TButton;
    BDAll: TBitBtn;
    BDelRec: TQuery;
    PayMasVNACC: TCurrencyField;
    PayMasVNQty: TCurrencyField;
    PayMasCWHL: TCurrencyField;
    PayDetCWHL: TCurrencyField;
    PayDetVNPrice: TCurrencyField;
    PayDetVNACC: TCurrencyField;
    PayDetVNQty: TCurrencyField;
    PayDetCKBH: TStringField;
    Button3: TButton;
    BitBtn1: TBitBtn;
    BitBtn2: TBitBtn;
    BitBtn3: TBitBtn;
    qrytmptk: TQuery;
    qrytmphd: TQuery;
    qrytmpdtc: TQuery;
    chkCB1: TCheckBox;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure BB1Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure BB7Click(Sender: TObject);
    procedure BD7Click(Sender: TObject);
    procedure BB2Click(Sender: TObject);
    procedure BB3Click(Sender: TObject);
    procedure BB4Click(Sender: TObject);
    procedure BB5Click(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure BD2Click(Sender: TObject);
    procedure BD3Click(Sender: TObject);
    procedure BD4Click(Sender: TObject);
    procedure BD5Click(Sender: TObject);
    procedure BD6Click(Sender: TObject);
    procedure BB6Click(Sender: TObject);
    procedure BBT1Click(Sender: TObject);
    procedure BBT2Click(Sender: TObject);
    procedure BBT3Click(Sender: TObject);
    procedure BBT4Click(Sender: TObject);
    procedure BDT1Click(Sender: TObject);
    procedure BDT2Click(Sender: TObject);
    procedure BDT3Click(Sender: TObject);
    procedure BDT4Click(Sender: TObject);
    procedure PayDetAfterOpen(DataSet: TDataSet);
    procedure PC1Change(Sender: TObject);
    procedure DBGrid3DblClick(Sender: TObject);
    procedure DBGrid3EditButtonClick(Sender: TObject);
    procedure DBGrid4EditButtonClick(Sender: TObject);
    procedure PayMasAfterOpen(DataSet: TDataSet);
    procedure DBGrid3KeyPress(Sender: TObject; var Key: Char);
    procedure BBTT3Click(Sender: TObject);
    procedure PayMasAfterScroll(DataSet: TDataSet);
    procedure BBTT2Click(Sender: TObject);
    procedure BDT5Click(Sender: TObject);
    procedure DBGrid4GetCellParams(Sender: TObject; Column: TColumnEh;
      AFont: TFont; var Background: TColor; State: TGridDrawState);
    procedure DBGrid3GetCellParams(Sender: TObject; Column: TColumnEh;
      AFont: TFont; var Background: TColor; State: TGridDrawState);
    procedure BDT6Click(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure N1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure DBGrid4KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure BDAllClick(Sender: TObject);
    procedure bbt6Click(Sender: TObject);
    procedure PayDetAfterScroll(DataSet: TDataSet);
    procedure Button3Click(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
    procedure BitBtn2Click(Sender: TObject);
    procedure BitBtn3Click(Sender: TObject);
  private
    { Private declarations }
    procedure readini();
  public
    VNPrice_DiplayFormat:string;
    VNPrice_Decimal:Byte;
    { Public declarations }
  end;

var
  PayableLit: TPayableLit;
  Ndate:Tdate;

implementation

uses main1, Payabled_CL1, Payable_ZS1, Payable_ZH1, Payable_print1,
  Payable_print21, PayableLit_Check1, Adjustingp,FunUnit,
  Payabled_CL_JGCBY1;

{$R *.dfm}
procedure TPayableLit.readini();
var MyIni :Tinifile;
    AppDir:string;
begin
  //
  VNPrice_DiplayFormat:='#,##0';
  VNPrice_Decimal:=0;
  AppDir:=ExtractFilePath(Application.ExeName);
  if FileExists(AppDir+'\ComName.ini')=true then
  begin
    try
      MyIni := Tinifile.Create(AppDir+'\ComName.ini');
      VNPrice_DiplayFormat:=MyIni.ReadString('VNPrice','DiplayFormat','#,##0');
      VNPrice_Decimal:=strtoint(MyIni.ReadString('VNPrice','Decimal','0'));
    finally
      MyIni.Free;
    end;
  end;
  TCurrencyField(PayMas.FieldByName('CWHL')).DisplayFormat:=VNPrice_DiplayFormat;
  TCurrencyField(PayMas.FieldByName('VNQty')).DisplayFormat:=VNPrice_DiplayFormat;
  TCurrencyField(PayMas.FieldByName('VNACC')).DisplayFormat:=VNPrice_DiplayFormat;

  TCurrencyField(PayDet.FieldByName('CWHL')).DisplayFormat:=VNPrice_DiplayFormat;
  TCurrencyField(PayDet.FieldByName('VNQty')).DisplayFormat:=VNPrice_DiplayFormat;
  TCurrencyField(PayDet.FieldByName('VNACC')).DisplayFormat:=VNPrice_DiplayFormat;
  TCurrencyField(PayDet.FieldByName('VNPrice')).DisplayFormat:=VNPrice_DiplayFormat;
end;

procedure TPayableLit.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  if BB5.enabled  then
  begin
    messagedlg('You have to save data Record of report first.',mtwarning,[mbyes],0);
    PC1.ActivePage:=TS3;
    panel1.Visible:=true;
    panel6.Visible:=false;
    action:=canone;
  end else
  begin
    if BD5.enabled then
    begin
      messagedlg('You have to save data Report first.',mtwarning,[mbyes],0);
      PC1.ActivePage:=TS4;
      panel6.Visible:=true;
      panel1.Visible:=false;
      action:=canone;
    end else
    begin
      action:=Cafree;
    end;
  end;
end;

procedure TPayableLit.BB1Click(Sender: TObject);
begin
  panel2.Visible:=true;
end;

procedure TPayableLit.Button1Click(Sender: TObject);
begin
  with PayMas do
  begin
    active:=false;
    sql.Clear;
    sql.add('select CWFK.*,CWZH.BankNo,CWZH.ZHJC,ZSZL.ZSYWJC');
    sql.add('from CWFK');
    sql.add('left join CWZH on CWZH.ZHBH=CWFK.ZHBH ');
    sql.add('left join ZSZL on ZSZL.ZSDH=CWFK.ZSBH ');
    sql.add('where ISNULL(flowflag,'''')<>''X''and  convert(smalldatetime,convert(varchar,CWFK.FKDate,111)) between ');
    sql.add(''''+formatdatetime('yyyy/MM/dd',DTP1.Date)+'''');
    sql.add(' and '+''''+formatdatetime('yyyy/MM/dd',DTP2.Date)+'''');
    sql.add(' and CWFK.FKBH like '+''''+edit1.Text+'%'+'''');
    sql.add(' and ZSZL.ZSYWJC like '+''''+'%'+edit2.text+'%'+'''');
    //sql.add(' and CWFK.ZHBH is null ');
    sql.Add('and CWFK.GSBH='+''''+main.edit2.Text+'''');
    if CB1.Checked then
    begin
      sql.add('and CWFK.USERID='+''''+main.Edit1.Text+'''');
    end;
    sql.add('order by CWFK.FKBH DESC');
    //memo1.text:=sql.text;
    active:=true;
  end;
  panel2.Visible:=false;
  BB2.Enabled:=true;
  BB3.Enabled:=true;
  BB4.Enabled:=true;
  BBT1.Enabled:=true;
  BBT2.Enabled:=true;
  BBT3.Enabled:=true;
  BBT4.Enabled:=true;
  BBT6.Enabled:=true;
  CB1.Checked:=true;
  PayDet.Active:=true;
end;

procedure TPayableLit.FormCreate(Sender: TObject);
begin
  with query1 do
  begin
    active:=false;
    sql.Clear;
    sql.add('select getdate() as NDate ');
    active:=true;
    NDate:=fieldbyname('NDate').Value;
  end;
  PC1.ActivePage:=TS3;
  DTP1.Date:=date-15;
  DTP2.date:=date;
  readini();
end;

procedure TPayableLit.BB7Click(Sender: TObject);
begin
  close;
end;

procedure TPayableLit.BD7Click(Sender: TObject);
begin
  close;
end;

procedure TPayableLit.BB2Click(Sender: TObject);
begin
  with PayMas do
  begin
    requestlive:=true;
    cachedupdates:=true;
    insert;
  end;
  //BBTT1.Visible:=true;
  BBTT3.Visible:=true;
  BB5.Enabled:=true;
  BB6.Enabled:=true;
  //dbgrid3.columns[6].ButtonStyle:=cbsEllipsis;
  dbgrid3.columns[1].ButtonStyle:=cbsEllipsis;
end;

procedure TPayableLit.BB3Click(Sender: TObject);
begin
  if not payMas.Active then
  begin
    abort;
  end;
  if PayMas.FieldByName('USERID').value=main.Edit1.Text then
  begin
    if PayDet.recordcount=0 then
    begin
      with PayMas do
      begin
        requestlive:=true;
        cachedupdates:=true;
        edit;
        fieldbyname('YN').Value:='0';
      end;
    end else
    begin
      showmessage('Pls delete the Deliver Detail first.')
    end;
  end else
  begin
    showmessage('It is not yours, can not delete.');
    abort;
  end;
  //BBTT1.Visible:=true;
  BBTT3.Visible:=true;
  BB5.Enabled:=true;
  BB6.Enabled:=true;
  //dbgrid3.columns[6].ButtonStyle:=cbsEllipsis;
  dbgrid3.columns[1].ButtonStyle:=cbsEllipsis;
end;

procedure TPayableLit.BB4Click(Sender: TObject);
begin
  with PayMas do
  begin
    requestlive:=true;
    cachedupdates:=true;
    edit;
  end;
  //BBTT1.Visible:=true;
  BBTT3.Visible:=true;
  BB5.Enabled:=true;
  BB6.Enabled:=true;
  //dbgrid3.columns[6].ButtonStyle:=cbsEllipsis;
  dbgrid3.columns[1].ButtonStyle:=cbsEllipsis;
end;

procedure TPayableLit.BB5Click(Sender: TObject);
var y,m,a:string;
i:integer;
begin
  with query1 do          //取服務器的年月值
  begin
    active:=false;
    sql.Clear;
    sql.Add('select year(getdate()) as FY,month(getdate()) as FM,getdate() as NDate ');
    active:=true;
    y:=fieldbyname('FY').asstring;
    m:=fieldbyname('FM').asstring;
    NDate:=fieldbyname('NDate').Value;
    active:=false;
  end;
  if length(m)<2 then
    m:='0'+m;

  try
    PayDet.active:=false;
    PayMas.first;
    for i:=1 to PayMas.RecordCount do
    begin
      case PayMas.updatestatus of
        usinserted:
        begin
          if PayMas.fieldbyname('ZSBH').isnull then
          begin
            PayMas.delete;
          end else
          begin
            with query1 do    //計算領料單流水號
            begin
               active:=false;
               sql.Clear;
               sql.Add('select FKBH from CWFK where FKBH like '+''''+y+m+'%'+'''');
               sql.add('order by FKBH');
               active:=true;
               if recordcount >0 then
               begin
                 last;
                 a:=fieldbyname('FKBH').AsString;
                 a:=copy(a,7,5);
                 a:=inttostr(strtoint(a)+1);
                 while length(a)<4 do
                 begin
                   a:='0'+a;
                 end;
               end else
               begin
                 a:='0001';
               end;
               a :=y+m+a;
               active:=false;
             end;
             PayMas.edit;
             PayMas.fieldbyname('FKBH').Value:=a;
             PayMas.FieldByName('GSBH').Value:=main.edit2.text;
             PayMas.FieldByName('userID').Value:=main.edit1.text;
             PayMas.FieldByName('userdate').Value:=formatdatetime('yyyy/MM/dd',Ndate);
             PayMas.FieldByName('FKDate').Value:=formatdatetime('yyyy/MM/dd',Ndate);
             PayMas.FieldByName('USACC').Value:=0;
             PayMas.FieldByName('VNACC').Value:=0;
             PayMas.FieldByName('USQty').Value:=0;
             PayMas.FieldByName('VNQty').Value:=0;
             PayMas.FieldByName('YN').Value:='1';
             upMas.apply(ukinsert);
          end;
        end;
        usmodified:
        begin
          if (PayMas.fieldbyname('YN').value='0')  then
          begin
             with BDelRec do
             begin
               active:=false;
               sql.Clear;
               SQL.Add('Update CWFK Set flowflag=''X'' where FKBH='''+PayMas.FieldByName('FKBH').AsString+''' ');
               execsql;
               active:=false;
             end;
             //upMas.apply(ukdelete);
          end else
          begin
            if PayMas.FieldByName('USERID').value<>main.Edit1.Text then
               showmessage('It is not yours, can not modify.')
            else
            begin
              PayMas.edit;
              PayMas.FieldByName('userID').Value:=main.edit1.text;
              PayMas.FieldByName('userdate').Value:=formatdatetime('yyyy/MM/dd',Ndate);
              upMas.apply(ukmodify);
            end;
          end;
        end;
      end;
    PayMas.next;
  end;
  PayMas.active:=false;
  PayMas.cachedupdates:=false;
  PayMas.requestlive:=false;
  PayMas.active:=true;
  PayDet.active:=true;
  bb5.enabled:=false;
  bb6.enabled:=false;
  //BBTT1.Visible:=false;
  BBTT3.Visible:=false;
  //dbgrid3.columns[6].ButtonStyle:=cbsEllipsis;
  dbgrid3.columns[1].ButtonStyle:=cbsEllipsis;
  except
    Messagedlg('Have wrong, can not save data!',mtwarning,[mbyes],0);
  end;

end;


procedure TPayableLit.BD2Click(Sender: TObject);
begin
  if PayMas.RequestLive then
  begin
    showmessage('Pls save Master data first.');
    PC1.ActivePage:=TS3;
    panel6.visible:=false;
    panel1.visible:=true;
    abort;
  end;

  with PayDet do
  begin
    requestlive:=true;
    cachedupdates:=true;
    insert;
  end;
  BBTT2.Visible:=true;
  Button3.Visible:=true;
  BD5.Enabled:=true;
  BD6.Enabled:=true;
  button2.Enabled:=true;
  dbgrid4.columns[0].ButtonStyle:=cbsEllipsis;
  dbgrid4.columns[1].ButtonStyle:=cbsEllipsis;
end;

procedure TPayableLit.BD3Click(Sender: TObject);
begin
  if PayMas.RequestLive then
  begin
    showmessage('Pls save Master data first.');
    PC1.ActivePage:=TS3;
    panel6.visible:=false;
    panel1.visible:=true;
    abort;
  end;

  with PayDet do
  begin
    requestlive:=true;
    cachedupdates:=true;
    Edit;
    fieldbyname('YN').Value:='0';
  end;
  //BBTT2.Visible:=true;
  BD5.Enabled:=true;
  BD6.Enabled:=true;
  //dbgrid4.columns[0].ButtonStyle:=cbsEllipsis;
  //dbgrid4.columns[1].ButtonStyle:=cbsEllipsis;
end;

procedure TPayableLit.BD4Click(Sender: TObject);
begin
  if PayMas.RequestLive then
  begin
    showmessage('Pls save Master data first.');
    PC1.ActivePage:=TS3;
    panel6.visible:=false;
    panel1.visible:=true;
    abort;
  end;

  with PayDet do
  begin
    requestlive:=true;
    cachedupdates:=true;
    edit;
  end;
  BBTT2.Visible:=true;
  Button3.Visible:=true;
  BD5.Enabled:=true;
  BD6.Enabled:=true;
  button2.Enabled:=true;
  dbgrid4.columns[0].ButtonStyle:=cbsEllipsis;
  dbgrid4.columns[1].ButtonStyle:=cbsEllipsis;
  //20191007
  if PayDet.FieldByName('DJLX').Value='AU' then
  begin
   dbgrid4.columns[12].ReadOnly:=false;
  end else
  begin
    dbgrid4.columns[12].ReadOnly:=true;
  end;

end;

procedure TPayableLit.BD5Click(Sender: TObject);
var n1,n2:extended;
    m1,m2:real;
    a,b,c,d,fk:string;
begin
  try
    PayDet.first;
    while not PayDet.Eof do
    begin
      if (PayDet.fieldbyname('USACC').IsNull and PayDet.fieldbyname('VNACC').IsNull) then
      begin
        showmessage('Can not be empty with USACC and VNACC ');
        abort;
      end;
      if (PayDet.fieldbyname('USQty').IsNull and PayDet.fieldbyname('VNQty').IsNull) then
      begin
        showmessage('Can not be empty with USQty and VNQty ');
        abort;
      end;
      if  ((not PayDet.fieldbyname('USACC').IsNull)   and (PayDet.fieldbyname('USQty').IsNull)) then
      begin
        showmessage('Can not be empty with USQty.');
        abort;
      end;
      if  ((not PayDet.fieldbyname('VNACC').IsNull)   and (PayDet.fieldbyname('VNQty').IsNull)) then
      begin
        showmessage('Can not be empty with USQty.');
        abort;
      end;
      PayDet.next;
    end;

    PayDet.first;
    while not PayDet.eof do
    begin
      case PayDet.updatestatus of
        usinserted:
        begin
          a:=Paydet.fieldbyname('DJNO').Value;
          b:=Paydet.fieldbyname('DJLX').Value;
          c:=Paydet.fieldbyname('CGBH').Value;
          d:=Paydet.fieldbyname('CLBH').Value;
          PayDet.edit;
          PayDet.fieldbyname('USERID').Value:=main.Edit1.Text;
          PayDet.fieldbyname('USERDate').Value:=date;
          PayDet.fieldbyname('YN').Value:='1';
          with Uptemp do
          begin
            if b<>'AU' then
            begin
              active:=false;
              sql.Clear;
              if b='JC' then
              begin
                sql.Add('update CBY_LineSideStockS ');
                sql.add('set FKZT='+''''+'Y'+'''');
                sql.add('where LSNO='+''''+a +'''');
                sql.add('      and CLBH='+''''+d +'''');
              
              end else if b='JG' then
              begin
                sql.add('update JGZLS ');
                sql.add('set FKZT='+''''+'Y'+'''');
                sql.add('where JGNO='+''''+a+'''');
                sql.add('      and CLBH='+''''+d+'''');
                sql.add('      and ZMLB='+''''+'ZZZZZZZZZZ'+'''');
              end else
              begin
                 sql.Add('update KCRKS ');
                 sql.add('set FKZT='+''''+'Y'+'''');
                 sql.add('where RKNO='+''''+a +'''');
                 sql.add('      and RKSB='+''''+b +'''');
                 sql.add('      and CGBH='+''''+c +'''');
                 sql.add('      and CLBH='+''''+d +'''');
              end;
              execsql;
            end;
            if PayDet.fieldbyname('CGBH').asstring='Adjusting' then
            begin
              SQL.Clear;
              SQL.Add('delete CWYF ');
              SQL.Add('where fkbh='+''''+PayDet.fieldbyname('fkbh').asstring+'''');
              SQL.Add('  and zsbh='+''''+PayDet.fieldbyname('zsbh').asstring+'''');
              SQL.Add('  and cgbh='+''''+'Adjusting'+'''');
              //20190606
              SQL.Add('  and DJNO='+''''+PayDet.fieldbyname('DJNO').asstring+'''');
              SQL.Add('  and DJLX='+''''+PayDet.fieldbyname('DJLX').asstring+'''');
              SQL.Add('  and CLBH='+''''+PayDet.fieldbyname('CLBH').asstring+'''');
              ExecSQL;
            end;
          end;
          Updet.Apply(ukinsert);
        end;
        usmodified:
        begin
          if PayDet.fieldbyname('YN').value='0' then
          begin
            with BDelRec do
            begin
              active:=false;
              sql.Clear;
              sql.add('insert into BDelRec ');
              sql.add('(TableName ,TNO,CLBH,OldID,DelID,DelDate)');
              sql.add('values ('+''''+'CWYF'+''''+','+''''+PayMas.fieldbyname('FKBH').Value+'''');
              sql.add(','+''''+Paydet.fieldbyname('DJNO').Value+'***'+Paydet.fieldbyname('CLBH').Value+''''+','+''''+Paydet.fieldbyname('USERID').Value+''''+',');
              sql.add(''''+main.Edit1.Text+''''+',getdate())');
              execsql;
              active:=false;
            end;
            a:=Paydet.fieldbyname('DJNO').Value;
            b:=Paydet.fieldbyname('DJLX').Value;
            c:=Paydet.fieldbyname('CGBH').Value;
            d:=Paydet.fieldbyname('CLBH').Value;
            with Uptemp do
            begin
              if b<>'AU' then
              begin
                active:=false;
                sql.Clear;
              if b='JC' then
              begin
                sql.Add('update CBY_LineSideStockS ');
                sql.add('set FKZT=null');
                sql.add('where LSNO='+''''+a +'''');
                sql.add('      and CLBH='+''''+d +'''');
              
              end else if b='JG' then
              begin
                  sql.add('update JGZLS ');
                  sql.add('set FKZT=null');
                  sql.add('where JGNO='+''''+a+'''');
                  sql.add('      and CLBH='+''''+d+'''');
                  sql.add('      and ZMLB='+''''+'ZZZZZZZZZZ'+'''');
              end else
              begin
                  sql.Add('update KCRKS ');
                  sql.add('set FKZT=null');
                  sql.add('where RKNO='+''''+a +'''');
                  sql.add('      and RKSB='+''''+b +'''');
                  sql.add('      and CGBH='+''''+c +'''');
                  sql.add('      and CLBH='+''''+d +'''');
              end;
                execsql;
              end;
              //20190604
              if b='AU' then
              begin
                sql.Clear;
                sql.Add('delete Adjusting');
                sql.Add('where FKBH='''+PayDet.fieldbyname('FKBH').Value+'''');
                sql.Add('and ZSBH='''+PayDet.fieldbyname('ZSBH').Value+'''');
                sql.Add('and DJLX='+''''+b +'''');
                sql.Add('and DJNO='+''''+a +'''');
                sql.Add('and CGBH='+''''+c +'''');
                sql.Add('and CLBH='+''''+d +'''');
                //fununit.funcObj.WriteErrorLog(sql.Text);
                execsql;
              end;
            end;
            UpDet.Apply(ukdelete);
          end else
          begin
            //20191007
            a:=Paydet.fieldbyname('DJNO').Value;
            b:=Paydet.fieldbyname('DJLX').Value;
            c:=Paydet.fieldbyname('CGBH').Value;
            d:=Paydet.fieldbyname('CLBH').Value;
            with Uptemp do
            begin
             if b='AU' then
             begin
              sql.Clear;
              sql.Add('update Adjusting');
              sql.Add('set DJDate='''+PayDet.fieldbyname('DJDate').AsString+'''');
              sql.Add('where FKBH='''+PayDet.fieldbyname('FKBH').Value+'''');
              sql.Add('and ZSBH='''+PayDet.fieldbyname('ZSBH').Value+'''');
              sql.Add('and DJLX='+''''+b +'''');
              sql.Add('and DJNO='+''''+a +'''');
              sql.Add('and CGBH='+''''+c +'''');
              sql.Add('and CLBH='+''''+d +'''');
              //fununit.funcObj.WriteErrorLog(sql.Text);
              execsql;
             end;
            end;
            //
            UpDet.Apply(ukmodify);
          end;
        end;
      end;
      PayDet.next;
    end;
  PayDet.active:=false;
  PayDet.RequestLive:=false;
  PayDet.CachedUpdates:=false;
  PayDet.active:=true;
  n1:=0;
  m1:=0;
  n2:=0;
  m2:=0;
  while not PayDet.Eof do
  begin
    if PayDet.fieldbyname('USACC').isnull then
    begin
      if PayDet.fieldbyname('VNACC').isnull then
      begin
        m1:=m1;
        n1:=n1;
        m2:=m2;
        n2:=n2;
      end else
      begin
        m1:=m1;
        n1:=n1+PayDet.fieldbyname('VNACC').value;
        m2:=m2;
        n2:=n2+PayDet.fieldbyname('VNQty').value;
      end;
    end else
    begin
      if not PayDet.fieldbyname('USPrice').isnull then
      begin
        m1:=m1+PayDet.fieldbyname('USACC').value;
        //showmessage(inttostr(N1));
        n1:=n1+PayDet.fieldbyname('VNACC').value;
        m2:=m2+PayDet.fieldbyname('USQty').value;
        n2:=n2+PayDet.fieldbyname('vnQty').value;
      end else
      begin
        m1:=m1+0;
        n1:=n1+PayDet.fieldbyname('VNACC').value;
        m2:=m2+0;
        n2:=n2+PayDet.fieldbyname('VNQty').value;
      end;
    end;
    PayDet.Next;
  end;

  //20160618修正
  with Query1 do
  begin
    Active:=false;
    SQL.Clear;
    SQL.Add('update CWFK set USACC='+floattostr(m1)+',VNACC='+floattostr(n1)+',USQty='+floattostr(m2)+',VNQty='+floattostr(n2)+' where FKBH='''+PayMas.fieldbyname('FKBH').Value+'''  ');
    ExecSQL();
  end;
  with PayMas do
  begin
    fk:=PayMas.fieldbyname('FKBH').Value;
    active:=false;
    requestlive:=false;
    cachedupdates:=false;
    active:=true;
    locate('fkbh',fk,[]);
  end;

  bb6.enabled:=false;
  BBTT2.Visible:=false;
  Button3.Visible:=false;
  BD5.Enabled:=false;
  BD6.Enabled:=false;
  button2.Enabled:=false;
  //TCWYF.active:=false;
  dbgrid4.columns[0].ButtonStyle:=cbsNone;
  dbgrid4.columns[1].ButtonStyle:=cbsNone;
  except
    Messagedlg('Have wrong, can not save data!',mtwarning,[mbyes],0);
  end;

end;

procedure TPayableLit.BD6Click(Sender: TObject);
begin
  with PayDet do
  begin
    active:=false;
    requestlive:=false;
    cachedupdates:=false;
    active:=true;
  end;
  BBTT2.Visible:=false;
  Button3.Visible:=false;
  BD5.Enabled:=false;
  BD6.Enabled:=false;
  button2.Enabled:=false;
  dbgrid4.columns[0].ButtonStyle:=cbsNone;
  dbgrid4.columns[1].ButtonStyle:=cbsNone;
end;

procedure TPayableLit.BB6Click(Sender: TObject);
begin
  with PayMas do
  begin
    active:=false;
    requestlive:=false;
    cachedupdates:=false;
    active:=true;
  end;
  bb5.enabled:=false;
  bb6.enabled:=false;
  //BBTT1.Visible:=false;
  BBTT3.Visible:=false;
  //dbgrid3.columns[6].ButtonStyle:=cbsnone;
  dbgrid3.columns[1].ButtonStyle:=cbsnone;
end;

procedure TPayableLit.BBT1Click(Sender: TObject);
begin
  PayMas.First;
end;

procedure TPayableLit.BBT2Click(Sender: TObject);
begin
  PayMas.prior;
end;

procedure TPayableLit.BBT3Click(Sender: TObject);
begin
  PayMas.next;
end;

procedure TPayableLit.BBT4Click(Sender: TObject);
begin
  PayMas.last;
end;

procedure TPayableLit.BDT1Click(Sender: TObject);
begin
  PayDet.first;
end;

procedure TPayableLit.BDT2Click(Sender: TObject);
begin
  PayDet.prior;
end;

procedure TPayableLit.BDT3Click(Sender: TObject);
begin
  PayDet.next;
end;

procedure TPayableLit.BDT4Click(Sender: TObject);
begin
  PayDet.last;
end;

procedure TPayableLit.PayDetAfterOpen(DataSet: TDataSet);
begin
  BD2.Enabled:=true;
  BD3.Enabled:=true;
  BDAll.Enabled:=true;
  BD4.Enabled:=true;
  BDT1.Enabled:=true;
  BDT2.Enabled:=true;
  BDT3.Enabled:=true;
  BDT4.Enabled:=true;
  BDT5.Enabled:=true;
  BDT6.Enabled:=true;
  BD5.Enabled:=false;
  BD6.Enabled:=false;
  if  PayMas.cachedupdates  then
  begin
    BD2.Enabled:=false;
    BD3.Enabled:=false;
    BD4.Enabled:=false;
    BDAll.Enabled:=false;
    BDT1.Enabled:=false;
    BDT2.Enabled:=false;
    BDT3.Enabled:=false;
    BDT4.Enabled:=false;
    //BDT5.Enabled:=false;
   // BDT6.Enabled:=false;
  end;

  if PayMas.FieldByName('USERID').value<>main.Edit1.Text then
  begin
    BD2.Enabled:=false;
    BD3.Enabled:=false;
    BDAll.Enabled:=false;
    BD4.Enabled:=false;
    BDT1.Enabled:=false;
    BDT2.Enabled:=false;
    BDT3.Enabled:=false;
    BDT4.Enabled:=false;
    //BDT5.Enabled:=false;
   // BDT6.Enabled:=false;
  end;

end;

procedure TPayableLit.PC1Change(Sender: TObject);
begin 
  if PC1.ActivePage=TS4 then
  begin
    panel6.visible:=true;
    panel1.visible:=false;
  end else
  begin
    panel6.visible:=false;
    panel1.visible:=true;
  end;
end;

procedure TPayableLit.DBGrid3DblClick(Sender: TObject);
begin
  if  PayMas.Active then
  begin
    if  (PayMas.recordcount>0) then
    begin
      PC1.ActivePage:=TS4;
      panel1.Visible:=false;
      panel6.Visible:=true;
    end;
  end;
end;

procedure TPayableLit.DBGrid3EditButtonClick(Sender: TObject);
begin  
  if DBGrid3.selectedfield.fieldname='ZSBH' then
  begin
    BBTT3click(nil);
  end;
{if DBGrid4.selectedfield.fieldname='ZHBH' then
  begin
    BBTT1click(nil);
  end; }
end;

procedure TPayableLit.DBGrid4EditButtonClick(Sender: TObject);
begin
  if PayDet.FieldByName('DJLX').Value='JC' then
  begin
    Button3Click(nil);
  end else
  begin
    BBTT2Click(nil);
  end;

end;

procedure TPayableLit.PayMasAfterOpen(DataSet: TDataSet);
begin  
  BB5.Enabled:=false;
  BB6.Enabled:=false;
  BD5.Enabled:=false;
  BD6.Enabled:=false;
  if PayMas.recordcount>0 then
    N1.enabled:=true
  else
    N1.enabled:=false;
end;

procedure TPayableLit.DBGrid3KeyPress(Sender: TObject; var Key: Char);
begin
  if key=#13 then
    DBGrid3DblClick(nil);
end;

procedure TPayableLit.BBTT3Click(Sender: TObject);
begin
  Payable_ZS:=TPayable_ZS.create(self);
  Payable_ZS.show;
end;

procedure TPayableLit.PayMasAfterScroll(DataSet: TDataSet);
begin
  if not PayMas.FieldByName('ZHBH').IsNull then
  begin
    BD2.Enabled:=false;
    BD3.Enabled:=false;
    BDAll.Enabled:=false;
    BD4.Enabled:=false;
  end;

end;

procedure TPayableLit.BBTT2Click(Sender: TObject);
begin
    Payabled_CL:=TPayabled_CL.create(self);
    Payabled_CL.show;
end;

procedure TPayableLit.BDT5Click(Sender: TObject);
var i:integer;
begin

  if PayMas.RequestLive then
  begin
    showmessage('Pls save data first.');
    abort;
  end;
  if PayDet.RequestLive then
  begin
    showmessage('Pls save data first.');
    abort;
  end;
  if messagedlg('You want to print Detail or Total?',mtinformation,[mbYes,mbNo],0)=mrYes then
  begin
    Payable_print:=TPayable_print.create(self);
    Payable_print.QRLabel26.Enabled:=true;
    Payable_print.quickrep1.prepare;
    i:=Payable_print.quickrep1.qrprinter.pagecount;
    Payable_print.page1.caption:=inttostr(i);
    Payable_print.quickrep1.preview;
    Payable_print.free;
  end else
  begin
    Payable_print2:=TPayable_print2.create(self);
    Payable_print2.QRLabel6.Enabled:=true;
    Payable_print2.quickrep1.prepare;
    i:=Payable_print2.quickrep1.qrprinter.pagecount;
    Payable_print2.page1.caption:=inttostr(i);
    Payable_print2.quickrep1.preview;
    Payable_print2.free;
  end;
end;

procedure TPayableLit.DBGrid4GetCellParams(Sender: TObject;
  Column: TColumnEh; AFont: TFont; var Background: TColor;
  State: TGridDrawState);
begin

  if PayDet.FieldByName('YN').value='0' then
  begin
    dbgrid4.canvas.font.color:=clred;
   // dbgrid4.defaultdrawcolumncell(rect,datacol,column,state);
  end; 
  if PayDet.FieldByName('YN').isnull then
  begin
    dbgrid4.canvas.font.color:=clLime;
   // dbgrid4.defaultdrawcolumncell(rect,datacol,column,state);
  end;
end;

procedure TPayableLit.DBGrid3GetCellParams(Sender: TObject;
  Column: TColumnEh; AFont: TFont; var Background: TColor;
  State: TGridDrawState);
begin

  if PayMas.FieldByName('YN').value='0' then
  begin
    dbgrid3.canvas.font.color:=clred;
    //dbgrid3.defaultdrawcolumncell(rect,datacol,column,state);
  end;
end;

procedure TPayableLit.BDT6Click(Sender: TObject);
var
      eclApp,WorkBook:olevariant;
 //     xlsFileName:string;
      i,j:integer;
begin

  if paYdet.Active then
  begin
    if paYdet.recordcount=0 then
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
    eclApp.Cells(1,1):='NO';
    for   i:=1   to   PayDet.fieldcount   do
    begin
      eclApp.Cells(1,i+1):=PayDet.fields[i-1].FieldName;
    end;
    PayDet.First;
    j:=2;
    while   not  PayDet.Eof   do
    begin
      eclApp.Cells(j,1):=j-1;
      for   i:=1   to   PayDet.fieldcount   do
      begin
        eclApp.Cells(j,i+1):=PayDet.Fields[i-1].Value;
        eclApp.Cells.Cells.item[j,i+1].font.size:='8';
      end;
      PayDet.Next;
      inc(j);
    end;
    eclapp.columns.autofit;
    showmessage('Succeed.');
    eclApp.Visible:=True;
  except
    on   F:Exception   do
      showmessage(F.Message);
  end;

end;

procedure TPayableLit.FormDestroy(Sender: TObject);
begin
  PayableLit:=nil;
end;

procedure TPayableLit.N1Click(Sender: TObject);
begin
  PayableLit_Check:=TPayableLit_Check.create(nil);
  PayableLit_Check.show;

end;

procedure TPayableLit.Button2Click(Sender: TObject);
begin
  {先判斷付款單是否改調整過，已有資料調出舊資料
   取得供應商及付款單的編號，顯示目前的總額，填入要調整的總額
   計算出差額後，填入TABLE[Adjusting]
   新增資料到PAYDET，如已有資料更新PAYDET
   設定cwyf fkbh加入主鍵}
   Adjusting:=TAdjusting.create(self);
   Adjusting.show;
end;

procedure TPayableLit.DBGrid4KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if PC1.ActivePageIndex=1 then
  begin
    if Key=46 then BD3.Click; //Delete
  end;
end;
procedure TPayableLit.BDAllClick(Sender: TObject);
var i:integer;
begin
  if PayMas.RequestLive then
  begin
    showmessage('Pls save Master data first.');
    PC1.ActivePage:=TS3;
    panel6.visible:=false;
    panel1.visible:=true;
    abort;
  end;

  with PayDet do
  begin
    requestlive:=true;
    cachedupdates:=true;
    PayDet.First;
     for i:=1 to PayDet.RecordCount do
     begin
      edit;
      fieldbyname('YN').Value:='0';
      PayDet.next;
     end;
  end;
  //BBTT2.Visible:=true;
  BD5.Enabled:=true;
  BD6.Enabled:=true;
  //dbgrid4.columns[0].ButtonStyle:=cbsEllipsis;
  //dbgrid4.columns[1].ButtonStyle:=cbsEllipsis;
end;

procedure TPayableLit.bbt6Click(Sender: TObject);
var   a:string;
      eclApp,WorkBook:olevariant;
 //     xlsFileName:string;
      i,j:integer;
begin
  if  PayMas.active  then
  begin
    try
      eclApp:=CreateOleObject('Excel.Application');
      WorkBook:=CreateOleObject('Excel.Sheet');
    except
      Application.MessageBox('No Microsoft   Excel','Microsoft   Excel',MB_OK+MB_ICONWarning);
      Exit;
    end;
    try
      WorkBook:=eclApp.workbooks.Add;
      for   i:=0   to   PayMas.fieldcount-1   do
      begin
        eclApp.Cells(1,i+1):=PayMas.fields[i].FieldName;
      end;

      PayMas.First;
      j:=2;
      while   not   PayMas.Eof   do
      begin
        for   i:=0   to  PayMas.fieldcount-1  do
        begin
          eclApp.Cells(j,i+1):=PayMas.Fields[i].Value;
        end;
        PayMas.Next;
        inc(j);
      end;
      eclapp.columns.autofit;
      eclApp.Visible:=True;
      showmessage('Succeed');
    except
    on   F:Exception   do
      showmessage(F.Message);
    end;
  end;
end;

procedure TPayableLit.PayDetAfterScroll(DataSet: TDataSet);
begin
  //20191007
  if PayDet.FieldByName('DJLX').Value='AU' then
  begin
   dbgrid4.columns[12].ReadOnly:=false;
  end else
  begin
    dbgrid4.columns[12].ReadOnly:=true;
  end;
end;

procedure TPayableLit.Button3Click(Sender: TObject);
begin
    Payabled_CL_JGCBY:=TPayabled_CL_JGCBY.create(self);
    Payabled_CL_JGCBY.show;
end;

procedure TPayableLit.BitBtn1Click(Sender: TObject);
var eclApp,WorkBook:olevariant;
    AppDir: string;
    i,j:integer;
    OldSTT: string;
    StartRow: Integer;
begin
  with  qrytmptk do
  begin
    Active:=false;
    SQL.Clear;
    SQL.Add('select DENSE_RANK() OVER (ORDER BY CWFK.ZSBH) AS STT,ZSZL.ZSYWJC, CWFK.ZSBH, SUM(CWYF.Qty) as Qty, KCRK.DOCNO, CWFK.FKBH as PayableList, CWFK.USACC, CWFK.VNACC,');
    SQL.Add('case');
    SQL.Add('when CWFK.VNACC > 0.00 and ISNULL(CWFK.USACC,0) = 0.00 then ''hoa don''');
    SQL.Add('when CWFK.VNACC > 0.00 and CWFK.USACC > 0.00 then ''to khai''');
    SQL.Add('else null');
    SQL.Add('end as LoaiChungTu');
    SQL.Add(',MAX(CWYF.DJDATE) as DJDATE,KCPK.Declaretion, SUM(KCRKS.USACC) as SoTienToKhaiUSA, MAX(KCRKS.CWHL) as CWHL, SUM(KCRKS.VNACC) as TongTien');
    SQL.Add(',SUM(KCRKS.USACC) as TongThanhTienUSA, SUM(KCRKS.VNACC) as TongThanhTienVN');
    SQL.Add('from');
    SQL.Add('(select * from KCRKS union all select * from KCRKS_2014) KCRKS');
    SQL.Add('left join (select * from KCRK union all select * from KCRK_2014) KCRK on KCRK.RKNO=KCRKS.RKNO');
    SQL.Add('left join CWYF on CWYF.DJNO=KCRKS.RKNO AND CWYF.CLBH=KCRKS.CLBH AND CWYF.CGBH=KCRKS.CGBH AND CWYF.DJLX=KCRKS.RKSB');
    SQL.Add('left join CWFK ON CWFK.FKBH=CWYF.FKBH');
    SQL.Add('left join ZSZL on ZSZL.ZSDH=CWFK.ZSBH');
    SQL.Add('left join KCPK on KCPK.PKNO=KCRK.RKNO');
    //SQL.Add('left join LacTyDB.LIY_ERP.dbo.CGZL_VATNO CGZL_VATNO on CGZL_DeclarationS.DOCNO=kcrk.DOCNO and CGZL_DeclarationS.DECLARATION=kcpk.Declaretion and CGZL_DeclarationS.SOTT=kcrks.SOTT');
    SQL.Add('where ISNULL(CWFK.flowflag,'''')<>''X''');
    SQL.Add('and CWFK.GSBH='''+main.Edit2.Text+''' ');
    sql.add('      and convert(smalldatetime,convert(varchar,CWFK.FKDate,111)) between ');
    sql.add(''''+formatdatetime('yyyy/MM/dd',DTP1.Date) +''''+' and  '+''''+formatdatetime('yyyy/MM/dd',DTP2.Date) +'''');
    SQL.Add('and CWFK.USACC > 0.00');
    sql.add(' and ZSZL.ZSYWJC like '+''''+'%'+edit2.text+'%'+'''');
    sql.Add('group by ZSZL.ZSYWJC, CWFK.ZSBH, CWFK.FKBH, CWFK.USACC, CWFK.VNACC, KCRK.DOCNO,KCPK.Declaretion');
    //ShowMessage(sql.text);
    //funcObj.WriteErrorLog(sql.Text);
    Active:=true;
  end;
  AppDir := ExtractFilePath(Application.ExeName);
  if(not DirectoryExists(AppDir+'Additional\'))  then ForceDirectories(AppDir+'Additional\');
      CopyFile(Pchar('\\'+main.ServerIP+'\liy_erp\Additional\Account_SN231_TK.xlsx'),Pchar(AppDir+'Additional\Account_SN231_TK.xlsx'),false);
      if FileExists(AppDir+'Additional\Account_SN231_TK.xlsx') then
      begin
        try
          eclApp:=CreateOleObject('Excel.Application');
          eclApp.DisplayAlerts := False;
          eclApp.WorkBooks.Open(AppDir+'Additional\Account_SN231_TK.xlsx');
          //ShowMessage(AppDir+'Additional\Account_SN231_TK.xlsx');
        except
          Application.MessageBox('No Microsoft   Excel','Microsoft   Excel',MB_OK+MB_ICONWarning);
          Exit;
        end;
        try
          eclApp.WorkBooks.Open(AppDir+'Additional\Account_SN231_TK.xlsx');
          eclApp.WorkSheets[1].Activate;
          //Tieu de
          eclApp.Cells(1,1) := 'BANG KE HANG NHAP KHO TRONG THANG ' +FormatDateTime('mm/yyyy', DTP2.Date);
          j:=5;
          StartRow := j;
          OldSTT := '';
          qrytmptk.First;
          while not qrytmptk.Eof do
          begin
            if OldSTT = '' then
            OldSTT := qrytmptk.FieldByName('STT').AsString;

            if OldSTT <> qrytmptk.FieldByName('STT').AsString then
            begin
              if j - 1 > StartRow then
                eclApp.Range['A'+IntToStr(StartRow)+':A'+IntToStr(j-1)].Merge;

              StartRow := j;
              OldSTT := qrytmptk.FieldByName('STT').AsString;
            end;

            eclApp.Cells(j,1) := qrytmptk.FieldByName('STT').AsString;
            eclApp.Cells(j,2) := qrytmptk.FieldByName('ZSYWJC').AsString;
            eclApp.Cells(j,3) := qrytmptk.FieldByName('ZSBH').AsString;
            eclApp.Cells(j,4) := qrytmptk.FieldByName('Qty').AsFloat;
            eclApp.Cells(j,5) := qrytmptk.FieldByName('DOCNO').AsString;
            eclApp.Cells(j,6) := qrytmptk.FieldByName('PayableList').AsString;
            eclApp.Cells(j,7) := qrytmptk.FieldByName('USACC').AsFloat;
            eclApp.Cells(j,8) := qrytmptk.FieldByName('VNACC').AsFloat;
            eclApp.Cells(j,9) := qrytmptk.FieldByName('LoaiChungTu').AsString;
            eclApp.Cells(j,10) := qrytmptk.FieldByName('DJDATE').AsDatetime;
            eclApp.Cells(j,11) := '''' + qrytmptk.FieldByName('Declaretion').AsString;
            eclApp.Cells(j,12) := qrytmptk.FieldByName('SoTienToKhaiUSA').AsFloat;
            eclApp.Cells(j,13) := qrytmptk.FieldByName('CWHL').AsFloat;
            eclApp.Cells(j,14) := qrytmptk.FieldByName('TongTien').AsFloat;
            eclApp.Cells(j,15) := qrytmptk.FieldByName('TongThanhTienUSA').AsFloat;
            eclApp.Cells(j,16) := qrytmptk.FieldByName('TongThanhTienVN').AsFloat;
            qrytmptk.Next;
            Inc(j);
          end;

          if j - 1 > StartRow then
          eclApp.Range['A'+IntToStr(StartRow)+':A'+IntToStr(j-1)].Merge;
          eclApp.Range['A5:R'+IntToStr(j-1)].Borders.LineStyle := 1;
          eclApp.Range['A5:R'+IntToStr(j-1)].HorizontalAlignment := -4108; 
          eclApp.Range['A5:R'+IntToStr(j-1)].VerticalAlignment := -4108;
          eclapp.columns.autofit;
          showmessage('Succeed');
          eclApp.Visible:=True;
        except
          on   F:Exception   do
          showmessage(F.Message);
        end;
    end;
end;

procedure TPayableLit.BitBtn2Click(Sender: TObject);
var eclApp,WorkBook:olevariant;
    AppDir: string;
    i,j:integer;
    OldSTT: string;
    StartRow: Integer;
begin
  with  qrytmphd do
  begin
    Active:=false;
    SQL.Clear;
    SQL.Add('select DENSE_RANK() OVER (ORDER BY CWFK.ZSBH) AS STT,ZSZL.ZSYWJC,CWFK.ZSBH,SUM(CWYF.Qty) as Qty,CWFK.FKBH as PayableList,CWFK.VNACC as SoTienPayableList,');
    SQL.Add('MAX(');
    sql.Add('case');
    SQL.Add('when CWFK.VNACC > 0.00 and ISNULL(CWFK.USACC,0) = 0.00 then ''hoa don''');
    SQL.Add('when CWFK.VNACC > 0.00 and CWFK.USACC > 0.00 then ''to khai''');
    SQL.Add('else null');
    SQL.Add('end ) as LoaiChungTu');
    SQL.Add(',MAX(CWYF.DJDATE) as DJDATE,KCRK.DOCNO,SUM(KCRKS.VNACC) as VNQty,ROUND(SUM(KCRKS.VNACC) * 0.08, 0) as ThueVAT,ROUND(SUM(KCRKS.VNACC) * 0.08, 0) + SUM(KCRKS.VNACC) as TotalThanhTien');
    SQL.Add('from');
    SQL.Add('(select * from KCRKS union all select * from KCRKS_2014) KCRKS');
    SQL.Add('left join (select * from KCRK union all select * from KCRK_2014) KCRK on KCRK.RKNO=KCRKS.RKNO');
    SQL.Add('left join CWYF on CWYF.DJNO=KCRKS.RKNO AND CWYF.CLBH=KCRKS.CLBH AND CWYF.CGBH=KCRKS.CGBH AND CWYF.DJLX=KCRKS.RKSB');
    SQL.Add('left join CWFK ON CWFK.FKBH=CWYF.FKBH');
    SQL.Add('left join ZSZL on ZSZL.ZSDH=CWFK.ZSBH');
    SQL.Add('left join KCPK on KCPK.PKNO=KCRK.RKNO');
    //SQL.Add('left join LacTyDB.LIY_ERP.dbo.CGZL_VATNO CGZL_VATNO on CGZL_DeclarationS.DOCNO=kcrk.DOCNO and CGZL_DeclarationS.DECLARATION=kcpk.Declaretion and CGZL_DeclarationS.SOTT=kcrks.SOTT');
    SQL.Add('where ISNULL(CWFK.flowflag,'''')<>''X''');
    SQL.Add('and CWFK.GSBH='''+main.Edit2.Text+''' ');
    sql.add('      and convert(smalldatetime,convert(varchar,CWFK.FKDate,111)) between ');
    sql.add(''''+formatdatetime('yyyy/MM/dd',DTP1.Date) +''''+' and  '+''''+formatdatetime('yyyy/MM/dd',DTP2.Date) +'''');
    SQL.Add('and CWFK.USACC = 0.00');
    sql.add(' and ZSZL.ZSYWJC like '+''''+'%'+edit2.text+'%'+'''');
    sql.Add('group by ZSZL.ZSYWJC,CWFK.ZSBH,KCRK.DOCNO,CWFK.FKBH,CWFK.VNACC');
    //ShowMessage(sql.text);
    //funcObj.WriteErrorLog(sql.Text);
    Active:=true;
  end;
  AppDir := ExtractFilePath(Application.ExeName);
  if(not DirectoryExists(AppDir+'Additional\'))  then ForceDirectories(AppDir+'Additional\');
      CopyFile(Pchar('\\'+main.ServerIP+'\liy_erp\Additional\Account_SN231_HD.xlsx'),Pchar(AppDir+'Additional\Account_SN231_HD.xlsx'),false);
      if FileExists(AppDir+'Additional\Account_SN231_HD.xlsx') then
      begin
        try
          eclApp:=CreateOleObject('Excel.Application');
          eclApp.DisplayAlerts := False;
          eclApp.WorkBooks.Open(AppDir+'Additional\Account_SN231_HD.xlsx');
          //ShowMessage(AppDir+'Additional\Account_SN231_HD.xlsx');
        except
          Application.MessageBox('No Microsoft   Excel','Microsoft   Excel',MB_OK+MB_ICONWarning);
          Exit;
        end;
        try
          eclApp.WorkBooks.Open(AppDir+'Additional\Account_SN231_HD.xlsx');
          eclApp.WorkSheets[1].Activate;
          //Tieu de
          eclApp.Cells(1,1) := 'BANG KE HANG NHAP KHO TRONG THANG ' +FormatDateTime('mm/yyyy', DTP2.Date);
          j:=5;
          StartRow := j;
          OldSTT := '';
          qrytmphd.First;
          while not qrytmphd.Eof do
          begin
            if OldSTT = '' then
            OldSTT := qrytmphd.FieldByName('STT').AsString;

            if OldSTT <> qrytmphd.FieldByName('STT').AsString then
            begin
              if j - 1 > StartRow then
                eclApp.Range['A'+IntToStr(StartRow)+':A'+IntToStr(j-1)].Merge;

              StartRow := j;
              OldSTT := qrytmphd.FieldByName('STT').AsString;
            end;

            eclApp.Cells(j,1) := qrytmphd.FieldByName('STT').AsString;
            eclApp.Cells(j,2) := qrytmphd.FieldByName('ZSYWJC').AsString;
            eclApp.Cells(j,3) := qrytmphd.FieldByName('ZSBH').AsString;
            eclApp.Cells(j,4) := qrytmphd.FieldByName('Qty').AsFloat;
            eclApp.Cells(j,5) := qrytmphd.FieldByName('PayableList').AsString;
            eclApp.Cells(j,6) := qrytmphd.FieldByName('SoTienPayableList').AsFloat;
            eclApp.Cells(j,7) := qrytmphd.FieldByName('LoaiChungTu').AsString;
            eclApp.Cells(j,8) := qrytmphd.FieldByName('DJDATE').AsDatetime;
            eclApp.Cells(j,9) := qrytmphd.FieldByName('DOCNO').AsString;
            eclApp.Cells(j,10) := qrytmphd.FieldByName('VNQty').AsFloat;
            eclApp.Cells(j,11) := qrytmphd.FieldByName('ThueVAT').AsFloat;
            eclApp.Cells(j,12) := qrytmphd.FieldByName('TotalThanhTien').AsFloat;
            qrytmphd.Next;
            Inc(j);
          end;

          if j - 1 > StartRow then
          eclApp.Range['A'+IntToStr(StartRow)+':A'+IntToStr(j-1)].Merge;
          eclApp.Range['A5:M'+IntToStr(j-1)].Borders.LineStyle := 1;
          eclApp.Range['A5:M'+IntToStr(j-1)].HorizontalAlignment := -4108;
          eclApp.Range['A5:M'+IntToStr(j-1)].VerticalAlignment := -4108;
          eclapp.columns.autofit;
          showmessage('Succeed');
          eclApp.Visible:=True;
        except
          on   F:Exception   do
          showmessage(F.Message);
        end;
    end;
end;

procedure TPayableLit.BitBtn3Click(Sender: TObject);
var eclApp,WorkBook,oCell:olevariant;
    AppDir: string;
    i,j:integer;
    OldSTT: string;
    StartRow: Integer;
    fromDate, toDate, DEPID: string;
    Y, M, D: Word;
begin
  if DTP1.Date > DTP2.Date then
  begin
    ShowMessage('Invalid date range! "From Date" cannot be later than "To Date".');
    Exit;
  end;
  fromDate := FormatDateTime('yyyy/MM/dd', DTP1.Date);
  toDate := FormatDateTime('yyyy/MM/dd', DTP2.Date);

  DecodeDate(DTP1.Date, Y, M, D);

  if main.edit2.text = 'VA12' then
    DEPID:='''A1211'''
  else if main.edit2.text = 'CDC' then       //Chi lay CBY
    DEPID:='''CD1207''';
    
  with  qrytmpdtc do
  begin
    Active:=false;
    SQL.Clear;
    {SQL.Add('SELECT DENSE_RANK() OVER (ORDER BY KCRK.ZSBH) AS STT,ZSZL.ZSYWJC,ZSZL.ZSJC,KCRK.ZSBH,');
    SQL.Add('CASE WHEN ISNULL(SUM(KCRKS.USACC), 0) <> 0 THEN SUM(KCRKS.USACC) ELSE NULL END AS USD,');
    SQL.Add('CASE WHEN ISNULL(SUM(KCRKS.USACC), 0) <> 0 THEN NULL ELSE SUM(KCRKS.VNACC) END AS VND');
    SQL.Add('from');
    SQL.Add('(SELECT * FROM KCRKS UNION ALL SELECT * FROM KCRKS_2014) KCRKS');
    SQL.Add('LEFT JOIN (SELECT * FROM KCRK UNION ALL SELECT * FROM KCRK_2014) KCRK ON KCRK.RKNO = KCRKS.RKNO');
    SQL.Add('LEFT JOIN ZSZL ON ZSZL.ZSDH = KCRK.ZSBH');
    SQL.Add('LEFT JOIN KCCK ON KCCK.CKBH = KCRK.CKBH');
    SQL.Add('WHERE KCRKS.Qty <> 0 ');
    SQL.Add('and KCCK.GSBH='''+main.Edit2.Text+''' ');
    sql.add('      and convert(smalldatetime,convert(varchar,KCRK.USERDate,111)) between ');
    sql.add(''''+formatdatetime('yyyy/MM/dd',DTP1.Date) +''''+' and  '+''''+formatdatetime('yyyy/MM/dd',DTP2.Date) +'''');
    sql.add(' and ZSZL.ZSYWJC like '+''''+'%'+edit2.text+'%'+'''');
    sql.Add('group by KCRK.ZSBH,ZSZL.ZSYWJC,ZSZL.ZSJC');
    sql.Add('ORDER BY KCRK.ZSBH');           }

    Active := False;
    SQL.Clear;
    SQL.Add('SET ANSI_NULLS ON;');
    SQL.Add('SET ANSI_WARNINGS ON;');
    ExecSQL;
    Active := False;
    SQL.Clear;
    SQL.Add('SELECT DENSE_RANK() over(order by sum(USD)+sum(VNToUS) desc) as STT, ZSDH, zsqm, zsywjc, zsjc,MatCN,MatVN, USERID, sum(USD) USD, sum(VND) VND,sum(VNToUS) VNToUS,sum(USD)+sum(VNToUS) USD_Total');
    SQL.Add('from (');
    SQL.Add('	SELECT zszl.ZSDH, ZSZL.zsqm, ZSZL.zsywjc,zsjc,ZSZL_EstimatedExpenditure.MatCN,ZSZL_EstimatedExpenditure.MatVN,ZSZL_EstimatedExpenditure.USERID');
    SQL.Add(' 		   ,sum(case when a.TIENTE=''VND'' then 0.0 else round(((b.TONGTRIGIA_HOADON)-(round((b.TONGTRIGIA_HOADON*(100-a.Percent_TT)/100),2))),2) end) USD');
    SQL.Add('		   ,sum(case when a.TIENTE=''VND'' then round(b.TONGTRIGIA_HOADON -(round(b.TONGTRIGIA_HOADON,0)*(100-a.Percent_TT)/100),0) else 0.0 end) VND');
    SQL.Add('		   ,sum(case when a.TIENTE=''VND'' and isnull(a.CWHL,0)<>0');
    SQL.Add('		   then round(((round((b.TONGTRIGIA_HOADON / a.CWHL),0))-(round((round((b.TONGTRIGIA_HOADON*(100-a.Percent_TT)/100),2) / a.CWHL),0))),0)');
    SQL.Add('           else 0.0 end) VNToUS');
    SQL.Add('	FROM CGZL_PaymentS a');
    SQL.Add('	LEFT JOIN LacTyDB.LIY_ERP.dbo.[CGZL_Declaration] b ON a.DECLARATION=b.DECLARATION');
    SQL.Add('	LEFT JOIN CGZL_Payment on a.FKBH=CGZL_Payment.FKBH');
    SQL.Add('	LEFT JOIN ZSZL ON CGZL_Payment.ZSBH=ZSDH and ZSZL.yn=''2''');
    SQL.Add(' left join ZSZL_EstimatedExpenditure on zszl.zsdh = ZSZL_EstimatedExpenditure.zsdh');
    SQL.Add('	WHERE DEPID in ('+DEPID+')  and a.DECLARATION<>''TRUTIEN'' and HD_LOAI=''1''');
    SQL.Add('		  and isnull(b.NGAYTHONGQUAN,b.NGAYDANGKY) >= ''' + fromDate + ''' and isnull(b.NGAYTHONGQUAN,b.NGAYDANGKY) <= ''' + toDate + ''' ');
    if chkCB1.Checked then
    begin
      sql.add('and zszl_EstimatedExpenditure.USERID='+''''+main.Edit1.Text+'''');
    end;
    SQL.Add('	group by zszl.ZSDH, ZSZL.zsqm, ZSZL.zsywjc,zsjc,ZSZL_EstimatedExpenditure.MatCN,ZSZL_EstimatedExpenditure.MatVN,ZSZL_EstimatedExpenditure.USERID ');
    SQL.Add('	union all');
    SQL.Add('	SELECT zszl.ZSDH, ZSZL.zsqm, ZSZL.zsywjc,zsjc,ZSZL_EstimatedExpenditure.MatCN,ZSZL_EstimatedExpenditure.MatVN,ZSZL_EstimatedExpenditure.USERID');
    SQL.Add(' 	  	   ,isnull(sum(case when b.DONVI_TIENTE <> ''VND'' then isnull(b.TONGTIEN_THANHTOAN,0) end),0) USD');
    SQL.Add('		   ,sum(case when b.DONVI_TIENTE = ''VND'' then isnull(b.TONGTIEN_THANHTOAN,0) end) VND');
    SQL.Add('	       ,case when isnull((select CWHL from CWHL where HLYear = ''' + IntToStr(Y) + ''' and HLMONTH = ''' + Format('%.2d', [M]) + '''),0)<>0 then');
    SQL.Add('	       round(sum(case when b.DONVI_TIENTE = ''VND'' then isnull(b.TONGTIEN_THANHTOAN,0) end) / (select CWHL from CWHL where HLYear = ''' + IntToStr(Y) + ''' and HLMONTH = ''' + Format('%.2d', [M]) + '''),2)');
    SQL.Add('	       else 0.0 end as VNToUS');
    SQL.Add('	FROM CGZL_PaymentSS a');
    SQL.Add('	LEFT JOIN LacTyDB.LIY_ERP.dbo.[CGZL_VATNO] b ON a.VATNO=b.VATNO  AND a.ZSBH_MST=b.ZSBH_MST and a.KYHIEU_HOADON=b.KYHIEU_HOADON');
    SQL.Add('	LEFT JOIN  CGZL_Payment on a.FKBH=CGZL_Payment.FKBH');
    SQL.Add('	LEFT JOIN ZSZL ON CGZL_Payment.ZSBH=ZSDH and ZSZL.yn=''2''');
    SQL.Add(' left join ZSZL_EstimatedExpenditure on zszl.zsdh = ZSZL_EstimatedExpenditure.zsdh');
    SQL.Add('	WHERE DEPID  in ('+DEPID+')  and a.ZSBH_MST<>''TRUTIEN'' and HD_LOAI=''2''');
    SQL.Add('	and b.VATDATE >= ''' + fromDate + ''' and b.VATDATE <= ''' + toDate + ''' ');
    if chkCB1.Checked then
    begin
      sql.add('and zszl_EstimatedExpenditure.USERID='+''''+main.Edit1.Text+'''');
    end;
    SQL.Add('	group by zszl.ZSDH, ZSZL.zsqm, ZSZL.zsywjc,zsjc,ZSZL_EstimatedExpenditure.MatCN,ZSZL_EstimatedExpenditure.MatVN,ZSZL_EstimatedExpenditure.USERID');
    SQL.Add('	union all');
    SQL.Add('	SELECT zszl.ZSDH, ZSZL.zsqm, ZSZL.zsywjc,zsjc,ZSZL_EstimatedExpenditure.MatCN,ZSZL_EstimatedExpenditure.MatVN,ZSZL_EstimatedExpenditure.USERID');
    SQL.Add('		   ,sum(round(((a.TONGTRIGIA_HOADON)-(round((a.TONGTRIGIA_HOADON*(100-a.Percent_TT)/100),2))),2)) USD');
    SQL.Add('		   ,sum(isnull((a.VNACC_CHUATHUE*a.Percent_TT/100),0)) VND');
    SQL.Add('		   ,sum(case when a.VNACC_CHUATHUE is not NULL and isnull(a.CWHL,0)<>0 then isnull((a.VNACC_CHUATHUE*a.Percent_TT/100),0)/a.CWHL');
    SQL.Add('		   else 0.0 end) VNToUS');
    SQL.Add('	FROM CGZL_PaymentS a');
    SQL.Add('	LEFT JOIN  CGZL_Payment on a.FKBH=CGZL_Payment.FKBH');
    SQL.Add('	LEFT JOIN ZSZL ON CGZL_Payment.ZSBH=ZSDH and ZSZL.yn=''2''');
    SQL.Add(' left join ZSZL_EstimatedExpenditure on zszl.zsdh = ZSZL_EstimatedExpenditure.zsdh');
    SQL.Add('	WHERE DEPID  in ('+DEPID+')   and a.DECLARATION=''TRATRUOC''');
    if chkCB1.Checked then
    begin
      sql.add('and zszl_EstimatedExpenditure.USERID='+''''+main.Edit1.Text+'''');
    end;
    SQL.Add('	group by zszl.ZSDH, ZSZL.zsqm, ZSZL.zsywjc,zsjc,ZSZL_EstimatedExpenditure.MatCN,ZSZL_EstimatedExpenditure.MatVN,ZSZL_EstimatedExpenditure.USERID');
    SQL.Add(') DATA1 WHERE 1=1');
    if Edit1.Text <> '' then
      SQL.Add('    AND DATA1.ZSDH like '''+Edit1.Text+'%''  ');
    if Edit2.Text <> '' then
      SQL.Add('    AND DATA1.zsywjc like ''%'+Edit2.Text+'%''  ');
    SQL.Add('group by zsdh,zsqm,zsywjc,zsjc,MatCN,MatVN,USERID');
    SQL.Add('order by USD_Total desc');

    //ShowMessage(sql.text);
    //funcObj.WriteErrorLog(sql.Text);
    Active:=true;
  end;
  AppDir := ExtractFilePath(Application.ExeName);
  if(not DirectoryExists(AppDir+'Additional\'))  then ForceDirectories(AppDir+'Additional\');
      CopyFile(Pchar('\\'+main.ServerIP+'\liy_erp\Additional\Account_SN231_DuTruChi.xlsx'),Pchar(AppDir+'Additional\Account_SN231_DuTruChi.xlsx'),false);
      if FileExists(AppDir+'Additional\Account_SN231_DuTruChi.xlsx') then
      begin
        try
          eclApp:=CreateOleObject('Excel.Application');
          eclApp.DisplayAlerts := False;
          eclApp.WorkBooks.Open(AppDir+'Additional\Account_SN231_DuTruChi.xlsx');
          //ShowMessage(AppDir+'Additional\Account_SN231_HD.xlsx');
        except
          Application.MessageBox('No Microsoft   Excel','Microsoft   Excel',MB_OK+MB_ICONWarning);
          Exit;
        end;
        try
          eclApp.WorkBooks.Open(AppDir+'Additional\Account_SN231_DuTruChi.xlsx');
          eclApp.WorkSheets[1].Activate;
          //Tieu de
          eclApp.Cells(2,1) := 'THANG 月份:' +FormatDateTime('mm/yyyy', DTP2.Date);
          eclApp.Range['A2:O2'].Merge;
          j:=7;
          StartRow := j;
          OldSTT := '';
          qrytmpdtc.First;
          while not qrytmpdtc.Eof do
          begin
            if OldSTT = '' then
            OldSTT := qrytmpdtc.FieldByName('STT').AsString;

            if OldSTT <> qrytmpdtc.FieldByName('STT').AsString then
            begin
              if j - 1 > StartRow then
                eclApp.Range['A'+IntToStr(StartRow)+':A'+IntToStr(j-1)].Merge;

              StartRow := j;
              OldSTT := qrytmpdtc.FieldByName('STT').AsString;
            end;

            eclApp.Cells(j,1) := qrytmpdtc.FieldByName('STT').AsString;
            eclApp.Cells(j,2) := qrytmpdtc.FieldByName('ZSYWJC').AsString;
            eclApp.Cells(j,3) := qrytmpdtc.FieldByName('zsjc').AsString;
            eclApp.Cells(j,4) := qrytmpdtc.FieldByName('ZSDH').AsString;
            eclApp.Cells(j,5) := qrytmpdtc.FieldByName('MatVN').AsString;
            eclApp.Cells(j,6) := qrytmpdtc.FieldByName('MatCN').AsString;
            eclApp.Cells[j,7].Formula := '=I' + IntToStr(j) + '+L' + IntToStr(j);
            eclApp.Cells[j,8].Formula := '=J' + IntToStr(j) + '+M' + IntToStr(j);
            eclApp.Cells(j,9) := qrytmpdtc.FieldByName('USD').AsFloat;
            eclApp.Cells(j,10) := qrytmpdtc.FieldByName('VND').AsFloat;
            qrytmpdtc.Next;
            Inc(j);
          end;
          // ===== Total=====
          eclApp.Cells(j,1) := 'TOTAL';
          eclApp.Cells[j,7].Formula := '=SUM(G7:G' + IntToStr(j-1) + ')';
          eclApp.Cells[j,8].Formula := '=SUM(H7:H' + IntToStr(j-1) + ')';
          eclApp.Cells[j,9].Formula := '=SUM(I7:I' + IntToStr(j-1) + ')';
          eclApp.Cells[j,10].Formula := '=SUM(J7:J' + IntToStr(j-1) + ')';
          // Format in dam
          eclApp.Range['A'+IntToStr(j)+':P'+IntToStr(j)].Font.Bold := True;

          if j - 1 > StartRow then
          eclApp.Range['A'+IntToStr(StartRow)+':A'+IntToStr(j)].Merge;
          eclApp.Range['A7:P'+IntToStr(j)].Borders.LineStyle := 1;
          eclApp.Range['A7:P'+IntToStr(j)].HorizontalAlignment := -4108;
          eclApp.Range['A7:P'+IntToStr(j)].VerticalAlignment := -4108;

          // ===== Ky duyet =====
          Inc(j,2); // +2 dong xuong

          eclApp.Cells(j,2) := '總經理';
          eclApp.Cells(j,7) := '廠經理';
          eclApp.Cells(j,9) := '主管';
          eclApp.Cells(j,11) := '製表日期';
          eclApp.Cells(j,12) := 'Ngay Lap Bieu: ' + FormatDateTime('yyyy/MM/dd', Date);

          eclApp.Cells(j+1,2) := 'Tong Giam Doc';
          eclApp.Cells(j+1,7) := 'Giam Doc Xuong';
          eclApp.Cells(j+1,9) := 'Chu Quan';
          eclApp.Cells(j+1,11) := '制表人';
          eclApp.Cells(j+1,12) := 'Nguoi Lap Bieu: ';


          eclapp.columns.autofit;
          showmessage('Succeed');
          eclApp.Visible:=True;
        except
          on   F:Exception   do
          showmessage(F.Message);
        end;
    end;
end;

end.
