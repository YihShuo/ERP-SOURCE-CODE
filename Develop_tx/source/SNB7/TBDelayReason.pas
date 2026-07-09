unit TBDelayReason;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls, ComCtrls, GridsEh, DBGridEh, DB, DBTables, StdCtrls,
  Buttons,comobj;

type
  TTBDelayReason1 = class(TForm)
    Panel1: TPanel;
    PageControl1: TPageControl;
    TabSheet1: TTabSheet;
    TabSheet2: TTabSheet;
    TabSheet3: TTabSheet;
    Panel2: TPanel;
    BB6: TBitBtn;
    BB5: TBitBtn;
    BB4: TBitBtn;
    BB1: TBitBtn;
    DS1: TDataSource;
    Query1: TQuery;
    DBGridEh1: TDBGridEh;
    Query1TestNo: TStringField;
    Query1Groups: TStringField;
    Query1Serino: TIntegerField;
    Query1SR: TStringField;
    Query1Stage: TStringField;
    Query1WarehouseOK: TDateTimeField;
    Query1CuttingPlan: TDateTimeField;
    Query1PlanQty: TFloatField;
    Query1DP: TStringField;
    Query1DR: TStringField;
    UPDSQL1: TUpdateSQL;
    Query1PartE: TStringField;
    Query1PartV: TStringField;
    Query1ReasonE: TStringField;
    Query1ReasonV: TStringField;
    Query1GXLB: TStringField;
    Query2: TQuery;
    StringField1: TStringField;
    StringField2: TStringField;
    IntegerField1: TIntegerField;
    StringField3: TStringField;
    StringField4: TStringField;
    DateTimeField1: TDateTimeField;
    DateTimeField2: TDateTimeField;
    FloatField1: TFloatField;
    StringField5: TStringField;
    StringField6: TStringField;
    StringField7: TStringField;
    StringField8: TStringField;
    StringField9: TStringField;
    StringField10: TStringField;
    StringField11: TStringField;
    Label1: TLabel;
    Panel3: TPanel;
    Label2: TLabel;
    BB66: TBitBtn;
    BB55: TBitBtn;
    BB44: TBitBtn;
    BB11: TBitBtn;
    DS3: TDataSource;
    Query3: TQuery;
    UPDSQL3: TUpdateSQL;
    DBGridEh2: TDBGridEh;
    Query3TestNo: TStringField;
    Query3Groups: TStringField;
    Query3Serino: TIntegerField;
    Query3SR: TStringField;
    Query3Stage: TStringField;
    Query3CuttingOK: TDateTimeField;
    Query3SMatOK: TDateTimeField;
    Query3SMatGet: TDateTimeField;
    Query3StitchingPlan: TDateTimeField;
    Query3PlanQty: TFloatField;
    Query3DP: TStringField;
    Query3DR: TStringField;
    Query3PartE: TStringField;
    Query3PartV: TStringField;
    Query3ReasonE: TStringField;
    Query3ReasonV: TStringField;
    Query3GXLB: TStringField;
    Panel4: TPanel;
    Label3: TLabel;
    BB666: TBitBtn;
    BB555: TBitBtn;
    BB444: TBitBtn;
    BB111: TBitBtn;
    DBGridEh3: TDBGridEh;
    DS4: TDataSource;
    Query4: TQuery;
    UPDSQL4: TUpdateSQL;
    Query4TestNo: TStringField;
    Query4Groups: TStringField;
    Query4Serino: TIntegerField;
    Query4SR: TStringField;
    Query4Stage: TStringField;
    Query4StitchingOK: TDateTimeField;
    Query4AMatOK: TDateTimeField;
    Query4AMatGet: TDateTimeField;
    Query4AssemblePlan: TDateTimeField;
    Query4PlanQty: TFloatField;
    Query4DP: TStringField;
    Query4DR: TStringField;
    Query4PartE: TStringField;
    Query4PartV: TStringField;
    Query4ReasonE: TStringField;
    Query4ReasonV: TStringField;
    Query4GXLB: TStringField;
    TabSheet4: TTabSheet;
    Panel5: TPanel;
    Label4: TLabel;
    BitBtn4: TBitBtn;
    DBGridEh4: TDBGridEh;
    btnExcel: TBitBtn;
    CheckBox1: TCheckBox;
    CheckBox2: TCheckBox;
    ComboBox1: TComboBox;
    dtp1: TDateTimePicker;
    Query5: TQuery;
    StringField12: TStringField;
    StringField13: TStringField;
    IntegerField2: TIntegerField;
    StringField14: TStringField;
    StringField15: TStringField;
    FloatField2: TFloatField;
    StringField16: TStringField;
    StringField17: TStringField;
    StringField18: TStringField;
    StringField22: TStringField;
    DS5: TDataSource;
    Query5CuttingOk: TDateTimeField;
    Query5StitchingOk: TDateTimeField;
    Query5WarehouseMTLOK: TDateTimeField;
    Query5CuttingPlan: TDateTimeField;
    Query5StitchingPlan: TDateTimeField;
    Query5AssemblyPlan: TDateTimeField;
    Query5AssemblyOk: TDateTimeField;
    Query5PartV: TStringField;
    CheckBox3: TCheckBox;
    Label5: TLabel;
    dtp2: TDateTimePicker;
    Query5ReasonE: TStringField;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormDestroy(Sender: TObject);
    procedure BB1Click(Sender: TObject);
    procedure BB4Click(Sender: TObject);
    procedure DBGridEh1Columns0EditButtonClick(Sender: TObject;
      var Handled: Boolean);
    procedure BB5Click(Sender: TObject);
    procedure BB6Click(Sender: TObject);
    procedure BB11Click(Sender: TObject);
    procedure BB44Click(Sender: TObject);
    procedure BB55Click(Sender: TObject);
    procedure DBGridEh2Columns0EditButtonClick(Sender: TObject;
      var Handled: Boolean);
    procedure BB66Click(Sender: TObject);
    procedure BB111Click(Sender: TObject);
    procedure BB444Click(Sender: TObject);
    procedure BB555Click(Sender: TObject);
    procedure BB666Click(Sender: TObject);
    procedure DBGridEh3Columns0EditButtonClick(Sender: TObject;
      var Handled: Boolean);
    procedure BitBtn4Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure btnExcelClick(Sender: TObject);
  private
    AppDir:String;
    { Private declarations }
  public

    { Public declarations }
  end;

var
  TBDelayReason1: TTBDelayReason1;
  GLXB:string;
implementation

uses ChooseDPDR, ChooseDPDR3, main1;

{$R *.dfm}

procedure TTBDelayReason1.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
    Action:=caFree;
end;

procedure TTBDelayReason1.FormDestroy(Sender: TObject);
begin
   TBDelayReason1 := nil ;
end;

procedure TTBDelayReason1.BB1Click(Sender: TObject);
begin
  //Query1.Active:=True;
  With Query1 do
  begin 
    Active:=false;
    SQL.Clear; 
    SQL.Add('  SELECT main.TestNo, main.Groups, main.Serino, main.SR, main.Stage, main.WarehouseOK, main.CuttingPlan, SQplan.Qty AS PlanQty,  ');
    SQL.Add('    TBDelayReason.DP,TBDelayReason.DR,  ');
    SQL.Add('    TBDelayReason.PartE,TBDelayReason.PartV,  ');
    SQL.Add('    TBDelayReason.ReasonE,TBDelayReason.ReasonV,''C'' GXLB FROM (  ');
    SQL.Add('    SELECT Groups, SeriNo, ShoeTest.TestNo, ShoeTest.Stage, ShoeTest.Article AS SR, ShoeTest.PreparationDate AS WarehouseOK, ShoeTest.CutDate_first AS CuttingPlan, ShoeTest.CutDate AS CuttingOK ');
    SQL.Add('    FROM ShoeTest  ');
    SQL.Add('    LEFT JOIN ShoeTestPlan ON ShoeTestPlan.TestNo = ShoeTest.TestNo  ');
    SQL.Add('    LEFT JOIN YPZL on ShoeTest.YPDH=YPZL.YPDH ');
    SQL.Add('    WHERE CONVERT(VARCHAR, ShoeTest.CutDate_first, 111) BETWEEN CONVERT(VARCHAR, GetDate()-10, 111) AND CONVERT(VARCHAR, GetDate(), 111) AND ShoeTest.CutDate IS NULL  ');
    SQL.Add('    AND YPZL.GSDH='''+main.Edit2.Text+''' '); 
    SQL.Add('  ) AS main  ');
    SQL.Add('  LEFT JOIN (  ');
    SQL.Add('    SELECT ShoeTest2.TestNo, SUM(Qty) AS Qty FROM ShoeTest2   ');
    SQL.Add('    LEFT JOIN ShoeTestDetail ON ShoeTestDetail.YYBH = ShoeTest2.Parts   ');
    SQL.Add('    WHERE YWSM IN (''Finished Shoe'', ''Half Stitching Upper'', ''Stitching Upper'', ''Lasted upper'', ''Upper Component'', ''CFM sample'', ''Upper And Bottom(CE)'')  ');
    SQL.Add('    GROUP BY ShoeTest2.TestNo  ');
    SQL.Add('  ) AS SQplan ON SQplan.TestNo = main.TestNo  ');
    SQL.Add('  LEFT JOIN (  ');
    SQL.Add('     SELECT TestNo,DP,DR,Part.YWSM,Part.VWSM PartV,Part.ZWSM PartC,Part.YWSM PartE,Reason.VWSM ReasonV,Reason.ZWSM ReasonC,Reason.YWSM ReasonE from ShoetestDelay  ');
    SQL.Add('     LEFT JOIN ShoeTestDetail Part ON Part.YYBH = ShoetestDelay.DP   ');
    SQL.Add('     LEFT JOIN ShoeTestDetail Reason ON Reason.YYBH = ShoetestDelay.DR   ');
    SQL.Add('     where ShoetestDelay.GXLB=''C''  ');
    SQL.Add('  ) AS TBDelayReason ON TBDelayReason.TestNo = main.TestNo  ');
    SQL.Add('  order by   CuttingPlan,groups,serino  ');
    Active:=true;
  end;

  BB4.Enabled:=true;
end;

procedure TTBDelayReason1.BB4Click(Sender: TObject);
begin
  with Query1 do
  begin
    requestlive:=true;
    cachedupdates:=true;
    edit;
  end;
  BB4.Enabled:=false;
  BB5.Enabled:=true;
  BB6.Enabled:=true;
  DBGridEh1.Columns[0].ButtonStyle := cbsEllipsis;
end;

procedure TTBDelayReason1.DBGridEh1Columns0EditButtonClick(Sender: TObject;
  var Handled: Boolean );
begin
  GLXB:='C';
  if chooseDPDR2<>nil then
    begin
       chooseDPDR2.show;
       chooseDPDR2.windowstate:=wsmaximized;
    end
  else
    begin
       chooseDPDR2:=TchooseDPDR2.create(self);
       chooseDPDR2.show;
    end;
end;

procedure TTBDelayReason1.BB5Click(Sender: TObject);
var i:integer;
begin
  try
      Query1.first;
      for i:=1 to Query1.RecordCount do
      begin
          case Query1.updatestatus of
            usmodified:
               begin
                  Query1.edit;
                  if (query1.fieldbyname('DP').AsString<>null) and (query1.fieldbyname('DP').AsString='') then
                  begin

                    with query2 do
                    begin
                       active:=false;
                       sql.Clear;
                       sql.add('delete shoetestdelay where testno='''+query1.fieldbyname('testno').Value+''' and gxlb=''C'' ');
                       execsql;
                       active:=false;
                    end;
                   end;
                   if (query1.fieldbyname('DP').AsString<>null) and (query1.fieldbyname('DP').AsString<>'') then
                   begin

                    with query2 do
                    begin
                       active:=false;
                       sql.Clear;
                       sql.add('delete shoetestdelay where testno='''+query1.fieldbyname('testno').Value+'''  and gxlb=''C''');
                       sql.add('insert into shoetestdelay ');
                       sql.add('(testno ,DP,DR,GXLB)');
                       sql.add('values ('''+query1.fieldbyname('testno').Value+' ''  ');
                       sql.add(','''+query1.fieldbyname('DP').AsString+''','''+query1.fieldbyname('DR').Value+''',''C'' ) ');
                       execsql;
                       active:=false;
                    end;
                   end;
               end;
          end;
         Query1.next;
        end;
      Query1.active:=false;
      Query1.cachedupdates:=false;
      Query1.requestlive:=false;
      Query1.active:=true;
      BB5.enabled:=false;
      BB6.enabled:=false;
      BB4.enabled:=true;
      DBGridEh1.Columns[0].ButtonStyle := cbsNone;
  except
    Messagedlg('Have wrong, can not save data!',mtwarning,[mbyes],0);
  end;
end;

procedure TTBDelayReason1.BB6Click(Sender: TObject);
begin
  with Query1 do
  begin
    active:=false;
    cachedupdates:=false;
    requestlive:=false;
    active:=true;
  end;
  BB5.enabled:=false;
  BB6.enabled:=false;
  BB4.enabled:=true;
  DBGridEh1.Columns[0].ButtonStyle := cbsNone;
end;

procedure TTBDelayReason1.BB11Click(Sender: TObject);
begin
  //Query3.Active:=True;
  With Query3 do
  begin 
    Active:=false;
    SQL.Clear; 
    SQL.Add('  SELECT main.TestNo, main.Groups, main.Serino, main.SR, main.Stage, main.CuttingOK,main.SMatOK,main.SMatGet, main.StitchingPlan, SQplan.Qty AS PlanQty ,  ');
    SQL.Add('    TBDelayReason.DP,TBDelayReason.DR,  ');
    SQL.Add('    TBDelayReason.PartE,TBDelayReason.PartV,  ');
    SQL.Add('    TBDelayReason.ReasonE,TBDelayReason.ReasonV,''S'' GXLB FROM (  ');
    SQL.Add('    SELECT Groups, SeriNo, ShoeTest.TestNo, ShoeTest.Stage, ShoeTest.Article AS SR, ShoeTest.Cutdate AS CuttingOK,shoetest.S_material SMatOK,shoetest.StitchingPhuFinishDate SMatGet, ShoeTest.StitchingDate_first AS StitchingPlan ');
    SQL.Add('    , ShoeTest.StitchingDate AS StitchingOK ');
    SQL.Add('    FROM ShoeTest  ');
    SQL.Add('    LEFT JOIN ShoeTestPlan ON ShoeTestPlan.TestNo = ShoeTest.TestNo  ');
    SQL.Add('    LEFT JOIN YPZL on ShoeTest.YPDH=YPZL.YPDH ');
    SQL.Add('    WHERE CONVERT(VARCHAR, ShoeTest.StitchingDate_first, 111) BETWEEN CONVERT(VARCHAR, GetDate()-10, 111) AND CONVERT(VARCHAR, GetDate(), 111) AND ShoeTest.StitchingDate IS NULL  ');
    SQL.Add('    AND YPZL.GSDH='''+main.Edit2.Text+''' ');
    SQL.Add('  ) AS main  ');
    SQL.Add('  LEFT JOIN (  ');
    SQL.Add('    SELECT ShoeTest2.TestNo, SUM(Qty) AS Qty FROM ShoeTest2   ');
    SQL.Add('    LEFT JOIN ShoeTestDetail ON ShoeTestDetail.YYBH = ShoeTest2.Parts  ');
    SQL.Add('    WHERE YWSM in (''Finished Shoe'',''Half Stitching Upper'',''Stitching Upper'',''Lasted upper'',''Upper Component'',''CFM sample'',''Upper And Bottom(CE)'')  ');
    SQL.Add('    GROUP BY ShoeTest2.TestNo  ');
    SQL.Add('  ) AS SQplan ON SQplan.TestNo = main.TestNo  ');
    SQL.Add('  LEFT JOIN (  ');
    SQL.Add('     SELECT TestNo,DP,DR,Part.YWSM,Part.VWSM PartV,Part.ZWSM PartC,Part.YWSM PartE,Reason.VWSM ReasonV,Reason.ZWSM ReasonC,Reason.YWSM ReasonE from ShoetestDelay  ');
    SQL.Add('     LEFT JOIN ShoeTestDetail Part ON Part.YYBH = ShoetestDelay.DP   ');
    SQL.Add('     LEFT JOIN ShoeTestDetail Reason ON Reason.YYBH = ShoetestDelay.DR   ');
    SQL.Add('     where ShoetestDelay.GXLB=''S''  ');
    SQL.Add('  ) AS TBDelayReason ON TBDelayReason.TestNo = main.TestNo  ');
    SQL.Add('  order by   StitchingPlan,groups,serino  ');
    Active:=true;
  end;

  BB44.Enabled:=true;
end;

procedure TTBDelayReason1.BB44Click(Sender: TObject);
begin
  with Query3 do
  begin
    requestlive:=true;
    cachedupdates:=true;
    edit;
  end;
  BB44.Enabled:=false;
  BB55.Enabled:=true;
  BB66.Enabled:=true;
  DBGridEh2.Columns[0].ButtonStyle := cbsEllipsis;
end;

procedure TTBDelayReason1.BB55Click(Sender: TObject);
var i:integer;
begin
  try
      Query3.first;
      for i:=1 to Query3.RecordCount do
      begin
          case Query3.updatestatus of
            usmodified:
               begin
                  Query3.edit;
                  if (query3.fieldbyname('DP').AsString<>null) and (query3.fieldbyname('DP').AsString='') then
                  begin

                    with query2 do
                    begin
                       active:=false;
                       sql.Clear;
                       sql.add('delete shoetestdelay where testno='''+query3.fieldbyname('testno').Value+''' and gxlb=''S'' ');
                       execsql;
                       active:=false;
                    end;
                   end;
                   if (query3.fieldbyname('DP').AsString<>null) and (query3.fieldbyname('DP').AsString<>'') then
                   begin
                    with query2 do
                    begin
                       active:=false;
                       sql.Clear;
                       sql.add('delete shoetestdelay where testno='''+query3.fieldbyname('testno').Value+'''  and gxlb=''S''');
                       sql.add('insert into shoetestdelay ');
                       sql.add('(testno ,DP,DR,GXLB)');
                       sql.add('values ('''+query3.fieldbyname('testno').Value+' ''  ');
                       sql.add(','''+query3.fieldbyname('DP').AsString+''','''+query3.fieldbyname('DR').Value+''',''S'' ) ');
                       execsql;
                       active:=false;
                    end;
                   end;
               end;
          end;
         Query3.next;
        end;
      Query3.active:=false;
      Query3.cachedupdates:=false;
      Query3.requestlive:=false;
      Query3.active:=true;
      BB55.enabled:=false;
      BB66.enabled:=false;
      BB44.enabled:=true;
      DBGridEh2.Columns[0].ButtonStyle := cbsNone;
  except
    Messagedlg('Have wrong, can not save data!',mtwarning,[mbyes],0);
  end;
end;

procedure TTBDelayReason1.DBGridEh2Columns0EditButtonClick(Sender: TObject;
  var Handled: Boolean);
begin
  GLXB:='S';
  if chooseDPDR2<>nil then
    begin
       chooseDPDR2.show;
       chooseDPDR2.windowstate:=wsmaximized;
    end
  else
    begin
       chooseDPDR2:=TchooseDPDR2.create(self);
       chooseDPDR2.show;
    end;
end;

procedure TTBDelayReason1.BB66Click(Sender: TObject);
begin
  with Query3 do
  begin
    active:=false;
    cachedupdates:=false;
    requestlive:=false;
    active:=true;
  end;
  BB55.enabled:=false;
  BB66.enabled:=false;
  BB44.enabled:=true;
  DBGridEh2.Columns[0].ButtonStyle := cbsNone;
end;

procedure TTBDelayReason1.BB111Click(Sender: TObject);
begin
  //Query4.Active:=True;
  With Query4 do
  begin 
    Active:=false;
    SQL.Clear; 
    SQL.Add('  SELECT main.TestNo, main.Groups, main.Serino, main.SR, main.Stage, main.StitchingOK,main.AMatOK,main.AMatGet, main.AssemblePlan, SQplan.Qty AS PlanQty,  ');
    SQL.Add('    TBDelayReason.DP,TBDelayReason.DR,  ');
    SQL.Add('    TBDelayReason.PartE,TBDelayReason.PartV,  ');
    SQL.Add('    TBDelayReason.ReasonE,TBDelayReason.ReasonV,''A'' GXLB FROM (  ');
    SQL.Add('    ');
    SQL.Add('    SELECT Groups, SeriNo, ShoeTest.TestNo, ShoeTest.Stage, ShoeTest.Article AS SR, ShoeTest.StitchingDate AS StitchingOK,shoetest.insole_send AMatOk,shoetest.insole_get AMatGet, ShoeTest.AssembiyDate_first AS AssemblePlan  ');
    SQL.Add('    , ShoeTest.Assemblecomplete AS AssembleOK  ');
    SQL.Add('    FROM ShoeTest  ');
    SQL.Add('    LEFT JOIN ShoeTestPlan ON ShoeTestPlan.TestNo = ShoeTest.TestNo  ');
    SQL.Add('    LEFT JOIN YPZL on ShoeTest.YPDH=YPZL.YPDH ');
    SQL.Add('    WHERE CONVERT(VARCHAR, ShoeTest.AssembiyDate_first, 111) BETWEEN CONVERT(VARCHAR, GetDate()-10, 111) AND CONVERT(VARCHAR, GetDate(), 111) AND ShoeTest.Assemblecomplete IS NULL  ');
    SQL.Add('    AND YPZL.GSDH='''+main.Edit2.Text+''' ');
    SQL.Add('  ) AS main  ');
    SQL.Add('  LEFT JOIN (  ');
    SQL.Add('    SELECT ShoeTest2.TestNo, SUM(Qty) AS Qty FROM ShoeTest2   ');
    SQL.Add('    LEFT JOIN ShoeTestDetail ON ShoeTestDetail.YYBH = ShoeTest2.Parts   ');
    SQL.Add('    WHERE YWSM in (''Finished Shoe'',''Lasted upper'',''CFM sample'',''Upper And Bottom(CE)'')  ');
    SQL.Add('    GROUP BY ShoeTest2.TestNo  ');
    SQL.Add('  ) AS SQplan ON SQplan.TestNo = main.TestNo  ');
    SQL.Add('  LEFT JOIN (  ');
    SQL.Add('     SELECT TestNo,DP,DR,Part.YWSM,Part.VWSM PartV,Part.ZWSM PartC,Part.YWSM PartE,Reason.VWSM ReasonV,Reason.ZWSM ReasonC,Reason.YWSM ReasonE from ShoetestDelay  ');
    SQL.Add('     LEFT JOIN ShoeTestDetail Part ON Part.YYBH = ShoetestDelay.DP   ');
    SQL.Add('     LEFT JOIN ShoeTestDetail Reason ON Reason.YYBH = ShoetestDelay.DR   ');
    SQL.Add('     where ShoetestDelay.GXLB=''A''  ');
    SQL.Add('  ) AS TBDelayReason ON TBDelayReason.TestNo = main.TestNo  ');
    SQL.Add('  order by   AssemblePlan,groups,serino  ');
    Active:=true;
  end;

  BB444.Enabled:=true;
end;

procedure TTBDelayReason1.BB444Click(Sender: TObject);
begin
  with Query4 do
  begin
    requestlive:=true;
    cachedupdates:=true;
    edit;
  end;
  BB444.Enabled:=false;
  BB555.Enabled:=true;
  BB666.Enabled:=true;
  DBGridEh3.Columns[0].ButtonStyle := cbsEllipsis;
end;

procedure TTBDelayReason1.BB555Click(Sender: TObject);
var i:integer;
begin
  try
      Query4.first;
      for i:=1 to Query4.RecordCount do
      begin
          case Query4.updatestatus of
            usmodified:
               begin
                  Query4.edit;
                  if (query4.fieldbyname('DP').AsString<>null) and (query4.fieldbyname('DP').AsString='') then
                  begin

                    with query2 do
                    begin
                       active:=false;
                       sql.Clear;
                       sql.add('delete shoetestdelay where testno='''+query4.fieldbyname('testno').Value+''' and gxlb=''A'' ');
                       execsql;
                       active:=false;
                    end;
                   end;
                   if (query4.fieldbyname('DP').AsString<>null) and (query4.fieldbyname('DP').AsString<>'') then
                   begin
                    with query2 do
                    begin
                       active:=false;
                       sql.Clear;
                       sql.add('delete shoetestdelay where testno='''+query4.fieldbyname('testno').Value+'''  and gxlb=''A''');
                       sql.add('insert into shoetestdelay ');
                       sql.add('(testno ,DP,DR,GXLB)');
                       sql.add('values ('''+query4.fieldbyname('testno').Value+' ''  ');
                       sql.add(','''+query4.fieldbyname('DP').AsString+''','''+query4.fieldbyname('DR').Value+''',''A'' ) ');
                       execsql;
                       active:=false;
                    end;
                   end;
               end;
          end;
         Query4.next;
        end;
      Query4.active:=false;
      Query4.cachedupdates:=false;
      Query4.requestlive:=false;
      Query4.active:=true;
      BB555.enabled:=false;
      BB666.enabled:=false;
      BB444.enabled:=true;
      DBGridEh3.Columns[0].ButtonStyle := cbsNone;
  except
    Messagedlg('Have wrong, can not save data!',mtwarning,[mbyes],0);
  end;
end;

procedure TTBDelayReason1.BB666Click(Sender: TObject);
begin
  with Query4 do
  begin
    active:=false;
    cachedupdates:=false;
    requestlive:=false;
    active:=true;
  end;
  BB555.enabled:=false;
  BB666.enabled:=false;
  BB444.enabled:=true;
  DBGridEh3.Columns[0].ButtonStyle := cbsNone;
end;

procedure TTBDelayReason1.DBGridEh3Columns0EditButtonClick(Sender: TObject;
  var Handled: Boolean);
begin
  GLXB:='A';
  if chooseDPDR2<>nil then
    begin
       chooseDPDR2.show;
       chooseDPDR2.windowstate:=wsmaximized;
    end
  else
    begin
       chooseDPDR2:=TchooseDPDR2.create(self);
       chooseDPDR2.show;
    end;
end;

procedure TTBDelayReason1.BitBtn4Click(Sender: TObject);
begin
  CheckBox3.Checked := True;
  with Query5 do
  begin
    Active := false;
    SQL.Clear;
    sql.Add('select TestNo, Groups, Serino, SR,Stage,CuttingOk,StitchingOk,AssemblyOk,WarehouseMTLOK,CuttingPlan,StitchingPlan,AssemblyPlan,PlanQty,DP,PartE,DR,PartV,ReasonE,GXLB');
    sql.Add('from ( ');
    //=============================================================================================================Cutting
    if combobox1.Text = 'CuttingPlan' then
    begin
      sql.Add('SELECT main.TestNo, main.Groups, main.Serino, main.SR, main.Stage, main.CuttingOK, main.StitchingOk, main.AssemblyOk,  CAST(NULL AS DateTime) as WarehouseMTLOK, ');
      sql.Add(' main.CuttingPlan, main.StitchingPlan, main.AssemblyPlan, SQplan.Qty AS PlanQty,');
      sql.Add('TBDelayReason.DP, TBDelayReason.PartE, TBDelayReason.PartV, CAST(NULL AS VARCHAR) AS DR, TBDelayReason.ReasonV,ReasonE,''C'' GXLB FROM (');
      sql.Add('SELECT Groups, SeriNo, ShoeTest.TestNo, ShoeTest.Stage, ShoeTest.Article AS SR, ShoeTest.PreparationDate AS WarehouseOK, ShoeTest.CutDate_first AS CuttingPlan, ShoeTest.CutDate AS CuttingOK, ');
      sql.Add('ShoeTest.StitchingDate_first as StitchingPlan, ShoeTest.StitchingDate as StitchingOk, ShoeTest.AssembiyDate_first as AssemblyPlan, ShoeTest.Assemblecomplete as AssemblyOk FROM ShoeTest');
      sql.Add('LEFT JOIN ShoeTestPlan ON ShoeTestPlan.TestNo = ShoeTest.TestNo');
      sql.Add('INNER JOIN YPZL on ShoeTest.YPDH=YPZl.YPDH and YPZL.GSDH='''+main.Edit2.Text+'''  ');
      //sql.Add('WHERE CONVERT(VARCHAR, ShoeTest.CutDate_first, 111) BETWEEN CONVERT(VARCHAR, GetDate()-10, 111) AND CONVERT(VARCHAR, GetDate(), 111) AND ShoeTest.CutDate IS NULL');
      if CheckBox3.Checked then
      begin
      sql.Add('WHERE shoetest.CutDate_first BETWEEN CONVERT(smalldatetime, ''' + FormatDateTime('yyyy/MM/dd 00:00:00', DTP1.DateTime) + ''')');
      sql.Add('AND CONVERT(smalldatetime, ''' + FormatDateTime('yyyy/MM/dd 23:59:00', DTP2.DateTime) + ''')');
      end;
      sql.Add(') AS main');
      sql.Add('LEFT JOIN (');
      sql.Add('SELECT ShoeTest2.TestNo, SUM(Qty) AS Qty FROM ShoeTest2');
      sql.Add('LEFT JOIN ShoeTestDetail ON ShoeTestDetail.YYBH = ShoeTest2.Parts ');
      sql.Add('WHERE YWSM IN (''Finished Shoe'', ''Half Stitching Upper'', ''Stitching Upper'', ''Lasted upper'', ''Upper Component'', ''CFM sample'', ''Upper And Bottom(CE)'')');
      sql.Add('GROUP BY ShoeTest2.TestNo');
      sql.Add(') AS SQplan ON SQplan.TestNo = main.TestNo');
      sql.Add('LEFT JOIN (');
      sql.Add('SELECT TestNo,DP,DR,Part.YWSM,Part.VWSM PartV,Part.ZWSM PartC,Part.YWSM PartE,Reason.VWSM ReasonV,Reason.ZWSM ReasonC,Reason.YWSM ReasonE from ShoetestDelay');
      sql.Add('LEFT JOIN ShoeTestDetail Part ON Part.YYBH = ShoetestDelay.DP ');
      sql.Add('LEFT JOIN ShoeTestDetail Reason ON Reason.YYBH = ShoetestDelay.DR ');
      sql.Add('where ShoetestDelay.GXLB=''C'' ');
      sql.Add(') AS TBDelayReason ON TBDelayReason.TestNo = main.TestNo');
    end
    //=============================================================================================================
    else if combobox1.Text = 'StitchingPlan' then
    //=============================================================================================================Stitching
    begin
      sql.Add('SELECT main.TestNo, main.Groups, main.Serino, main.SR, main.Stage, main.CuttingOK, main.StitchingOK, main.AssemblyOk, main.SMatOK as WarehouseMTLOK, ');
      sql.Add('main.CuttingPlan, main.StitchingPlan, main.AssemblyPlan, SQplan.Qty AS PlanQty ,');
      sql.Add('TBDelayReason.DP,TBDelayReason.PartE,TBDelayReason.PartV, TBDelayReason.DR, TBDelayReason.ReasonV,ReasonE,''S'' GXLB FROM (');
      sql.Add('SELECT Groups, SeriNo, ShoeTest.TestNo, ShoeTest.Stage, ShoeTest.Article AS SR, ShoeTest.CutDate_first as CuttingPlan ,ShoeTest.Cutdate AS CuttingOK,shoetest.S_material SMatOK,shoetest.StitchingPhuFinishDate SMatGet,');
      sql.Add('ShoeTest.StitchingDate_first AS StitchingPlan, ShoeTest.StitchingDate AS StitchingOK, ShoeTest.AssembiyDate_first as AssemblyPlan, ShoeTest.Assemblecomplete as AssemblyOk FROM ShoeTest');
      sql.Add('LEFT JOIN ShoeTestPlan ON ShoeTestPlan.TestNo = ShoeTest.TestNo');
      sql.Add('INNER JOIN YPZL on ShoeTest.YPDH=YPZl.YPDH and YPZL.GSDH='''+main.Edit2.Text+'''  ');
      //sql.Add('WHERE CONVERT(VARCHAR, ShoeTest.StitchingDate_first, 111) BETWEEN CONVERT(VARCHAR, GetDate()-10, 111) AND CONVERT(VARCHAR, GetDate(), 111) AND ShoeTest.StitchingDate IS NULL');
      if CheckBox3.Checked then
      begin
      sql.Add('WHERE shoetest.StitchingDate_first BETWEEN CONVERT(smalldatetime, ''' + FormatDateTime('yyyy/MM/dd 00:00:00', DTP1.DateTime) + ''')');
      sql.Add('AND CONVERT(smalldatetime, ''' + FormatDateTime('yyyy/MM/dd 23:59:00', DTP2.DateTime) + ''')');
      end;
      sql.Add(') AS main');
      sql.Add('LEFT JOIN (');
      sql.Add('SELECT ShoeTest2.TestNo, SUM(Qty) AS Qty FROM ShoeTest2 ');
      sql.Add('LEFT JOIN ShoeTestDetail ON ShoeTestDetail.YYBH = ShoeTest2.Parts');
      sql.Add('WHERE YWSM in (''Finished Shoe'',''Half Stitching Upper'',''Stitching Upper'',''Lasted upper'',''Upper Component'',''CFM sample'',''Upper And Bottom(CE)'')');
      sql.Add('GROUP BY ShoeTest2.TestNo');
      sql.Add(') AS SQplan ON SQplan.TestNo = main.TestNo');
      sql.Add('LEFT JOIN (');
      sql.Add('SELECT TestNo,DP,DR,Part.YWSM,Part.VWSM PartV,Part.ZWSM PartC,Part.YWSM PartE,Reason.VWSM ReasonV,Reason.ZWSM ReasonC,Reason.YWSM ReasonE from ShoetestDelay');
      sql.Add('LEFT JOIN ShoeTestDetail Part ON Part.YYBH = ShoetestDelay.DP ');
      sql.Add('LEFT JOIN ShoeTestDetail Reason ON Reason.YYBH = ShoetestDelay.DR ');
      sql.Add('where ShoetestDelay.GXLB=''S'' ');
      sql.Add(') AS TBDelayReason ON TBDelayReason.TestNo = main.TestNo');
    end
    //=============================================================================================================
    else if combobox1.Text = 'AssemblyPlan' then
    //=============================================================================================================Assembly
    begin
      sql.Add('SELECT main.TestNo, main.Groups, main.Serino, main.SR, main.Stage, main.CuttingOk, main.StitchingOK, main.AssemblyOK, main.AMatOK as WarehouseMTLOK, ');
      sql.Add('main.CuttingPlan, main.StitchingPlan, main.AssemblyPlan, SQplan.Qty AS PlanQty,');
      sql.Add('TBDelayReason.DP,TBDelayReason.PartE, TBDelayReason.PartV, TBDelayReason.DR,TBDelayReason.ReasonV,ReasonE,''A'' GXLB FROM (');
      sql.Add('SELECT Groups, SeriNo, ShoeTest.TestNo, ShoeTest.Stage, ShoeTest.Article AS SR, ShoeTest.CutDate_first as CuttingPlan, ShoeTest.CutDate as CuttingOk, ShoeTest.StitchingDate_first as StitchingPlan,');
      sql.Add('ShoeTest.StitchingDate AS StitchingOK,shoetest.insole_send AMatOk,shoetest.insole_get AMatGet, ShoeTest.AssembiyDate_first AS AssemblyPlan, ShoeTest.Assemblecomplete AS AssemblyOK FROM ShoeTest');
      sql.Add('LEFT JOIN ShoeTestPlan ON ShoeTestPlan.TestNo = ShoeTest.TestNo');
      sql.Add('INNER JOIN YPZL on ShoeTest.YPDH=YPZl.YPDH and YPZL.GSDH='''+main.Edit2.Text+'''  ');
      //sql.Add('WHERE CONVERT(VARCHAR, ShoeTest.AssembiyDate_first, 111) BETWEEN CONVERT(VARCHAR, GetDate()-10, 111) AND CONVERT(VARCHAR, GetDate(), 111) AND ShoeTest.Assemblecomplete IS NULL');
      if CheckBox3.Checked then
      begin
      sql.Add('WHERE shoetest.AssembiyDate_first BETWEEN CONVERT(smalldatetime, ''' + FormatDateTime('yyyy/MM/dd 00:00:00', DTP1.DateTime) + ''')');
      sql.Add('AND CONVERT(smalldatetime, ''' + FormatDateTime('yyyy/MM/dd 23:59:00', DTP2.DateTime) + ''')');
      end;
      sql.Add(') AS main');
      sql.Add('LEFT JOIN (');
      sql.Add('SELECT ShoeTest2.TestNo, SUM(Qty) AS Qty FROM ShoeTest2 ');
      sql.Add('LEFT JOIN ShoeTestDetail ON ShoeTestDetail.YYBH = ShoeTest2.Parts ');
      sql.Add('WHERE YWSM in (''Finished Shoe'',''Lasted upper'',''CFM sample'',''Upper And Bottom(CE)'')');
      sql.Add('GROUP BY ShoeTest2.TestNo');
      sql.Add(') AS SQplan ON SQplan.TestNo = main.TestNo');
      sql.Add('LEFT JOIN (');
      sql.Add('SELECT TestNo,DP,DR,Part.YWSM,Part.VWSM PartV,Part.ZWSM PartC,Part.YWSM PartE,Reason.VWSM ReasonV,Reason.ZWSM ReasonC,Reason.YWSM ReasonE from ShoetestDelay');
      sql.Add('LEFT JOIN ShoeTestDetail Part ON Part.YYBH = ShoetestDelay.DP ');
      sql.Add('LEFT JOIN ShoeTestDetail Reason ON Reason.YYBH = ShoetestDelay.DR ');
      sql.Add('where ShoetestDelay.GXLB=''A'' ');
      sql.Add(') AS TBDelayReason ON TBDelayReason.TestNo = main.TestNo');
    end
    //=============================================================================================================ALL QUERY
    else if  (combobox1.Text = '') or (Checkbox1.Checked = false) then
      begin
       sql.Add('SELECT main.TestNo, main.Groups, main.Serino, main.SR, main.Stage, main.CuttingOK, main.StitchingOk, main.AssemblyOk,  CAST(NULL AS DateTime) as WarehouseMTLOK, ');
       sql.Add(' main.CuttingPlan, main.StitchingPlan, main.AssemblyPlan, SQplan.Qty AS PlanQty,');
       sql.Add('TBDelayReason.DP, TBDelayReason.PartE, TBDelayReason.PartV, CAST(NULL AS VARCHAR) AS DR, TBDelayReason.ReasonV,ReasonE,''C'' GXLB FROM (');
       sql.Add('SELECT Groups, SeriNo, ShoeTest.TestNo, ShoeTest.Stage, ShoeTest.Article AS SR, ShoeTest.PreparationDate AS WarehouseOK, ShoeTest.CutDate_first AS CuttingPlan, ShoeTest.CutDate AS CuttingOK, ');
       sql.Add('ShoeTest.StitchingDate_first as StitchingPlan, ShoeTest.StitchingDate as StitchingOk, ShoeTest.AssembiyDate_first as AssemblyPlan, ShoeTest.Assemblecomplete as AssemblyOk FROM ShoeTest');
       sql.Add('LEFT JOIN ShoeTestPlan ON ShoeTestPlan.TestNo = ShoeTest.TestNo');
       sql.Add('INNER JOIN YPZL on ShoeTest.YPDH=YPZl.YPDH and YPZL.GSDH='''+main.Edit2.Text+'''  ');
       //sql.Add('WHERE CONVERT(VARCHAR, ShoeTest.CutDate_first, 111) BETWEEN CONVERT(VARCHAR, GetDate()-10, 111) AND CONVERT(VARCHAR, GetDate(), 111) AND ShoeTest.CutDate IS NULL');
       if CheckBox3.Checked then
       begin
       sql.Add('WHERE shoetest.CutDate_first BETWEEN CONVERT(smalldatetime, ''' + FormatDateTime('yyyy/MM/dd 00:00:00', DTP1.DateTime) + ''')');
       sql.Add('AND CONVERT(smalldatetime, ''' + FormatDateTime('yyyy/MM/dd 23:59:00', DTP2.DateTime) + ''')');
       end;
       sql.Add(') AS main');
       sql.Add('LEFT JOIN (');
       sql.Add('SELECT ShoeTest2.TestNo, SUM(Qty) AS Qty FROM ShoeTest2');
       sql.Add('LEFT JOIN ShoeTestDetail ON ShoeTestDetail.YYBH = ShoeTest2.Parts ');
       sql.Add('WHERE YWSM IN (''Finished Shoe'', ''Half Stitching Upper'', ''Stitching Upper'', ''Lasted upper'', ''Upper Component'', ''CFM sample'', ''Upper And Bottom(CE)'')');
       sql.Add('GROUP BY ShoeTest2.TestNo');
       sql.Add(') AS SQplan ON SQplan.TestNo = main.TestNo');
       sql.Add('LEFT JOIN (');
       sql.Add('SELECT TestNo,DP,DR,Part.YWSM,Part.VWSM PartV,Part.ZWSM PartC,Part.YWSM PartE,Reason.VWSM ReasonV,Reason.ZWSM ReasonC,Reason.YWSM ReasonE from ShoetestDelay');
       sql.Add('LEFT JOIN ShoeTestDetail Part ON Part.YYBH = ShoetestDelay.DP ');
       sql.Add('LEFT JOIN ShoeTestDetail Reason ON Reason.YYBH = ShoetestDelay.DR ');
       sql.Add('where ShoetestDelay.GXLB=''C'' ');
       sql.Add(') AS TBDelayReason ON TBDelayReason.TestNo = main.TestNo');
       sql.Add('UNION ALL');
       sql.Add('SELECT main.TestNo, main.Groups, main.Serino, main.SR, main.Stage, main.CuttingOK, main.StitchingOK, main.AssemblyOk, main.SMatOK as WarehouseMTLOK, ');
       sql.Add('main.CuttingPlan, main.StitchingPlan, main.AssemblyPlan, SQplan.Qty AS PlanQty ,');
       sql.Add('TBDelayReason.DP,TBDelayReason.PartE,TBDelayReason.PartV, TBDelayReason.DR, TBDelayReason.ReasonV,ReasonE,''S'' GXLB FROM (');
       sql.Add('SELECT Groups, SeriNo, ShoeTest.TestNo, ShoeTest.Stage, ShoeTest.Article AS SR, ShoeTest.CutDate_first as CuttingPlan ,ShoeTest.Cutdate AS CuttingOK,shoetest.S_material SMatOK,shoetest.StitchingPhuFinishDate SMatGet,');
       sql.Add('ShoeTest.StitchingDate_first AS StitchingPlan, ShoeTest.StitchingDate AS StitchingOK, ShoeTest.AssembiyDate_first as AssemblyPlan, ShoeTest.Assemblecomplete as AssemblyOk FROM ShoeTest');
       sql.Add('LEFT JOIN ShoeTestPlan ON ShoeTestPlan.TestNo = ShoeTest.TestNo');
       sql.Add('INNER JOIN YPZL on ShoeTest.YPDH=YPZl.YPDH and YPZL.GSDH='''+main.Edit2.Text+'''  ');
       //sql.Add('WHERE CONVERT(VARCHAR, ShoeTest.StitchingDate_first, 111) BETWEEN CONVERT(VARCHAR, GetDate()-10, 111) AND CONVERT(VARCHAR, GetDate(), 111) AND ShoeTest.StitchingDate IS NULL');
       if CheckBox3.Checked then
       begin
       sql.Add('WHERE shoetest.StitchingDate_first BETWEEN CONVERT(smalldatetime, ''' + FormatDateTime('yyyy/MM/dd 00:00:00', DTP1.DateTime) + ''')');
       sql.Add('AND CONVERT(smalldatetime, ''' + FormatDateTime('yyyy/MM/dd 23:59:00', DTP2.DateTime) + ''')');
       end;
       sql.Add(') AS main');
       sql.Add('LEFT JOIN (');
       sql.Add('SELECT ShoeTest2.TestNo, SUM(Qty) AS Qty FROM ShoeTest2 ');
       sql.Add('LEFT JOIN ShoeTestDetail ON ShoeTestDetail.YYBH = ShoeTest2.Parts');
       sql.Add('WHERE YWSM in (''Finished Shoe'',''Half Stitching Upper'',''Stitching Upper'',''Lasted upper'',''Upper Component'',''CFM sample'',''Upper And Bottom(CE)'')');
       sql.Add('GROUP BY ShoeTest2.TestNo');
       sql.Add(') AS SQplan ON SQplan.TestNo = main.TestNo');
       sql.Add('LEFT JOIN (');
       sql.Add('SELECT TestNo,DP,DR,Part.YWSM,Part.VWSM PartV,Part.ZWSM PartC,Part.YWSM PartE,Reason.VWSM ReasonV,Reason.ZWSM ReasonC,Reason.YWSM ReasonE from ShoetestDelay');
       sql.Add('LEFT JOIN ShoeTestDetail Part ON Part.YYBH = ShoetestDelay.DP ');
       sql.Add('LEFT JOIN ShoeTestDetail Reason ON Reason.YYBH = ShoetestDelay.DR ');
       sql.Add('where ShoetestDelay.GXLB=''S'' ');
       sql.Add(') AS TBDelayReason ON TBDelayReason.TestNo = main.TestNo');
       sql.Add('UNION ALL');
       sql.Add('SELECT main.TestNo, main.Groups, main.Serino, main.SR, main.Stage, main.CuttingOk, main.StitchingOK, main.AssemblyOK, main.AMatOK as WarehouseMTLOK, ');
       sql.Add('main.CuttingPlan, main.StitchingPlan, main.AssemblyPlan, SQplan.Qty AS PlanQty,');
       sql.Add('TBDelayReason.DP,TBDelayReason.PartE, TBDelayReason.PartV, TBDelayReason.DR,TBDelayReason.ReasonV,ReasonE,''A'' GXLB FROM (');
       sql.Add('SELECT Groups, SeriNo, ShoeTest.TestNo, ShoeTest.Stage, ShoeTest.Article AS SR, ShoeTest.CutDate_first as CuttingPlan, ShoeTest.CutDate as CuttingOk, ShoeTest.StitchingDate_first as StitchingPlan,');
       sql.Add('ShoeTest.StitchingDate AS StitchingOK,shoetest.insole_send AMatOk,shoetest.insole_get AMatGet, ShoeTest.AssembiyDate_first AS AssemblyPlan, ShoeTest.Assemblecomplete AS AssemblyOK FROM ShoeTest');
       sql.Add('LEFT JOIN ShoeTestPlan ON ShoeTestPlan.TestNo = ShoeTest.TestNo');
       sql.Add('INNER JOIN YPZL on ShoeTest.YPDH=YPZl.YPDH and YPZL.GSDH='''+main.Edit2.Text+'''  ');
       //sql.Add('WHERE CONVERT(VARCHAR, ShoeTest.AssembiyDate_first, 111) BETWEEN CONVERT(VARCHAR, GetDate()-10, 111) AND CONVERT(VARCHAR, GetDate(), 111) AND ShoeTest.Assemblecomplete IS NULL');
       if CheckBox3.Checked then
       begin
       sql.Add('WHERE shoetest.AssembiyDate_first BETWEEN CONVERT(smalldatetime, ''' + FormatDateTime('yyyy/MM/dd 00:00:00', DTP1.DateTime) + ''')');
       sql.Add('AND CONVERT(smalldatetime, ''' + FormatDateTime('yyyy/MM/dd 23:59:00', DTP2.DateTime) + ''')');
       end;
       sql.Add(') AS main');
       sql.Add('LEFT JOIN (');
       sql.Add('SELECT ShoeTest2.TestNo, SUM(Qty) AS Qty FROM ShoeTest2 ');
       sql.Add('LEFT JOIN ShoeTestDetail ON ShoeTestDetail.YYBH = ShoeTest2.Parts ');
       sql.Add('WHERE YWSM in (''Finished Shoe'',''Lasted upper'',''CFM sample'',''Upper And Bottom(CE)'')');
       sql.Add('GROUP BY ShoeTest2.TestNo');
       sql.Add(') AS SQplan ON SQplan.TestNo = main.TestNo');
       sql.Add('LEFT JOIN (');
       sql.Add('SELECT TestNo,DP,DR,Part.YWSM,Part.VWSM PartV,Part.ZWSM PartC,Part.YWSM PartE,Reason.VWSM ReasonV,Reason.ZWSM ReasonC,Reason.YWSM ReasonE from ShoetestDelay');
       sql.Add('LEFT JOIN ShoeTestDetail Part ON Part.YYBH = ShoetestDelay.DP ');
       sql.Add('LEFT JOIN ShoeTestDetail Reason ON Reason.YYBH = ShoetestDelay.DR ');
       sql.Add('where ShoetestDelay.GXLB=''A'' ');
       sql.Add(') AS TBDelayReason ON TBDelayReason.TestNo = main.TestNo');
    end;
    //=============================================================================================================
    SQL.Add(') as combined');
    if CheckBox2.Checked or CheckBox3.Checked then
        SQL.Add('where ');

    if CheckBox2.Checked then
      begin
        SQL.Add(' ((DP is not null) or (PartE is not null) or (DR is not null) or (ReasonV is not null)) ');
      if CheckBox3.Checked then
        SQL.Add('and ');
    end;

    if CheckBox3.Checked then
      begin
        SQL.Add('(convert(smalldatetime, convert(varchar, ' + Combobox1.Text + ', 111)) between CONVERT(smalldatetime, ''' + FormatDateTime('yyyy/MM/dd 00:00:00', DTP1.DateTime) + ''')');
        sql.Add('AND CONVERT(smalldatetime, ''' + FormatDateTime('yyyy/MM/dd 23:59:00', DTP2.DateTime) + '''))');
      end;
      
    SQL.Add('ORDER BY CuttingPlan, StitchingPlan, AssemblyPlan, Groups, Serino');
    //showmessage(sql.text);
    Active := true;
  end;
end;

procedure TTBDelayReason1.FormCreate(Sender: TObject);
begin
  DTP1.Date:=Date();
  DTP2.Date:=Date();
  AppDir:=ExtractFilePath(Application.ExeName);
  PageControl1.ActivePageIndex:=0;
end;

procedure TTBDelayReason1.btnExcelClick(Sender: TObject);
var
  eclApp, WorkBook: OleVariant;
  i, j, k: Integer;
  totalTbsDelayed: Integer;
begin
  if Query5.Active then
  begin
    if Query5.RecordCount = 0 then
    begin
      ShowMessage('No record.');
      Abort;
    end;
  end
  else
  begin
    ShowMessage('No record.');
    Abort;
  end;

  totalTbsDelayed := Query5.RecordCount;

  if(not DirectoryExists(AppDir+'Additional\'))  then ForceDirectories(AppDir+'Additional\');
      CopyFile(Pchar('\\'+main.ServerIP+'\liy_erp\Additional\Develop_NB7Delayed.xlsx'),Pchar(AppDir+'Additional\Develop_NB7Delayed.xlsx'),false);
      if FileExists(AppDir+'Additional\Develop_NB7Delayed.xlsx') then
      begin
        try
          eclApp:=CreateOleObject('Excel.Application');
          eclApp.DisplayAlerts := False;
          WorkBook:=CreateOleObject('Excel.Sheet');
        except
          Application.MessageBox('No Microsoft   Excel','Microsoft   Excel',MB_OK+MB_ICONWarning);
          Exit;
        end;
        try
          eclApp.WorkBooks.Open(AppDir+'Additional\Develop_NB7Delayed.xlsx');
          eclApp.WorkSheets[1].Activate;
          j:=9;
          while not Query5.Eof do
      begin
        for i:=0 to Query5.fieldcount-1 do
        begin
          //Delay ­ì¦]
          if Query5.FieldByName('DP').Value='DP01' then  eclApp.Cells(j,1):='V'; // Develop
          if Query5.FieldByName('DP').Value='DP02' then  eclApp.Cells(j,2):='V'; //Pattern
          if Query5.FieldByName('DP').Value='DP03' then  eclApp.Cells(j,3):='V'; //SampleRoom
          if Query5.FieldByName('DP').Value='DP04' then  eclApp.Cells(j,4):='V'; //PurchasingTeam
          if Query5.FieldByName('DP').Value='DP05' then   eclApp.Cells(j,5):='V'; //PlanningTeam
          if Query5.FieldByName('DP').Value='DP06' then   eclApp.Cells(j,6):='V'; //Warehouse
          if Query5.FieldByName('DP').Value='DP07' then   eclApp.Cells(j,7):='V'; //Outside Printing
          if Query5.FieldByName('DP').Value='DP08' then   eclApp.Cells(j,8):='V'; //Outside Embroidery
          if Query5.FieldByName('DP').Value='DP09' then   eclApp.Cells(j,9):='V'; //Outsole Rubber
          if Query5.FieldByName('DP').Value='DP99' then   eclApp.Cells(j,10):='V'; //Other issue
          eclApp.Cells(j,11):=Query5.FieldByName('ReasonE').value;
        end;
        Query5.Next;
        inc(j);
        //outline
        for k:=1 to 4 do
        begin
          eclApp.range[eclApp.cells[9,1],eclApp.cells[j-1,11]].borders[k].linestyle:=1;
        end;
      end;

      eclApp.Cells(1, 2) := IntToStr(totalTbsDelayed);
      eclapp.columns.autofit;
      showmessage('Succeed');
      eclApp.Visible:=True;
    except
       on  F:Exception   do
          showmessage(F.Message);
    end;
    end;
end;



end.

