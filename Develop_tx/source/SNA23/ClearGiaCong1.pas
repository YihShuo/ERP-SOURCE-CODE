unit ClearGiaCong1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DB, DBTables, GridsEh, DBGridEh, StdCtrls, ExtCtrls, ComCtrls;

type
  TClearGiaCong = class(TForm)
    PageControl1: TPageControl;
    TabSheet2: TTabSheet;
    Panel3: TPanel;
    Label3: TLabel;
    Edit3: TEdit;
    Button1: TButton;
    DBGridEh3: TDBGridEh;
    TabSheet3: TTabSheet;
    Panel4: TPanel;
    Label4: TLabel;
    Edit4: TEdit;
    Button2: TButton;
    DBGridEh4: TDBGridEh;
    TabSheet4: TTabSheet;
    Panel5: TPanel;
    Label5: TLabel;
    Edit5: TEdit;
    Button3: TButton;
    DBGridEh5: TDBGridEh;
    TabSheet5: TTabSheet;
    Panel6: TPanel;
    Label6: TLabel;
    Edit6: TEdit;
    Button4: TButton;
    DBGridEh6: TDBGridEh;
    TabSheet6: TTabSheet;
    Panel7: TPanel;
    Label7: TLabel;
    Edit7: TEdit;
    Button5: TButton;
    DBGridEh7: TDBGridEh;
    TabSheet7: TTabSheet;
    Panel8: TPanel;
    Label8: TLabel;
    Edit8: TEdit;
    Button6: TButton;
    DBGridEh8: TDBGridEh;
    TabSheet11: TTabSheet;
    Panel11: TPanel;
    Label21: TLabel;
    Edit13: TEdit;
    Button7: TButton;
    DBGridEh13: TDBGridEh;
    TabSheet12: TTabSheet;
    Panel12: TPanel;
    Label22: TLabel;
    Edit14: TEdit;
    Button8: TButton;
    DBGridEh14: TDBGridEh;
    TabSheet13: TTabSheet;
    Panel13: TPanel;
    Label23: TLabel;
    Edit15: TEdit;
    Button9: TButton;
    DBGridEh15: TDBGridEh;
    TabSheet14: TTabSheet;
    Panel14: TPanel;
    Label24: TLabel;
    Edit16: TEdit;
    Button10: TButton;
    DBGridEh16: TDBGridEh;
    TabSheet15: TTabSheet;
    Panel15: TPanel;
    Label25: TLabel;
    Edit17: TEdit;
    Button11: TButton;
    DBGridEh17: TDBGridEh;
    TabSheet16: TTabSheet;
    Panel16: TPanel;
    Label26: TLabel;
    Edit18: TEdit;
    Button12: TButton;
    DBGridEh18: TDBGridEh;
    TabSheet17: TTabSheet;
    Panel17: TPanel;
    Label27: TLabel;
    Edit19: TEdit;
    Button13: TButton;
    DBGridEh19: TDBGridEh;
    TabSheet18: TTabSheet;
    Panel18: TPanel;
    Label28: TLabel;
    Edit20: TEdit;
    Button14: TButton;
    DBGridEh20: TDBGridEh;
    DataSource3: TDataSource;
    Query3: TQuery;
    StringField3: TStringField;
    StringField4: TStringField;
    BooleanField3: TBooleanField;
    BooleanField4: TBooleanField;
    Query1lamination_send: TDateTimeField;
    DataSource4: TDataSource;
    Query4: TQuery;
    StringField5: TStringField;
    StringField6: TStringField;
    BooleanField5: TBooleanField;
    BooleanField6: TBooleanField;
    Query1lamination_get: TDateTimeField;
    DataSource5: TDataSource;
    Query5: TQuery;
    StringField7: TStringField;
    StringField8: TStringField;
    BooleanField7: TBooleanField;
    BooleanField8: TBooleanField;
    Query5BaoHe_send: TDateTimeField;
    DataSource6: TDataSource;
    Query6: TQuery;
    StringField9: TStringField;
    StringField10: TStringField;
    BooleanField9: TBooleanField;
    BooleanField10: TBooleanField;
    Query6BaoHe_get: TDateTimeField;
    DataSource7: TDataSource;
    Query7: TQuery;
    StringField11: TStringField;
    StringField12: TStringField;
    BooleanField11: TBooleanField;
    BooleanField12: TBooleanField;
    Query7LiMao_Send: TDateTimeField;
    DataSource8: TDataSource;
    Query8: TQuery;
    StringField13: TStringField;
    StringField14: TStringField;
    BooleanField13: TBooleanField;
    BooleanField14: TBooleanField;
    Query8LiMao_Get: TDateTimeField;
    DataSource13: TDataSource;
    Query13: TQuery;
    StringField32: TStringField;
    StringField33: TStringField;
    BooleanField19: TBooleanField;
    BooleanField20: TBooleanField;
    Query13kietphong_Send: TDateTimeField;
    DataSource14: TDataSource;
    Query14: TQuery;
    StringField34: TStringField;
    StringField35: TStringField;
    BooleanField21: TBooleanField;
    BooleanField22: TBooleanField;
    Query14kietphong_Get: TDateTimeField;
    DataSource15: TDataSource;
    Query15: TQuery;
    StringField36: TStringField;
    StringField37: TStringField;
    BooleanField23: TBooleanField;
    BooleanField24: TBooleanField;
    Query15Amico_Send: TDateTimeField;
    DataSource16: TDataSource;
    Query16: TQuery;
    StringField38: TStringField;
    StringField39: TStringField;
    BooleanField25: TBooleanField;
    BooleanField26: TBooleanField;
    Query16Amico_Get: TDateTimeField;
    tempqry: TQuery;
    Query17: TQuery;
    Query17testno: TStringField;
    Query17Article: TStringField;
    Query17TBReceive: TBooleanField;
    Query17Pending_P: TBooleanField;
    Query17Laser_send: TDateTimeField;
    DataSource17: TDataSource;
    DataSource18: TDataSource;
    Query18: TQuery;
    Query18testno: TStringField;
    Query18Article: TStringField;
    Query18TBReceive: TBooleanField;
    Query18Pending_P: TBooleanField;
    Query18Laser_get: TDateTimeField;
    DataSource19: TDataSource;
    Query19: TQuery;
    StringField40: TStringField;
    StringField41: TStringField;
    BooleanField27: TBooleanField;
    BooleanField28: TBooleanField;
    Query19DAJU_Send: TDateTimeField;
    Query20: TQuery;
    StringField42: TStringField;
    StringField43: TStringField;
    BooleanField29: TBooleanField;
    BooleanField30: TBooleanField;
    Query20DAJU_Get: TDateTimeField;
    DataSource20: TDataSource;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormDestroy(Sender: TObject);
    procedure PageControl1Change(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure Button3Click(Sender: TObject);
    procedure Button4Click(Sender: TObject);
    procedure Button5Click(Sender: TObject);
    procedure Button6Click(Sender: TObject);
    procedure Button7Click(Sender: TObject);
    procedure Button8Click(Sender: TObject);
    procedure Button9Click(Sender: TObject);
    procedure Button10Click(Sender: TObject);
    procedure Button11Click(Sender: TObject);
    procedure Button12Click(Sender: TObject);
    procedure Button13Click(Sender: TObject);
    procedure Button14Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  ClearGiaCong: TClearGiaCong;

implementation

{$R *.dfm}

procedure TClearGiaCong.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
   Action:=caFree;
end;

procedure TClearGiaCong.FormDestroy(Sender: TObject);
begin
   ClearGiaCong:=nil;
end;

procedure TClearGiaCong.PageControl1Change(Sender: TObject);
var i: Integer;
    sheet:TTabSheet;
begin
  for i:=0 to PageControl1.PageCount-1 do
  begin
         sheet:=PageControl1.Pages[i];
         if sheet=PageControl1.ActivePage then
            sheet.Highlighted:=true
         else
            sheet.Highlighted:=false;
  end;

  if PageControl1.ActivePageIndex = 0 then begin
    with Query3 do
    begin
      Active:=false;
      SQL.Clear;
      SQL.Add('select testno,Article,TBReceive,Pending_P,lamination_send from shoetest where CONVERT(varchar(100), lamination_send, 112) = CONVERT(varchar(100), GETDATE(), 112) ');
      //showmessage(sql.Text);
      Active:=true;
    end;
  end
  else if PageControl1.ActivePageIndex = 1 then begin
    with query4 do
    begin
      Active:=false;
      SQL.Clear;
      SQL.Add('select testno,Article,TBReceive,Pending_P,lamination_get from shoetest where CONVERT(varchar(100), lamination_get, 112) = CONVERT(varchar(100), GETDATE(), 112)');
      //showmessage(sql.Text);
      Active:=true;
    end;
  end
  else if PageControl1.ActivePageIndex = 2 then begin
    with query5 do
    begin
      Active:=false;
      SQL.Clear;
      SQL.Add('select testno,Article,TBReceive,Pending_P,BaoHe_send from shoetest where CONVERT(varchar(100), BaoHe_send, 112) = CONVERT(varchar(100), GETDATE(), 112) ');
      //showmessage(sql.Text);
      Active:=true;
    end;
  end
  else if PageControl1.ActivePageIndex = 3 then begin
    with query6 do
    begin
      Active:=false;
      SQL.Clear;
      SQL.Add('select testno,Article,TBReceive,Pending_P,BaoHe_get from shoetest where CONVERT(varchar(100), BaoHe_get, 112) = CONVERT(varchar(100), GETDATE(), 112) ');
      //showmessage(sql.Text);
      Active:=true;
    end;
  end
  else if PageControl1.ActivePageIndex = 4 then begin
    with query7 do
    begin
      Active:=false;
      SQL.Clear;
      SQL.Add('select testno,Article,TBReceive,Pending_P,LiMao_Send from shoetest where CONVERT(varchar(100), LiMao_Send, 112) = CONVERT(varchar(100), GETDATE(), 112)');
      //showmessage(sql.Text);
      Active:=true;
    end;
  end
  else if PageControl1.ActivePageIndex = 5 then begin
    with query8 do
    begin
      Active:=false;
      SQL.Clear;
      SQL.Add('select testno,Article,TBReceive,Pending_P,LiMao_Get from shoetest where CONVERT(varchar(100), LiMao_Get, 112) = CONVERT(varchar(100), GETDATE(), 112)');
      //showmessage(sql.Text);
      Active:=true;
    end;
  end
  else if PageControl1.ActivePageIndex = 6 then begin
    with query13 do
    begin
      Active:=false;
      SQL.Clear;
      SQL.Add('select testno,Article,TBReceive,Pending_P,kietphong_Send from shoetest where CONVERT(varchar(100), kietphong_Send, 112) = CONVERT(varchar(100), GETDATE(), 112)');
      //showmessage(sql.Text);
      Active:=true;
    end;
  end
  else if PageControl1.ActivePageIndex = 7 then begin
    with query14 do
    begin
      Active:=false;
      SQL.Clear;
      SQL.Add('select testno,Article,TBReceive,Pending_P,kietphong_Get from shoetest where CONVERT(varchar(100), kietphong_Get, 112) = CONVERT(varchar(100), GETDATE(), 112)');
      //showmessage(sql.Text);
      Active:=true;
    end;
  end
  else if PageControl1.ActivePageIndex = 8 then begin
    with query15 do
    begin
      Active:=false;
      SQL.Clear;
      SQL.Add('select testno,Article,TBReceive,Pending_P,Amico_Send from shoetest where CONVERT(varchar(100), Amico_Send, 112) = CONVERT(varchar(100), GETDATE(), 112)');
      //showmessage(sql.Text);
      Active:=true;
    end;
  end
  else if PageControl1.ActivePageIndex = 9 then begin
    with query16 do
    begin
      Active:=false;
      SQL.Clear;
      SQL.Add('select testno,Article,TBReceive,Pending_P,Amico_Get from shoetest where CONVERT(varchar(100), Amico_Get, 112) = CONVERT(varchar(100), GETDATE(), 112)');
      //showmessage(sql.Text);
      Active:=true;
    end;
  end
  else if PageControl1.ActivePageIndex = 10 then begin
    with query17 do
    begin
      Active:=false;
      SQL.Clear;
      SQL.Add('select testno,Article,TBReceive,Pending_P,Laser_send from shoetest where CONVERT(varchar(100), Laser_send, 112) = CONVERT(varchar(100), GETDATE(), 112)');
      //showmessage(sql.Text);
      Active:=true;
    end;
  end
  else if PageControl1.ActivePageIndex = 11 then begin
    with query18 do
    begin
      Active:=false;
      SQL.Clear;
      SQL.Add('select testno,Article,TBReceive,Pending_P,Laser_get from shoetest where CONVERT(varchar(100), Laser_get, 112) = CONVERT(varchar(100), GETDATE(), 112)');
      //showmessage(sql.Text);
      Active:=true;
    end;
  end
  else if PageControl1.ActivePageIndex = 12 then begin
    with query19 do
    begin
      Active:=false;
      SQL.Clear;
      SQL.Add('select testno,Article,TBReceive,Pending_P,DAJU_Send from shoetest where CONVERT(varchar(100), DAJU_Send, 112) = CONVERT(varchar(100), GETDATE(), 112)');
      //showmessage(sql.Text);
      Active:=true;
    end;
  end
  else if PageControl1.ActivePageIndex = 13 then begin
    with query20 do
    begin
      Active:=false;
      SQL.Clear;
      SQL.Add('select testno,Article,TBReceive,Pending_P,DAJU_Get from shoetest where CONVERT(varchar(100), DAJU_Get, 112) = CONVERT(varchar(100), GETDATE(), 112)');
      //showmessage(sql.Text);
      Active:=true;
    end;
  end
end;

procedure TClearGiaCong.Button1Click(Sender: TObject);
begin
  with Query3 do
  begin
    Active:=false;
    SQL.Clear;
    SQL.Add('update shoetest set lamination_send=null where Testno='''+Edit3.text+'''');
    ExecSQL;
    PageControl1Change(sender);
  end;
end;

procedure TClearGiaCong.Button2Click(Sender: TObject);
begin
  with Query4 do
  begin
    Active:=false;
    SQL.Clear;
    SQL.Add('update shoetest set lamination_get=null where Testno='''+Edit4.text+'''');
    ExecSQL;
    PageControl1Change(sender);
  end;
end;

procedure TClearGiaCong.Button3Click(Sender: TObject);
begin
  with Query5 do
  begin
    Active:=false;
    SQL.Clear;
    SQL.Add('update shoetest set BaoHe_send=null where Testno='''+Edit5.text+'''');
    ExecSQL;
    PageControl1Change(sender);
  end;
end;

procedure TClearGiaCong.Button4Click(Sender: TObject);
begin
  with Query6 do
  begin
    Active:=false;
    SQL.Clear;
    SQL.Add('update shoetest set BaoHe_get=null where Testno='''+Edit6.text+'''');
    ExecSQL;
    PageControl1Change(sender);
  end;
end;

procedure TClearGiaCong.Button5Click(Sender: TObject);
begin
  with Query7 do
  begin
    Active:=false;
    SQL.Clear;
    SQL.Add('update shoetest set LiMao_Send=null where Testno='''+Edit7.text+'''');
    ExecSQL;
    PageControl1Change(sender);
  end;
end;

procedure TClearGiaCong.Button6Click(Sender: TObject);
begin
  with Query8 do
  begin
    Active:=false;
    SQL.Clear;
    SQL.Add('update shoetest set LiMao_Get=null where Testno='''+Edit8.text+'''');
    ExecSQL;
    PageControl1Change(sender);
  end;
end;

procedure TClearGiaCong.Button7Click(Sender: TObject);
begin
  with Query13 do
  begin
    Active:=false;
    SQL.Clear;
    SQL.Add('update shoetest set kietphong_Send=null where Testno='''+Edit13.text+'''');
    ExecSQL;
    PageControl1Change(sender);
  end;
end;

procedure TClearGiaCong.Button8Click(Sender: TObject);
begin
  with Query14 do
  begin
    Active:=false;
    SQL.Clear;
    SQL.Add('update shoetest set kietphong_Get=null where Testno='''+Edit14.text+'''');
    ExecSQL;
    PageControl1Change(sender);
  end;
end;

procedure TClearGiaCong.Button9Click(Sender: TObject);
begin
  with Query15 do
  begin
    Active:=false;
    SQL.Clear;
    SQL.Add('update shoetest set Amico_Send=null where Testno='''+Edit15.text+'''');
    ExecSQL;
    PageControl1Change(sender);
  end;
end;

procedure TClearGiaCong.Button10Click(Sender: TObject);
begin
  with Query16 do
  begin
    Active:=false;
    SQL.Clear;
    SQL.Add('update shoetest set Amico_Get=null where Testno='''+Edit16.text+'''');
    ExecSQL;
    PageControl1Change(sender);
  end;
end;

procedure TClearGiaCong.Button11Click(Sender: TObject);
begin
  with Query17 do
  begin
    Active:=false;
    SQL.Clear;
    SQL.Add('update shoetest set Laser_send=null where Testno='''+Edit17.text+'''');
    ExecSQL;
    PageControl1Change(sender);
  end;
end;

procedure TClearGiaCong.Button12Click(Sender: TObject);
begin
  with Query18 do
  begin
    Active:=false;
    SQL.Clear;
    SQL.Add('update shoetest set Laser_get=null where Testno='''+Edit18.text+'''');
    ExecSQL;
    PageControl1Change(sender);
  end;
end;

procedure TClearGiaCong.Button13Click(Sender: TObject);
begin
  with Query19 do
  begin
    Active:=false;
    SQL.Clear;
    SQL.Add('update shoetest set DAJU_Send=null where Testno='''+Edit19.text+'''');
    ExecSQL;
    PageControl1Change(sender);
  end;
end;

procedure TClearGiaCong.Button14Click(Sender: TObject);
begin
  with Query20 do
  begin
    Active:=false;
    SQL.Clear;
    SQL.Add('update shoetest set DAJU_Get=null where Testno='''+Edit20.text+'''');
    ExecSQL;
    PageControl1Change(sender);
  end;
end;

end.
