unit SupplierForPayableList1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, ComCtrls, Buttons, ExtCtrls, GridsEh, DBGridEh,
  DBTables, DB;

type
  TSupplierForPayableList = class(TForm)
    panel2: TPanel;
    BitBtnBB2: TBitBtn;
    BitBtnBB3: TBitBtn;
    BitBtnBB4: TBitBtn;
    BitBtnBB5: TBitBtn;
    BitBtnBB6: TBitBtn;
    BitBtnBB7: TBitBtn;
    BitBtnBB1: TBitBtn;
    panel3: TPanel;
    lbl2: TLabel;
    lbl3: TLabel;
    edt1: TEdit;
    btn1: TButton;
    edt2: TEdit;
    chkCB1: TCheckBox;
    DBGrid3: TDBGridEh;
    ds1: TDataSource;
    qryZSZL_EstimatedExpenditure: TQuery;
    UpZSZL_EstimatedExpenditure: TUpdateSQL;
    strngfldZSZL_EstimatedExpenditurezsdh: TStringField;
    strngfldZSZL_EstimatedExpenditureMatCN: TStringField;
    strngfldZSZL_EstimatedExpenditureMatVN: TStringField;
    strngfldZSZL_EstimatedExpenditureUserId: TStringField;
    dtmfldZSZL_EstimatedExpenditureUserDate: TDateTimeField;
    strngfldZSZL_EstimatedExpenditureYN: TStringField;
    strngfldZSZL_EstimatedExpenditurezsqm: TStringField;
    strngfldZSZL_EstimatedExpenditurezsjc: TStringField;
    strngfldZSZL_EstimatedExpenditurezsywjc: TStringField;
    qry1: TQuery;
    qryZSZL_EstimatedExpenditureIS_EXISTED: TIntegerField;
    strngfldZSZL_EstimatedExpenditureMemo_PaymentTerm: TStringField;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormDestroy(Sender: TObject);
    procedure BitBtnBB1Click(Sender: TObject);
    procedure BitBtnBB2Click(Sender: TObject);
    procedure BitBtnBB3Click(Sender: TObject);
    procedure BitBtnBB4Click(Sender: TObject);
    procedure BitBtnBB5Click(Sender: TObject);
    procedure BitBtnBB6Click(Sender: TObject);
    procedure BitBtnBB7Click(Sender: TObject);
    procedure btn1Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure DBGrid3GetCellParams(Sender: TObject; Column: TColumnEh;
      AFont: TFont; var Background: TColor; State: TGridDrawState);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  SupplierForPayableList: TSupplierForPayableList;
  Ndate:Tdate;

implementation

uses main1;

{$R *.dfm}

procedure TSupplierForPayableList.FormCreate(Sender: TObject);
begin
  with qry1 do
  begin
    active:=false;
    sql.Clear;
    sql.add('select getdate() as NDate ');
    active:=true;
    NDate:=fieldbyname('NDate').Value;
  end;
end;


procedure TSupplierForPayableList.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  action:=cafree;
end;

procedure TSupplierForPayableList.FormDestroy(Sender: TObject);
begin
  SupplierForPayableList:=nil;
end;

procedure TSupplierForPayableList.BitBtnBB1Click(Sender: TObject);
begin
  panel3.Visible:=true;
end;

procedure TSupplierForPayableList.BitBtnBB2Click(Sender: TObject);
begin
  {with qryZSZL_EstimatedExpenditure do
  begin
    requestlive:=true;
    cachedupdates:=true;
    insert;
  end;
  //BBTT1.Visible:=true;
  {BBTT3.Visible:=true;
  BB5.Enabled:=true;
  BB6.Enabled:=true;
  //dbgrid3.columns[6].ButtonStyle:=cbsEllipsis;
  dbgrid3.columns[1].ButtonStyle:=cbsEllipsis;   }
end;

procedure TSupplierForPayableList.BitBtnBB3Click(Sender: TObject);
begin
  {if not qryZSZL_EstimatedExpenditure.Active then
  begin
    abort;
  end;
  if qryZSZL_EstimatedExpenditure.FieldByName('USERID').value=main.Edit1.Text then
  begin
    if qryZSZL_EstimatedExpenditure.recordcount=0 then
    begin
      with qryZSZL_EstimatedExpenditure do
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
  end;   }
  //BBTT1.Visible:=true;
  //BBTT3.Visible:=true;
  //BB5.Enabled:=true;
  //BB6.Enabled:=true;
  //dbgrid3.columns[6].ButtonStyle:=cbsEllipsis;
  //dbgrid3.columns[1].ButtonStyle:=cbsEllipsis;
end;

procedure TSupplierForPayableList.BitBtnBB4Click(Sender: TObject);
begin
  with qryZSZL_EstimatedExpenditure do
  begin
    requestlive:=true;
    cachedupdates:=true;
    edit;
  end;
  BitBtnBB5.Enabled:=true;
  BitBtnBB6.Enabled:=true;
end;

procedure TSupplierForPayableList.BitBtnBB5Click(Sender: TObject);
begin
  try
    if qryZSZL_EstimatedExpenditure.State in [dsEdit, dsInsert] then
      qryZSZL_EstimatedExpenditure.Post;

    qryZSZL_EstimatedExpenditure.First;
    while not qryZSZL_EstimatedExpenditure.Eof do
    begin
      if qryZSZL_EstimatedExpenditure.UpdateStatus in [usInserted, usModified] then
      begin
        qryZSZL_EstimatedExpenditure.Edit;
        qryZSZL_EstimatedExpenditure.FieldByName('USERID').AsString    := main.Edit1.Text;
        qryZSZL_EstimatedExpenditure.FieldByName('USERDATE').AsDateTime := NDate;

        // ? Xét c?t ?o thay vì query ra DB
        if qryZSZL_EstimatedExpenditure.FieldByName('IS_EXISTED').AsInteger = 0 then
        begin
          qryZSZL_EstimatedExpenditure.FieldByName('YN').AsString := '1';
          qryZSZL_EstimatedExpenditure.Post;
          UpZSZL_EstimatedExpenditure.Apply(ukInsert);
        end
        else
        begin
          qryZSZL_EstimatedExpenditure.Post;
          UpZSZL_EstimatedExpenditure.Apply(ukModify);
        end;
      end;
      qryZSZL_EstimatedExpenditure.Next;
    end;

    qryZSZL_EstimatedExpenditure.Active := False;
    qryZSZL_EstimatedExpenditure.Active := True;
    BitBtnBB5.Enabled := False;
    BitBtnBB6.Enabled := False;

  except
    on E: Exception do
      MessageDlg('Have wrong, can not save data!' + #13#10 + E.Message,
                 mtWarning, [mbYes], 0);
  end;
end;

procedure TSupplierForPayableList.BitBtnBB6Click(Sender: TObject);
begin
  with qryZSZL_EstimatedExpenditure do
  begin
    active:=false;
    requestlive:=false;
    cachedupdates:=false;
    active:=true;
  end;
  BitBtnBB5.Enabled := False;
  BitBtnBB6.Enabled := False;
end;

procedure TSupplierForPayableList.BitBtnBB7Click(Sender: TObject);
begin
    close;
end;

procedure TSupplierForPayableList.btn1Click(Sender: TObject);
begin
  with qryZSZL_EstimatedExpenditure do
  begin
    active:=false;
    sql.Clear;
    sql.add('SELECT zszl.zsdh,zszl.zsqm,zszl.zsjc,zszl.zsywjc,');
    sql.add('zszl_EstimatedExpenditure.MatCN,zszl_EstimatedExpenditure.MatVN,zszl_EstimatedExpenditure.Memo_PaymentTerm,zszl_EstimatedExpenditure.USERID,zszl_EstimatedExpenditure.USERDATE,zszl_EstimatedExpenditure.YN,');
    sql.add('CASE WHEN zszl_EstimatedExpenditure.zsdh IS NULL THEN 0 ELSE 1 END AS IS_EXISTED');
    sql.add('FROM zszl ');
    sql.add('LEFT JOIN zszl_EstimatedExpenditure ON zszl.zsdh = zszl_EstimatedExpenditure.zsdh');
    sql.add('where 1=1 ');
    sql.add(' and ZSZL.ZSDH like '+''''+edt1.Text+'%'+'''');
    sql.add(' and ZSZL.ZSYWJC like '+''''+'%'+edt2.text+'%'+'''');
    if chkCB1.Checked then
    begin
      sql.add('and zszl_EstimatedExpenditure.USERID='+''''+main.Edit1.Text+'''');
    end;
    sql.add('order by zszl.zsdh DESC');
    //memo1.text:=sql.text;
    active:=true;
  end;
  BitBtnBB4.Enabled:=true;
end;


procedure TSupplierForPayableList.DBGrid3GetCellParams(Sender: TObject;
  Column: TColumnEh; AFont: TFont; var Background: TColor;
  State: TGridDrawState);
begin
  if qryZSZL_EstimatedExpenditure.FieldByName('IS_EXISTED').value='0' then
  begin
    DBGrid3 .canvas.font.color:=clred;
  end;
end;

end.
