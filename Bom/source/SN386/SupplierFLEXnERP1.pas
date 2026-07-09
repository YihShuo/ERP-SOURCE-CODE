unit SupplierFLEXnERP1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DB, DBTables, StdCtrls, Buttons, ExtCtrls, GridsEh, DBGridEh,
  ComCtrls,ComObj;

type
  TSupplierFLEXnERP = class(TForm)
    PageControl1: TPageControl;
    TabSheet3: TTabSheet;
    DBGridEh3: TDBGridEh;
    Panel3: TPanel;
    Label19: TLabel;
    BC1: TBitBtn;
    FLEX_CODE: TEdit;
    BC2: TBitBtn;
    FLEX_NAME: TEdit;
    BitBtn1: TBitBtn;
    LO_BB_CANCEL: TBitBtn;
    Label1: TLabel;
    ERP_CODE: TEdit;
    Label2: TLabel;
    Label3: TLabel;
    ERP_NAME: TEdit;
    CheckBox4: TCheckBox;
    Query: TQuery;
    DS1: TDataSource;
    UpdateSQL: TUpdateSQL;
    QueryCSBH: TStringField;
    QuerySupplierCode: TStringField;
    QuerySupplier: TStringField;
    QueryUSERID: TStringField;
    QueryUSERDATE: TDateTimeField;
    QueryZSYWJC: TStringField;
    BB3: TBitBtn;
    CheckBox1: TCheckBox;
    QueryReplaced_1: TBooleanField;
    QueryReplaced: TStringField;
    CheckBox2: TCheckBox;
    BitBtn2: TBitBtn;
    Qry_Tmp: TQuery;
    QueryCountry: TStringField;
    procedure BC1Click(Sender: TObject);
    procedure BC2Click(Sender: TObject);
    procedure BB3Click(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
    procedure BitBtn2Click(Sender: TObject);
    procedure DBGridEh3TitleClick(Column: TColumnEh);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  SupplierFLEXnERP: TSupplierFLEXnERP;

implementation

uses main1;

{$R *.dfm}

procedure TSupplierFLEXnERP.BC1Click(Sender: TObject);
begin
   with Query do
      begin
         active:=false;
         sql.Clear;
         sql.add('Select CONVERT(Bit,IsNull(CSBH_FLEX.Replaced,0)) as Replaced_1');
         sql.add(',CSBH_FLEX.CSBH,CSBH_FLEX.SupplierCode,CSBH_FLEX.Supplier');
         sql.add(',ZSZL.ZSYWJC,ZSZL_DEV.Country');
         sql.add(',CSBH_FLEX.USERID,CSBH_FLEX.USERDATE,CSBH_FLEX.Replaced');
         sql.add('from CSBH_FLEX');
         sql.add('left JOIN ZSZL on ZSZL.ZSDH=CSBH_FLEX.CSBH');
         sql.add('left join (select zsdh,max(Country) as Country from ZSZL_DEV group by zsdh)ZSZL_DEV on ZSZL_DEV.zsdh=CSBH_FLEX.CSBH');
         sql.add('where 1=1');
         if CheckBox1.Checked then
           sql.add('and (CSBH_FLEX.Replaced =''0'' or CSBH_FLEX.Replaced is null)');
         if CheckBox2.Checked then
           sql.add('and CSBH_FLEX.Replaced =''1''');
         if CheckBox4.Checked then
           begin
           sql.add('and (CSBH_FLEX.SupplierCode in (SELECT CSBH_FLEX.SupplierCode FROM CSBH_FLEX where (CSBH_FLEX.Replaced=''0'' or CSBH_FLEX.Replaced is null)');
           sql.add('  GROUP BY CSBH_FLEX.SupplierCode HAVING COUNT(*) > 1)');
           sql.add('OR CSBH_FLEX.CSBH in (SELECT CSBH_FLEX.CSBH FROM CSBH_FLEX where (CSBH_FLEX.Replaced=''0'' or CSBH_FLEX.Replaced is null)');
           sql.add('  GROUP BY CSBH_FLEX.CSBH HAVING COUNT(*) > 1))');
           end;
         if FLEX_CODE.text<>'' then
           sql.add('and CSBH_FLEX.SupplierCode like ''%'+FLEX_CODE.text+'%''');
         if FLEX_NAME.text<>'' then
           sql.add('and CSBH_FLEX.Supplier like ''%'+FLEX_NAME.text+'%''');
         if ERP_CODE.text<>'' then
           sql.add('and CSBH_FLEX.CSBH like ''%'+ERP_CODE.text+'%''');
         if ERP_NAME.text<>'' then
           sql.add('and ZSZL.ZSYWJC like ''%'+ERP_NAME.text+'%''');   
         sql.add('order by CSBH_FLEX.CSBH');
         //showmessage(SQL.text);
         active:=true;
      end;           
   Query.requestlive:=true;
   Query.cachedupdates:=true;
   Query.edit;
end;

procedure TSupplierFLEXnERP.BC2Click(Sender: TObject);
var i:integer;
begin
      Query.first;
      for i:=1 to Query.RecordCount do
        begin
          Query.Edit;
          Query.fieldbyname('USERID').value:=main.Edit1.Text+'-M';
          Query.fieldbyname('USERDATE').value:=Date();
          if Query.fieldbyname('Replaced_1').Value=true then
                Query.fieldbyname('Replaced').Value:='1'
          else
                Query.fieldbyname('Replaced').Value:='0';

          case Query.updatestatus of
            usmodified:
               begin
                   UpdateSQL.apply(ukmodify);
               end;
          end;
          Query.next;
        end;
        BC1.Click;
end;

procedure TSupplierFLEXnERP.BB3Click(Sender: TObject);
begin
    UpdateSQL.apply(ukdelete);
end;

procedure TSupplierFLEXnERP.BitBtn1Click(Sender: TObject);
var  eclApp,WorkBook:olevariant;
     i,j:integer;
begin
 //if DetQry<>nil then DetQry.Active:=false;
 if  Query.active  then
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
        eclApp.Cells(1,1):='No';
        for   i:=0   to   Query.fieldcount-2   do
        begin
            eclApp.Cells(1,i+2):=Query.fields[i].FieldName;
        end;

        Query.First;

        j:=2;
        while   not   Query.Eof   do
        begin
          eclApp.Cells(j,1):=j-1;
          for   i:=0   to  Query.fieldcount-2  do
          begin
            eclApp.Cells(j,i+2):=Query.Fields[i].Value;
          end;
        Query.Next;
        inc(j);
        end;

       eclapp.columns.autofit;
       //eclApp.ActiveSheet.Columns[4].ColumnWidth := 50;
       eclApp.ActiveSheet.Rows[1].Interior.ColorIndex := 6;
       //eclApp.ActiveSheet.Range['A1:L30'].VerticalAlignment:=-4108;
       //eclApp.ActiveSheet.Range['A1:L30'].HorizontalAlignment:=-4108;
       showmessage('Succeed');
       eclApp.Visible:=True;

      except
        on   F:Exception   do
          showmessage(F.Message);
      end;
    end;
end;

procedure TSupplierFLEXnERP.BitBtn2Click(Sender: TObject);
var  i: Integer;
begin
      CheckBox4.Checked:=false;
      CheckBox2.Checked:=false;
      CheckBox1.Checked:=true;
      Query.first;
      for i:=1 to Query.RecordCount do    
        begin            
          with Qry_Tmp do     //更新資料傳入     zszl_flex
                begin
                  active:=false;
                  sql.Clear;
                  sql.add('select zszl_flex.*,ZSZL.ZSYWJC from zszl_flex');
                  sql.add('Left JOIN ZSZL on ZSZL.ZSDH=zszl_flex.zsdh');
                  sql.add('where zszl_flex.ZSDH='''+Query.fieldbyname('CSBH').AsString+'''');
                  //showmessage(SQL.text);
                  active:=true;
                  if Qry_Tmp.Eof then      //新增
                    begin
                      active:=false;
                      sql.Clear;
                      sql.add('INSERT INTO zszl_flex (zsdh, zsdhflex, USERID,USERDATE)');
                      sql.add('VALUES ('''+Query.fieldbyname('CSBH').AsString+'''');
                      sql.add(','''+Query.fieldbyname('SupplierCode').AsString+'''');
                      sql.add(','''+Main.Edit1.Text+'-BN385'+'''');
                      sql.add(',GETDATE())');
                  //showmessage(SQL.text);
                      execsql;
                    end
                  else
                    begin          //確認是否更新
                      if Qry_Tmp.fieldbyname('zsdhflex').AsString<>Query.fieldbyname('SupplierCode').AsString  then
                        begin
                          if Pos('BN385',Qry_Tmp.fieldbyname('USERID').AsString)>0 then //如果系統上傳自動更新
                            begin
                              active:=false;
                              sql.Clear;
                              sql.add('Update zszl_flex set');
                              sql.add('zsdhflex='''+Query.fieldbyname('SupplierCode').AsString+'''');
                              sql.add(',USERID='''+Main.Edit1.Text+'-BN385'+'''');
                              sql.add(',USERDATE=GETDATE()');
                              sql.add('Where zsdh='''+Query.fieldbyname('CSBH').AsString+'''');
                              execsql;
                            end
                          else
                            begin              //如果原始資料錯誤通知Dev修改?
                              showmessage('System has this zsdh already'+ sLineBreak +
                                  'ERP code:'+Qry_Tmp.fieldbyname('zsdh').AsString+ sLineBreak +
                                  'ERP Name:'+Qry_Tmp.fieldbyname('ZSYWJC').AsString+ sLineBreak +
                                  'Flex code:'+Qry_Tmp.fieldbyname('zsdhflex').AsString+ sLineBreak +
                                  'USERID:'+Qry_Tmp.fieldbyname('USERID').AsString+ sLineBreak +
                                  'USERDATE:'+Qry_Tmp.fieldbyname('USERDATE').AsString+ sLineBreak +
                                  'if Below update is correct, pls check with Dev N29 to update'+ sLineBreak +
                                  'ERP code:'+Query.fieldbyname('CSBH').AsString+ sLineBreak +
                                  'ERP Name:'+Query.fieldbyname('ZSYWJC').AsString+ sLineBreak +
                                  'Flex code:'+Query.fieldbyname('SupplierCode').AsString+ sLineBreak +
                                  'FLEX Name:'+Query.fieldbyname('Supplier').AsString+ sLineBreak
                                  );
                            end;
                        end;
                    end;
                end;   
          Query.next;
        end;         

      Query.first;
end;

procedure TSupplierFLEXnERP.DBGridEh3TitleClick(Column: TColumnEh);
var
 temp: string;
 las:integer;
begin
if (not query.Active) then
  begin
    abort;
  end;
 temp := Column.FieldName;
 if temp='CSBH' then
   begin
     query.Close;
     las:=pos('order by',query.SQL.Text);
     query.SQL.text:=copy(query.SQL.text,1,las-1)+'order by  CSBH_FLEX.CSBH';
     query.Active:=true;
   end
 else if temp='SupplierCode' then
   begin
     query.Close;
     las:=pos('order by',query.SQL.Text);
     query.SQL.text:=copy(query.SQL.text,1,las-1)+'order by  CSBH_FLEX.SupplierCode';
     query.Active:=true;
   end;

end;

end.


