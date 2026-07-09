unit PyamentUngHD1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DB, DBTables, GridsEh, DBGridEh, StdCtrls, ExtCtrls, Buttons;

type
  TPaymentUngHD = class(TForm)
    Panel25: TPanel;
    Label66: TLabel;
    Label67: TLabel;
    btn_QryPMTK: TButton;
    edt_Supplier: TEdit;
    edt_FKBH: TEdit;
    DB_PMTK: TDBGridEh;
    qry_PMTK: TQuery;
    DS_PMTK: TDataSource;
    qry_PMTKFKBH: TStringField;
    qry_PMTKVATNO: TStringField;
    qry_PMTKZSBH_MST: TStringField;
    qry_PMTKUSERID: TStringField;
    qry_PMTKUSERDATE: TDateTimeField;
    qry_PMTKYN: TStringField;
    qry_PMTKSTT: TStringField;
    qry_PMTKKYHIEU_HOADON: TStringField;
    qry_PMTKVATDATE: TDateTimeField;
    qry_PMTKTONGTIEN_CHUATHUE: TCurrencyField;
    qry_PMTKTONGTIEN_THUE: TCurrencyField;
    qry_PMTKTONGTIEN_THANHTOAN: TCurrencyField;
    Panel1: TPanel;
    Panel9: TPanel;
    Label5: TLabel;
    BtnTTUNGHD_C: TBitBtn;
    BtnTTUNGHD_S: TBitBtn;
    BtnTTUNGHD_D: TBitBtn;
    BtnTTUNGHD_I: TBitBtn;
    DBGridEh11: TDBGridEh;
    qry_TTUHD: TQuery;
    StringField1: TStringField;
    StringField3: TStringField;
    DateTimeField1: TDateTimeField;
    StringField4: TStringField;
    qry_TTUHDSTT: TStringField;
    qry_TTUHDZSBH_MST: TStringField;
    qry_TTUHDVATNO: TStringField;
    qry_TTUHDVATDATE: TDateTimeField;
    qry_TTUHDKYHIEU_HOADON: TStringField;
    qry_TTUHDTONGTIEN_CHUATHUE: TCurrencyField;
    qry_TTUHDTONGTIEN_THUE: TCurrencyField;
    qry_TTUHDTONGTIEN_THANHTOAN: TCurrencyField;
    DS_TTUHD: TDataSource;
    Up_TTUHD: TUpdateSQL;
    qry_TTUHDTONGTIEN_THANHTOAN_CONLAI: TCurrencyField;
    qry_temp: TQuery;
    BDelRec: TQuery;
    qry_PMTKTONGTIEN_THANHTOAN_CONLAI: TCurrencyField;
    qry_TTUHDFKBH_S: TStringField;
    Label1: TLabel;
    Label2: TLabel;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormDestroy(Sender: TObject);
    procedure btn_QryPMTKClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure DB_PMTKDblClick(Sender: TObject);
    procedure BtnTTUNGHD_IClick(Sender: TObject);
    procedure BtnTTUNGHD_DClick(Sender: TObject);
    procedure BtnTTUNGHD_CClick(Sender: TObject);
    procedure BtnTTUNGHD_SClick(Sender: TObject);
    procedure qry_PMTKAfterScroll(DataSet: TDataSet);
    procedure DBGridEh11GetCellParams(Sender: TObject; Column: TColumnEh;
      AFont: TFont; var Background: TColor; State: TGridDrawState);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  PaymentUngHD: TPaymentUngHD;

implementation

uses PaymentVATNO1,main1, fununit;

{$R *.dfm}

procedure TPaymentUngHD.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  action:=cafree;
end;

procedure TPaymentUngHD.FormDestroy(Sender: TObject);
begin
  PaymentUngHD:=nil;
end;

procedure TPaymentUngHD.btn_QryPMTKClick(Sender: TObject);
begin
  with qry_PMTK do
  begin
    active:=false;
    sql.Clear;                                                      
    sql.Add(' WITH RankedData AS ( SELECT FKBH, VATNO, ZSBH_MST, KYHIEU_HOADON, TONGTIEN_THANHTOAN_CONLAI, STT, ');
    sql.Add('                             ROW_NUMBER() OVER (PARTITION BY FKBH, VATNO, ZSBH_MST, KYHIEU_HOADON  ');
    sql.Add('                             ORDER BY CAST(STT AS INT) DESC) AS rn FROM CGZL_PaymentSS_Advance) ');
    sql.Add(' SELECT a.*, isnull(b.TONGTIEN_THANHTOAN_CONLAI,a.TONGTIEN_THANHTOAN) TONGTIEN_THANHTOAN_CONLAI ');
    SQL.Add(' FROM CGZL_PAYMENTSS a ');
    sql.Add(' LEFT JOIN CGZL_PAYMENT ON CGZL_PAYMENT.FKBH=a.FKBH ');           
    sql.Add(' LEFT JOIN (SELECT FKBH, VATNO, ZSBH_MST, KYHIEU_HOADON, TONGTIEN_THANHTOAN_CONLAI, STT FROM RankedData WHERE rn = 1) AS	b ');
    sql.Add(' ON b.FKBH=a.FKBH and b.VATNO=a.VATNO and b.ZSBH_MST=a.ZSBH_MST and b.KYHIEU_HOADON=a.KYHIEU_HOADON ');
    SQL.Add(' WHERE CGZL_PAYMENT.HD_LOAI=''4'' AND CGZL_PAYMENT.ZSBH='''+edt_Supplier.Text+''' AND CGZL_PAYMENT.YN=''5''  ');
    SQL.Add(' AND CGZL_PAYMENT.IS_NOTICE=''1'' AND (ISNULL(CGZL_PAYMENT.FKBH_S,'''')<>''Y'' ');
    SQL.Add(' OR (CGZL_PAYMENT.FKBH_S=''Y'' AND b.TONGTIEN_THANHTOAN_CONLAI>0)) ');
    if edt_FKBH.Text<>'' then
    begin
      SQL.Add(' AND a.FKBH = '''+edt_FKBH.Text+''' ');
    end;
    //funcobj.WriteErrorLog(sql.Text);
    active:=true;
  end;
  qry_TTUHD.active:=true;
  if qry_TTUHD.RecordCount>0 then
  begin
    BtnTTUNGHD_D.Enabled:=true;
  end;
  if (qry_PMTK.RecordCount>0) and (qry_PMTK.FieldByName('TONGTIEN_THANHTOAN_CONLAI').Value>0) then
  begin
    Label2.Caption:=qry_PMTK.FieldByName('TONGTIEN_THANHTOAN_CONLAI').AsString;
    BtnTTUNGHD_I.Enabled:=true;
  end;
end;

procedure TPaymentUngHD.FormCreate(Sender: TObject);
begin
  edt_Supplier.Text:=PaymentVATNO.qry_CGPayment.fieldbyname('ZSBH').AsString;
  btn_QryPMTK.Click;
  TCurrencyField(qry_TTUHD.FieldByName('TONGTIEN_CHUATHUE')).DisplayFormat:=PaymentVATNO.VNPrice_DiplayFormat;
  TCurrencyField(qry_TTUHD.FieldByName('TONGTIEN_THUE')).DisplayFormat:=PaymentVATNO.VNPrice_DiplayFormat;
  TCurrencyField(qry_TTUHD.FieldByName('TONGTIEN_THANHTOAN')).DisplayFormat:=PaymentVATNO.VNPrice_DiplayFormat; 
  TCurrencyField(qry_TTUHD.FieldByName('TONGTIEN_THANHTOAN_CONLAI')).DisplayFormat:=PaymentVATNO.VNPrice_DiplayFormat;
end;

procedure TPaymentUngHD.DB_PMTKDblClick(Sender: TObject);
begin
  if qry_PMTK.FieldByName('FKBH').IsNull then
  begin
    qry_PMTK.Active:=false;
    close;
    abort;
  end;
  with PaymentVATNO.qry_TTHD do
  begin
    edit;
    fieldbyname('FKBH_TTT').value:=qry_PMTK.fieldbyname('FKBH').value;
    fieldbyname('TONGTIEN_CHUATHUE').value:=qry_PMTK.fieldbyname('TONGTIEN_CHUATHUE').value;
    fieldbyname('TONGTIEN_THUE').value:=qry_PMTK.fieldbyname('TONGTIEN_THUE').value;
    fieldbyname('TONGTIEN_THANHTOAN').value:=qry_PMTK.fieldbyname('TONGTIEN_THANHTOAN').value;
    insert;
  end;
end;

procedure TPaymentUngHD.BtnTTUNGHD_IClick(Sender: TObject);
begin
  with qry_TTUHD do
  begin
    CachedUpdates := true;
    RequestLive := true;
    Insert;
    fieldbyname('FKBH').Value:=qry_PMTK.fieldbyname('FKBH').Value;
    fieldbyname('VATNO').Value:=qry_PMTK.fieldbyname('VATNO').Value;
    fieldbyname('ZSBH_MST').Value:=qry_PMTK.fieldbyname('ZSBH_MST').Value;
    fieldbyname('KYHIEU_HOADON').Value:=qry_PMTK.fieldbyname('KYHIEU_HOADON').Value;
    fieldbyname('VATDATE').Value:=qry_PMTK.fieldbyname('VATDATE').Value;
  end;
  BtnTTUNGHD_S.Enabled:=true;
  BtnTTUNGHD_C.Enabled:=true;
end;

procedure TPaymentUngHD.BtnTTUNGHD_DClick(Sender: TObject);
var a:string;
begin       
  with Qry_Temp do
  begin
    active:=false;
    sql.Clear;
    sql.Add('SELECT TOP 1 STT FROM CGZL_PaymentSS_Advance where FKBH='''+qry_TTUHD.fieldbyname('FKBH').Value+''' ORDER BY STT DESC');
    active:=true;
    a:=fieldbyname('STT').AsString;
  end;
  with qry_TTUHD do
  begin
    if fieldbyname('STT').AsString <> a then
    begin
      ShowMessage('Delete only STT max !');
      abort;
    end;
    CachedUpdates := true;
    RequestLive := true;
    Edit;
    fieldbyname('YN').Value:='0';
  end;
  BtnTTUNGHD_S.Enabled:=true;
  BtnTTUNGHD_C.Enabled:=true;
end;

procedure TPaymentUngHD.BtnTTUNGHD_CClick(Sender: TObject);
begin
  with qry_TTUHD do
  begin
    active:=false;
    cachedupdates:=false;
    requestlive:=false;
    active:=true;
  end;
  TCurrencyField(qry_TTUHD.FieldByName('TONGTIEN_CHUATHUE')).DisplayFormat:=PaymentVATNO.VNPrice_DiplayFormat;
  TCurrencyField(qry_TTUHD.FieldByName('TONGTIEN_THUE')).DisplayFormat:=PaymentVATNO.VNPrice_DiplayFormat;
  TCurrencyField(qry_TTUHD.FieldByName('TONGTIEN_THANHTOAN')).DisplayFormat:=PaymentVATNO.VNPrice_DiplayFormat;      
  TCurrencyField(qry_TTUHD.FieldByName('TONGTIEN_THANHTOAN_CONLAI')).DisplayFormat:=PaymentVATNO.VNPrice_DiplayFormat;

  BtnTTUNGHD_S.Enabled:=false;
  BtnTTUNGHD_C.Enabled:=false;
end;

procedure TPaymentUngHD.BtnTTUNGHD_SClick(Sender: TObject);
var y, m, a, User: string;
      i: integer;
      t: Currency;
begin
  try
    qry_TTUHD.first;
    for i := 1 to qry_TTUHD.RecordCount do
    begin
      case qry_TTUHD.updatestatus of
        usinserted:
          begin
            if (qry_TTUHD.FieldByName('TONGTIEN_CHUATHUE').IsNull) then
            begin
              ShowMessage('TONGTIEN_CHUATHUE can not empty');
              abort;
            end;
            if (qry_TTUHD.FieldByName('TONGTIEN_THUE').IsNull)  then
            begin
              ShowMessage('TONGTIEN_THUE can not empty');
              abort;
            end;
            if qry_TTUHD.fieldbyname('FKBH').isnull then
            begin
              qry_TTUHD.delete;
            end else
            begin
              with Qry_Temp do
              begin
                active:=false;
                sql.Clear;
                sql.Add('SELECT TOP 1 STT,TONGTIEN_THANHTOAN_CONLAI FROM CGZL_PaymentSS_Advance ');
                sql.Add('where FKBH='''+qry_TTUHD.fieldbyname('FKBH').Value+''' AND VATNO='''+qry_TTUHD.fieldbyname('VATNO').Value+''' ');
                sql.Add('      AND ZSBH_MST='''+qry_TTUHD.fieldbyname('ZSBH_MST').Value+''' AND KYHIEU_HOADON='''+qry_TTUHD.fieldbyname('KYHIEU_HOADON').Value+''' ');
                sql.Add('ORDER BY STT DESC');
                active:=true;
                if recordcount >0 then
                begin
                  last;
                  a:=fieldbyname('STT').AsString;
                  t:=fieldbyname('TONGTIEN_THANHTOAN_CONLAI').Value;
                  a:=inttostr(strtoint(a)+1);
                  while length(a)<3 do
                  begin
                    a:='0'+a;
                  end;
                end else
                begin
                  a:='001';
                  t:=qry_PMTK.FieldByName('TONGTIEN_THANHTOAN').Value;
                end;
                active:=false;
              end;
              qry_TTUHD.edit;  
              qry_TTUHD.fieldbyname('STT').Value:=a;
              qry_TTUHD.FieldByName('userID').Value := main.edit1.text;
              qry_TTUHD.FieldByName('TONGTIEN_THANHTOAN').Value := qry_TTUHD.FieldByName('TONGTIEN_CHUATHUE').Value+qry_TTUHD.FieldByName('TONGTIEN_THUE').Value;
              qry_TTUHD.FieldByName('TONGTIEN_THANHTOAN_CONLAI').Value := t-qry_TTUHD.FieldByName('TONGTIEN_THANHTOAN').Value;
              if qry_TTUHD.FieldByName('TONGTIEN_THANHTOAN_CONLAI').Value<0 then
              begin
                ShowMessage('TONGTIEN_THANHTOAN_CONLAI must be greater than 0');
                abort;
              end;
              Up_TTUHD.apply(ukinsert);
            end;
          end;
        usmodified:
          begin
            if qry_TTUHD.FieldByName('USERID').value<>main.Edit1.Text then
            begin
              showmessage('不是你的，不要亂動。khong phai ban khong duoc tu sua');
            end else
            begin
              if qry_TTUHD.fieldbyname('YN').value = '0' then
              begin
                
                with BDelRec do
                begin
                  active:=false;
                  sql.Clear;
                  sql.add('insert into BDelRec ');
                  sql.add('(TableName ,TNO,CLBH,OldID,DelID,DelDate)');
                  sql.add('values (''PaymentSS_Advance'','''+qry_TTUHD.fieldbyname('FKBH').Value+''',');
                  sql.add('''TTUNGTRATRUOC'',');
                  sql.add(''''+qry_TTUHD.fieldbyname('USERID').Value+''','''+main.Edit1.Text+''',getdate())');
                  execsql;
                  active:=false;
                end;
                Up_TTUHD.apply(ukdelete);
              end;
            end;
          end;
      end;
      qry_TTUHD.next;
    end;
    qry_TTUHD.active := false;
    qry_TTUHD.cachedupdates := false;
    qry_TTUHD.requestlive := false;
    qry_TTUHD.active := true;
    if qry_TTUHD.RecordCount>0 then
    begin
      BtnTTUNGHD_D.Enabled := true;
    end else
    begin
      BtnTTUNGHD_D.Enabled := false;
    end;
    if (qry_TTUHD.RecordCount>0) then
    begin
      qry_TTUHD.Last;
      Label2.Caption:=qry_TTUHD.FieldByName('TONGTIEN_THANHTOAN_CONLAI').AsString;
    end else
    begin
      Label2.Caption:='';
    end;
    TCurrencyField(qry_TTUHD.FieldByName('TONGTIEN_CHUATHUE')).DisplayFormat:=PaymentVATNO.VNPrice_DiplayFormat;
    TCurrencyField(qry_TTUHD.FieldByName('TONGTIEN_THUE')).DisplayFormat:=PaymentVATNO.VNPrice_DiplayFormat;
    TCurrencyField(qry_TTUHD.FieldByName('TONGTIEN_THANHTOAN')).DisplayFormat:=PaymentVATNO.VNPrice_DiplayFormat;
    TCurrencyField(qry_TTUHD.FieldByName('TONGTIEN_THANHTOAN_CONLAI')).DisplayFormat:=PaymentVATNO.VNPrice_DiplayFormat;
    BtnTTUNGHD_S.Enabled:=false;
    BtnTTUNGHD_C.Enabled:=false;
  except
    Messagedlg('Have wrong, can not save data!', mtwarning, [mbyes], 0);
  end;
end;

procedure TPaymentUngHD.qry_PMTKAfterScroll(DataSet: TDataSet);
begin
  qry_TTUHD.active := false;
  qry_TTUHD.cachedupdates := false;
  qry_TTUHD.requestlive := false;
  qry_TTUHD.active := true;
  if qry_TTUHD.RecordCount>0 then
  begin
    BtnTTUNGHD_D.Enabled := true;
  end else
  begin
    BtnTTUNGHD_D.Enabled := false;
  end;
  if (qry_PMTK.RecordCount>0) and (qry_PMTK.FieldByName('TONGTIEN_THANHTOAN_CONLAI').Value>0) then
  begin                       
    Label2.Caption:=qry_PMTK.FieldByName('TONGTIEN_THANHTOAN_CONLAI').AsString;
    BtnTTUNGHD_I.Enabled:=true;
  end else
  begin                  
    Label2.Caption:='';
    BtnTTUNGHD_I.Enabled := false;
  end;
end;

procedure TPaymentUngHD.DBGridEh11GetCellParams(Sender: TObject;
  Column: TColumnEh; AFont: TFont; var Background: TColor;
  State: TGridDrawState);
begin
  if qry_TTUHD.FieldByName('YN').value='0' then
    DBGridEh11.canvas.font.color:=clred;
end;

end.
