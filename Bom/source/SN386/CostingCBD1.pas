unit CostingCBD1;

interface

uses   
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Buttons, DBCtrls, ExtCtrls, GridsEh, DBGridEh,
  ComCtrls, DBTables, DB,Comobj, math,
  DBClient, DateUtils;
  //Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  //Dialogs, DB, DBTables, StdCtrls, Buttons, ExtCtrls, GridsEh, DBGridEh,
  //ComCtrls, DBTables, Comobj, math;

type
  TCostingCBD = class(TForm)
    Label2: TLabel;
    Label12: TLabel;
    UploadlQuery: TQuery;
    UploadlQueryRound: TStringField;
    UploadlQuerySKU: TStringField;
    UploadlQueryCostingSeason: TStringField;
    UploadlQuerySR: TStringField;
    UploadlQueryFactoryPriceSubmitStatus: TStringField;
    UploadlQueryFactoryPriceStatus: TStringField;
    UploadlQueryFTYBOMCostDataStatus: TStringField;
    UploadlQueryFTYBOMStatus: TStringField;
    UploadlQueryTargetSamplePrice: TStringField;
    UploadlQueryFOB: TStringField;
    UploadlQueryTotalMaterialCost: TStringField;
    UploadlQueryLabor: TStringField;
    UploadlQueryOverhead: TStringField;
    UploadlQueryC2BL: TStringField;
    UploadlQueryC2BO: TStringField;
    UploadlQuerySecondLabor: TStringField;
    UploadlQuerySecondOverhead: TStringField;
    UploadlQueryProfit: TStringField;
    UploadlQueryProfitRate: TFloatField;
    UploadlQueryMoldCharge: TCurrencyField;
    UploadlQueryOtherAdjustment: TCurrencyField;
    UploadlQueryFlexSeason: TStringField;
    UploadlQueryDevelopmentSeason: TStringField;
    UploadlQueryDevelopmentCenter: TStringField;
    UploadlQueryFactory: TStringField;
    UploadlQuerySampleSize: TFloatField;
    UploadlQueryCostingSize: TFloatField;
    UploadlQuerySizeRange: TStringField;
    UploadlQueryGenderClass: TStringField;
    UploadlQueryCut: TStringField;
    UploadlQueryTechLevel: TStringField;
    UploadlQueryLast: TStringField;
    UploadlQuerySegment2: TStringField;
    UploadlQueryProductionType: TStringField;
    UploadlQueryDistributionType: TStringField;
    UploadlQueryCategory: TStringField;
    UploadlQueryPlanningLevel2: TStringField;
    UploadlQueryDirectToDC: TStringField;
    UploadlQueryUpperMaterial2: TStringField;
    UploadlQueryFactoryDeveloper: TStringField;
    UploadlQueryFactoryDevManager: TStringField;
    UploadlQueryFactoryCosting: TStringField;
    UploadlQueryFactoryCostingManager: TStringField;
    UploadlQueryCLOCosting: TStringField;
    UploadlQueryCLOCostingManager: TStringField;
    UploadlQueryLastUpdatedColorwayStatus: TDateTimeField;
    UploadlQueryLastUpdatedSourceFlag: TDateTimeField;
    UploadlQueryLastUpdatedCLOConfirmationDate: TDateTimeField;
    UploadlQueryLastUpdatedByFTYBOMCost: TStringField;
    UploadlQueryLastUpdatedFactoryConfirmation: TDateTimeField;
    UploadlQueryLastUpdatedDevelopment: TDateTimeField;
    UploadlQueryLastUpdatedDateFTYBOMCost: TDateTimeField;
    UploadlQueryLastUpdatedFactoryPriceSubmit: TDateTimeField;
    UploadlQueryLastUpdatedFactoryPriceStatus: TDateTimeField;
    UploadlQueryInitialBuyMonth: TStringField;
    UploadlQueryForecastLevel: TStringField;
    UploadlQueryRemark2: TMemoField;
    UploadlQueryMaterial: TStringField;
    UploadlQueryRefModel: TStringField;
    UploadlQueryProductDescription2: TStringField;
    UploadlQueryModelDescription2: TStringField;
    UploadlQueryColorwayLongName: TStringField;
    UploadlQuerySourceFlag: TStringField;
    UploadlQueryUserUpdateTime: TDateTimeField;
    UploadlQueryUserName: TStringField;
    UploadlQueryEffectBuy: TStringField;
    UploadlQueryCFM_C2B_PPH: TStringField;
    UploadlQueryCFM_R2B_PPH: TStringField;
    UploadlQueryC2B_PPH: TStringField;
    UploadlQueryR2B_PPH: TStringField;
    UploadlQueryTTFreight: TCurrencyField;
    UploadlQueryCBDcompleteDate: TDateTimeField;
    DataSource1: TDataSource;
    opendialog: TOpenDialog;
    ExistCheck: TQuery;
    DataSource2: TDataSource;
    UpdateSQL1: TUpdateSQL;
    QueryMTL: TQuery;
    QueryMTLComponent: TStringField;
    QueryMTLMaterialSeason: TStringField;
    QueryMTLPriceStatus: TStringField;
    QueryMTLFlexMaterialCode: TStringField;
    QueryMTLMaterialComments: TStringField;
    QueryMTLMaterialComments2: TStringField;
    QueryMTLSupplier: TStringField;
    QueryMTLSupplierCode: TStringField;
    QueryMTLDeliveryTerm: TStringField;
    QueryMTLT1Freight: TFloatField;
    QueryMTLTnRP: TStringField;
    QueryMTLTooling: TStringField;
    QueryMTLMeasure: TStringField;
    QueryMTLMeasureOVR: TStringField;
    QueryMTLColor: TStringField;
    QueryMTLColorComments: TStringField;
    QueryMTLColorGroup: TStringField;
    QueryMTLPriceOVR: TStringField;
    QueryMTLMaterialCost: TStringField;
    QueryMTLBaseMaterialPrice: TStringField;
    QueryMTLSupplierFreightValue: TFloatField;
    QueryMTLTRPnGRPUpcharge: TFloatField;
    QueryMTLRound: TStringField;
    QueryMTLSKU: TStringField;
    QueryMTLCostingSeason: TStringField;
    QueryMTLRemark: TStringField;
    QueryMTLUserName: TStringField;
    QueryMTLUserUpdateTime: TDateTimeField;
    QueryMTLMTL_No: TIntegerField;
    QueryMTLColor_No: TIntegerField;
    QueryMTLProcess_No: TIntegerField;
    QueryMTLMaterial_text: TMemoField;
    QueryMTLFlag: TBooleanField;
    QueryMTLLandedCost: TStringField;
    QueryMTLGrossUsage: TStringField;
    QueryMTLModelDescription: TStringField;
    QueryMTLGenderClass: TStringField;
    QueryMTLProductionType: TStringField;
    DataSource3: TDataSource;
    UpdateSQL3: TUpdateSQL;
    UpdateSQL2: TUpdateSQL;
    UploadDetailQuery: TQuery;
    UploadDetailQueryNo: TIntegerField;
    UploadDetailQueryComponent: TStringField;
    UploadDetailQueryPercentage: TStringField;
    UploadDetailQueryMaterial: TStringField;
    UploadDetailQueryFlexMaterialCode: TStringField;
    UploadDetailQueryMaterialComments: TStringField;
    UploadDetailQuerySupplier: TStringField;
    UploadDetailQuerySupplierCode: TStringField;
    UploadDetailQueryTooling: TStringField;
    UploadDetailQueryTnRP: TStringField;
    UploadDetailQueryColor: TStringField;
    UploadDetailQueryColorComments: TStringField;
    UploadDetailQueryMeasure: TStringField;
    UploadDetailQueryTRPnGRPUpcharge: TFloatField;
    UploadDetailQueryPriceStatus: TStringField;
    UploadDetailQueryPartName: TStringField;
    UploadDetailQuerySupplierFreightValue: TFloatField;
    UploadDetailQueryDeliveryTerm2: TStringField;
    UploadDetailQueryMaterialCost: TStringField;
    UploadDetailQueryMeasureOVR: TStringField;
    UploadDetailQueryPriceOVR: TStringField;
    UploadDetailQueryT1Freight: TFloatField;
    UploadDetailQueryLandedCost: TStringField;
    UploadDetailQueryNetUsage: TStringField;
    UploadDetailQueryCutLoss: TStringField;
    UploadDetailQuerySizeGrading: TStringField;
    UploadDetailQueryGrossUsage: TStringField;
    UploadDetailQueryUnitCost: TStringField;
    UploadDetailQuerySecondLabor2: TStringField;
    UploadDetailQuerySecondOverhead2: TStringField;
    UploadDetailQueryUserUpdateTime: TDateTimeField;
    UploadDetailQueryUserName: TStringField;
    UploadDetailQuerySecondLF: TStringField;
    UploadDetailQuerySecondOF: TStringField;
    UploadDetailQuerySecondLabor: TCurrencyField;
    UploadDetailQuerySecondOverhead: TCurrencyField;
    UploadDetailQueryRemark: TStringField;
    UploadDetailQueryRound: TStringField;
    UploadDetailQuerySKU: TStringField;
    UploadDetailQueryCostingSeason: TStringField;
    UploadDetailQueryFactory: TStringField;
    UploadDetailQueryMTL_No: TIntegerField;
    UploadDetailQueryColor_No: TIntegerField;
    UploadDetailQueryProcess_No: TIntegerField;
    UploadDetailQueryColorGroup: TStringField;
    UploadDetailQueryColorQty: TIntegerField;
    UploadDetailQueryColorQty_Neon: TIntegerField;
    UploadDetailQueryGUMColor: TIntegerField;
    UploadDetailQuerymoldsPperson: TIntegerField;
    UploadDetailQuerypairPmold: TIntegerField;
    UploadDetailQueryPCsPPair: TIntegerField;
    UploadDetailQueryTurnOverRate: TIntegerField;
    UploadDetailQueryMaterialSeason: TStringField;
    UploadDetailQueryMaterial_Text: TMemoField;
    DataSource4: TDataSource;
    UpdateSQL4: TUpdateSQL;
    TIMEQRY: TQuery;
    DataSource5: TDataSource;
    Query_PriceList: TQuery;
    Query_PriceListCostingSeason: TStringField;
    Query_PriceListFactory: TStringField;
    Query_PriceListRound: TStringField;
    Query_PriceListSKU: TStringField;
    Query_PriceListSR: TStringField;
    Query_PriceListUpperMaterial: TStringField;
    Query_PriceListTargetSamplePrice: TStringField;
    Query_PriceListFOB: TStringField;
    Query_PriceListTotalMaterialCost: TStringField;
    Query_PriceListCost_House: TFloatField;
    Query_PriceListCost_Others: TFloatField;
    Query_PriceListLabor: TStringField;
    Query_PriceListOverhead: TStringField;
    Query_PriceListC2BL: TStringField;
    Query_PriceListC2BO: TStringField;
    Query_PriceListSecondLabor: TStringField;
    Query_PriceListSecondOverhead: TStringField;
    Query_PriceListProfit: TStringField;
    Query_PriceListProfitRate: TFloatField;
    Query_PriceListMoldCharge: TCurrencyField;
    Query_PriceListGenderClass: TStringField;
    Query_PriceListcut: TStringField;
    Query_PriceListTechLevel: TStringField;
    Query_PriceListlast: TStringField;
    Query_PriceListDAOMH: TStringField;
    Query_PriceListSegment: TStringField;
    Query_PriceListProductionType: TStringField;
    Query_PriceListCategory: TStringField;
    Query_PriceListPlanningLevel2: TStringField;
    Query_PriceListProductDescription: TStringField;
    Query_PriceListModelDescription: TStringField;
    Query_PriceListColorwayLongName: TStringField;
    Query_PriceListSourceFlag: TStringField;
    Query_PriceListDirectToDC: TStringField;
    Query_PriceListFactoryCosting: TStringField;
    Query_PriceListFactoryDeveloper: TStringField;
    Query_PriceListCLOCosting: TStringField;
    Query_PriceListFTYBOMStatus: TStringField;
    Query_PriceListFactoryPriceSubmitStatus: TStringField;
    Query_PriceListLastUpdatedFactoryPriceStatus: TDateTimeField;
    Query_PriceListpairs: TIntegerField;
    Query_PriceListSalary: TCurrencyField;
    Query_PriceListUserName: TStringField;
    Query_PriceListUserUpdateTime: TDateTimeField;
    Query_PriceListFH17KeptLabor: TCurrencyField;
    Query_PriceListOutsoleAssembly: TCurrencyField;
    Query_PriceListSocklinerByPrs: TCurrencyField;
    Query_PriceListSpecialOffer: TCurrencyField;
    Query_PriceListStrobelPrintingRemoveal: TCurrencyField;
    Query_PriceListMMDeduction: TCurrencyField;
    Query_PriceListMMAutoCutLectraSaving: TCurrencyField;
    Query_PriceListHanyoungNetCut: TCurrencyField;
    Query_PriceListAutoBuffingSaving: TCurrencyField;
    Query_PriceListSupportFrictiontape: TCurrencyField;
    Query_PriceListVolumeEfficiencyGain: TCurrencyField;
    Query_PriceListRemovedNonBuffing: TCurrencyField;
    Query_PriceListVolumeEfficiencyGainOverhead: TCurrencyField;
    Query_PriceListRecyclingUn_Cured_25S: TCurrencyField;
    Query_PriceListRemoveSocklinerCement_25S: TCurrencyField;
    Query_PriceListRSHConstructionOptimizat_25S: TCurrencyField;
    Query_PriceListCBYWeightedCosting_25S: TCurrencyField;
    Query_PriceListSeasonalColor_25S: TCurrencyField;
    Query_PriceListOrtholiteSockliner_25S: TCurrencyField;
    Query_PriceListInnerBox_25S: TCurrencyField;
    Query_PriceListMOC_25S: TCurrencyField;
    Query_PriceListCkmesh_25S: TCurrencyField;
    Query_PriceListSealTapeOIA_LK_25U: TCurrencyField;
    Query_PriceListShoelaceLength_25U: TCurrencyField;
    Query_PriceListTissueOIA_LK_25U: TCurrencyField;
    Query_PriceListCL98LaborPrecommit_25F: TCurrencyField;
    Query_PriceListFY25_CostMitigation: TCurrencyField;
    Query_PriceListC2B_PPH: TStringField;
    Query_PriceListR2B_PPH: TStringField;
    Query_PriceListCFM_C2B_PPH: TStringField;
    Query_PriceListCFM_R2B_PPH: TStringField;
    Query_PriceListCostMitigation: TStringField;
    Query_CLBH: TQuery;
    Query_CLBHSKU: TStringField;
    Query_CLBHCostingSeason: TStringField;
    Query_CLBHComponent: TStringField;
    Query_CLBHCLBH: TStringField;
    Query_CLBHFlexMaterialCode: TStringField;
    Query_CLBHMaterial: TStringField;
    Query_CLBHSupplier: TStringField;
    Query_CLBHColor_No: TIntegerField;
    Query_CLBHMTL_No: TIntegerField;
    Query_CLBHMaterialSeason: TStringField;
    Query_CLBHFactory: TStringField;
    Query_CLBHXieXing: TStringField;
    Query_CLBHSheHao: TStringField;
    Query_CLBHCostingSize: TFloatField;
    Query_CLBHMaterial_Text: TMemoField;
    Query_CLBHSR: TStringField;
    Query_CLBHColor: TStringField;
    Query_CLBHSupplierCode: TStringField;
    Query_CLBHCSBH: TStringField;
    Query_CLBHZSYWJC: TStringField;
    Query_CLBHUSERID: TStringField;
    Query_CLBHUSERDATE: TDateTimeField;
    Query_CLBHReplaced: TStringField;
    DataSource6: TDataSource;
    UpdateSQL5: TUpdateSQL;
    XXZLS: TQuery;
    XXZLSCLBH: TStringField;
    XXZLSYWPM: TStringField;
    XXZLSZSYWJC: TStringField;
    XXZLSCSBH: TStringField;
    XXZLSBOMDATE: TDateTimeField;
    XXZLSCCQQ: TStringField;
    XXZLSCCQZ: TStringField;
    XXZLSywsm: TStringField;
    XXZLSYN: TIntegerField;
    DataSource7: TDataSource;
    Queryclzl_flex: TQuery;
    DataSource8: TDataSource;
    PageControl1: TPageControl;
    TabSheet2: TTabSheet;
    Panel2: TPanel;
    Label22: TLabel;
    Label5: TLabel;
    Label9: TLabel;
    Label14: TLabel;
    Label35: TLabel;
    Label36: TLabel;
    Label37: TLabel;
    Label54: TLabel;
    BB3: TBitBtn;
    BB2: TBitBtn;
    BB1: TButton;
    BitBtn3: TBitBtn;
    CheckBox1: TCheckBox;
    ComboBox1: TComboBox;
    BitBtn8: TBitBtn;
    Edit8: TEdit;
    Edit9: TEdit;
    Edit10: TEdit;
    CheckBox6: TCheckBox;
    BView1: TBitBtn;
    BView2: TBitBtn;
    BView3: TBitBtn;
    ED_PMR: TEdit;
    ED_PMRBuy: TEdit;
    BBPMRDay: TBitBtn;
    Edit11: TEdit;
    BBToday: TBitBtn;
    CheckBox9: TCheckBox;
    BBadmin_runall: TBitBtn;
    CheckBox13: TCheckBox;
    Edit24: TEdit;
    BitBtn12: TBitBtn;
    Completed: TCheckBox;
    complete: TBitBtn;
    ED_MinWage: TEdit;
    DBGridEh6: TDBGridEh;
    TabSheet1: TTabSheet;
    Label8: TLabel;
    DBGridEh2: TDBGridEh;
    Panel1: TPanel;
    Label3: TLabel;
    Label4: TLabel;
    Label16: TLabel;
    Label7: TLabel;
    Label13: TLabel;
    Label17: TLabel;
    Label23: TLabel;
    Label24: TLabel;
    Label25: TLabel;
    Label10: TLabel;
    Label11: TLabel;
    Label21: TLabel;
    Label47: TLabel;
    Label51: TLabel;
    Label53: TLabel;
    BA8: TBitBtn;
    BA6: TBitBtn;
    BA1: TBitBtn;
    ED1: TEdit;
    ED2: TEdit;
    ED3: TEdit;
    CB3: TCheckBox;
    CB2: TCheckBox;
    CB1: TCheckBox;
    ED5: TEdit;
    ED6: TEdit;
    CB4: TCheckBox;
    CB6: TCheckBox;
    CB7: TCheckBox;
    CB5: TCheckBox;
    CB8: TCheckBox;
    ED4: TEdit;
    ED7: TEdit;
    ED8: TEdit;
    ED9: TEdit;
    CheckBox2: TCheckBox;
    CheckBox5: TCheckBox;
    ED10: TEdit;
    ED11: TEdit;
    ComboBox3: TComboBox;
    BA7: TBitBtn;
    CheckBox11: TCheckBox;
    Edit23: TEdit;
    CheckBox15: TCheckBox;
    ED8or: TEdit;
    ED9or: TEdit;
    CheckBox16: TCheckBox;
    TabSheet3: TTabSheet;
    TabSheet5: TTabSheet;
    Panel4: TPanel;
    Label27: TLabel;
    Label28: TLabel;
    Label29: TLabel;
    Label30: TLabel;
    Label31: TLabel;
    Label32: TLabel;
    Label34: TLabel;
    Label33: TLabel;
    Edit1: TEdit;
    Edit2: TEdit;
    PLQuery: TBitBtn;
    Edit3: TEdit;
    CheckBox8: TCheckBox;
    BitBtn5: TBitBtn;
    CB_PL_Factory: TComboBox;
    Edit13: TEdit;
    Edit6: TEdit;
    Edit4: TEdit;
    Edit5: TEdit;
    Edit7: TEdit;
    CBGetOrderByPODate: TCheckBox;
    CB_FullSeason: TCheckBox;
    CheckBox12: TCheckBox;
    Edit25: TEdit;
    Edit26: TEdit;
    BitBtn9: TBitBtn;
    DBGridEh4: TDBGridEh;
    TabSheet6: TTabSheet;
    DBGridEh7: TDBGridEh;
    Panel7: TPanel;
    TabSheet8: TTabSheet;
    Panel11: TPanel;
    Label55: TLabel;
    Label56: TLabel;
    Label57: TLabel;
    Label58: TLabel;
    Label59: TLabel;
    Label60: TLabel;
    Label61: TLabel;
    Label62: TLabel;
    BBCBDL3: TBitBtn;
    BBCBDL2: TBitBtn;
    BBCBDL4: TBitBtn;
    CB_CBDLF: TComboBox;
    BBCBDL1: TBitBtn;
    ED_CBDLSKU: TEdit;
    ED_CBDLSS: TEdit;
    ED_CBDLRD: TEdit;
    ED_CBDLSR: TEdit;
    ED_CBDLNO: TEdit;
    ED_CBDLON: TEdit;
    DBGLogs: TDBGridEh;
    DS_CBDLog: TDataSource;
    Qry_CBDLog: TQuery;
    DS_Qry_CBDComparing: TDataSource;
    Qry_CBDComparing: TQuery;
    Comparing: TClientDataSet;
    DSCP1: TDataSource;
    TargetA: TClientDataSet;
    DSCP2: TDataSource;
    TargetAS: TClientDataSet;
    DSCP3: TDataSource;
    TabSheet9: TTabSheet;
    Panel12: TPanel;
    Label63: TLabel;
    Label64: TLabel;
    Label65: TLabel;
    Label66: TLabel;
    Label67: TLabel;
    Label68: TLabel;
    BBCP3: TBitBtn;
    BBCP2: TBitBtn;
    BBCP4: TBitBtn;
    CBCP1: TComboBox;
    BBCP1: TBitBtn;
    EDCP2: TEdit;
    EDCP3: TEdit;
    EDCP4: TEdit;
    EDCP1: TEdit;
    BBCP5: TBitBtn;
    BBComparing: TBitBtn;
    Panel13: TPanel;
    DBGridEh9: TDBGridEh;
    Panel14: TPanel;
    DBGridEh12: TDBGridEh;
    DBGridEh11: TDBGridEh;
    DBGridEh10: TDBGridEh;
    TemQry: TQuery;
    PageControl2: TPageControl;
    TabSheet10: TTabSheet;
    Panel15: TPanel;
    Edit12: TEdit;
    Edit16: TEdit;
    Label38: TLabel;
    Label42: TLabel;
    Label40: TLabel;
    Label43: TLabel;
    Edit18: TEdit;
    Edit15: TEdit;
    Label39: TLabel;
    Edit14: TEdit;
    ComboBox4: TComboBox;
    Label49: TLabel;
    CheckBox10: TCheckBox;
    CheckBox14: TCheckBox;
    BBlink2: TBitBtn;
    BBlink3: TBitBtn;
    BitBtn17: TBitBtn;
    DBGridEh5: TDBGridEh;
    Panel8: TPanel;
    BitBtn10: TBitBtn;
    BitBtn11: TBitBtn;
    Panel6: TPanel;
    Panel9: TPanel;
    DBGridEh8: TDBGridEh;
    DBG9: TDBGridEh;
    BBlink1: TBitBtn;
    UploadlQueryOHRed_25H: TStringField;
    Query_PriceListOHRed_25H: TStringField;
    Query_PriceListFY26_CostMitigation: TCurrencyField;
    Query_PriceListEffectBuy: TStringField;
    UploadDetailQueryBaseMaterialPrice: TStringField;
    Query_PriceListC2BOwRed: TFloatField;
    Query_PriceListSecondOwRed: TFloatField;
    BBReady: TBitBtn;
    UploadlQueryCBDReadyDate: TDateTimeField;
    Qry_CBDLogSKU: TStringField;
    Qry_CBDLogCostingSeason: TStringField;
    Qry_CBDLogFactory: TStringField;
    Qry_CBDLogRound: TStringField;
    Qry_CBDLogNo: TIntegerField;
    Qry_CBDLogSeq: TIntegerField;
    Qry_CBDLogMTL_No: TIntegerField;
    Qry_CBDLogColor_No: TIntegerField;
    Qry_CBDLogProcess_No: TIntegerField;
    Qry_CBDLogNetUsage: TStringField;
    Qry_CBDLogCutLoss: TStringField;
    Qry_CBDLogSizeGrading: TStringField;
    Qry_CBDLogSecondLabor: TStringField;
    Qry_CBDLogSecondOverhead: TStringField;
    Qry_CBDLogUserName: TStringField;
    Qry_CBDLogUserUpdateTime: TDateTimeField;
    UploadlQueryCostMitigation: TStringField;
    DBGridEh13: TDBGridEh;
    Qry_PriceListLOG: TQuery;
    DS_PL: TDataSource;
    Qry_PriceListLOGCostingSeason: TStringField;
    Qry_PriceListLOGRound: TStringField;
    Qry_PriceListLOGSKU: TStringField;
    Qry_PriceListLOGFactory: TStringField;
    Qry_PriceListLOGVersion: TIntegerField;
    Qry_PriceListLOGFOB: TStringField;
    Qry_PriceListLOGTotalMaterialCost: TStringField;
    Qry_PriceListLOGLabor: TStringField;
    Qry_PriceListLOGOverhead: TStringField;
    Qry_PriceListLOGC2BL: TStringField;
    Qry_PriceListLOGC2BO: TStringField;
    Qry_PriceListLOGSecondLabor: TStringField;
    Qry_PriceListLOGSecondOverhead: TStringField;
    Qry_PriceListLOGOHRed_25H: TStringField;
    Qry_PriceListLOGCostMitigation: TStringField;
    Qry_PriceListLOGProfit: TStringField;
    Qry_PriceListLOGProfitRate: TFloatField;
    Qry_PriceListLOGMoldCharge: TCurrencyField;
    Qry_PriceListLOGUserName: TStringField;
    Qry_PriceListLOGUserUpdateTime: TDateTimeField;
    Qry_CBDLogVersion: TIntegerField;
    Qry_PriceListLOGLogCount: TIntegerField;
    Qry_CBDLogMaterialCost: TStringField;
    Qry_CBDLogPriceOVR: TStringField;
    DBGridEh1: TDBGridEh;
    Query_PriceListForecastLevel: TStringField;
    Query_PriceListDistributionType: TStringField;
    Query_PriceListFactoryDevManager: TStringField;
    Query_PriceListFactoryCostingManager: TStringField;
    Query_PriceListCLOCostingManager: TStringField;
    Query_PriceListFTYBOMCostDataStatus: TStringField;
    Query_PriceListFactoryPriceStatus: TStringField;
    Query_PriceListInitialBuyMonth: TStringField;
    Query_PriceListDevelopmentCenter: TStringField;
    Query_PriceListSampleSize: TFloatField;
    Query_PriceListCostingSize: TFloatField;
    Query_PriceListSizeRange: TStringField;
    chk_AutoCheckP: TCheckBox;
    Query_PriceListPreviousSeasonBuy: TStringField;
    Query_PriceListEndBuy: TIntegerField;
    btn1: TBitBtn;
    Query_PriceListInitialDevelopmentSeason: TStringField;
    Query_PriceListProductLine: TStringField;
    UploadlQueryProductLine: TStringField;
    Query_PriceListCLOCOConfirmationDate: TDateTimeField;
    Query_PriceListLastUpdatedColorwayStatus: TDateTimeField;
    Query_PriceListLastUpdatedSourceFlag: TDateTimeField;
    Query_PriceListLastUpdatedFTYBOMStatus: TStringField;
    Query_PriceListFactoryConfirmationStatus: TDateTimeField;
    Query_PriceListLastUpdatedCLODevelopment: TDateTimeField;
    Query_PriceListFTYBOMCostDataStatusDate: TDateTimeField;
    Query_PriceListFactoryPriceSubmitStatusDate: TDateTimeField;
    Query_PriceListtype: TStringField;
    Query_PriceListFamilyName: TStringField;
    pgc1: TPageControl;
    ts1: TTabSheet;
    Panel3: TPanel;
    Label6: TLabel;
    Label1: TLabel;
    Label15: TLabel;
    Label52: TLabel;
    Label18: TLabel;
    Label19: TLabel;
    Label20: TLabel;
    Label26: TLabel;
    Label50: TLabel;
    EDC2: TEdit;
    EDC5: TEdit;
    BC1: TBitBtn;
    EDC1: TEdit;
    CheckBox3: TCheckBox;
    EDC3: TEdit;
    BC2: TBitBtn;
    EDC4: TEdit;
    BitBtn1: TBitBtn;
    CheckBox4: TCheckBox;
    CheckBox7: TCheckBox;
    ComboBox2: TComboBox;
    EDC6: TEdit;
    LO_BB_CANCEL: TBitBtn;
    EDC4or: TEdit;
    DBGridEh3: TDBGridEh;
    ts2: TTabSheet;
    pnl1: TPanel;
    Label41: TLabel;
    Edit17: TEdit;
    Label44: TLabel;
    ComboBox5: TComboBox;
    btn2: TBitBtn;
    Qry_List: TQuery;
    dbgrdh1: TDBGridEh;
    ds1: TDataSource;
    ts3: TTabSheet;
    pnl2: TPanel;
    pnl3: TPanel;
    Label45: TLabel;
    EDEL1: TEdit;
    lbl1: TLabel;
    cbb1: TComboBox;
    lbl2: TLabel;
    edt1: TEdit;
    lbl3: TLabel;
    lbl4: TLabel;
    lbl5: TLabel;
    edt2: TEdit;
    edt3: TEdit;
    edt4: TEdit;
    lbl7: TLabel;
    edt6: TEdit;
    chk1: TCheckBox;
    btn3: TBitBtn;
    btn4: TBitBtn;
    btn5: TBitBtn;
    lbl8: TLabel;
    edt7: TEdit;
    ts4: TTabSheet;
    ts5: TTabSheet;
    pnl31: TPanel;
    lbl9: TLabel;
    edt8: TEdit;
    btn31: TBitBtn;
    btn41: TBitBtn;
    btn51: TBitBtn;
    lbl91: TLabel;
    edt81: TEdit;
    qry_IP: TQuery;
    ds2: TDataSource;
    dbgrdh2: TDBGridEh;
    updtsql1: TUpdateSQL;
    BD2: TBitBtn;
    lbl10: TLabel;
    lbl11: TLabel;
    lbl111: TLabel;
    lbl1111: TLabel;
    lbl12: TLabel;
    lbl101: TLabel;
    lbl112: TLabel;
    lbl1112: TLabel;
    lbl13: TLabel;
    lbl1113: TLabel;
    EDEL2: TEdit;
    EDEL3: TEdit;
    EDEL4: TEdit;
    EDEL5: TEdit;
    EDEL6: TEdit;
    EDEL7: TEdit;
    EDEL8: TEdit;
    EDEL9: TEdit;
    EDEL10: TEdit;
    EDEL11: TEdit;
    dbgrdh3: TDBGridEh;
    btn6: TButton;
    btn8: TBitBtn;
    btn9: TBitBtn;
    QueryProcess: TQuery;
    QueryProcessComponent: TStringField;
    QueryProcessProcess_No: TIntegerField;
    QueryProcessTooling: TStringField;
    QueryProcessMaterialComments: TStringField;
    QueryProcessColorQty: TIntegerField;
    QueryProcessColorQty_Neon: TIntegerField;
    QueryProcessGUMColor: TIntegerField;
    QueryProcessmoldsPperson: TIntegerField;
    QueryProcesspairPmold: TIntegerField;
    QueryProcessPCsPPair: TIntegerField;
    QueryProcessTurnOverRate: TIntegerField;
    QueryProcessSecondLF: TStringField;
    QueryProcessSecondOF: TStringField;
    QueryProcessRound: TStringField;
    QueryProcessSKU: TStringField;
    QueryProcessCostingSeason: TStringField;
    QueryProcessNo: TIntegerField;
    QueryProcessUserName: TStringField;
    QueryProcessUserUpdateTime: TDateTimeField;
    QueryProcessGrossUsage: TStringField;
    QueryProcessUnitCost: TStringField;
    QueryProcessFactory: TStringField;
    QueryProcessSecondLabor2: TStringField;
    QueryProcessSecondOverhead2: TStringField;
    QueryProcessSecondLabor: TFloatField;
    QueryProcessSecondOverhead: TFloatField;
    QueryProcessNetUsage: TStringField;
    QueryProcessCutLoss: TStringField;
    QueryProcessSizeGrading: TStringField;
    QueryProcessPriceOVR: TStringField;
    QueryProcessMaterialCost: TStringField;
    QueryProcessT1Freight: TFloatField;
    QryPrint: TQuery;
    ds3: TDataSource;
    updtsql2: TUpdateSQL;
    btn7: TButton;
    Label69: TLabel;
    Label70: TLabel;
    Edit21: TEdit;
    Edit22: TEdit;
    QryPrintProcess_No: TIntegerField;
    QryPrintFactory: TStringField;
    QryPrintComponent: TStringField;
    QryPrintSR: TStringField;
    QryPrintSeason: TStringField;
    QryPrintExRate: TIntegerField;
    QryPrintMinWage: TCurrencyField;
    QryPrintSegments: TIntegerField;
    QryPrintPiecePPair: TIntegerField;
    QryPrintPairPBoard: TIntegerField;
    QryPrintColors: TIntegerField;
    QryPrintPairsPMold: TIntegerField;
    QryPrintInkNGlue_No: TIntegerField;
    QryPrintOutputPrs: TIntegerField;
    QryPrintOutputPpl: TIntegerField;
    QryPrintMoldFee: TCurrencyField;
    QryPrintInkNGlueCost: TCurrencyField;
    QryPrintLaborCost: TCurrencyField;
    QryPrintLoss: TIntegerField;
    QryPrintCostPPair: TCurrencyField;
    QryPrintCBDCost: TCurrencyField;
    QryPrintTRF_PP_Name: TStringField;
    QryPrintTRF_PP_Price: TCurrencyField;
    QryPrintTRF_PP_CM: TCurrencyField;
    QryPrintTRF_PP_PRS: TIntegerField;
    QryPrintTRF_PP_M: TIntegerField;
    QryPrintTRF_PP_Cost: TCurrencyField;
    QryPrintREL_PP_Name: TStringField;
    QryPrintREL_PP_Price: TCurrencyField;
    QryPrintREL_PP_CM: TCurrencyField;
    QryPrintREL_PP_PRS: TIntegerField;
    QryPrintREL_PP_M: TIntegerField;
    QryPrintREL_PP_Cost: TCurrencyField;
    QryPrintUserName: TStringField;
    QryPrintUserUpdateTime: TDateTimeField;
    Panel5: TPanel;
    Label72: TLabel;
    Label78: TLabel;
    Label79: TLabel;
    ComboBox6: TComboBox;
    Edit27: TEdit;
    Edit33: TEdit;
    CheckBox17: TCheckBox;
    BitBtn2: TBitBtn;
    BitBtn4: TBitBtn;
    BitBtn6: TBitBtn;
    Edit34: TEdit;
    Button1: TButton;
    BitBtn7: TBitBtn;
    QryPrintP: TQuery;
    ds4: TDataSource;
    dbgrdh4: TDBGridEh;
    updtsql3: TUpdateSQL;
    QryPrintPProcess_No: TIntegerField;
    QryPrintPFactory: TStringField;
    QryPrintPComponent: TStringField;
    QryPrintPSR: TStringField;
    QryPrintPArea: TStringField;
    QryPrintPPCsPerScreen: TStringField;
    QryPrintPColors: TIntegerField;
    QryPrintPPCsPerPair: TIntegerField;
    QryPrintPCost: TCurrencyField;
    QryPrintPUserName: TStringField;
    QryPrintPUserUpdateTime: TDateTimeField;
    Label81: TLabel;
    Edit36: TEdit;
    lbl14: TLabel;
    chk2: TCheckBox;
    Label46: TLabel;
    Edit20: TEdit;
    Button2: TButton;
    cbb2: TComboBox;
    Label48: TLabel;
    Edit19: TEdit;
    CheckBox18: TCheckBox;
    Edit28: TEdit;
    Label71: TLabel;
    qry_IPProcess_No: TIntegerField;
    qry_IPFactory: TStringField;
    qry_IPPriceSeason: TStringField;
    qry_IPToolingCode: TStringField;
    qry_IPCostingSize: TStringField;
    qry_IPModelName: TStringField;
    qry_IPOverheadLevel: TStringField;
    qry_IPCompoundsName: TStringField;
    qry_IPColorCode: TStringField;
    qry_IPFinalComponentPrice: TCurrencyField;
    qry_IPComponentMaterialPriceWDR: TCurrencyField;
    qry_IPDirectLaborCost: TCurrencyField;
    qry_IPOHCost: TCurrencyField;
    qry_IPApprovedModelDR: TCurrencyField;
    qry_IPComponentMaterialPrice: TCurrencyField;
    qry_IPCostingweight: TCurrencyField;
    qry_IPFinalMaterialPrice: TCurrencyField;
    qry_IPFormulaPrice: TCurrencyField;
    qry_IPFreightCost: TCurrencyField;
    qry_IPC_WorkersPerLine: TIntegerField;
    qry_IPC_ShiftsPerDay: TIntegerField;
    qry_IPC_ToolingNumberSets: TIntegerField;
    qry_IPC_InjectionTime_sec: TIntegerField;
    qry_IPC_CuringTime_sec: TIntegerField;
    qry_IPC_MEOF_sec: TIntegerField;
    qry_IPC_MoldRelAirBlow_sec: TIntegerField;
    qry_IPC_InjectorMoveMoldOp_sec: TIntegerField;
    qry_IPC_TTCycletime_sec: TIntegerField;
    qry_IPShifts: TIntegerField;
    qry_IPWorkingHoursPerShift: TCurrencyField;
    qry_IPToolingNumberSets: TIntegerField;
    qry_IPEfficiency: TCurrencyField;
    qry_IPPPL: TIntegerField;
    qry_IPPIM1_: TCurrencyField;
    qry_IPPIM1_Cycletime_sec: TIntegerField;
    qry_IPPIM1_TTLaborCost: TStringField;
    qry_IPPIM1_LaborPerPR: TStringField;
    qry_IPPIM2_: TCurrencyField;
    qry_IPPIM2_Cycletime_sec: TIntegerField;
    qry_IPPIM2_TTLaborCost: TStringField;
    qry_IPPIM2_LaborPerPR: TStringField;
    qry_IPPIM_outputPlinePday: TCurrencyField;
    qry_IPTotalOH: TCurrencyField;
    qry_IPUserName: TStringField;
    qry_IPUserUpdateTime: TDateTimeField;
    qry_IPPIM1_Output: TStringField;
    qry_IPPIM2_Output: TStringField;
    qry_IPCompoundingFee: TCurrencyField;
    qry_IPLaborCostPerLine: TCurrencyField;
    qry_IPLaborCostPerLine_F: TStringField;
    qry_IPCompoundingFee_F: TStringField;
    UploadlQueryUseRrady: TStringField;
    UploadlQueryUserComplete: TStringField;
    Qry_PriceListLOGUseRrady: TStringField;
    Qry_PriceListLOGCBDReadyDate: TDateTimeField;
    Qry_PriceListLOGUserComplete: TStringField;
    Qry_PriceListLOGCBDcompleteDate: TDateTimeField;
    UploadlQuerySecondLabor_IP: TStringField;
    UploadlQuerySecondOverhead_IP: TStringField;
    imgshoe: TImage;

    procedure BB1Click(Sender: TObject);  
    function TrimStr(i,j:integer;MsExcel:olevariant):String;
    function TrimStrSHEETS(i,j,sheets:integer;MsExcel:olevariant):String;
    function TrimStrNB(i,j:integer;MsExcel:olevariant):String;
    function TrimStrTime(i,j:integer;MsExcel:olevariant):String;
    function UploadQ(FieldByName,EditText:String):String;
    function UploadDeQ(FieldByName,EditText:String):String;
    function Countcolors():integer;    
    function ExtractNumbersList(const S: string): TStringList;
    function ExtractCompoudingList(const ss: string): TStringList;
    procedure BB2Click(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormDestroy(Sender: TObject);
    procedure DBGridEh6GetCellParams(Sender: TObject; Column: TColumnEh;
      AFont: TFont; var Background: TColor; State: TGridDrawState);
    procedure BitBtn8Click(Sender: TObject);
    procedure LO_BB_CANCELClick(Sender: TObject);
    procedure BA1Click(Sender: TObject);
    procedure BA3Click(Sender: TObject);
    procedure BA5Click(Sender: TObject);
    procedure BB3Click(Sender: TObject);
    procedure BA6Click(Sender: TObject);
    procedure UploadDetailQueryCalcFields(DataSet: TDataSet);
    procedure UploadlQueryCalcFields(DataSet: TDataSet);
    procedure QueryMTLCalcFields(DataSet: TDataSet);
    procedure DBGridEh2DrawColumnCell(Sender: TObject; const Rect: TRect;
      DataCol: Integer; Column: TColumnEh; State: TGridDrawState);
    procedure CheckBox5Click(Sender: TObject);
    procedure BC1Click(Sender: TObject);
    procedure QueryProcessCalcFields(DataSet: TDataSet);
    procedure BC2Click(Sender: TObject);
    procedure DBGridEh3GetCellParams(Sender: TObject; Column: TColumnEh;
      AFont: TFont; var Background: TColor; State: TGridDrawState);
    procedure FormCreate(Sender: TObject);
    procedure BView1Click(Sender: TObject);
    procedure BView2Click(Sender: TObject);
    procedure BView3Click(Sender: TObject);
    procedure BitBtn3Click(Sender: TObject);    
    procedure ExportExcel(Query:TQuery);
    procedure CheckBox7Click(Sender: TObject);
    procedure CheckBox4Click(Sender: TObject);
    procedure BA7Click(Sender: TObject);
    procedure DBGridEh2CellClick(Column: TColumnEh);
    procedure PLQueryClick(Sender: TObject);
    procedure BBPMRDayClick(Sender: TObject);
    procedure BBTodayClick(Sender: TObject);
    procedure Query_CLBHCalcFields(DataSet: TDataSet);
    procedure BitBtn10Click(Sender: TObject);
    procedure BitBtn11Click(Sender: TObject);
    procedure BitBtn7Click(Sender: TObject);
    procedure BBlink2Click(Sender: TObject);
    procedure BitBtn14Click(Sender: TObject);
    procedure BBadmin_runallClick(Sender: TObject);
    procedure DBGridEh6DblClick(Sender: TObject);
    procedure DataSource4DataChange(Sender: TObject; Field: TField);
    procedure CheckBox13Click(Sender: TObject);
    procedure BitBtn9Click(Sender: TObject);
    procedure BBlink1Click(Sender: TObject);
    procedure BA8Click(Sender: TObject);
    procedure BitBtn12Click(Sender: TObject);
    procedure completeClick(Sender: TObject);
    procedure BBCBDL1Click(Sender: TObject);
    procedure BBCP1Click(Sender: TObject);
    procedure BBCP5Click(Sender: TObject);
    procedure BBComparingClick(Sender: TObject);
    procedure BBCP4Click(Sender: TObject);
    procedure DBGridEh9DblClick(Sender: TObject);
    procedure DBGridEh10DblClick(Sender: TObject);
    procedure DBGLogsDblClick(Sender: TObject);
    procedure BBReadyClick(Sender: TObject);
    procedure DBGLogsGetCellParams(Sender: TObject; Column: TColumnEh;
      AFont: TFont; var Background: TColor; State: TGridDrawState);
    procedure BBCBDL4Click(Sender: TObject);
    procedure btn1Click(Sender: TObject);
    procedure btn2Click(Sender: TObject);
    procedure btn31Click(Sender: TObject);
    procedure BD2Click(Sender: TObject);
    procedure btn41Click(Sender: TObject);
    procedure btn6Click(Sender: TObject);
    procedure btn3Click(Sender: TObject);
    procedure btn8Click(Sender: TObject);
    procedure btn9Click(Sender: TObject);
    procedure btn7Click(Sender: TObject);
    procedure btn4Click(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure BitBtn2Click(Sender: TObject);
    procedure BitBtn4Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure btn51Click(Sender: TObject);
    procedure DataSource1DataChange(Sender: TObject; Field: TField);
  private
    Material,FlexMaterialCode,color,colorcomments,Molded:String;
    PriceOVR,T1Freight:String;
    MaterialCost:String;
    BaseMaterialPrice:String;
    SupplierFreightValue:String;
    TRPnGRPUpcharge:String;     
    items:integer;
    { Private declarations }
  public
    { Public declarations }
  end;

var
  CostingCBD: TCostingCBD;

implementation

uses main1, SupplierFLEXnERP1, CheckNoInCostingPriceList1, PrintingInk1;

{$R *.dfm}
function TCostingCBD.ExtractCompoudingList(const ss: string): TStringList;
var
  i: Integer;
  current,S: string;
  percentage,percentage2:Currency;
begin
  Result := TStringList.Create;
  S:= StringReplace(ss, ' ', '', [rfReplaceAll]);
  S:= StringReplace(S, '(', '', [rfReplaceAll]);
  current := '';
  percentage:=0;
  percentage2:=0;
  for i := 1 to Length(S) do
  begin
    if (S[i]<>'+') and (S[i]<>')') and (S[i]<>'%') then
      current := current + S[i]
    else if (S[i]='%') then
    begin
       if percentage=0 then
          percentage:= StrToCurrDef(current, 0)
       else
          percentage2:= StrToCurrDef(current, 0)*0.1*percentage;
       current:='';
    end          
    else if (S[i]=')') then
    begin
      percentage:=0;
      percentage2:=0;
    end
    else if (S[i]<>'+') then
    begin
      if current <> '' then
      begin
        if percentage2<>0 then
          Result.Add(CurrToStr(percentage2))
        else
          Result.Add(CurrToStr(percentage));
        Result.Add(current);
        percentage2:=0;
        current := '';
      end;
    end;
  end;
  if current <> '' then
    Result.Add(current);
end;

function TCostingCBD.ExtractNumbersList(const S: string): TStringList;
var
  i: Integer;
  current: string;
begin
  Result := TStringList.Create;
  current := '';
  for i := 1 to Length(S) do
  begin
    if S[i] in ['0'..'9', '.'] then
      current := current + S[i]
    else
    begin
      if current <> '' then
      begin
        Result.Add(current);
        current := '';
      end;
    end;
  end;
  if current <> '' then
    Result.Add(current);
end;
function TCostingCBD.Countcolors():integer;
var i,x,j,colors:integer;    //x=total MTL cost
    RBpart,RBMTLCode, RBpartNext,RBMTLCodeNext,ColorCode,ColorCodes,ColorCodeTemp,tooling,MTLComments:String;
begin
      //showmessage(EditText);
      colors:=0;
      i:=0;
      x:=0;
      ColorCodeTemp:='';
      ColorCodes:='/';
      tooling:='';
      MTLComments:='';
      RBpart:=UploadDetailQuery.fieldbyname('Component').AsString;
      RBMTLCode:=UploadDetailQuery.fieldbyname('FlexMaterialCode').AsString;
      RBpartNext:=UploadDetailQuery.fieldbyname('Component').AsString;
      RBMTLCodeNext:=UploadDetailQuery.fieldbyname('FlexMaterialCode').AsString;
      Molded:='';
      while (x=0) do
        begin
            //輔助補充TOOLING MaterialComments
            {if (pos(UploadDetailQuery.fieldbyname('tooling').AsString,tooling)=0) then
              tooling:=tooling+UploadDetailQuery.fieldbyname('tooling').AsString;
            if (pos(UploadDetailQuery.fieldbyname('MaterialComments').AsString,MTLComments)=0) then
                MTLComments:=MTLComments+UploadDetailQuery.fieldbyname('MaterialComments').AsString; }
            if(pos('Molded',UploadDetailQuery.fieldbyname('Material').Value)>0) then
               begin
                  Molded:='Molded';
                  //showmessage('Molded');
               end;
            ColorCodeTemp:= UploadDetailQuery.fieldbyname('Color').asstring;
            if (ColorCodeTemp<>'') then  //顏色欄位有值
              begin
                //j:=pos('/',ColorCodeTemp);
                while(Length(ColorCodeTemp)>1) do     //去除斜槓
                begin
                      j:=pos('/',ColorCodeTemp);
                      if j>0 then
                        begin
                          ColorCode:=copy(ColorCodeTemp,1,j-1);
                        end
                      else
                        begin
                          ColorCode:=copy(ColorCodeTemp,1,9999);
                          j:=9999;
                        end;
                          if (pos(Trim(ColorCode),ColorCodes)=0) then
                            begin
                              colors:=colors+1;
                              ColorCodes:=ColorCodes+ColorCode;
                            end;
                          ColorCodeTemp:=copy(ColorCodeTemp,j+1,999);
                end;
                {if (pos(Trim(ColorCodeTemp),ColorCodes)=0) then
                        begin
                          colors:=colors+1;
                          ColorCodes:=ColorCodes+ColorCodeTemp;
                        end }
              end; //當前欄位處理結束

            i:=i+1;
            UploadDetailQuery.Next;
            if ((RBpart<>UploadDetailQuery.fieldbyname('Component').asstring)and(''<>UploadDetailQuery.fieldbyname('Component').asstring)
              and (pos(RBpart,UploadDetailQuery.fieldbyname('Component').asstring)=0)) then
              X:=1;
        end;
      while i>0 do     //返回原指標欄位
          begin
            UploadDetailQuery.Prior;
            i:=i-1;
          end;
      //showmessage(inttostr(colors));
      //輔助補充TOOLING MaterialComments
      {UploadDetailQuery.Edit;
      UploadDetailQuery.fieldbyname('tooling').Value:=tooling;
      UploadDetailQuery.fieldbyname('MaterialComments').Value:=MTLComments; }
      result:=colors;
end;

function TCostingCBD.UploadQ(FieldByName,EditText:String):String;
begin
      //showmessage(EditText);     
      EditText:=TrimLeft(EditText);
      EditText:=TrimRight(EditText);
      try
        if (EditText<>'') then
          UploadlQuery.FieldByName(FieldByName).value:=EditText;
      except
          showmessage('Error,not saved'+FieldByName+'='+EditText);
      end;
end;

function TCostingCBD.UploadDeQ(FieldByName,EditText:String):String;
begin
      //showmessage(FieldByName+'='+EditText);
      EditText:=TrimLeft(EditText);
      EditText:=TrimRight(EditText);
      try
        if EditText<>'' then
          UploadDetailQuery.FieldByName(FieldByName).value:=EditText;
      except
          showmessage('Error,not saved'+FieldByName+'='+EditText);
      end;
end;

Function TCostingCBD.TrimStr(i,j:integer;MsExcel:olevariant):String;
var EditText,specialChars: String;
begin
    //specialChars:='''''?!$?#';
    //specialChars:='''';
    EditText:=msExcel.WorkBooks[1].WorkSheets[1].Cells[i,j];
    if (EditText='0') or (EditText=null) or (EditText='') then
      result:=''
    else
    begin
      //EditText:=StringReplace(EditText,specialChars,'', [rfReplaceAll]);
      EditText:=StringReplace(EditText,'''''','"', [rfReplaceAll]);
      EditText:=StringReplace(EditText,'''','', [rfReplaceAll]);
      EditText:=StringReplace(EditText,'?','', [rfReplaceAll]);
      EditText:=StringReplace(EditText,'，','', [rfReplaceAll]);
      EditText:=StringReplace(EditText,'"','""', [rfReplaceAll]);
      EditText:=StringReplace(EditText,'”','""', [rfReplaceAll]);
      EditText:=StringReplace(EditText,'""','"', [rfReplaceAll]);
      //EditText:=StringReplace(EditText,'''''','''', [rfReplaceAll]);
      EditText:=TrimLeft(EditText);
      EditText:=TrimRight(EditText);
      //showmessage(EditText);
      result:=EditText;

    end;
end;
Function TCostingCBD.TrimStrSHEETS(i,j,sheets:integer;MsExcel:olevariant):String;
var EditText,specialChars: String;
begin
    //specialChars:='''''?!$?#';
    //specialChars:='''';
    EditText:=msExcel.WorkBooks[1].WorkSheets[sheets].Cells[i,j];
    if (EditText='0') or (EditText=null) or (EditText='') then
      result:=''
    else
    begin
      //EditText:=StringReplace(EditText,specialChars,'', [rfReplaceAll]);
      EditText:=StringReplace(EditText,'''''','"', [rfReplaceAll]);
      EditText:=StringReplace(EditText,'''','', [rfReplaceAll]);
      EditText:=StringReplace(EditText,'?','', [rfReplaceAll]);
      EditText:=StringReplace(EditText,'，','', [rfReplaceAll]);
      EditText:=StringReplace(EditText,'"','""', [rfReplaceAll]);
      EditText:=StringReplace(EditText,'”','""', [rfReplaceAll]);
      EditText:=StringReplace(EditText,'""','"', [rfReplaceAll]);
      //EditText:=StringReplace(EditText,'''''','''', [rfReplaceAll]);
      EditText:=TrimLeft(EditText);
      EditText:=TrimRight(EditText);
      //showmessage(EditText);
      result:=EditText;

    end;
end;

function TCostingCBD.TrimStrNB(i,j:integer;MsExcel:olevariant):String;
var EditText2,ReplaceStr: String;
    k :integer;
    L:integer;
begin
    EditText2:=msExcel.WorkBooks[1].WorkSheets[1].Cells[i,j];

    if (EditText2='0') or (EditText2=null) or (EditText2='') then
      result:=''
    else
    begin
      EditText2:=msExcel.WorkBooks[1].WorkSheets[1].Cells[i,j].Text;
      msExcel.WorkBooks[1].WorkSheets[1].Cells(i,j):='=Round('+EditText2+',9)';
      EditText2:=msExcel.WorkBooks[1].WorkSheets[1].Cells[i,j].Text;
      L:=Length(EditText2);
      if L>=11 then
        L:=11;
      if Trim(EditText2)<>'' then
      begin
        for k := 0 to L do
        begin
          // 檢查字符是否為數字
          if EditText2[k] in ['.','-','0'..'9'] then
            ReplaceStr := ReplaceStr + EditText2[k];
        end;
        // 將單元格內容替換為只包含數字的值
        EditText2:= VarToStr(FormatFloat('0.00000000',Strtofloat(ReplaceStr)));
      end
      else
           EditText2:='0';
      //EditText2:=msExcel.WorkBooks[1].WorkSheets[1].Cells[j,strtoint(EditText)].value;

      result:=EditText2;
    end;
end;

function TCostingCBD.TrimStrTime(i,j:integer;MsExcel:olevariant):String;
var EditText2: String;
  FS: TFormatSettings;
  DT: TDateTime;
begin
    EditText2:=msExcel.WorkBooks[1].WorkSheets[1].Cells[i,j].Text;

    if (EditText2='0') or (EditText2=null)or (EditText2='') then
      result:=''
    else
    begin
      GetLocaleFormatSettings(LOCALE_SYSTEM_DEFAULT, FS);
      FS.DateSeparator := '/';
      FS.TimeSeparator := ':';
      FS.ShortDateFormat := 'yyyy/m/d';
      FS.LongDateFormat := 'yyyy/m/d';
      FS.ShortTimeFormat := 'hh:nn:ss AMPM';
      FS.LongTimeFormat  := 'hh:nn:ss AMPM';


      if TryStrToDateTime(EditText2, DT, FS) then
        result:=EditText2
      else
      begin
        EditText2:=copy(EditText2,7,4)+'/'+copy(EditText2,1,2)+'/'+copy(EditText2,4,2)+copy(EditText2,11,9);
        //showmessage(EditText2);
        msExcel.WorkBooks[1].WorkSheets[1].Cells(i,j):='=TEXT("'+EditText2+'"+TIME(8,0,0),"MM/DD/YYYY HH:MM AM/PM")';
        EditText2:=msExcel.WorkBooks[1].WorkSheets[1].Cells[i,j].value;
        result:=EditText2;
      end;
    end;
end;

procedure TCostingCBD.BB1Click(Sender: TObject);
var
  i,j,xh:integer;
  MsExcel:olevariant;
  MsExcelWorkbook: Variant;
  Season,Text1,Text2,MaterialSeason: String;
  flag:boolean;
  PartNames:TStringlist; 
function RoundClassic(R: Single): Int64;
begin
  if Frac(R) >= 0.5 then
    Result := Trunc(R) + 1
  else
    Result:= Trunc(R);
end;
begin
   complete.Enabled:=false;
   BB2.Enabled:=true;
   BB3.Enabled:=true;
   CheckBox1.checked:=true;
   CheckBox13.Checked:=false;
   with UploadlQuery do
      begin
         active:=false;
         sql.Clear;
         sql.add('Select * From CostingPriceListNew where 1=2');
         active:=true;
      end;
  try
    MsExcel:=CreateOleObject('Excel.Application');
  except
      on E:Exception do
      begin
        Application.MessageBox(PChar('NO EXCEL'+E.Message),'', MB_OK+MB_ICONWarning);
        EXIT;
      end;
  end;
  try
   if OpenDialog.Execute=true then
   begin
    MsExcelWorkBook := msExcel.Workbooks.Open(OpenDialog.FileName);
    with UploadlQuery do
     begin
     cachedupdates:=true;
     requestlive:=true;
     UploadlQuery.edit;
     UploadlQuery.first;
     insert;
     //round
     Season:=msExcel.WorkBooks[1].WorkSheets[1].Cells[1,13];
     Season:=copy(Season,1,pos(' ',Season+' ')-1);
     UploadQ('Round',Season);

     Season:=TrimStr(2,14,msExcel);
     UploadQ('FlexSeason',Season);
     i:=pos('202',Season)+2;
     if pos('Fall',Season)>0 then
        begin
          Season:=copy(Season,i,2)+'F';
          MaterialSeason:='FH'+copy(Season,1,2)
        end
     else if  pos('Summer',Season)>0 then
        begin
          Season:=copy(Season,i,2)+'U';
          MaterialSeason:='SS'+copy(Season,1,2)
        end
     else if  pos('Spring',Season)>0 then
        begin
          Season:=copy(Season,i,2)+'S';
          MaterialSeason:='SS'+copy(Season,1,2)
        end
     else if  pos('Holiday',Season)>0 then
        begin
          Season:=copy(Season,i,2)+'H';
          MaterialSeason:='FH'+copy(Season,1,2)
        end;
     UploadQ('CostingSeason',Season);
     UploadQ('Cut',TrimStr(6,4,msExcel));
     UploadQ('SR',TrimStr(8,4,msExcel));
     UploadQ('SKU',TrimStr(9,4,msExcel));
     UploadQ('TechLevel',TrimStr(10,4,msExcel));
     UploadQ('Last',TrimStr(11,4,msExcel));
     UploadQ('Segment',TrimStr(2,6,msExcel));
     UploadQ('ProductionType',TrimStr(3,6,msExcel));
     UploadQ('DistributionType',TrimStr(4,6,msExcel));
     UploadQ('Category',TrimStr(5,6,msExcel));
     UploadQ('PlanningLevel2',TrimStr(6,6,msExcel));
     UploadQ('ProductLine',TrimStr(7,6,msExcel));
     UploadQ('DirectToDC',TrimStr(9,6,msExcel));
     UploadQ('UpperMaterial',TrimStr(11,6,msExcel));
     UploadQ('FactoryDeveloper',TrimStr(4,8,msExcel));
     UploadQ('FactoryDevManager',TrimStr(5,8,msExcel));
     UploadQ('FactoryCosting',TrimStr(8,8,msExcel));
     UploadQ('FactoryCostingManager',TrimStr(9,8,msExcel));
     UploadQ('CLOCosting',TrimStr(10,8,msExcel));
     UploadQ('CLOCostingManager',TrimStr(11,8,msExcel));
     //待添加  FactoryPriceStatus    FTYBOMCostDataStatus      Round
     UploadQ('FTYBOMStatus',TrimStr(5,10,msExcel));
     UploadQ('FTYBOMCostDataStatus',TrimStr(8,10,msExcel));
     UploadQ('FactoryPriceSubmitStatus',TrimStr(9,10,msExcel));
     UploadQ('FactoryPriceStatus',TrimStr(10,10,msExcel));
     UploadQ('LastUpdatedColorwayStatus',TrimStrTime(2,12,msExcel));
     UploadQ('LastUpdatedSourceFlag',TrimStrTime(3,12,msExcel));
     UploadQ('LastUpdatedCLOConfirmationDate',TrimStrTime(4,12,msExcel));
     UploadQ('LastUpdatedByFTYBOMCost',TrimStr(5,12,msExcel));
     UploadQ('LastUpdatedFactoryConfirmation',TrimStrTime(6,12,msExcel));
     UploadQ('LastUpdatedDevelopment',TrimStrTime(7,12,msExcel));
     UploadQ('LastUpdatedDateFTYBOMCost',TrimStrTime(8,12,msExcel));
     UploadQ('LastUpdatedFactoryPriceSubmit',TrimStrTime(9,12,msExcel));
     UploadQ('LastUpdatedFactoryPriceStatus',TrimStrTime(10,12,msExcel));
     UploadQ('InitialBuyMonth',TrimStr(11,12,msExcel));
     UploadQ('DevelopmentSeason',TrimStr(3,14,msExcel));
     UploadQ('DevelopmentCenter',TrimStr(4,14,msExcel));
     UploadQ('Factory',TrimStr(5,14,msExcel));
     UploadQ('SampleSize',TrimStrNB(6,14,msExcel));
     UploadQ('CostingSize',TrimStrNB(7,14,msExcel));
     UploadQ('SizeRange',TrimStr(8,14,msExcel));   
     UploadQ('GenderClass',TrimStr(9,14,msExcel));
     UploadQ('TargetSamplePrice',TrimStrNB(10,14,msExcel));
     UploadQ('Labor',TrimStrNB(2,21,msExcel));
     UploadQ('Overhead',TrimStrNB(2,24,msExcel));
     UploadQ('C2BL',TrimStrNB(3,21,msExcel));
     UploadQ('C2BO',TrimStrNB(3,24,msExcel));
     UploadQ('SecondLabor',TrimStrNB(4,21,msExcel));
     UploadQ('SecondLabor_IP',TrimStrNB(8,21,msExcel));
     UploadQ('SecondOverhead',TrimStrNB(4,24,msExcel));
     UploadQ('SecondOverhead_IP',TrimStrNB(6,24,msExcel));
     UploadQ('OHRed_25H',TrimStrNB(5,24,msExcel));// 25H FNL 6BUY 26S FNL -0.08
     UploadQ('Profit',TrimStrNB(2,27,msExcel));
     UploadQ('ProfitRate',TrimStrNB(3,27,msExcel));
     UploadQ('TotalMaterialCost',TrimStrNB(2,30,msExcel));
     //CostMitigation
     UploadQ('R2B_PPH',TrimStrNB(6,21,msExcel));
     UploadQ('CostMitigation',TrimStrNB(7,21,msExcel));
     UploadQ('MoldCharge',TrimStrNB(3,30,msExcel));
     UploadQ('FOB',TrimStrNB(5,30,msExcel));
     UploadQ('RefModel',TrimStr(2,31,msExcel));
     Text1:=TrimStr(3,31,msExcel)+'/'+TrimStr(4,31,msExcel)+'/'+TrimStr(5,31,msExcel)+'/'+TrimStr(6,31,msExcel)
        +'/'+TrimStr(7,31,msExcel)+'/'+TrimStr(8,31,msExcel)+'/'+TrimStr(9,31,msExcel)+'/'+TrimStr(10,31,msExcel)+'/'+TrimStr(11,31,msExcel);

     Text1:=StringReplace(Text1,'//','', [rfReplaceAll]);
     if (copy(Text1,length(Text1),1)='/') then
        Text1:=copy(Text1,1,length(Text1)-1);
     UploadQ('Remark',Text1);
     UploadQ('ProductDescription',TrimStr(2,4,msExcel));
     UploadQ('ModelDescription',TrimStr(4,4,msExcel));
     UploadQ('ColorwayLongName',TrimStr(7,4,msExcel));
     UploadQ('SourceFlag',TrimStr(3,10,msExcel));
     UploadQ('ForecastLevel',TrimStr(11,14,msExcel));

     UploadQ('UserName',main.Edit1.Text);
     //showmessage(FormatDateTime('yyyy/mm/dd hh:mm:ss', Now));
     UploadQ('UserUpdateTime',FormatDateTime('yyyy/mm/dd hh:mm', Now));

    end;
   with UploadDetailQuery do
      begin
         active:=false;
         sql.Clear;
         sql.add('Select CostingXXZLS.No,CostingXXZLS.PartName, CostingXXZLS.Component, CostingXXZLS.Percentage, CostingMatLibrary.Material_text, ');
         sql.add('       CostingMatLibrary.FlexMaterialCode, ');
         sql.add('       CostingMatLibrary.Measure, CostingMatLibrary.MeasureOVR,');
         sql.add('       CostingPriceLibrary.PriceOVR,');
         sql.add('       CostingXXZLS.NetUsage,CostingXXZLS.CutLoss, CostingXXZLS.SizeGrading, ');
         sql.add('       CostingMatLibrary.T1Freight, CostingXXZLS.LandedCost,');
         sql.add('       CostingXXZLS.GrossUsage, CostingXXZLS.UnitCost,');
         sql.add('       CostingMatLibrary.MaterialComments, CostingMatLibrary.Supplier,     ');
         sql.add('       CostingMatLibrary.SupplierCode, CostingMatLibrary.Tooling, CostingPriceLibrary.TnRP, CostingPriceLibrary.Color,CostingPriceLibrary.ColorGroup, ');
         sql.add('       CostingPriceLibrary.ColorComments, CostingMatLibrary.DeliveryTerm, CostingPriceLibrary.MaterialCost,');
         sql.add('       CostingPriceLibrary.PriceStatus,CostingXXZLS.UserName, CostingXXZLS.UserUpdateTime,');
         sql.add('       CostingPriceLibrary.BaseMaterialPrice,CostingPriceLibrary.SupplierFreightValue,CostingPriceLibrary.TRPnGRPUpcharge,');
         sql.add('       CostingPriceListNew.SecondLabor,CostingPriceListNew.SecondOverhead,');
         sql.add('       CostingXXZLS.Remark,CostingXXZLS.Round,CostingXXZLS.SKU,CostingXXZLS.CostingSeason,MaterialSeason,CostingXXZLS.Factory,');
         sql.add('       CostingXXZLS.MTL_No,CostingXXZLS.Color_No,CostingXXZLS.Process_No,');
         sql.add('       CostingProcessCost.ColorQty,CostingProcessCost.ColorQty_Neon,CostingProcessCost.GUMColor,CostingProcessCost.SecondLF,CostingProcessCost.SecondOF,');
         sql.add('       CostingProcessCost.moldsPperson,CostingProcessCost.pairPmold,CostingProcessCost.PCsPPair,CostingProcessCost.TurnOverRate');
         sql.add('From CostingXXZLS  ');
         sql.add('left join CostingMatLibrary on CostingMatLibrary.MTL_No=CostingXXZLS.MTL_No');
         sql.add('left join CostingPriceLibrary on CostingPriceLibrary.MTL_No=CostingXXZLS.MTL_No and CostingPriceLibrary.Color_No=CostingXXZLS.Color_No ');
         sql.add('left join CostingProcessCost on CostingProcessCost.Process_No=CostingXXZLS.Process_No');
         sql.add('left join CostingPriceListNew on CostingPriceListNew.FactoryPriceSubmitStatus=CostingXXZLS.Round ');
         sql.add('       and CostingPriceListNew.SKU=CostingXXZLS.SKU ');
         sql.add('       and CostingPriceListNew.CostingSeason=CostingXXZLS.CostingSeason ');
         sql.add('       where 1=2 ');




         //showmessage(SQL.text);
         active:=true;
      end;
   PartNames:=TStringList.Create;
   PartNames.commatext:='Up,Li,Re,Co,Lo,Bo,Th,Gl,Pr,Pa';
   //SLAddStrings(PartNames,['Upper','Linings','Reinforcements','Components','Logos','Bottom','Threads','Glue','Process','Packings']);
   flag:=true;
   i:=13;
   xh:=0;
   while (flag=true) do
   begin
          Text2:=TrimStr(i,1,msExcel);
          //j:=Pos('(',Text2+'(');
          j:=PartNames.IndexOf(Copy(Text2,1,2));
          //showmessage(inttostr(j));
          //    break;
          if j>=0 then
            begin
              xh:=(j+1)*100;            //取得序號
              j:=Pos('(',Text2+'(');    //兩個部位無括號
              Text1:=Copy(Text2,1,j-1);
              i:=i+1;
            end;
          Text2:=TrimStr(i,4,msExcel);
          if ((Text2='') and(xh>1000) or (xh=0)) then       //材料名稱為空
            begin
              flag:=false;
              break;
            end;
          xh:=xh+1;
          with UploadDetailQuery do
                begin
                    cachedupdates:=true;
                    requestlive:=true;
                    UploadDetailQuery.edit;
                    insert;
                    UploadDeQ('MaterialSeason',MaterialSeason);
                    UploadDeQ('No',inttostr(xh));
                    UploadDeQ('PartName',Text1);
                    j:=Pos('(',TrimStr(i,2,msExcel));
                    if j>0 then
                      UploadDeQ('Component',Copy(TrimStr(i,2,msExcel),1,j-1))
                    else
                      UploadDeQ('Component',TrimStr(i,2,msExcel));
                    //UploadDeQ('Component',inttostr(Pos('(',TrimStr(i,2,msExcel))));
                    UploadDeQ('Percentage',TrimStr(i,3,msExcel));
                    text2:=TrimStr(i,4,msExcel);
                    UploadDeQ('Material_Text',text2);
                    //showmessage((UploadDetailQuery.FieldByName('Material_Text') as TBlobField).AsString);
                    //UploadDetailQuery.FieldByName('Material').Value := (UploadDetailQuery.FieldByName('Material_Text') as TBlobField).AsString;
                    UploadDeQ('FlexMaterialCode',TrimStr(i,5,msExcel));
                    UploadDeQ('MaterialComments',TrimStr(i,6,msExcel));
                    UploadDeQ('Supplier',TrimStr(i,7,msExcel));
                    UploadDeQ('SupplierCode',TrimStr(i,8,msExcel));
                    UploadDeQ('Tooling',TrimStr(i,9,msExcel));
                    UploadDeQ('TnRP',TrimStr(i,10,msExcel));
                    UploadDeQ('Color',TrimStr(i,11,msExcel));
                    UploadDeQ('ColorComments',TrimStr(i,12,msExcel));
                    UploadDeQ('Measure',TrimStr(i,13,msExcel));
                    //UploadDeQ('BaseMaterialPrice',TrimStrNB(i,14,msExcel));
                    UploadDeQ('BaseMaterialPrice',msExcel.WorkBooks[1].WorkSheets[1].Cells[i,14].value);
                    UploadDeQ('TRPnGRPUpcharge',TrimStrNB(i,15,msExcel));
                    UploadDeQ('PriceStatus',TrimStr(i,16,msExcel));
                    UploadDeQ('SupplierFreightValue',TrimStrNB(i,18,msExcel));
                    UploadDeQ('DeliveryTerm',TrimStr(i,19,msExcel));
                    //UploadDeQ('MaterialCost',TrimStrNB(i,20,msExcel));
                    UploadDeQ('MaterialCost',msExcel.WorkBooks[1].WorkSheets[1].Cells[i,20].value);
                    UploadDeQ('MeasureOVR',TrimStr(i,21,msExcel));
                    UploadDeQ('PriceOVR',TrimStrNB(i,22,msExcel));
                    UploadDeQ('T1Freight',TrimStrNB(i,23,msExcel));
                    UploadDeQ('LandedCost',TrimStrNB(i,24,msExcel));
                    UploadDeQ('NetUsage',TrimStrNB(i,25,msExcel));
                    text2:=TrimStrNB(i,26,msExcel);
                    if  text2<>'' then
                      UploadDeQ('CutLoss',floattostr(RoundClassic(strtofloat(text2)*100)/100))
                    else
                      UploadDeQ('CutLoss',text2);
                    UploadDeQ('SizeGrading',TrimStrNB(i,27,msExcel));
                    //UploadDeQ('GrossUsage',TrimStrNB(i,28,msExcel));
                    UploadDeQ('GrossUsage',msExcel.WorkBooks[1].WorkSheets[1].Cells[i,28].value);
                    //UploadDeQ('UnitCost',TrimStrNB(i,29,msExcel));
                    UploadDeQ('UnitCost',msExcel.WorkBooks[1].WorkSheets[1].Cells[i,29].value);
                    //UploadDeQ('SecondLabor',TrimStrNB(i,31,msExcel));
                    UploadDeQ('SecondLabor',msExcel.WorkBooks[1].WorkSheets[1].Cells[i,31].value);
                    //UploadDeQ('SecondOverhead',TrimStrNB(i,32,msExcel));
                    UploadDeQ('SecondOverhead',msExcel.WorkBooks[1].WorkSheets[1].Cells[i,32].value);

                end;
              i:=i+1;
          //end;
          //showmessage('XH='+inttostr(xh)+';i='+inttostr(i));
   end;
        UploadDetailQuery.cachedupdates:=true;
        UploadDetailQuery.requestlive:=true;
        UploadDetailQuery.First;
        MsExcel.ActiveWorkBook.Saved := True;
        MsExcelWorkBook.Close;
        MsExcel.Quit;
        VarClear(MsExcel);
   end;
    edit8.Text:= UploadlQuery.fieldbyname('SKU').AsString;
    edit9.Text:= UploadlQuery.fieldbyname('CostingSeason').AsString;
    edit10.Text:= UploadlQuery.fieldbyname('Round').AsString;
   except
   on E:Exception do
      begin
        //showmessage('123');
        Application.MessageBox(PChar('NO EXCEL '+E.Message),'', MB_OK);
        MsExcel.ActiveWorkBook.Saved := True;
        MsExcelWorkBook.Close;
        MsExcel.Quit;
        VarClear(MsExcel);
        Exit;
      end;
  end;

end;

procedure TCostingCBD.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  action:=cafree;
end;

procedure TCostingCBD.FormDestroy(Sender: TObject);
begin
  CostingCBD:=nil;
end;

procedure TCostingCBD.DBGridEh6GetCellParams(Sender: TObject;
  Column: TColumnEh; AFont: TFont; var Background: TColor;
  State: TGridDrawState);
function RoundClassic(R: Single): Int64;
begin
  if Frac(R) >= 0.5 then
    Result := Trunc(R) + 1
  else
    Result:= Trunc(R);
end;
begin
//有用量沒價格 <>車線
if (UploadDetailQuery.FieldByName('PartName').value<>'Threads') then
  if (UploadDetailQuery.FieldByName('NetUsage').value>0)
  and ((UploadDetailQuery.fieldbyname('UnitCost').isnull)or(UploadDetailQuery.fieldbyname('UnitCost').asstring='0'))  then
  begin
    DBGridEh6.canvas.font.color:= $0000008B;
  end;
//需補充2ND LO公式
if (UploadDetailQuery.FieldByName('Process_No').value<>0) and (UploadDetailQuery.FieldByName('Process_No').asstring<>'') then
begin
  if (UploadDetailQuery.FieldByName('NetUsage').value>0)
    and ((UploadDetailQuery.fieldbyname('SecondLabor').asstring='') or(UploadDetailQuery.fieldbyname('SecondLF').asstring=''))  then
  begin
    DBGridEh6.canvas.font.color:=clred;
  end;
end;
// 計算結果不同
if  (UploadDetailQuery.FieldByName('SecondLabor_auto').AsString<>'') then
  if NOT(
    RoundClassic(strtofloat(UploadDetailQuery.FieldByName('SecondLabor_auto').AsString)*10000)/10000
      =RoundClassic(strtofloat(UploadDetailQuery.FieldByName('SecondLabor').AsString)*10000)/10000
      ) or NOT(
      RoundClassic(strtofloat(UploadDetailQuery.FieldByName('SecondOverhead_auto').AsString)*10000)/10000
        =RoundClassic(strtofloat(UploadDetailQuery.FieldByName('SecondOverhead').AsString)*10000)/10000
        )then
        begin
          DBGridEh6.canvas.font.color:=clred;
        end;
//
if ((Pos('IP',UploadDetailQuery.FieldByName('Material').AsString)>0) or (Pos('Print',UploadDetailQuery.FieldByName('Material').AsString)>0))
  and ((UploadDetailQuery.FieldByName('NetUsage').value=1)  or (UploadDetailQuery.FieldByName('NetUsage').value=2))
  and (UploadDetailQuery.FieldByName('Supplier').value='Factory In-House')
  and (UploadDetailQuery.FieldByName('Process_No').asstring='') then
  begin
    DBGridEh6.canvas.font.color:=$00458BFF;
  end
end;

procedure TCostingCBD.BA3Click(Sender: TObject);
begin
  if Not(QueryMTL.active) then
    Exit;       
  QueryMTL.first;
  QueryMTL.cachedupdates:=true;
  QueryMTL.requestlive:=true;
  QueryMTL.edit;
  if  QueryMTL.FieldByName('FTYCode').value<>null then
    if (Copy(QueryMTL.FieldByName('FTYCode').value,1,6)='Delete') then
      QueryMTL.fieldbyname('FTYCode').Value:=Copy(QueryMTL.FieldByName('FTYCode').value,8,999)    //資料庫刪除恢復
    else
      QueryMTL.fieldbyname('FTYCode').Value:='Delete-'+QueryMTL.fieldbyname('FTYCode').Value   //刪除資料庫
  else
    QueryMTL.fieldbyname('FTYCode').Value:='FTYCode-';
end;

procedure TCostingCBD.BA5Click(Sender: TObject);
var
  i:integer;
begin
    QueryMTL.First;
    for i:=1 to QueryMTL.RecordCount do
    begin
    
      if  UploadDetailQuery.FieldByName('Remark').value<>null then
        if (Copy(QueryMTL.FieldByName('FTYCode').value,1,6)='Delete') then
        begin
          UpdateSQL3.apply(ukdelete)
        end
      else //修改
        begin
              QueryMTL.Edit;
              UpdateSQL3.apply(ukmodify)
        end;
          //end;

      QueryMTL.Next
    end;//for
end;

procedure TCostingCBD.ExportExcel(Query:TQuery);
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
        for   i:=0   to   Query.fieldcount-1   do
        begin
            eclApp.Cells(1,i+2):=Query.fields[i].FieldName;
        end;

        Query.First;    
       if PageControl1.ActivePageIndex=3 then
          eclApp.ActiveSheet.Columns[76].NumberFormat := '@';

        j:=2;
        while   not   Query.Eof   do
        begin
          eclApp.Cells(j,1):=j-1;
          for   i:=0   to  Query.fieldcount-1  do
          begin
           if (PageControl1.ActivePageIndex=3)and(i=21) then
                eclApp.Cells(j,i+2):=Query.Fields[i].asstring+'%'
           else
                eclApp.Cells(j,i+2):=Query.Fields[i].Value;
          end;
        Query.Next;
        inc(j);
        end;


       if PageControl1.ActivePageIndex=3 then
         if CBGetOrderByPODate.Checked=true then
            eclApp.Cells(1,33):='pairs_PODate'
         else
            eclApp.Cells(1,33):='pairs_BuyNo';

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

{procedure TCostingCBD.BA8Click(Sender: TObject);
//var  eclApp,WorkBook:olevariant;
//     i,j:integer;
begin
  if PageControl1.ActivePageIndex=1 then
      ExportExcel(QueryMTL)
  else if PageControl1.ActivePageIndex=2 then
      ExportExcel(QueryProcess)
  else
      ExportExcel(Query_PriceList)
end; }



procedure TCostingCBD.UploadDetailQueryCalcFields(DataSet: TDataSet); 
var tempText,COST,USAGE:string;
function Eval(expStr: string): string;
var js: OleVariant;
begin js := CreateOleObject('ScriptControl');
js.Language := 'JavaScript';
Result := js.Eval(expStr);
js := Unassigned;
end;
function RoundClassic(R: Single): Int64;
begin   
  if Frac(R) >= 0.5 then
    Result := Trunc(R) + 1
  else
    Result:= Trunc(R);
end;
begin

  UploadDetailQuery.FieldByName('Material').Value := (UploadDetailQuery.FieldByName('Material_Text') as TBlobField).AsString;
  ///
        if  (UploadDetailQuery.fieldbyname('SecondLF').Asstring<>'')and (UploadDetailQuery.fieldbyname('SecondLF').Asstring<>'0') then
          begin
          //UploadDetailQuery.edit;
          UploadDetailQuery.FieldByName('SecondLabor_auto').Value := RoundClassic( strtofloat(
              Eval(StringReplace(StringReplace(UploadDetailQuery.FieldByName('SecondLF').Value,'COST',UploadDetailQuery.fieldbyname('UnitCost').Asstring,[rfReplaceAll]),'USAGE',UploadDetailQuery.fieldbyname('GrossUsage').Asstring,[rfReplaceAll])))*1000000)/1000000;
          //UploadDetailQuery.FieldByName('SecondLabor_auto').Value := copy(
          //    Eval(StringReplace(StringReplace(UploadDetailQuery.FieldByName('SecondLF').Value,'COST',floattostr(TempLandCost),[rfReplaceAll]),'USAGE',floattostr(TempUsage),[rfReplaceAll])),1,8);
          if  (UploadDetailQuery.fieldbyname('SecondOF').Asstring<>'') then
              begin
                UploadDetailQuery.FieldByName('SecondOverhead_auto').Value := RoundClassic( strtofloat(
                  Eval(StringReplace(StringReplace(UploadDetailQuery.FieldByName('SecondOF').Value,'COST',UploadDetailQuery.fieldbyname('UnitCost').Asstring,[rfReplaceAll]),'USAGE',UploadDetailQuery.fieldbyname('GrossUsage').Asstring,[rfReplaceAll])))*1000000)/1000000;
              end;
          end;
end;

procedure TCostingCBD.UploadlQueryCalcFields(DataSet: TDataSet);
begin
         UploadlQuery.FieldByName('Remark_').Value := (UploadlQuery.FieldByName('Remark') as TBlobField).AsString;
end;

procedure TCostingCBD.QueryMTLCalcFields(DataSet: TDataSet);
begin
//        QueryMTL.FieldByName('Material').Value := (QueryMTL.FieldByName('Material_Text') as TBlobField).AsString;
end;



procedure TCostingCBD.DBGridEh2DrawColumnCell(Sender: TObject;
  const Rect: TRect; DataCol: Integer; Column: TColumnEh;
  State: TGridDrawState);
var   CurrentValue, PreviousValue: string;
begin


if (ED8.text<>'') or (ED9.text<>'')  then
  begin

  // 假?我??? 'YourFieldName' 列的值
  if Column.FieldName = 'Material' then
    if (Column.Field.Value <> Material) then
    begin
      DBGridEh2.Canvas.Brush.Color := clRed;   // ?置整行背景??色
      DBGridEh2.Canvas.FillRect(Rect);         // 填充?元格背景
      DBGridEh2.Canvas.Font.Color := clWhite;  // ?置字体?色?白色
    end;
  if Column.FieldName = 'FlexMaterialCode' then
    if Column.Field.Value <> FlexMaterialCode then
    begin
      DBGridEh2.Canvas.Brush.Color := clRed;   // ?置整行背景??色
      DBGridEh2.Canvas.FillRect(Rect);         // 填充?元格背景
      DBGridEh2.Canvas.Font.Color := clWhite;  // ?置字体?色?白色
    end;
  if Column.FieldName = 'color' then
    if Column.Field.Value <> color then
    begin
      DBGridEh2.Canvas.Brush.Color := clRed;   // ?置整行背景??色
      DBGridEh2.Canvas.FillRect(Rect);         // 填充?元格背景
      DBGridEh2.Canvas.Font.Color := clWhite;  // ?置字体?色?白色
    end;
  if Column.FieldName = 'PriceOVR' then
    if Column.Field.Value <> PriceOVR  then
    begin
      DBGridEh2.Canvas.Brush.Color := clRed;   // ?置整行背景??色
      DBGridEh2.Canvas.FillRect(Rect);         // 填充?元格背景
      DBGridEh2.Canvas.Font.Color := clWhite;  // ?置字体?色?白色
    end;
  if Column.FieldName = 'T1Freight' then
    if Column.Field.Value <> T1Freight then
    begin
      DBGridEh2.Canvas.Brush.Color := clRed;   // ?置整行背景??色
      DBGridEh2.Canvas.FillRect(Rect);         // 填充?元格背景
      DBGridEh2.Canvas.Font.Color := clWhite;  // ?置字体?色?白色
    end;
  if Column.FieldName = 'MaterialCost' then
    if Column.Field.Value <> MaterialCost then
    begin
      DBGridEh2.Canvas.Brush.Color := clRed;   // ?置整行背景??色
      DBGridEh2.Canvas.FillRect(Rect);         // 填充?元格背景
      DBGridEh2.Canvas.Font.Color := clWhite;  // ?置字体?色?白色
    end;
  if Column.FieldName = 'BaseMaterialPrice' then
    if Column.Field.Value <> BaseMaterialPrice then
    begin
      DBGridEh2.Canvas.Brush.Color := clRed;   // ?置整行背景??色
      DBGridEh2.Canvas.FillRect(Rect);         // 填充?元格背景
      DBGridEh2.Canvas.Font.Color := clWhite;  // ?置字体?色?白色
    end;
  if Column.FieldName = 'SupplierFreightValue' then
    if Column.Field.Value <> SupplierFreightValue then
    begin
      DBGridEh2.Canvas.Brush.Color := clRed;   // ?置整行背景??色
      DBGridEh2.Canvas.FillRect(Rect);         // 填充?元格背景
      DBGridEh2.Canvas.Font.Color := clWhite;  // ?置字体?色?白色
    end;
  if Column.FieldName = 'TRPnGRPUpcharge' then
    if Column.Field.Value <> TRPnGRPUpcharge then
    begin
      DBGridEh2.Canvas.Brush.Color := clRed;   // ?置整行背景??色
      DBGridEh2.Canvas.FillRect(Rect);         // 填充?元格背景
      DBGridEh2.Canvas.Font.Color := clWhite;  // ?置字体?色?白色
    end;
  if Column.FieldName = 'ColorComments' then
    if Column.Field.Value <> colorcomments then
    begin
      DBGridEh2.Canvas.Brush.Color := clRed;   // ?置整行背景??色
      DBGridEh2.Canvas.FillRect(Rect);         // 填充?元格背景
      DBGridEh2.Canvas.Font.Color := clWhite;  // ?置字体?色?白色
    end;
  DBGridEh2.DefaultDrawColumnCell(Rect, DataCol, Column, State);
  end;

end;

procedure TCostingCBD.CheckBox5Click(Sender: TObject);
begin
         if (CheckBox5.Checked=false) then
         begin
            CB1.Checked:=false;
            CB2.Checked:=false;
            CB3.Checked:=false;
            CB4.Checked:=false;
            CB5.Checked:=false;
            CB6.Checked:=false;
            CB7.Checked:=false;
            CB8.Checked:=false;
         end
         else  
         begin
            CB1.Checked:=true;
            CB2.Checked:=true;
            CB3.Checked:=true;
            CB4.Checked:=false;
            CB5.Checked:=false;
            CB6.Checked:=true;
            CB7.Checked:=false;
            CB8.Checked:=false;
         end

end;

procedure TCostingCBD.QueryProcessCalcFields(DataSet: TDataSet);
var tempText,COST,USAGE:string;
function Eval(expStr: string): string;
var js: OleVariant;
begin js := CreateOleObject('ScriptControl');
js.Language := 'JavaScript';
Result := js.Eval(expStr);
js := Unassigned;
end;
function RoundClassic(R: Real): Int64;
begin
  Result:= Trunc(R);
  if Frac(R) >= 0.5 then
    Result := Result + 1;
end;
begin
    if  (QueryProcess.fieldbyname('NetUsage').Asstring<>'')and (QueryProcess.fieldbyname('NetUsage').Asstring<>'0') then
    if  (QueryProcess.fieldbyname('SecondLF').Asstring<>'')and (QueryProcess.fieldbyname('SecondLF').Asstring<>'0') then
      begin
          {USAGE:=(QueryProcess.fieldbyname('NetUsage').Value/(1-(QueryProcess.fieldbyname('CutLoss').Value/100))*(1+(QueryProcess.fieldbyname('SizeGrading').Value/100)));
          if (QueryProcess.fieldbyname('PriceOVR').Asstring<>'0') and (QueryProcess.fieldbyname('PriceOVR').Asstring<>'') then
            COST:= QueryProcess.fieldbyname('PriceOVR').Value*(1+(QueryProcess.fieldbyname('T1Freight').Value/100))*StrToFloat(USAGE)
          else
            COST:= QueryProcess.fieldbyname('MaterialCost').Value*(1+(QueryProcess.fieldbyname('T1Freight').Value/100))*StrToFloat(USAGE);
          tempText:= Eval(StringReplace(StringReplace(QueryProcess.FieldByName('SecondLF').Value,'COST',COST,[rfReplaceAll]),'USAGE',USAGE,[rfReplaceAll]));
          if(tempText <> '') then
            QueryProcess.FieldByName('SecondLabor_auto').Value := RoundClassic(strtofloat(tempText)*10000)/10000;  //RoundTo 四舍六入五留雙
          tempText:= Eval(StringReplace(StringReplace(QueryProcess.FieldByName('SecondOF').Value,'COST',COST,[rfReplaceAll]),'USAGE',USAGE,[rfReplaceAll]));
          if(tempText<>'') then
            QueryProcess.FieldByName('SecondOverhead_auto').Value := RoundClassic(strtofloat(tempText)*10000)/10000;    }


          QueryProcess.FieldByName('SecondLabor_auto').Value := RoundClassic( strtofloat(
              Eval(StringReplace(StringReplace(QueryProcess.FieldByName('SecondLF').Value,'COST',QueryProcess.fieldbyname('UnitCost').Asstring,[rfReplaceAll]),'USAGE',QueryProcess.fieldbyname('GrossUsage').Asstring,[rfReplaceAll])))*1000000)/1000000;
          if  (QueryProcess.fieldbyname('SecondOF').Asstring<>'') then
              begin
              QueryProcess.FieldByName('SecondOverhead_auto').Value := RoundClassic( strtofloat(
                Eval(StringReplace(StringReplace(QueryProcess.FieldByName('SecondOF').Value,'COST',QueryProcess.fieldbyname('UnitCost').Asstring,[rfReplaceAll]),'USAGE',QueryProcess.fieldbyname('GrossUsage').Asstring,[rfReplaceAll])))*1000000)/1000000;
                end;
      end;
end;

procedure TCostingCBD.BC2Click(Sender: TObject);
var i:integer;
begin
    QueryProcess.First;
    for i:=1 to QueryProcess.RecordCount do
    begin
           //if QueryProcess.FieldByName('SecondLabor_auto').AsString<>'' then
              UpdateSQL4.apply(ukmodify);
           QueryProcess.next;
    end;
    QueryProcess.active:=false;
    BC1.click;
end;

procedure TCostingCBD.DBGridEh3GetCellParams(Sender: TObject;
  Column: TColumnEh; AFont: TFont; var Background: TColor;
  State: TGridDrawState);
begin
if  QueryProcess.active=true then
{if  QueryProcess.FieldByName('SecondLabor').Value>0 then
if NOT((QueryProcess.FieldByName('SecondLabor_auto').AsString=QueryProcess.FieldByName('SecondLabor').AsString)
  and (QueryProcess.FieldByName('SecondOverhead_auto').AsString=QueryProcess.FieldByName('SecondOverhead').AsString))then
  begin
    DBGridEh3.canvas.font.color:=clred;
  end;      }
if  (QueryProcess.FieldByName('SecondLabor_auto').AsString<>'') then
              if NOT(
                Trunc(strtofloat(QueryProcess.FieldByName('SecondLabor_auto').AsString)*10000)/10000
                  =Trunc(strtofloat(QueryProcess.FieldByName('SecondLabor').AsString)*10000)/10000
                  ) or NOT(
                  Trunc(strtofloat(QueryProcess.FieldByName('SecondOverhead_auto').AsString)*10000)/10000
                    =Trunc(strtofloat(QueryProcess.FieldByName('SecondOverhead').AsString)*10000)/10000
                    )then
  begin
    DBGridEh3.canvas.font.color:=clred;
  end;
end;

procedure TCostingCBD.FormCreate(Sender: TObject);
begin
       PageControl1.ActivePageIndex:=0;
       if (main.edit1.text='51267') or (main.edit1.text='51295') then
       begin
          BBadmin_runall.Visible:=True;    //全部重跑保存判斷
          Edit24.Visible:=True;
       end;
end;

procedure TCostingCBD.BView1Click(Sender: TObject);
begin
      DBGridEh6.Columns[4].Width :=25;   //PartName
      DBGridEh6.Columns[6].Width :=20;   //Percentage
      DBGridEh6.Columns[7].Width :=130;   //Material
      DBGridEh6.Columns[8].Width :=110;   //MaterialComments
      DBGridEh6.Columns[9].Width :=65;   //FlexMaterialCode
      DBGridEh6.Columns[10].Width :=90;   //Supplier
      DBGridEh6.Columns[11].Width :=25;   //SupplierCode
      DBGridEh6.Columns[12].Width :=60;   //Color
      DBGridEh6.Columns[13].Width :=100;   //ColorComments
      DBGridEh6.Columns[14].Width :=50;   //ColorGroup
      DBGridEh6.Columns[15].Width :=25;   //Measure
      DBGridEh6.Columns[16].Width :=25;   //MeasureOVR
      DBGridEh6.Columns[17].Width :=25;   //Tooling
      DBGridEh6.Columns[18].Width :=25;   //TnRP
      DBGridEh6.Columns[19].Width :=40;   //BaseMaterialPrice
      DBGridEh6.Columns[20].Width :=30;   //TRPnGRPUpcharge
      DBGridEh6.Columns[21].Width :=30;   //SupplierFreightValue
      DBGridEh6.Columns[22].Width :=30;   //PriceStatus
      DBGridEh6.Columns[23].Width :=60;   //MaterialCost
      DBGridEh6.Columns[24].Width :=60;   //PriceOVR
      DBGridEh6.Columns[25].Width :=60;   //NetUsage
      DBGridEh6.Columns[26].Width :=30;   //CutLoss
      DBGridEh6.Columns[27].Width :=30;   //SizeGrading
      DBGridEh6.Columns[28].Width :=60;   //DeliveryTerm
      DBGridEh6.Columns[29].Width :=40;   //T1Freight
      DBGridEh6.Columns[30].Width :=40;   //LandedCost
      DBGridEh6.Columns[31].Width :=40;   //GrossUsage
      DBGridEh6.Columns[32].Width :=40;   //UnitCost
      DBGridEh6.Columns[33].Width :=50;   //SecondLabor
      DBGridEh6.Columns[34].Width :=50;   //SecondOverhead
      DBGridEh6.Columns[35].Width :=90;   //SecondLF
      DBGridEh6.Columns[36].Width :=80;   //SecondOF
      DBGridEh6.Columns[37].Width :=50;   //SecondLabor_auto
      DBGridEh6.Columns[38].Width :=50;   //SecondOverhead_auto
      DBGridEh6.Columns[39].Width :=120;   //Remark
      DBGridEh6.Columns[40].Width :=25;   //ColorQty
      DBGridEh6.Columns[41].Width :=25;   //ColorQty_Neon
      DBGridEh6.Columns[42].Width :=25;   //GUMColor
      DBGridEh6.Columns[43].Width :=25;   //moldsPperson
      DBGridEh6.Columns[44].Width :=25;   //pairPmold
      DBGridEh6.Columns[45].Width :=25;   //PCsPPair
      DBGridEh6.Columns[46].Width :=40;   //TurnOverRate
      DBGridEh6.Columns[47].Width :=55;   //UserName
      DBGridEh6.Columns[48].Width :=70;   //UserUpdateTime


end;

procedure TCostingCBD.BView2Click(Sender: TObject);
begin
      DBGridEh6.Columns[4].Width :=0;   //PartName
      DBGridEh6.Columns[6].Width :=0;   //Percentage
      DBGridEh6.Columns[7].Width :=130;   //Material
      DBGridEh6.Columns[8].Width :=110;   //MaterialComments
      DBGridEh6.Columns[9].Width :=65;   //FlexMaterialCode
      DBGridEh6.Columns[10].Width :=90;   //Supplier
      DBGridEh6.Columns[11].Width :=0;   //SupplierCode
      DBGridEh6.Columns[12].Width :=60;   //Color
      DBGridEh6.Columns[13].Width :=100;   //ColorComments
      DBGridEh6.Columns[14].Width :=50;   //ColorGroup
      DBGridEh6.Columns[15].Width :=25;   //Measure
      DBGridEh6.Columns[16].Width :=25;   //MeasureOVR
      DBGridEh6.Columns[17].Width :=25;   //Tooling
      DBGridEh6.Columns[18].Width :=25;   //TnRP
      DBGridEh6.Columns[19].Width :=40;   //BaseMaterialPrice
      DBGridEh6.Columns[20].Width :=30;   //TRPnGRPUpcharge
      DBGridEh6.Columns[21].Width :=30;   //SupplierFreightValue
      DBGridEh6.Columns[22].Width :=30;   //PriceStatus
      DBGridEh6.Columns[23].Width :=60;   //MaterialCost
      DBGridEh6.Columns[24].Width :=60;   //PriceOVR
      DBGridEh6.Columns[25].Width :=60;   //NetUsage
      DBGridEh6.Columns[26].Width :=30;   //CutLoss
      DBGridEh6.Columns[27].Width :=30;   //SizeGrading
      DBGridEh6.Columns[28].Width :=60;   //DeliveryTerm
      DBGridEh6.Columns[29].Width :=40;   //T1Freight
      DBGridEh6.Columns[30].Width :=40;   //LandedCost
      DBGridEh6.Columns[31].Width :=40;   //GrossUsage
      DBGridEh6.Columns[32].Width :=40;   //UnitCost
      DBGridEh6.Columns[33].Width :=50;   //SecondLabor
      DBGridEh6.Columns[34].Width :=50;   //SecondOverhead
      DBGridEh6.Columns[35].Width :=90;   //SecondLF
      DBGridEh6.Columns[36].Width :=80;   //SecondOF
      DBGridEh6.Columns[37].Width :=0;   //SecondLabor_auto
      DBGridEh6.Columns[38].Width :=0;   //SecondOverhead_auto
      DBGridEh6.Columns[39].Width :=120;   //Remark
      DBGridEh6.Columns[40].Width :=0;   //ColorQty
      DBGridEh6.Columns[41].Width :=0;   //ColorQty_Neon
      DBGridEh6.Columns[42].Width :=0;   //GUMColor
      DBGridEh6.Columns[43].Width :=0;   //moldsPperson
      DBGridEh6.Columns[44].Width :=0;   //pairPmold
      DBGridEh6.Columns[45].Width :=0;   //PCsPPair
      DBGridEh6.Columns[46].Width :=0;   //TurnOverRate
      DBGridEh6.Columns[47].Width :=55;   //UserName
      DBGridEh6.Columns[48].Width :=70;   //UserUpdateTime

end;

procedure TCostingCBD.BView3Click(Sender: TObject);
begin
      DBGridEh6.Columns[4].Width :=25;   //PartName
      DBGridEh6.Columns[6].Width :=0;   //Percentage
      DBGridEh6.Columns[7].Width :=130;   //Material
      DBGridEh6.Columns[8].Width :=110;   //MaterialComments
      DBGridEh6.Columns[9].Width :=0;   //FlexMaterialCode
      DBGridEh6.Columns[10].Width :=90;   //Supplier
      DBGridEh6.Columns[11].Width :=0;   //SupplierCode
      DBGridEh6.Columns[12].Width :=60;   //Color
      DBGridEh6.Columns[13].Width :=100;   //ColorComments
      DBGridEh6.Columns[14].Width :=0;   //ColorGroup
      DBGridEh6.Columns[15].Width :=25;   //Measure
      DBGridEh6.Columns[16].Width :=0;   //MeasureOVR
      DBGridEh6.Columns[17].Width :=25;   //Tooling
      DBGridEh6.Columns[18].Width :=0;   //TnRP
      DBGridEh6.Columns[19].Width :=0;   //BaseMaterialPrice
      DBGridEh6.Columns[20].Width :=0;   //TRPnGRPUpcharge
      DBGridEh6.Columns[21].Width :=0;   //SupplierFreightValue
      DBGridEh6.Columns[22].Width :=0;   //PriceStatus
      DBGridEh6.Columns[23].Width :=0;   //MaterialCost
      DBGridEh6.Columns[24].Width :=0;   //PriceOVR
      DBGridEh6.Columns[25].Width :=0;   //NetUsage
      DBGridEh6.Columns[26].Width :=0;   //CutLoss
      DBGridEh6.Columns[27].Width :=0;   //SizeGrading
      DBGridEh6.Columns[28].Width :=0;   //DeliveryTerm
      DBGridEh6.Columns[29].Width :=0;   //T1Freight
      DBGridEh6.Columns[30].Width :=0;   //LandedCost
      DBGridEh6.Columns[31].Width :=0;   //GrossUsage
      DBGridEh6.Columns[32].Width :=0;   //UnitCost
      DBGridEh6.Columns[33].Width :=50;   //SecondLabor
      DBGridEh6.Columns[34].Width :=50;   //SecondOverhead
      DBGridEh6.Columns[35].Width :=90;   //SecondLF
      DBGridEh6.Columns[36].Width :=80;   //SecondOF
      DBGridEh6.Columns[37].Width :=50;   //SecondLabor_auto
      DBGridEh6.Columns[38].Width :=50;   //SecondOverhead_auto
      DBGridEh6.Columns[39].Width :=120;   //Remark
      DBGridEh6.Columns[40].Width :=0;   //ColorQty
      DBGridEh6.Columns[41].Width :=0;   //ColorQty_Neon
      DBGridEh6.Columns[42].Width :=0;   //GUMColor
      DBGridEh6.Columns[43].Width :=0;   //moldsPperson
      DBGridEh6.Columns[44].Width :=0;   //pairPmold
      DBGridEh6.Columns[45].Width :=0;   //PCsPPair
      DBGridEh6.Columns[46].Width :=0;   //TurnOverRate
      DBGridEh6.Columns[47].Width :=55;   //UserName
      DBGridEh6.Columns[48].Width :=70;   //UserUpdateTime

end;

procedure TCostingCBD.BitBtn3Click(Sender: TObject);
var   eclApp,WorkBook:olevariant;
      i,j,SubJ,k:integer;
      PartName:string;
begin
  if  UploadDetailQuery.active  then
    begin
    try
      eclApp:=CreateOleObject('Excel.Application');
      WorkBook:=CreateOleObject('Excel.Sheet');
    except
      Application.MessageBox('No Microsoft   Excel','Microsoft   Excel',MB_OK+MB_ICONWarning);
      Exit;
    end;
    try
        WorkBook:=eclApp.workbooks.Add;         //UploadlQuery.fieldbyname('PricingSeason').Value+

        eclApp.Cells(2,2):='Product Description';
        eclApp.Cells(3,2):='Product #';
        eclApp.Cells(4,2):='Model Description';
        eclApp.Cells(5,2):='Model';
        eclApp.Cells(6,2):='Cut';
        eclApp.Cells(7,2):='Colorway Long Name';
        eclApp.Cells(8,2):='Colorway ID';
        eclApp.Cells(9,2):='Material Number';
        eclApp.Cells(10,2):='Tech Level';
        eclApp.Cells(11,2):='Last #';
        eclApp.Cells(2,5):='Segment';
        eclApp.Cells(3,5):='Production Type';
        eclApp.Cells(4,5):='Distribution Type';
        eclApp.Cells(5,5):='Category';
        eclApp.Cells(6,5):='Planning Level 2';
        eclApp.Cells(7,5):='Product Line';
        eclApp.Cells(8,5):='Design Pack';
        eclApp.Cells(9,5):='Direct-To-DC';
        eclApp.Cells(10,5):='Shoe Weight/pc (gms)';
        eclApp.Cells(11,5):='Upper Material %';
        eclApp.Cells(2,7):='Designer';
        eclApp.Cells(3,7):='Product Developer';
        eclApp.Cells(4,7):='Factory Developer';
        eclApp.Cells(5,7):='Factory Manager';
        eclApp.Cells(6,7):='CLO Tech Developer';
        eclApp.Cells(7,7):='CLO Project Manager';
        eclApp.Cells(8,7):='Factory Costing';
        eclApp.Cells(9,7):='Factory Costing Manager';
        eclApp.Cells(10,7):='CLO Costing';
        eclApp.Cells(11,7):='CLO Costing Manager';
        eclApp.Cells(2,9):='Colorway Status';
        eclApp.Cells(3,9):='Source Flag';
        eclApp.Cells(4,9):='CLO Carryover Confirmation Status';
        eclApp.Cells(5,9):='FTY BOM Status';
        eclApp.Cells(6,9):='Factory Confirmation Status';
        eclApp.Cells(7,9):='CLO Confirmation Status';
        eclApp.Cells(8,9):='FTY BOM Cost Data Status';
        eclApp.Cells(9,9):='Factory Price Submit Status';
        eclApp.Cells(10,9):='Factory Price Status';
        eclApp.Cells(11,9):='Factory Price Submit Comments';
        eclApp.Cells(2,11):='Last Updated (Colorway Status)';
        eclApp.Cells(3,11):='Last Updated (Source Flag)';
        eclApp.Cells(4,11):='Last Updated (CLO C/O Confirmation Date)';
        eclApp.Cells(5,11):='Last Updated (FTY BOM Status)';
        eclApp.Cells(6,11):='Last Updated (Factory Confirmation Status)';
        eclApp.Cells(7,11):='Last Updated (CLO Development)';
        eclApp.Cells(8,11):='Last Updated (FTY BOM Cost Data Status)';
        eclApp.Cells(9,11):='Last Updated (Factory Price Submit Status)';
        eclApp.Cells(10,11):='Last Updated (Factory Price Status)';
        eclApp.Cells(11,11):='Initial Buy Month';
        eclApp.Cells(2,13):='Costing Season';
        eclApp.Cells(3,13):='Initial Development Season';
        eclApp.Cells(4,13):='Development Center';
        eclApp.Cells(5,13):='Factory';
        eclApp.Cells(6,13):='Sample Size';
        eclApp.Cells(7,13):='Costing Size';
        eclApp.Cells(8,13):='Size Range';
        eclApp.Cells(9,13):='Gender Class';
        eclApp.Cells(10,13):='Target Sample Price';
        eclApp.Cells(11,13):='Forecast Level';
        eclApp.Cells(2,15):='Exchange Rate Status';
        eclApp.Cells(3,15):='CNY';
        eclApp.Cells(4,15):='TWD';
        eclApp.Cells(5,15):='VND';
        eclApp.Cells(6,15):='INR';
        eclApp.Cells(7,15):='IDR';
        eclApp.Cells(8,15):='EUR';
        eclApp.Cells(9,15):='HKD';
        eclApp.Cells(2,17):='Composition of Base Factory Price';
        eclApp.Cells(3,17):='Total Material Cost %';
        eclApp.Cells(4,17):='Labor Cost %';
        eclApp.Cells(5,17):='Overhead Cost %';
        eclApp.Cells(6,17):='Profit %';
        eclApp.Cells(7,17):='Mold Charge %';
        eclApp.Cells(2,20):='Labor';
        eclApp.Cells(3,20):='C2B L';
        eclApp.Cells(4,20):='2nd L';
        eclApp.Cells(2,23):='Overhead';
        eclApp.Cells(3,23):='C2B O';
        eclApp.Cells(4,23):='2nd O';
        eclApp.Cells(2,26):='Profit $';
        eclApp.Cells(3,26):='Profit %';
        eclApp.Cells(2,28):='CBD Total Material Cost';
        eclApp.Cells(3,28):='Mold Charge';
        eclApp.Cells(4,28):='Base Factory Price (without Mold)';
        eclApp.Cells(5,28):='Base Factory Price';
        eclApp.Cells(12,1):='#';
        eclApp.Cells(12,2):='Component';
        eclApp.Cells(12,3):='%';
        eclApp.Cells(12,4):='Material';
        eclApp.Cells(12,5):='Material Id';
        eclApp.Cells(12,6):='Material Comments';
        eclApp.Cells(12,7):='Supplier';
        eclApp.Cells(12,8):='Supplier Code';
        eclApp.Cells(12,9):='Tooling';
        eclApp.Cells(12,10):='TRP & GRP';
        eclApp.Cells(12,11):='Color';
        eclApp.Cells(12,12):='Color Comments';
        eclApp.Cells(12,13):='Measure';
        eclApp.Cells(12,14):='Base Material Price';
        eclApp.Cells(12,15):='TRP & GRP Upcharge';
        eclApp.Cells(12,16):='Material Price Status';
        eclApp.Cells(12,17):='Total Material Price';
        eclApp.Cells(12,18):='Supplier Freight Value';
        eclApp.Cells(12,19):='Delivery Term';
        eclApp.Cells(12,20):='Material Cost';
        eclApp.Cells(12,21):='Measure OVR';
        eclApp.Cells(12,22):='Price OVR';
        eclApp.Cells(12,23):='T1 Freight %';
        eclApp.Cells(12,24):='Landed Cost';
        eclApp.Cells(12,25):='Net Usage';
        eclApp.Cells(12,26):='Cut Loss %';
        eclApp.Cells(12,27):='Size Grading %';
        eclApp.Cells(12,28):='Gross Usage';
        eclApp.Cells(12,29):='Unit Cost';
        eclApp.Cells(12,30):='Sub-total Material Cost';
        eclApp.Cells(12,31):='2nd process Labor';
        eclApp.Cells(12,32):='2nd process Overhead';      
        //UploadQ('OHRed_25H',TrimStrNB(5,24,msExcel));// 25H FNL 6BUY 26S FNL -0.08
        eclApp.Cells(5,23):='OHRed_25H';
        eclApp.Cells(8,20):='2nd L (IP)';
        eclApp.Cells(6,23):='2nd O (IP)';
        eclApp.Cells(5,24):=UploadlQuery.fieldbyname('OHRed_25H').Value;       
        eclApp.Cells(8,21):=UploadlQuery.fieldbyname('SecondLabor_IP').Value;
        eclApp.Cells(6,24):=UploadlQuery.fieldbyname('SecondOverhead_IP').Value;

        eclApp.Cells(2,4):=UploadlQuery.fieldbyname('ProductDescription').Value;     //Product Description
//        eclApp.Cells(3,4):=UploadlQuery.fieldbyname('').Value;     //Product #
        eclApp.Cells(4,4):=UploadlQuery.fieldbyname('ModelDescription').Value;     //Model Description
//        eclApp.Cells(5,4):=UploadlQuery.fieldbyname('').Value;     //Model
        eclApp.Cells(6,4):=UploadlQuery.fieldbyname('Cut').Value;     //Cut
        eclApp.Cells(7,4):=UploadlQuery.fieldbyname('ColorwayLongName').Value;     //Colorway Long Name
        eclApp.Cells(8,4):=UploadlQuery.fieldbyname('SR').Value;     //Colorway ID
        eclApp.Cells(9,4):=UploadlQuery.fieldbyname('SKU').Value;     //Material Number
        eclApp.Cells(10,4):=UploadlQuery.fieldbyname('TechLevel').Value;     //Tech Level
        eclApp.Cells(11,4):=UploadlQuery.fieldbyname('Last').Value;     //Last #
        eclApp.Cells(2,6):=UploadlQuery.fieldbyname('Segment').Value;     //Segment
        eclApp.Cells(3,6):=UploadlQuery.fieldbyname('ProductionType').Value;     //Production Type
        eclApp.Cells(4,6):=UploadlQuery.fieldbyname('DistributionType').Value;     //Distribution Type
        eclApp.Cells(5,6):=UploadlQuery.fieldbyname('Category').Value;     //Category
        eclApp.Cells(6,6):=UploadlQuery.fieldbyname('PlanningLevel2').Value;     //Planning Level 2
        eclApp.Cells(7,6):=UploadlQuery.fieldbyname('ProductLine').Value;     //Product Line
//        eclApp.Cells(8,6):=UploadlQuery.fieldbyname('').Value;     //Design Pack
        eclApp.Cells(9,6):=UploadlQuery.fieldbyname('DirectToDC').Value;     //Direct-To-DC
//        eclApp.Cells(10,6):=UploadlQuery.fieldbyname('').Value;     //Shoe Weight/pc (gms)
        eclApp.Cells(11,6):=UploadlQuery.fieldbyname('UpperMaterial').Value;     //Upper Material %
//        eclApp.Cells(2,8):=UploadlQuery.fieldbyname('').Value;     //Designer
//        eclApp.Cells(3,8):=UploadlQuery.fieldbyname('').Value;     //Product Developer
        eclApp.Cells(4,8):=UploadlQuery.fieldbyname('FactoryDeveloper').Value;     //Factory Developer
        eclApp.Cells(5,8):=UploadlQuery.fieldbyname('FactoryDevManager').Value;     //Factory Manager
//        eclApp.Cells(6,8):=UploadlQuery.fieldbyname('').Value;     //CLO Tech Developer
//        eclApp.Cells(7,8):=UploadlQuery.fieldbyname('').Value;     //CLO Project Manager
        eclApp.Cells(8,8):=UploadlQuery.fieldbyname('FactoryCosting').Value;     //Factory Costing
        eclApp.Cells(9,8):=UploadlQuery.fieldbyname('FactoryCostingManager').Value;     //Factory Costing Manager
        eclApp.Cells(10,8):=UploadlQuery.fieldbyname('CLOCosting').Value;     //CLO Costing
        eclApp.Cells(11,8):=UploadlQuery.fieldbyname('CLOCostingManager').Value;     //CLO Costing Manager
//        eclApp.Cells(2,10):=UploadlQuery.fieldbyname('').Value;     //Colorway Status
        eclApp.Cells(3,10):=UploadlQuery.fieldbyname('SourceFlag').Value;     //Source Flag
//        eclApp.Cells(4,10):=UploadlQuery.fieldbyname('').Value;     //CLO Carryover Confirmation Status
        eclApp.Cells(5,10):=UploadlQuery.fieldbyname('FTYBOMStatus').Value;     //FTY BOM Status
//        eclApp.Cells(6,10):=UploadlQuery.fieldbyname('').Value;     //Factory Confirmation Status
//        eclApp.Cells(7,10):=UploadlQuery.fieldbyname('').Value;     //CLO Confirmation Status
        eclApp.Cells(8,10):=UploadlQuery.fieldbyname('FTYBOMCostDataStatus').Value;     //FTY BOM Cost Data Status
        eclApp.Cells(9,10):=UploadlQuery.fieldbyname('FactoryPriceSubmitStatus').Value;     //Factory Price Submit Status
        eclApp.Cells(10,10):=UploadlQuery.fieldbyname('FactoryPriceStatus').Value;     //Factory Price Status
//        eclApp.Cells(11,10):=UploadlQuery.fieldbyname('').Value;     //Factory Price Submit Comments
        eclApp.Cells(2,12):=UploadlQuery.fieldbyname('LastUpdatedColorwayStatus').Value;     //Last Updated (Colorway Status)
        eclApp.Cells(3,12):=UploadlQuery.fieldbyname('LastUpdatedSourceFlag').Value;     //Last Updated (Source Flag)
        eclApp.Cells(4,12):=UploadlQuery.fieldbyname('LastUpdatedCLOConfirmationDate').Value;     //Last Updated (CLO C/O Confirmation Date)
        eclApp.Cells(5,12):=UploadlQuery.fieldbyname('LastUpdatedByFTYBOMCost').Value;     //Last Updated (FTY BOM Status)
        eclApp.Cells(6,12):=UploadlQuery.fieldbyname('LastUpdatedFactoryConfirmation').Value;     //Last Updated (Factory Confirmation Status)
        eclApp.Cells(7,12):=UploadlQuery.fieldbyname('LastUpdatedDevelopment').Value;     //Last Updated (CLO Development)
        eclApp.Cells(8,12):=UploadlQuery.fieldbyname('LastUpdatedDateFTYBOMCost').Value;     //Last Updated (FTY BOM Cost Data Status)
        eclApp.Cells(9,12):=UploadlQuery.fieldbyname('LastUpdatedFactoryPriceSubmit').Value;     //Last Updated (Factory Price Submit Status)
        eclApp.Cells(10,12):=UploadlQuery.fieldbyname('LastUpdatedFactoryPriceStatus').Value;     //Last Updated (Factory Price Status)
        eclApp.Cells(11,12):=UploadlQuery.fieldbyname('InitialBuyMonth').Value;     //Initial Buy Month
        eclApp.Cells(2,14):=UploadlQuery.fieldbyname('FlexSeason').Value;     //Costing Season
        eclApp.Cells(3,14):=UploadlQuery.fieldbyname('DevelopmentSeason').Value;     //Initial Development Season
        eclApp.Cells(4,14):=UploadlQuery.fieldbyname('DevelopmentCenter').Value;     //Development Center
        eclApp.Cells(5,14):=UploadlQuery.fieldbyname('Factory').Value;     //Factory
        eclApp.Cells(6,14):=UploadlQuery.fieldbyname('SampleSize').Value;     //Sample Size
        eclApp.Cells(7,14):=UploadlQuery.fieldbyname('CostingSize').Value;     //Costing Size
        eclApp.Cells(8,14):=UploadlQuery.fieldbyname('SizeRange').Value;     //Size Range
        eclApp.Cells(9,14):=UploadlQuery.fieldbyname('GenderClass').Value;     //Gender Class
        eclApp.Cells(10,14):=UploadlQuery.fieldbyname('TargetSamplePrice').Value;     //Target Sample Price
        eclApp.Cells(11,14):=UploadlQuery.fieldbyname('ForecastLevel').Value;     //Forecast Level
//        eclApp.Cells(2,16):=UploadlQuery.fieldbyname('').Value;     //Exchange Rate Status
//        eclApp.Cells(3,16):=UploadlQuery.fieldbyname('').Value;     //CNY
//        eclApp.Cells(4,16):=UploadlQuery.fieldbyname('').Value;     //TWD
//        eclApp.Cells(5,16):=UploadlQuery.fieldbyname('').Value;     //VND
//        eclApp.Cells(6,16):=UploadlQuery.fieldbyname('').Value;     //INR
//        eclApp.Cells(7,16):=UploadlQuery.fieldbyname('').Value;     //IDR
//        eclApp.Cells(8,16):=UploadlQuery.fieldbyname('').Value;     //EUR
//        eclApp.Cells(9,16):=UploadlQuery.fieldbyname('').Value;     //HKD
//        eclApp.Cells(2,18):=UploadlQuery.fieldbyname('').Value;     //Composition of Base Factory Price
//        eclApp.Cells(3,18):=UploadlQuery.fieldbyname('').Value;     //Total Material Cost %
//        eclApp.Cells(4,18):=UploadlQuery.fieldbyname('').Value;     //Labor Cost %
//        eclApp.Cells(5,18):=UploadlQuery.fieldbyname('').Value;     //Overhead Cost %
//        eclApp.Cells(6,18):=UploadlQuery.fieldbyname('').Value;     //Profit %
//        eclApp.Cells(7,18):=UploadlQuery.fieldbyname('').Value;     //Mold Charge %
        eclApp.Cells(2,21):=UploadlQuery.fieldbyname('Labor').Value;     //Labor
        eclApp.Cells(3,21):=UploadlQuery.fieldbyname('C2BL').Value;     //C2B L
        eclApp.Cells(4,21):=UploadlQuery.fieldbyname('SecondLabor').Value;     //2nd L
        eclApp.Cells(2,24):=UploadlQuery.fieldbyname('Overhead').Value;     //Overhead
        eclApp.Cells(3,24):=UploadlQuery.fieldbyname('C2BO').Value;     //C2B O
        eclApp.Cells(4,24):=UploadlQuery.fieldbyname('SecondOverhead').Value;     //2nd O
        eclApp.Cells(2,27):=UploadlQuery.fieldbyname('Profit').Value;     //Profit $
        eclApp.Cells(3,27):=UploadlQuery.fieldbyname('ProfitRate').Value;     //Profit %
        eclApp.Cells(2,30):=UploadlQuery.fieldbyname('TotalMaterialCost').Value;     //CBD Total Material Cost
        eclApp.Cells(3,30):=UploadlQuery.fieldbyname('MoldCharge').Value;     //Mold Charge
        eclApp.Cells(4,30):='=AD2+U2+X2+AA2';     //Base Factory Price (without Mold)
        eclApp.Cells(5,30):=UploadlQuery.fieldbyname('FOB').Value;     //Base Factory Price
        eclApp.Cells(2,31):=UploadlQuery.fieldbyname('Remark').Value;     //
        eclApp.Cells(3,31):=UploadlQuery.fieldbyname('RefModel').Value;     //
        eclApp.Cells(1,13):=UploadlQuery.fieldbyname('Round').Value;     //
        eclApp.Cells(3,18):='=(AD2/AD5)*100';
        eclApp.Cells(4,18):='=(U2/AD5)*100';
        eclApp.Cells(5,18):='=(X2/AD5)*100';
        eclApp.Cells(6,18):='=(AA2/AD5)*100';
        eclApp.Cells(7,18):='=(AD3/AD5)*100';
        eclApp.Cells(5,20):='Total labor';
        eclApp.Cells(6,20):='PPH';
        eclApp.Cells(7,20):='Cost mitigation';
        eclApp.Cells(5,21):='=U3+U4';
        eclApp.ActiveSheet.Range['U2:U7'].NumberFormatLocal := '0.0000';
        eclApp.ActiveSheet.Range['X2:X7'].NumberFormatLocal := '0.0000';
        eclApp.ActiveSheet.Cells[2,27].NumberFormatLocal := '0.0000';
        eclApp.ActiveSheet.Cells[3,27].NumberFormatLocal := '0.00';
        eclApp.ActiveSheet.Cells[2,30].NumberFormatLocal := '0.0000';
        eclApp.ActiveSheet.Range['AD3:AD5'].NumberFormatLocal := '0.00';
        eclApp.ActiveSheet.Range['N13:AF200'].NumberFormatLocal := '0.0000';
        eclApp.ActiveSheet.Range['W13:W200'].NumberFormatLocal := '0.00';
        eclApp.ActiveSheet.Range['Z13:AA200'].NumberFormatLocal := '0.00';
        //查詢上一季匯率
        eclApp.ActiveSheet.Cells[6,21]:='='+floattostr(UploadlQuery.fieldbyname('C2B_PPH').Value*UploadlQuery.fieldbyname('C2BL').Value)+'/U5';
        eclApp.ActiveSheet.Cells[7,21]:=UploadlQuery.fieldbyname('CostMitigation').Value;

        UploadDetailQuery.requestlive:=True;
        UploadDetailQuery.cachedupdates:=True;
        UploadDetailQuery.edit;
        UploadDetailQuery.First;
        j:=13;                              //SubJ,SubJend
        SubJ:=0;
        PartName:='';
        k:=0;
        while   not   UploadDetailQuery.Eof   do
          begin
            if (PartName='') or (PartName<>UploadDetailQuery.fieldbyname('PartName').Value) then
                begin
                  PartName:=UploadDetailQuery.fieldbyname('PartName').Value;
                  eclApp.Cells(j,1):=PartName;
                  eclApp.ActiveSheet.Cells[j,1].Font.Bold := True;
                  if SubJ>0 then
                     eclApp.Cells(SubJ,30):='=SUM(AC'+inttostr(SubJ)+':AC'+inttostr(j-1)+')';
                  SubJ:=j;
                  inc(j);
                end;
            for   i:=1   to  30  do    //0~28 29&30 2nd LO
            begin
                if i=23 then                                                  //=IF(V14<>0,V14*(1+W14/100),T14*(1+W14/100))
                    eclApp.Cells(j,i+1):='=IF(V'+inttostr(j)+'<>0,V'+inttostr(j)+'*(1+W'+inttostr(j)+'/100),T'+inttostr(j)+'*(1+W'+inttostr(j)+'/100))'
                else  if i>28 then
                    eclApp.Cells(j,i+2):=UploadDetailQuery.Fields[i].Value
                else if i=28 then
                    eclApp.Cells(j,i+1):='=X'+inttostr(j)+'*AB'+inttostr(j)
                else if i=27 then
                    eclApp.Cells(j,i+1):='=Y'+inttostr(j) +'/(1-Z'+inttostr(j) +'/100)*(1+AA'+inttostr(j) +'/100)'
                else
                  eclApp.Cells(j,i+1):=UploadDetailQuery.Fields[i].Value;
            end;
          if (UploadDetailQuery.fieldbyname('PartName').Value<>'') then
            begin
              inc(k);
              eclApp.Cells(j,1):=inttostr(k);
            end;
          UploadDetailQuery.Next;
          inc(j);
          end; 
      eclApp.Cells(SubJ,30):='=SUM(AC'+inttostr(SubJ)+':AC'+inttostr(j)+')';
      //eclApp.Cells(3,39):='=SUBTOTAL(9,AM4:AM'+Inttostr(j-1)+')';

      eclapp.ActiveSheet.columns.Font.Name := 'Arial';
      eclapp.ActiveSheet.columns.Font.Size := 8;    
      //eclApp.ActiveSheet.Range['A:C'].FreezePanes := True;     凍結窗格 錯誤
      eclapp.ActiveSheet.Cells.EntireRow.RowHeight := 10.5;
      eclApp.ActiveSheet.Range['A12:AD12'].RowHeight := 31.5;
      eclApp.ActiveSheet.Range['A12:AD12'].WrapText:= True;
      eclApp.ActiveSheet.Range['A12:AD12'].Interior.ColorIndex := 35;
      eclApp.ActiveSheet.Range['A12:AD12'].Font.Bold := True;
      eclApp.ActiveSheet.Range['B2:B11'].Font.Bold := True;
      eclApp.ActiveSheet.Range['E2:E11'].Font.Bold := True;
      eclApp.ActiveSheet.Range['G2:G11'].Font.Bold := True;
      eclApp.ActiveSheet.Range['I2:I11'].Font.Bold := True;
      eclApp.ActiveSheet.Range['K2:K11'].Font.Bold := True;
      eclApp.ActiveSheet.Range['M2:M11'].Font.Bold := True;
      eclApp.ActiveSheet.Range['O2:O11'].Font.Bold := True;
      eclApp.ActiveSheet.Range['Q2:Q11'].Font.Bold := True;
      eclApp.ActiveSheet.Range['T2:T11'].Font.Bold := True;
      eclApp.ActiveSheet.Range['W2:W11'].Font.Bold := True;
      eclApp.ActiveSheet.Range['Z2:Z11'].Font.Bold := True;
      eclApp.ActiveSheet.Range['AB2:AB11'].Font.Bold := True;
      eclApp.ActiveSheet.Range['A12:AD12'].VerticalAlignment:= 1;
      eclApp.ActiveSheet.Columns[1].ColumnWidth := 2.71;
      eclApp.ActiveSheet.Columns[2].ColumnWidth :=18.71;
      eclApp.ActiveSheet.Columns[3].ColumnWidth :=3.43;
      eclApp.ActiveSheet.Columns[4].ColumnWidth :=63.43;
      eclApp.ActiveSheet.Columns[5].ColumnWidth :=9.14;
      eclApp.ActiveSheet.Columns[6].ColumnWidth :=24.43;
      eclApp.ActiveSheet.Columns[7].ColumnWidth :=11.14;
      eclApp.ActiveSheet.Columns[8].ColumnWidth :=6.14;
      eclApp.ActiveSheet.Columns[9].ColumnWidth :=8.43;
      eclApp.ActiveSheet.Columns[10].ColumnWidth :=7.14;
      eclApp.ActiveSheet.Columns[11].ColumnWidth :=21.86;
      eclApp.ActiveSheet.Columns[12].ColumnWidth :=19.71;
      eclApp.ActiveSheet.Columns[13].ColumnWidth :=8.71;
      eclApp.ActiveSheet.Columns[14].ColumnWidth :=7.71;
      eclApp.ActiveSheet.Columns[15].ColumnWidth :=5.29;
      eclApp.ActiveSheet.Columns[16].ColumnWidth :=6.43;
      eclApp.ActiveSheet.Columns[17].ColumnWidth :=13.14;
      eclApp.ActiveSheet.Columns[18].ColumnWidth :=6.43;
      eclApp.ActiveSheet.Columns[19].ColumnWidth :=6.43;
      eclApp.ActiveSheet.Columns[20].ColumnWidth :=6.43;
      eclApp.ActiveSheet.Columns[21].ColumnWidth :=7.14;
      eclApp.ActiveSheet.Columns[22].ColumnWidth :=6.43;
      eclApp.ActiveSheet.Columns[23].ColumnWidth :=7.71;
      eclApp.ActiveSheet.Columns[24].ColumnWidth :=6.43;
      eclApp.ActiveSheet.Columns[25].ColumnWidth :=6.43;
      eclApp.ActiveSheet.Columns[26].ColumnWidth :=6.43;
      eclApp.ActiveSheet.Columns[27].ColumnWidth :=6.43;
      eclApp.ActiveSheet.Columns[28].ColumnWidth :=8.43;
      eclApp.ActiveSheet.Columns[29].ColumnWidth :=7.71;
      eclApp.ActiveSheet.Columns[30].ColumnWidth :=9.71;
      //框線
      eclApp.ActiveSheet.Range['A2:AD11'].Borders[8].LineStyle := 1;       //上邊線
      eclApp.ActiveSheet.Range['A2:AD11'].Borders[9].LineStyle := 1;       //下邊線
      eclApp.ActiveSheet.Range['A2:AD11'].Borders[10].LineStyle := 1;       //右邊線
      eclApp.ActiveSheet.Range['F2:F11'].Borders[10].LineStyle := 1;       //右邊線
      eclApp.ActiveSheet.Range['H2:H11'].Borders[10].LineStyle := 1;       //右邊線
      eclApp.ActiveSheet.Range['J2:J11'].Borders[10].LineStyle := 1;       //右邊線
      eclApp.ActiveSheet.Range['L2:L11'].Borders[10].LineStyle := 1;       //右邊線
      eclApp.ActiveSheet.Range['N2:N11'].Borders[10].LineStyle := 1;       //右邊線
      eclApp.ActiveSheet.Range['P2:P11'].Borders[10].LineStyle := 1;       //右邊線
      eclApp.ActiveSheet.Range['S2:S11'].Borders[10].LineStyle := 1;       //右邊線
      eclApp.ActiveSheet.Range['V2:V11'].Borders[10].LineStyle := 1;       //右邊線
      eclApp.ActiveSheet.Range['Y2:Y11'].Borders[10].LineStyle := 1;       //右邊線
      eclApp.ActiveSheet.Range['AA2:AA11'].Borders[10].LineStyle := 1;       //右邊線
      eclApp.ActiveSheet.Rows [12].Borders[9].LineStyle := 1;


      showmessage('Succeed');
       eclApp.Visible:=True;
      except
        on   F:Exception   do
          showmessage(F.Message+'item'+inttoStr(i));
      end;   //try
    end;    //if
end;

procedure TCostingCBD.BBlink1Click(Sender: TObject);
begin
  BBlink2.Enabled:=true;
  BBlink3.Enabled:=true;
   with Query_CLBH do
      begin
         active:=false;
         sql.Clear;
         sql.add('select * from(');
         sql.add('select CostingPriceListNew .SR,CostingXXZLS.SKU,CostingXXZLS.CostingSeason,MaterialSeason,CostingXXZLS.Factory,CostingXXZLS.Component ');
         sql.add(',CostingXXZLS.MTL_No,CostingXXZLS.Color_No,CostingMatLibrary.FlexMaterialCode,CostingMatLibrary.Supplier,CostingMatLibrary.SupplierCode');
         sql.add(',Material_Text,CostingPriceLibrary.CLBH,XXZL.XieXing,XXZL.SheHao,CostingPriceListNew.CostingSize');
         sql.add(',ROW_NUMBER() OVER (PARTITION BY MaterialSeason,CostingXXZLS.MTL_No,CostingXXZLS.Color_No ORDER BY CostingPriceListNew.SR) AS RowNum,CostingPriceLibrary.Color');
         sql.add(',CSBH_FLEX.CSBH,ZSZL.ZSYWJC,CSBH_FLEX.USERID,CSBH_FLEX.USERDATE,CSBH_FLEX.Replaced');
         sql.add('From CostingXXZLS');
         sql.add('left join CostingMatLibrary on CostingXXZLS.MTL_No=CostingMatLibrary.MTL_No ');
         sql.add('left join CostingPriceLibrary on CostingPriceLibrary.MTL_No=CostingMatLibrary.MTL_No and CostingPriceLibrary.Color_No=CostingXXZLS.Color_No');
         //sql.add('left join XXZL  on CostingXXZLS.SKU = left(XXZL.article,LEN(CostingXXZLS.SKU))');
         sql.add('left join xxzl on  CostingXXZLS.SKU = left(xxzl.article,charindex(''/'',xxzl.article+''/'')-1)');
         sql.add('left join CostingPriceListNew on CostingXXZLS.SKU=CostingPriceListNew.SKU and CostingXXZLS.CostingSeason=CostingPriceListNew.CostingSeason ');
         sql.add('   and CostingPriceListNew.Round=CostingXXZLS.Round and CostingPriceListNew.Factory=CostingXXZLS.Factory ');
         sql.add('left join CSBH_FLEX on CSBH_FLEX.SupplierCode=CostingMatLibrary.SupplierCode');
         sql.add('left JOIN ZSZL on ZSZL.ZSDH=CSBH_FLEX.CSBH');
         sql.add('where CostingMatLibrary.FlexMaterialCode <> ''''');
         if Edit15.text<>'' then
          sql.add('and CostingMatLibrary.FlexMaterialCode = '''+Edit15.text+'''');
         if Edit18.text<>'' then
          sql.add('and CostingPriceListNew.Round like '''+Edit18.text+'%''');
         if Edit16.text<>'' then
          sql.add('and CostingXXZLS.SKU like '''+Edit16.text+'%''');
         if Edit12.text<>'' then
          sql.add('and CostingPriceListNew.SR like '''+Edit12.text+'%''');
         if Edit14.text<>'' then
          sql.add('and CostingXXZLS.CostingSeason = '''+Edit14.text+'''');
         sql.add('and CostingMatLibrary.Supplier <> ''Factory In-House''');
         if ComboBox4.ItemIndex=0  then
            sql.add('and CostingPriceListNew.Factory = ''LYN-9Z''')
         else if  ComboBox4.ItemIndex=1  then
            sql.add('and CostingPriceListNew.Factory = ''LYI-6L''');
         if CheckBox10.Checked then
          sql.add('and ( CostingPriceLibrary.CLBH is null or CostingPriceLibrary.CLBH ='''')');
         sql.add('and CostingXXZLS.Component not like ''Threads%''');
         sql.add('and CostingXXZLS.Component not like ''Lace Tip''');
         sql.add('and Material_Text not like ''Adhesive-%''');
         if Checkbox14.Checked=true then
            sql.add('and CostingPriceListNew.UserName = '''+main.Edit1.Text+'''');
         sql.add(')A WHERE RowNum = 1;');
         //showmessage(SQL.text);
         active:=true;
      end;
      XXZLS.Active:=true;
      Queryclzl_flex.Active:=true;
      //showmessage(XXZLS.SQL.text);
end;

procedure TCostingCBD.CheckBox7Click(Sender: TObject);
begin
      if (CheckBox4.Checked=true) and(CheckBox7.Checked=true)   then
      begin
         CheckBox4.Checked:=false;
      end;
end;

procedure TCostingCBD.CheckBox4Click(Sender: TObject);
begin
      if (CheckBox7.Checked=true) and(CheckBox4.Checked=true)  then
      begin
         CheckBox7.Checked:=false;
      end;
end;


procedure TCostingCBD.BA7Click(Sender: TObject);
var i:integer;
begin
    QueryMTL.First;
    for i:=1 to QueryMTL.RecordCount do
    begin
           UpdateSQL3.apply(ukmodify);
           QueryMTL.next;
    end;
    QueryMTL.active:=false;
    BA1.click;

end;

procedure TCostingCBD.DBGridEh2CellClick(Column: TColumnEh);
begin
  if (DBGridEh2.SelectedField.FieldName = 'MTL_No')  then
    if (not QueryMTL.FieldByName('MTL_No').isnull) then
        ED8.Text:=QueryMTL.FieldByName('MTL_No').value;

  if (DBGridEh2.SelectedField.FieldName = 'Color_No')  then
    if (not QueryMTL.FieldByName('Color_No').isnull) then
        ED9.Text:=QueryMTL.FieldByName('Color_No').value;

  if (DBGridEh2.SelectedField.FieldName = 'Supplier')  then
    if (not QueryMTL.FieldByName('Supplier').isnull) then
        ED4.Text:=QueryMTL.FieldByName('Supplier').value;

  if (DBGridEh2.SelectedField.FieldName = 'FlexMaterialCode')  then
    if (not QueryMTL.FieldByName('FlexMaterialCode').isnull) then
        ED3.Text:=QueryMTL.FieldByName('FlexMaterialCode').value;

end;

procedure TCostingCBD.PLQueryClick(Sender: TObject);
begin

   with Query_PriceList do
    begin
         active:=false;
         sql.Clear;
         sql.add('WITH RankedData AS (');
         sql.add('    SELECT ');
         sql.add('        ROW_NUMBER() OVER (');
         sql.add('            PARTITION BY CostingSeason, Factory, SKU,EffectBuy');
         sql.add('            ORDER BY  CostingSeason, Factory, SKU, EffectBuy');
         sql.add('        ) AS RowNum,');
         sql.add('        CASE ');
         sql.add('            WHEN RIGHT(CostingSeason, 1) = ''F'' THEN (LEFT(CostingSeason, 2) + ''U'')');
         sql.add('            WHEN RIGHT(CostingSeason, 1) = ''H'' THEN (LEFT(CostingSeason, 2) + ''F'')');
         sql.add('            WHEN RIGHT(CostingSeason, 1) = ''S'' THEN (CAST(CAST(LEFT(CostingSeason, 2) AS INT) - 1 AS VARCHAR) + ''H'')');
         sql.add('            WHEN RIGHT(CostingSeason, 1) = ''U'' THEN (LEFT(CostingSeason, 2) + ''S'')');
         sql.add('        END as PreviousSeason,');
         sql.add('        round,');
         sql.add('        CostingSeason,');
         sql.add('        Factory,');
         sql.add('        SKU,');
         sql.add('        EffectBuy');
         sql.add('    FROM CostingPriceListNew');
         sql.add('    where round like ''FNL%''');
         sql.add('),');
         sql.add('RowNumOneOnly AS (');
         sql.add('    SELECT RankedData.*,ROW_NUMBER() OVER (PARTITION BY CostingSeason, Factory, SKU,EffectBuy ORDER BY RowNum) AS FinalIndex');
         sql.add('    FROM RankedData');
         sql.add('),');
         sql.add('RowNumOneOnly2 AS (');
         sql.add('    SELECT RowNumOneOnly.*');
         sql.add('        ,ROW_NUMBER() OVER (');
         sql.add('            PARTITION BY CostingSeason, Factory, SKU');
         sql.add('            ORDER BY  CostingSeason, Factory, SKU, EffectBuy');
         sql.add('        ) AS RowNum2');
         sql.add('    FROM RowNumOneOnly');
         sql.add('where FinalIndex=1');
         sql.add('),');

         sql.add('WithNext AS (');
         sql.add('    SELECT ');
         sql.add('        curr.*,');
         sql.add('        CASE ');
         sql.add('            WHEN next.EffectBuy IS NULL THEN ');
         sql.add('                CASE ');
         sql.add('                    WHEN RIGHT(curr.CostingSeason, 1) = ''F'' THEN (''20'' + LEFT(curr.CostingSeason, 2) + ''03'')');
         sql.add('                    WHEN RIGHT(curr.CostingSeason, 1) = ''H'' THEN (''20'' + LEFT(curr.CostingSeason, 2) + ''06'')');
         sql.add('                    WHEN RIGHT(curr.CostingSeason, 1) = ''S'' THEN (''20'' + CAST(CAST(LEFT(curr.CostingSeason, 2) AS INT) - 1 AS VARCHAR) + ''09'')');
         sql.add('                    WHEN RIGHT(curr.CostingSeason, 1) = ''U'' THEN (''20'' + CAST(CAST(LEFT(curr.CostingSeason, 2) AS INT) - 1 AS VARCHAR) + ''12'')');
         sql.add('                END');
         sql.add('            WHEN next.EffectBuy = curr.EffectBuy THEN '''' ');
         sql.add('            ELSE CAST(next.EffectBuy AS INT) - 1 ');
         sql.add('        END AS EndBuy,');
         sql.add('        CASE ');
         sql.add('            WHEN (PreviousSeasonCFM.SKU is null) and (curr.RowNum2=1) then ');
         sql.add('                CASE ');
         sql.add('                    WHEN RIGHT(curr.CostingSeason, 1) = ''F'' THEN (''20'' + CAST(CAST(LEFT(curr.CostingSeason, 2) AS INT) - 1 AS VARCHAR) + ''10'')');
         sql.add('                    WHEN RIGHT(curr.CostingSeason, 1) = ''H'' THEN (''20'' + LEFT(curr.CostingSeason, 2) + ''01'')');
         sql.add('                    WHEN RIGHT(curr.CostingSeason, 1) = ''S'' THEN (''20'' + CAST(CAST(LEFT(curr.CostingSeason, 2) AS INT) - 1 AS VARCHAR) + ''04'')');
         sql.add('                    WHEN RIGHT(curr.CostingSeason, 1) = ''U'' THEN (''20'' + CAST(CAST(LEFT(curr.CostingSeason, 2) AS INT) - 1 AS VARCHAR) + ''07'')');
         sql.add('                END');
         sql.add('        else ');
         sql.add('                curr.EffectBuy	');
         sql.add('        END AS PreviousSeasonBuy--,PreviousSeasonCFM.SKU as PreviousSeasonCFM');
         sql.add('    FROM RowNumOneOnly2 curr');
         sql.add('    LEFT JOIN RowNumOneOnly2 next ');
         sql.add('        ON curr.RowNum2 + 1 = next.RowNum2 ');
         sql.add('        AND curr.SKU = next.SKU');
         sql.add('        AND curr.CostingSeason = next.CostingSeason');
         sql.add('        AND curr.Factory = next.Factory');
         sql.add('    left join (select* from(');
         sql.add('        select SKU,PricingSeason,Factory  From CostingPriceList ');
         sql.add('        UNION all ');
         sql.add('        select SKU,CostingSeason as PricingSeason,Factory  From CostingPriceListnew )a');
         sql.add('        group by SKU,Factory,PricingSeason ');
         sql.add('        )PreviousSeasonCFM on PreviousSeasonCFM.SKU=curr.SKU and PreviousSeasonCFM.PricingSeason=curr.PreviousSeason and PreviousSeasonCFM.factory=curr.factory ');

         sql.add(')');

         SQL.add('Select A.*,');
         SQL.add('Sum(DDZL.Pairs)  as Pairs');
         SQL.add(',Case when OHRed_25H is not null then CAST(OHRed_25H AS FLOAT)*CAST(C2BO AS FLOAT) /(CAST(C2BO AS FLOAT) +CAST(SecondOverhead AS FLOAT)) +CAST(C2BO AS FLOAT)  ');
         SQL.add('  else null end as C2BOwRed');
         SQL.add(',Case when OHRed_25H is not null then CAST(OHRed_25H AS FLOAT)*CAST(SecondOverhead AS FLOAT) /(CAST(C2BO AS FLOAT) +CAST(SecondOverhead AS FLOAT)) +CAST(SecondOverhead AS FLOAT) ');
         SQL.add('  else null end as SecondOwRed');
         SQL.add(',WithNext.EndBuy,WithNext.PreviousSeasonBuy');
         SQL.add(',CostingFlexLineSheet.type,CostingFlexLineSheet.FamilyName');

         SQL.add('from (');

         sql.add('Select CostingPriceListNew.CostingSeason,CostingPriceListNew.Round,CostingPriceListNew.Factory,CostingPriceListNew.SKU');
         sql.add(',CostingPriceListNew.SR,CostingPriceListNew.FactoryPriceSubmitStatus,CostingPriceListNew.FTYBOMStatus');
         sql.add(',CostingPriceListNew.GenderClass,CostingPriceListNew.cut,CostingPriceListNew.TechLevel,CostingPriceListNew.last');
         sql.add(',Max(XXZL.DAOMH) as DAOMH');
         sql.add(',CostingPriceListNew.Segment,CostingPriceListNew.ProductionType,CostingPriceListNew.Category,CostingPriceListNew.PlanningLevel2');
         sql.add(',CostingPriceListNew.ProductDescription,CostingPriceListNew.ModelDescription,CostingPriceListNew.ColorwayLongName,CostingPriceListNew.SourceFlag');
         sql.add(',CostingPriceListNew.ProductLine,CostingPriceListNew.DirectToDC,CostingPriceListNew.UpperMaterial,CostingPriceListNew.FactoryDeveloper');
         sql.add(',CostingPriceListNew.FactoryCosting,CostingPriceListNew.CLOCosting');
         sql.add(',CostingPriceListNew.C2B_PPH,CostingPriceListNew.R2B_PPH');
         sql.add(',CostingPriceListNew.CFM_C2B_PPH,CostingPriceListNew.CFM_R2B_PPH');
         sql.add(',CostingPriceListNew.TargetSamplePrice');
         sql.add(',CostingPriceListNew.FOB,CostingPriceListNew.TotalMaterialCost,CostingPriceListNew.Labor,CostingPriceListNew.Overhead');
         sql.add(',CostingPriceListNew.C2BL,CostingPriceListNew.C2BO,CostingPriceListNew.SecondLabor,CostingPriceListNew.SecondOverhead');
         sql.add(',CostingPriceListNew.Profit,CostingPriceListNew.ProfitRate,CostingPriceListNew.MoldCharge,CostingPriceListNew.CostMitigation');
         sql.add(',CostingPriceListNew.ForecastLevel');
         sql.add(',DistributionType,FactoryDevManager,FactoryCostingManager,CLOCostingManager');              //  CostingPriceListNew
         sql.add(',CostingPriceListNew.LastUpdatedFactoryPriceStatus,CostingPriceListNew.LastUpdatedCLOConfirmationDate as CLOCOConfirmationDate');
         sql.add(',FTYBOMCostDataStatus,FactoryPriceStatus,LastUpdatedColorwayStatus,LastUpdatedSourceFlag');             //  CostingPriceListNew
         //sql.add(',LastUpdatedByFTYBOMCost,LastUpdatedFactoryConfirmation,LastUpdatedDevelopment,LastUpdatedDateFTYBOMCost');  //  CostingPriceListNew
         sql.add(',LastUpdatedByFTYBOMCost as LastUpdatedFTYBOMStatus,LastUpdatedFactoryConfirmation as FactoryConfirmationStatus');  //  CostingPriceListNew
         sql.add(',LastUpdatedDevelopment as LastUpdatedCLODevelopment,LastUpdatedDateFTYBOMCost as FTYBOMCostDataStatusDate');  //  CostingPriceListNew
         //sql.add(',LastUpdatedFactoryPriceSubmit,InitialBuyMonth,DevelopmentSeason,DevelopmentCenter');        //  CostingPriceListNew
         sql.add(',LastUpdatedFactoryPriceSubmit as FactoryPriceSubmitStatusDate,InitialBuyMonth,DevelopmentSeason as InitialDevelopmentSeason,DevelopmentCenter');        //  CostingPriceListNew
         sql.add(',SampleSize,CostingSize,SizeRange');                                    //  CostingPriceListNew
         sql.add(',Costing_Salary.Salary');
         SQL.add('      ,xxzl.XieXing,xxzl.SheHao,EffectBuy');             //,CostingPriceList.KFCQ
         SQL.add('      ,SUM(CASE WHEN supplier LIKE ''%Factory In-House%'' THEN CAST(UnitCost AS FLOAT) ELSE 0 END) AS Cost_House');             //,CostingPriceList.KFCQ
         SQL.add('      ,SUM(CASE WHEN supplier NOT LIKE ''%Factory In-House%'' OR supplier IS NULL THEN CAST(UnitCost AS FLOAT) ELSE 0 END) AS Cost_Others');             //,CostingPriceList.KFCQ


         //CSI
         sql.add(',FH17KeptLabor,OutsoleAssembly,SocklinerByPrs,SpecialOffer,StrobelPrintingRemoveal,');
         sql.add('MMDeduction,MMAutoCutLectraSaving,HanyoungNetCut,AutoBuffingSaving,');
         sql.add('SupportFrictiontape,VolumeEfficiencyGain,RemovedNonBuffing,VolumeEfficiencyGainOverhead');
         sql.add(',RecyclingUn_Cured_25S,RemoveSocklinerCement_25S,RSHConstructionOptimizat_25S,CBYWeightedCosting_25S');
         sql.add(',SeasonalColor_25S,OrtholiteSockliner_25S,InnerBox_25S,MOC_25S,Ckmesh_25S');
         sql.add(',SealTapeOIA_LK_25U,ShoelaceLength_25U,TissueOIA_LK_25U');
         sql.add(',CL98LaborPrecommit_25F,FY25_CostMitigation,FY26_CostMitigation,OHRed_25H');  
         //CSI
         sql.add(',CostingPriceListNew.UserName,CostingPriceListNew.UserUpdateTime');
         sql.add(',CostingPriceListNew.LS_NO');

         sql.add('From CostingPriceListNew');
         sql.add('left join xxzl on  CostingPriceListNew.SKU = left(xxzl.article,charindex(''/'',xxzl.article+''/'')-1)');
         sql.add('  and case when CostingPriceListNew.Factory like ''%LYN%'' then ''JNG'' else ''%YQA%'' end =xxzl.KFCQ');


         sql.add('left join Costing_Salary on CostingPriceListNew.CostingSeason=Costing_Salary.PricingSeason and  CostingPriceListNew.Factory=Costing_Salary.Factory_CTS');
         sql.add('left join CostingPriceList on CostingPriceList.SKU=CostingPriceListNew.SKU and CostingPriceList.PricingSeason=CostingPriceListNew.CostingSeason');
         sql.add('			and CostingPriceList.Factory=CostingPriceListNew.Factory');
         sql.add('left join CostingXXZLS on CostingPriceListNew.Round=CostingXXZLS.Round and CostingPriceListNew.SKU=CostingXXZLS.SKU');
         sql.add('         and CostingPriceListNew.CostingSeason=CostingXXZLS.CostingSeason and CostingPriceListNew.factory=CostingXXZLS.factory ');
         sql.add('LEFT JOIN CostingMatLibrary ON CostingMatLibrary.MTL_No = CostingXXZLS.MTL_No ');

         sql.add('Where 1=1');
         if Edit7.text<>'' then
            sql.add('and CostingPriceListNew.ProductionType like '''+Edit7.text+'%''');
         if Edit6.text<>'' then
            sql.add('and DDZL.Buyno like '''+Edit6.text+'%''');
         if Edit13.text<>'' then
            sql.add('and CostingPriceListNew.TechLevel like '''+Edit13.text+'%''');
         if Edit5.text<>'' then
            sql.add('and CostingPriceListNew.Round like '''+Edit5.text+'%''');
         if Edit1.text<>'' then
            sql.add('and CostingPriceListNew.SKU like '''+Edit1.text+'%''');
         if Edit3.text<>'' then
            sql.add('and CostingPriceListNew.SR like '''+Edit3.text+'%''');
         if CB_PL_Factory.ItemIndex=0  then
            sql.add('and CostingPriceListNew.Factory = ''LYN-9Z''')
         else if  CB_PL_Factory.ItemIndex=1  then
            sql.add('and CostingPriceListNew.Factory = ''LYI-6L''');
         if Checkbox8.Checked=true then
            sql.add('and UserName = '''+main.Edit1.Text+'''');

         //if Edit2.text<>'' then
         //   sql.add('and CostingPriceListNew.CostingSeason = '''+Edit2.text+'''');
         if Edit2.text<>'' then
          if CB_FullSeason.Checked=true then
            begin
            sql.add('and (');
            if ((copy(Edit2.text,3,1)='S') or (copy(Edit2.text,3,1)='U'))   then
              begin
                sql.add('CostingPriceListNew.CostingSeason  = '''+copy(Edit2.text,1,2)+'S''');
                sql.add('or CostingPriceListNew.CostingSeason = '''+copy(Edit2.text,1,2)+'U''');
                sql.add('or CostingPriceListNew.CostingSeason = '''+inttostr(strtoint(copy(Edit2.text,1,2))-1)+'F''');
                sql.add('or CostingPriceListNew.CostingSeason = '''+inttostr(strtoint(copy(Edit2.text,1,2))-1)+'H''');
              end
            else
              begin
                sql.add('CostingPriceListNew.CostingSeason  = '''+inttostr(strtoint(copy(Edit2.text,1,2))+1)+'S''');
                sql.add('or CostingPriceListNew.CostingSeason = '''+inttostr(strtoint(copy(Edit2.text,1,2))+1)+'U''');
                sql.add('or CostingPriceListNew.CostingSeason = '''+copy(Edit2.text,1,2)+'F''');
                sql.add('or CostingPriceListNew.CostingSeason = '''+copy(Edit2.text,1,2)+'H''');
              end;
            sql.add(')');
            end
          else
            begin
            sql.add('and (');
            if (Edit4.text='') and (Edit25.text='') and (Edit26.text='') then
              sql.add('CostingPriceListNew.CostingSeason  like '''+Edit2.text+'%''')
            else
              sql.add('CostingPriceListNew.CostingSeason  = '''+Edit2.text+'''');
            if Edit4.text<>'' then
                sql.add('or CostingPriceListNew.CostingSeason  = '''+Edit4.text+'''');
            if Edit25.text<>'' then
                sql.add('or CostingPriceListNew.CostingSeason  = '''+Edit25.text+'''');
            if Edit26.text<>'' then
                sql.add('or CostingPriceListNew.CostingSeason  = '''+Edit26.text+'''');
            sql.add(')');
            end;

         sql.add('group by CostingPriceListNew.CostingSeason,CostingPriceListNew.Round,CostingPriceListNew.Factory,CostingPriceListNew.SKU');
         sql.add(',CostingPriceListNew.SR,CostingPriceListNew.FactoryPriceSubmitStatus,CostingPriceListNew.FTYBOMStatus');
         sql.add(',CostingPriceListNew.GenderClass,CostingPriceListNew.cut,CostingPriceListNew.TechLevel,CostingPriceListNew.last');
         sql.add(',CostingPriceListNew.Segment,CostingPriceListNew.ProductionType,CostingPriceListNew.Category,CostingPriceListNew.PlanningLevel2');
         sql.add(',CostingPriceListNew.ProductDescription,CostingPriceListNew.ModelDescription,CostingPriceListNew.ColorwayLongName,CostingPriceListNew.SourceFlag');
         sql.add(',CostingPriceListNew.ProductLine,CostingPriceListNew.DirectToDC,CostingPriceListNew.UpperMaterial,CostingPriceListNew.FactoryDeveloper');
         sql.add(',CostingPriceListNew.FactoryCosting,CostingPriceListNew.CLOCosting');
         sql.add(',CostingPriceListNew.C2B_PPH,CostingPriceListNew.R2B_PPH');
         sql.add(',CostingPriceListNew.CFM_C2B_PPH,CostingPriceListNew.CFM_R2B_PPH');
         sql.add(',CostingPriceListNew.FOB,CostingPriceListNew.TotalMaterialCost,CostingPriceListNew.Labor,CostingPriceListNew.Overhead');
         sql.add(',CostingPriceListNew.C2BL,CostingPriceListNew.C2BO,CostingPriceListNew.SecondLabor,CostingPriceListNew.SecondOverhead');
         sql.add(',CostingPriceListNew.Profit,CostingPriceListNew.ProfitRate,CostingPriceListNew.MoldCharge,CostingPriceListNew.CostMitigation');
         sql.add(',CostingPriceListNew.LastUpdatedFactoryPriceStatus,CostingPriceListNew.LastUpdatedCLOConfirmationDate ');
         sql.add(',Costing_Salary.Salary');                              
         sql.add(',DistributionType,FactoryDevManager,FactoryCostingManager,CLOCostingManager');              //  CostingPriceListNew
         sql.add(',FTYBOMCostDataStatus,FactoryPriceStatus,LastUpdatedColorwayStatus,LastUpdatedSourceFlag');             //  CostingPriceListNew
         sql.add(',LastUpdatedByFTYBOMCost,LastUpdatedFactoryConfirmation,LastUpdatedDevelopment,LastUpdatedDateFTYBOMCost');  //  CostingPriceListNew
         sql.add(',LastUpdatedFactoryPriceSubmit,InitialBuyMonth,DevelopmentSeason,DevelopmentCenter');        //  CostingPriceListNew
         sql.add(',SampleSize,CostingSize,SizeRange,TargetSamplePrice');                                    //  CostingPriceListNew
         sql.add(',CostingPriceListNew.ForecastLevel');
         sql.add(',CostingPriceListNew.UserName,CostingPriceListNew.UserUpdateTime');    
         //CSI
         sql.add(',FH17KeptLabor,OutsoleAssembly,SocklinerByPrs,SpecialOffer,StrobelPrintingRemoveal,');
         sql.add('MMDeduction,MMAutoCutLectraSaving,HanyoungNetCut,AutoBuffingSaving,');
         sql.add('SupportFrictiontape,VolumeEfficiencyGain,RemovedNonBuffing,VolumeEfficiencyGainOverhead');
         sql.add(',RecyclingUn_Cured_25S,RemoveSocklinerCement_25S,RSHConstructionOptimizat_25S,CBYWeightedCosting_25S');
         sql.add(',SeasonalColor_25S,OrtholiteSockliner_25S,InnerBox_25S,MOC_25S,Ckmesh_25S');
         sql.add(',SealTapeOIA_LK_25U,ShoelaceLength_25U,TissueOIA_LK_25U');
         sql.add(',CL98LaborPrecommit_25F,FY25_CostMitigation,FY26_CostMitigation,OHRed_25H');
         SQL.add('      ,xxzl.XieXing,xxzl.SheHao,EffectBuy,CostingPriceListNew.LS_NO');             //
         SQL.add(') A');
         sql.add('left join WithNext on A.SKU=WithNext.SKU ');
         sql.add('  and A.CostingSeason=WithNext.CostingSeason ');
         sql.add('  and A.Factory=WithNext.Factory ');
         sql.add('  and A.round=WithNext.round');

         if CBGetOrderByPODate.Checked=true then
          begin
          if CB_PL_Factory.ItemIndex=0  then      //LYN
              begin
                    //上一季度未確認  但有訂單則補入目前季度訂單雙數
                    sql.add('left join (select DDZL.XieXing,DDZL.SheHao,DDZL.Pairs,YWDD.KHDDBH2DATE from DDZL  left join YWDD on YWDD.DDBH=DDZL.DDBH');
                    sql.add(')DDZL on  A.XieXing=DDZL.XieXing and  A.SheHao=DDZL.SheHao ');
                    sql.add('and CONVERT(VARCHAR(6), KHDDBH2DATE, 112) between  WithNext.PreviousSeasonBuy and WithNext.EndBuy ');

              end
          else if  CB_PL_Factory.ItemIndex=1  then    //LYI
              begin
                    sql.add('left join costing_LYItemporder DDZL');
                    sql.add('  on  DDZL.SKU=A.SKU  ');
                    sql.add('and DDZL.POCreateDate between  WithNext.PreviousSeasonBuy and WithNext.EndBuy ');
              end
           end
         else
          if CB_PL_Factory.ItemIndex=0  then      //LYN
              begin  
                    //上一季度未確認  但有訂單則補入目前季度訂單雙數   
                    sql.add('left join DDZL on  A.XieXing=DDZL.XieXing and  A.SheHao=DDZL.SheHao ');
                    sql.add('  and left(DDZL.BUYNO,6) between  WithNext.PreviousSeasonBuy and WithNext.EndBuy ');
                    sql.add('  and DDZL.KHBH=''036''');

              end
          else if  CB_PL_Factory.ItemIndex=1  then    //LYI
              begin
                    sql.add('left join costing_LYItemporder DDZL');
                    sql.add('  on  DDZL.SKU=A.SKU  ');
                    sql.add('  and DDZL.BUYNO between  WithNext.PreviousSeasonBuy and WithNext.EndBuy ');

              end;                        
         sql.add('left join CostingFlexLineSheet on A.LS_NO=CostingFlexLineSheet.LS_NO ');
         sql.add('group by A.CostingSeason,A.Round,A.Factory,A.SKU');
         sql.add(',A.SR,A.FactoryPriceSubmitStatus,A.FTYBOMStatus');
         sql.add(',A.GenderClass,A.cut,A.TechLevel,A.last');
         sql.add(',A.Segment,A.ProductionType,A.Category,A.PlanningLevel2');
         sql.add(',A.ProductDescription,A.ModelDescription,A.ColorwayLongName,A.SourceFlag');
         sql.add(',A.ProductLine,A.DirectToDC,A.UpperMaterial,A.FactoryDeveloper');
         sql.add(',A.FactoryCosting,A.CLOCosting');
         sql.add(',A.C2B_PPH,A.R2B_PPH');
         sql.add(',A.CFM_C2B_PPH,A.CFM_R2B_PPH');
         sql.add(',A.TargetSamplePrice');
         sql.add(',A.FOB,A.TotalMaterialCost,A.Labor,A.Overhead');
         sql.add(',A.C2BL,A.C2BO,A.SecondLabor,A.SecondOverhead');
         sql.add(',A.Profit,A.ProfitRate,A.MoldCharge,A.CostMitigation');
         sql.add(',A.LastUpdatedFactoryPriceStatus,CLOCOConfirmationDate');
         sql.add(',A.ForecastLevel,A.PlanningLevel2');
         sql.add(',A.Salary');                   
         sql.add(',DistributionType,FactoryDevManager,FactoryCostingManager,CLOCostingManager');              //  CostingPriceListNew
         sql.add(',FTYBOMCostDataStatus,FactoryPriceStatus,LastUpdatedColorwayStatus,LastUpdatedSourceFlag');             //  CostingPriceListNew
         sql.add(',LastUpdatedFTYBOMStatus,FactoryConfirmationStatus,LastUpdatedCLODevelopment,FTYBOMCostDataStatusDate');  //  CostingPriceListNew
         sql.add(',FactoryPriceSubmitStatusDate,InitialBuyMonth,InitialDevelopmentSeason,DevelopmentCenter');        //  CostingPriceListNew
         sql.add(',SampleSize,CostingSize,SizeRange,TargetSamplePrice');                                    //  CostingPriceListNew
         sql.add(',A.UserName,A.UserUpdateTime');
         sql.add(',FH17KeptLabor,OutsoleAssembly,SocklinerByPrs,SpecialOffer,StrobelPrintingRemoveal,');
         sql.add('MMDeduction,MMAutoCutLectraSaving,HanyoungNetCut,AutoBuffingSaving,');
         sql.add('SupportFrictiontape,VolumeEfficiencyGain,RemovedNonBuffing,VolumeEfficiencyGainOverhead');
         sql.add(',RecyclingUn_Cured_25S,RemoveSocklinerCement_25S,RSHConstructionOptimizat_25S,CBYWeightedCosting_25S');
         sql.add(',SeasonalColor_25S,OrtholiteSockliner_25S,InnerBox_25S,MOC_25S,Ckmesh_25S');
         sql.add(',SealTapeOIA_LK_25U,ShoelaceLength_25U,TissueOIA_LK_25U');
         sql.add(',CL98LaborPrecommit_25F,FY25_CostMitigation,FY26_CostMitigation,OHRed_25H');
         sql.add(',A.XieXing,A.SheHao,DAOMH,Cost_House,Cost_Others');
         sql.add(',WithNext.EndBuy,WithNext.PreviousSeasonBuy,A.EffectBuy,A.LS_NO  ');
         SQL.add(',CostingFlexLineSheet.type,CostingFlexLineSheet.FamilyName');


         // showmessage(SQL.text);
          active:=true;
      end;
end;

procedure TCostingCBD.BBPMRDayClick(Sender: TObject);
begin
    if ED_PMR.text='' then
      begin
        showmessage('Please entry PMR No');
      end;
   with ExistCheck do
      begin
         active:=false;
         sql.Clear;
         sql.add('SELECT PMRNo,EffectBuyNo FROM PMRListSS ');
         sql.add('where PMRno like ''%'+ED_PMR.text+'%''');

         //sql.add('and SKU like '''+Edit8.text+'%''');
         //showmessage(SQL.text);
         active:=true;  
        if eof then
          begin
            showmessage('DEVELOP-NB4 not yet fill, please check with dev assis team or entry manual as 202504');
          end
        else
          begin
            ED_PMR.text:=ExistCheck.fieldbyname('PMRNo').AsString;
            ED_PMRBuy.Text:=ExistCheck.fieldbyname('EffectBuyNo').AsString;
          end;
      end;
    ExistCheck.active:=false;
end;

procedure TCostingCBD.BBTodayClick(Sender: TObject);
begin
        ED_PMRBuy.Text:=formatdatetime('yyyyMM',now());
end;

procedure TCostingCBD.Query_CLBHCalcFields(DataSet: TDataSet);
begin
        Query_CLBH.FieldByName('Material').Value := (Query_CLBH.FieldByName('Material_Text') as TBlobField).AsString;
end;


procedure TCostingCBD.BitBtn10Click(Sender: TObject);
begin
    with Query_CLBH do
      begin
        cachedupdates:=true;
        requestlive:=true;
        edit;
      end;
      if XXZLS.active then
      begin
          Query_CLBH.fieldbyname('CLBH').value:=XXZLS.fieldbyname('CLBH').AsString;     
          Query_CLBH.fieldbyname('CSBH').value:=XXZLS.fieldbyname('CSBH').AsString;
          Query_CLBH.fieldbyname('ZSYWJC').value:=XXZLS.fieldbyname('ZSYWJC').AsString;
          Query_CLBH.fieldbyname('USERID').value:=main.Edit1.Text+'-Auto';
          Query_CLBH.fieldbyname('USERDATE').value:=Date();
      end;
end;

procedure TCostingCBD.BitBtn11Click(Sender: TObject);
begin         
    with Query_CLBH do
      begin
        cachedupdates:=true;
        requestlive:=true;
        edit;
      end;
      if Queryclzl_flex.active then
          Query_CLBH.fieldbyname('CLBH').value:=Queryclzl_flex.fieldbyname('CLDH').AsString
end;

procedure TCostingCBD.BitBtn7Click(Sender: TObject);
var      Component:string;
         i:integer;
begin
  with Query_CLBH do
  begin
    first;
    cachedupdates:=true;
    requestlive:=true;
  end;
  while   not   Query_CLBH.Eof   do
      begin
          if  XXZLS.recordcount =1 then
            begin
              Query_CLBH.edit;
              Query_CLBH.fieldbyname('CLBH').value:=XXZLS.fieldbyname('CLBH').AsString;
              Query_CLBH.fieldbyname('CSBH').value:=XXZLS.fieldbyname('CSBH').AsString;
              Query_CLBH.fieldbyname('ZSYWJC').value:=XXZLS.fieldbyname('ZSYWJC').AsString;
              if Query_CLBH.fieldbyname('CSBH').AsString='JNG' then
                  Query_CLBH.fieldbyname('Replaced').value:='1'
              else
                  Query_CLBH.fieldbyname('Replaced').value:='0';
              Query_CLBH.fieldbyname('USERID').value:=main.Edit1.Text+'-Auto';
              Query_CLBH.fieldbyname('USERDATE').value:=Date();
              with ExistCheck do
                begin
                  active:=false;
                  sql.Clear;
                  sql.add('Select * From CSBH_FLEX where 1=1');
                  sql.add('  and CSBH='''+Query_CLBH.fieldbyname('CSBH').AsString+'''');
                  sql.add('  and SupplierCode='''+Query_CLBH.fieldbyname('SupplierCode').AsString+'''');
                  active:=true;
                end;
              if ExistCheck.Eof then
                    UpdateSQL5.Apply(ukinsert);

              UpdateSQL5.apply(ukmodify);
            end
          else
            begin                                                      //AnsiCompareText
              for i:=1 to XXZLS.RecordCount do
                  if (Query_CLBH.fieldbyname('Component').AsString=XXZLS.fieldbyname('ywsm').AsString) or (XXZLS.fieldbyname('YN').AsString='1') then
                  //if (AnsiCompareText(Query_CLBH.fieldbyname('Component').AsString,copy(XXZLS.fieldbyname('ywsm').AsString,1,Length(Query_CLBH.fieldbyname('Component').AsString)))=0) then
                  begin
                    Query_CLBH.edit;
                    Query_CLBH.fieldbyname('CLBH').value:=XXZLS.fieldbyname('CLBH').AsString;
                    UpdateSQL5.apply(ukmodify);
                    break;
                  end;
            end;
          Query_CLBH.Next;
      end;
     with ExistCheck do
                begin
                  active:=false;
                  sql.Clear;
                  sql.add('select CSBH_FLEX.*,ZSZL.ZSYWJC from CSBH_FLEX');
                  sql.add('left JOIN ZSZL on ZSZL.ZSDH=CSBH_FLEX.CSBH');
                  sql.add('where 1=1');
                  sql.add('and CSBH_FLEX.SupplierCode in (SELECT CSBH_FLEX.SupplierCode FROM CSBH_FLEX');
                  sql.add('  GROUP BY CSBH_FLEX.SupplierCode HAVING COUNT(*) > 1)');
                  active:=true;
                  if not Eof then
                    begin
                      SupplierFLEXnERP:=TSupplierFLEXnERP.Create(self);    
                      SupplierFLEXnERP.BC1.Click;
                      SupplierFLEXnERP.ShowModal();
                    end;
                end;
  ExistCheck.Active:=false;
  //BitBtn6.Click;
end;

procedure TCostingCBD.BBlink2Click(Sender: TObject);
begin
  BBlink2.Enabled:=false;
  BBlink3.Enabled:=false;
  Query_CLBH.active:=false;
end;

procedure TCostingCBD.BitBtn14Click(Sender: TObject);
var    EditText:string;
begin
{    EditText:=Edit21.text;
      EditText:=StringReplace(EditText,'''''','"', [rfReplaceAll]);
      EditText:=StringReplace(EditText,'''','', [rfReplaceAll]);
      EditText:=StringReplace(EditText,'?','', [rfReplaceAll]);
      EditText:=StringReplace(EditText,'，','', [rfReplaceAll]);
      EditText:=StringReplace(EditText,'"','""', [rfReplaceAll]);
      EditText:=StringReplace(EditText,'”','""', [rfReplaceAll]);
      EditText:=StringReplace(EditText,'""','"', [rfReplaceAll]);
      //EditText:=StringReplace(EditText,'''''','''', [rfReplaceAll]);
      EditText:=TrimLeft(EditText);
      EditText:=TrimRight(EditText);
      Edit22.text:=EditText;
    with TIMEQRY do
      begin
         active:=false;
         sql.Clear;      
         sql.add('select '''+EditText+''' as AA');
         //showmessage(sql.text);
         Edit20.text:=sql.text;
         active:=true;
      end;
      Edit19.text:=TIMEQRY.fieldbyname('AA').asstring;
      //showmessage(TIMEQRY.fieldbyname('AA').asstring);
      TIMEQRY.active:=false;    }
end;

procedure TCostingCBD.BBadmin_runallClick(Sender: TObject);   
var  i:integer;
begin
    if UploadlQuery.Active= false then
        exit;
    UploadlQuery.First;
    for i:=1 to UploadlQuery.RecordCount do
    begin
        //Label48.Caption:='item:'+inttostr(i);
        BB2.Click;
        UploadlQuery.Next;
        //UploadDetailQuery.Active:=false;
        //UploadDetailQuery.Active:=true;
    end;
end;

procedure TCostingCBD.DBGridEh6DblClick(Sender: TObject);
begin
  if (DBGridEh6.SelectedField.FieldName = 'Process_No') or (DBGridEh6.SelectedField.FieldName = 'FlexMaterialCode') then
  begin
    if (not UploadDetailQuery.FieldByName('MTL_No').isnull) then
        ED8.Text:=UploadDetailQuery.FieldByName('MTL_No').value;
    ED3.Text:=UploadDetailQuery.FieldByName('FlexMaterialCode').value;
    ComboBox3.ItemIndex:=ComboBox1.ItemIndex;
    PageControl1.ActivePageIndex:=1;
  end;
  if (DBGridEh6.SelectedField.FieldName = 'Process_No')  then
  begin
    if (not UploadDetailQuery.FieldByName('Process_No').isnull) then
        EDC4.Text:=UploadDetailQuery.FieldByName('Process_No').value;
    //if (not UploadDetailQuery.FieldByName('Tooling').isnull) then
    //    EDC6.Text:=UploadDetailQuery.FieldByName('Tooling').value;
    //EDC3.Text:=UploadDetailQuery.FieldByName('Component').value;
    ComboBox2.ItemIndex:=ComboBox1.ItemIndex;
    PageControl1.ActivePageIndex:=2;
    pgc1.ActivePageIndex:=1;
    BC1.Click;
    QueryProcess.FieldByName('SKU').Value:=UploadlQuery.FieldByName('SKU').Value;
    QueryProcess.FieldByName('Round').Value:=UploadlQuery.FieldByName('Round').Value;
    QueryProcess.FieldByName('CostingSeason').Value:=UploadlQuery.FieldByName('CostingSeason').Value;
    QueryProcess.FieldByName('No').Value:=UploadDetailQuery.FieldByName('No').Value;
    ComboBox2.ItemIndex:=ComboBox1.ItemIndex;
    //BC2.Click;
  end;
end;

procedure TCostingCBD.DataSource4DataChange(Sender: TObject;
  Field: TField);
begin
      //if DBGridEh3.Field.FieldName= 'SecondLF' then
      if (QueryProcess.fieldbyname('SecondLF').AsString<>'') and (QueryProcess.fieldbyname('SecondLabor_auto').AsString<>'')
        and (QueryProcess.fieldbyname('SecondOF').AsString='')then
      begin
        QueryProcess.Edit;
        if (pos('*0.49',QueryProcess.fieldbyname('SecondLF').AsString)>0)  then
              QueryProcess.fieldbyname('SecondOF').value:=StringReplace(QueryProcess.fieldbyname('SecondLF').AsString,'*0.49','*0.51', [rfReplaceAll])
        else if(pos('0.2*USAGE',QueryProcess.fieldbyname('SecondLF').AsString)>0)  then
              QueryProcess.fieldbyname('SecondOF').value:='0.1*USAGE'
        else if(pos('0.171',QueryProcess.fieldbyname('SecondLF').AsString)>0)  then
              QueryProcess.fieldbyname('SecondOF').value:='0.179';
      end;
end;



procedure TCostingCBD.CheckBox13Click(Sender: TObject);
begin
   with UploadDetailQuery do
      begin
         active:=false;
         sql.Clear;
         sql.add('Select CostingXXZLS.No,CostingXXZLS.PartName, CostingXXZLS.Component, CostingXXZLS.Percentage, CostingMatLibrary.Material_text, ');
         sql.add('       CostingMatLibrary.FlexMaterialCode, ');
         sql.add('       CostingMatLibrary.Measure, CostingMatLibrary.MeasureOVR,');
         sql.add('       CostingPriceLibrary.PriceOVR,');
         sql.add('       CostingXXZLS.NetUsage,CostingXXZLS.CutLoss, CostingXXZLS.SizeGrading, ');
         sql.add('       CostingMatLibrary.T1Freight, CostingXXZLS.LandedCost,');
         sql.add('       CostingXXZLS.GrossUsage, CostingXXZLS.UnitCost,');
         sql.add('       CostingMatLibrary.MaterialComments, CostingMatLibrary.Supplier,     ');
         sql.add('       CostingMatLibrary.SupplierCode, CostingMatLibrary.Tooling, CostingPriceLibrary.TnRP, CostingPriceLibrary.Color,CostingPriceLibrary.ColorGroup, ');
         sql.add('       CostingPriceLibrary.ColorComments, CostingMatLibrary.DeliveryTerm, CostingPriceLibrary.MaterialCost,');
         sql.add('       CostingPriceLibrary.PriceStatus,CostingXXZLS.UserName, CostingXXZLS.UserUpdateTime,');
         sql.add('       CostingPriceLibrary.BaseMaterialPrice,CostingPriceLibrary.SupplierFreightValue,CostingPriceLibrary.TRPnGRPUpcharge,');
         sql.add('       CostingXXZLS.SecondLabor,CostingXXZLS.SecondOverhead,');
         sql.add('       CostingXXZLS.Remark,CostingXXZLS.Round,CostingXXZLS.SKU,CostingXXZLS.CostingSeason,CostingPriceLibrary.MaterialSeason,');
         sql.add('       CostingXXZLS.MTL_No,CostingXXZLS.Color_No,CostingXXZLS.Process_No,CostingXXZLS.Factory,');
         sql.add('       CostingProcessCost.ColorQty,CostingProcessCost.ColorQty_Neon,CostingProcessCost.GUMColor,CostingProcessCost.SecondLF,CostingProcessCost.SecondOF,');
         sql.add('       CostingProcessCost.moldsPperson,CostingProcessCost.pairPmold,CostingProcessCost.PCsPPair,CostingProcessCost.TurnOverRate,CostingProcessCost.TurnOverRate');
         sql.add('From CostingXXZLS  ');
         sql.add('left join CostingMatLibrary on CostingMatLibrary.MTL_No=CostingXXZLS.MTL_No');
         sql.add('left join CostingPriceLibrary on CostingPriceLibrary.MTL_No=CostingXXZLS.MTL_No and CostingPriceLibrary.Color_No=CostingXXZLS.Color_No ');
         sql.add('left join CostingProcessCost on CostingProcessCost.Process_No=CostingXXZLS.Process_No');
         sql.add('left join CostingPriceListNew on CostingPriceListNew.Round=CostingXXZLS.Round ');
         sql.add('       and CostingPriceListNew.SKU=CostingXXZLS.SKU ');
         sql.add('       and CostingPriceListNew.CostingSeason=CostingXXZLS.CostingSeason ');
         sql.add('where CostingXXZLS.Round=:Round');
         sql.add('  and CostingXXZLS.SKU=:SKU');
         sql.add('  and CostingXXZLS.CostingSeason=:CostingSeason');
         sql.add('  and CostingXXZLS.Factory=:Factory');
         if CheckBox13.Checked then
            sql.add('  and  CostingXXZLS.Process_No is not null');
         sql.add('order by CostingXXZLS.No');

         //showmessage(SQL.text);
         active:=true;
      end;
      //UploadDetailQuery.First;
      UploadDetailQuery.cachedupdates:=true;
      UploadDetailQuery.requestlive:=true;
      UploadDetailQuery.Edit;
      UploadDetailQuery.last;
      UploadDetailQuery.First;
end;

procedure TCostingCBD.BitBtn9Click(Sender: TObject);
begin
with Query_PriceList do
  begin
    active:=false;
  end;
end;
 

procedure TCostingCBD.BA8Click(Sender: TObject);
begin
  if PageControl1.ActivePageIndex=1 then
      ExportExcel(QueryMTL)
  else if PageControl1.ActivePageIndex=2 then
  begin                 
      if pgc1.ActivePageIndex=1  then
          ExportExcel(QueryProcess)
      else if pgc1.ActivePageIndex=2  then
          ExportExcel(QryPrint)
      else if pgc1.ActivePageIndex=3  then
          ExportExcel(QryPrintP)
      else if pgc1.ActivePageIndex=4  then
          ExportExcel(Qry_IP);
  end
  else if PageControl1.ActivePageIndex=3 then
      ExportExcel(Query_PriceList)
  else if PageControl1.ActivePageIndex=4 then
      ExportExcel(Query_CLBH)
  else if PageControl1.ActivePageIndex=5 then
      ExportExcel(Qry_CBDLog);
end;

procedure TCostingCBD.BA1Click(Sender: TObject);
begin
   with QueryMTL do
      begin
         active:=false;
         sql.Clear;
         sql.add('Select CONVERT(Bit,IsNull(CostingPriceLibrary.YN,0)) as Flag,CostingXXZLS.MTL_No,CostingXXZLS.Color_No,CostingXXZLS.Component,CostingPriceLibrary.MaterialSeason,CostingPriceLibrary.PriceStatus,');
         sql.add('   CostingMatLibrary.FlexMaterialCode,CML_Material.Material,CostingMatLibrary.MaterialComments, CostingMatLibrary.Supplier,CostingMatLibrary.SupplierCode,');
         sql.add('   CostingMatLibrary.DeliveryTerm,CostingMatLibrary.T1Freight,');
         sql.add('   CostingPriceLibrary.TnRP, CostingMatLibrary.Tooling,CostingMatLibrary.Measure, CostingMatLibrary.MeasureOVR,');
         sql.add('   CostingPriceLibrary.Color,CostingPriceLibrary.ColorComments,CostingPriceLibrary.ColorGroup,');
         sql.add('   CostingPriceLibrary.PriceOVR,CostingPriceLibrary.MaterialCost,');
         sql.add('   CostingPriceLibrary.BaseMaterialPrice,CostingPriceLibrary.SupplierFreightValue,CostingPriceLibrary.TRPnGRPUpcharge,');
         sql.add('   CostingXXZLS.Round,CostingXXZLS.SKU,CostingXXZLS.CostingSeason,CostingXXZLS.Remark,');
         sql.add('   CostingXXZLS.LandedCost,CostingXXZLS.GrossUsage,CostingPriceListNew.ModelDescription,CostingPriceListNew.GenderClass,CostingPriceListNew.ProductionType,');
         sql.add('   CostingXXZLS.Process_No,CostingMatLibrary.Material_Text,CostingPriceListNew.UserName,CostingPriceLibrary.UserUpdateTime');
         sql.add('From CostingPriceLibrary');
         sql.add('left join CostingXXZLS on CostingPriceLibrary.MTL_No=CostingXXZLS.MTL_No and CostingPriceLibrary.Color_No=CostingXXZLS.Color_No and CostingPriceLibrary.CostingSeason=CostingXXZLS.CostingSeason ');
         sql.add('left join CostingMatLibrary on CostingMatLibrary.MTL_No=CostingXXZLS.MTL_No  ');
         sql.add('left join CostingProcessCost on CostingProcessCost.Process_No=CostingXXZLS.Process_No');
         sql.add('left join CostingPriceListNew on CostingPriceListNew.Round=CostingXXZLS.Round ');
         sql.add('       and CostingPriceListNew.SKU=CostingXXZLS.SKU ');
         sql.add('       and CostingPriceListNew.CostingSeason=CostingXXZLS.CostingSeason ');
         sql.add('left join (select MTL_No,CAST(Material_Text AS VARCHAR(255)) AS Material from CostingMatLibrary) CML_Material on CML_Material.MTL_No=CostingMatLibrary.MTL_No');
         sql.add('where 1=1');
         if (CheckBox11.Checked) then
            sql.add('and (CAST(CostingPriceLibrary.MaterialCost as float)>0 or CAST (CostingPriceLibrary.PriceOVR as float)>0)');
         if ED3.text<>'' then
            sql.add('and CostingMatLibrary.FlexMaterialCode like '''+ED3.text+'%''');
         if ED1.text<>'' then
            sql.add('and CostingPriceLibrary.Color like '''+ED1.text+'%''');
         if ED2.text<>'' then
            sql.add('and CostingPriceLibrary.CostingSeason like '''+ED2.text+'%''');
         if ED4.text<>'' then
            sql.add('and CostingMatLibrary.Supplier like ''%'+ED4.text+'%''');
         if ED5.text<>'' then
            sql.add('and CostingPriceLibrary.ColorComments like ''%'+ED5.text+'%''');
         if ED6.text<>'' then
            sql.add('and CostingPriceLibrary.ColorGroup like ''%'+ED6.text+'%''');
         if ED7.text<>'' then
            sql.add('and CostingMatLibrary.Material_text like ''%'+ED7.text+'%''');  
         if CheckBox16.Checked then
            sql.add('and CostingXXZLS.SKU is not null');

         if ((ED8.text<>'') and (ED8or.text='')) then
            sql.add('and CostingPriceLibrary.MTL_No like '''+ED8.text+'''')
         else if ((ED8.text<>'') and (ED8or.text<>'')) then
            sql.add('and (CostingPriceLibrary.MTL_No = '''+ED8.text+''' or CostingPriceLibrary.MTL_No = '''+ED8or.text+'''  )');

         if ((ED9.text<>'') and (ED9or.text='')) then
            sql.add('and CostingPriceLibrary.Color_No like '''+ED9.text+'''')
         else if ((ED9.text<>'') and (ED9or.text<>'')) then
            sql.add('and (CostingPriceLibrary.Color_No = '''+ED9.text+''' or CostingPriceLibrary.Color_No = '''+ED9or.text+'''  )');

         if Edit23.text<>'' then
            sql.add('and CostingXXZLS.Round like '''+Edit23.text+'%''');
         if ED10.text<>'' then
            sql.add('and CostingXXZLS.Component like '''+ED10.text+'%''');
         if ED11.text<>'' then
            sql.add('and CostingPriceLibrary.PriceStatus like '''+ED11.text+'''');
         if ComboBox3.ItemIndex=0 then
            sql.add('and CostingPriceListNew.Factory = ''LYN-9Z''')
         else if ComboBox3.ItemIndex=1 then
            sql.add('and CostingPriceListNew.Factory = ''LYI-6L''');
         if (CheckBox15.Checked) then
            sql.add('and CAST(CostingPriceLibrary.PriceOVR AS FLOAT)>0');
         if (CheckBox2.Checked) then
            begin
            sql.add('and CostingPriceLibrary.YN=0');
            sql.add('and CostingPriceLibrary.MTL_No in ');
            sql.add('(select CostingPriceLibrary.MTL_No from CostingPriceLibrary');
            sql.add('left join CostingMatLibrary on CostingMatLibrary.MTL_No=CostingPriceLibrary.MTL_No');
            sql.add('where CostingPriceLibrary.Color_No in (select color_no from CostingXXZLS)--被使用中');
            sql.add('group by CostingPriceLibrary.MTL_No,CostingPriceLibrary.color,CostingPriceLibrary.colorgroup,');
            if (CB2.Checked) then
                    sql.add(' CostingMatLibrary.Supplier,');
            if (CB3.Checked) then
                    sql.add(' CostingMatLibrary.MaterialComments,');
            if (CB4.Checked) then
                    sql.add(' CostingMatLibrary.Tooling,');
            if (CB5.Checked) then
                    sql.add(' CostingPriceLibrary.TnRP,');
            if (CB6.Checked) then
                    sql.add(' CostingPriceLibrary.Color,');
            if (CB7.Checked) then
                    sql.add(' CostingPriceLibrary.ColorComments,');
            if (CB8.Checked) then
                    sql.add(' CostingPriceLibrary.ColorGroup,');   
            sql.text:=copy(sql.text,1,length(sql.text)-3);
            sql.add('having count(*)>1	)');
            end;
         if (CheckBox5.Checked) then
            begin                           
            sql.add('and CostingPriceLibrary.YN=0');
            sql.add('and CostingMatLibrary.FlexMaterialCode in ');
            sql.add('(select CostingMatLibrary.FlexMaterialCode from CostingPriceLibrary');
            sql.add('left join CostingMatLibrary on CostingMatLibrary.MTL_No=CostingPriceLibrary.MTL_No');
            sql.add('left join (select MTL_No,CAST(Material_Text AS VARCHAR(255)) AS Material from CostingMatLibrary) CML_Material on CML_Material.MTL_No=CostingMatLibrary.MTL_No');
            sql.add('where CostingPriceLibrary.Color_No in (select color_no from CostingXXZLS)--被使用中');
            sql.add('group by CostingMatLibrary.FlexMaterialCode,');
            if (CB2.Checked) then
                    sql.add(' CostingMatLibrary.Supplier,');
            if (CB3.Checked) then
                    sql.add(' CostingMatLibrary.MaterialComments,');
            if (CB4.Checked) then
                    sql.add(' CostingMatLibrary.Tooling,');
            if (CB5.Checked) then
                    sql.add(' CostingPriceLibrary.TnRP,');
            if (CB6.Checked) then
                    sql.add(' CostingPriceLibrary.Color,');
            if (CB7.Checked) then
                    sql.add(' CostingPriceLibrary.ColorComments,');
            if (CB8.Checked) then
                    sql.add(' CostingPriceLibrary.ColorGroup,');
            sql.text:=copy(sql.text,1,length(sql.text)-3);
            sql.add('having count(*)>1	)');
            end;
         //showmessage(SQL.text);
         active:=true;
      end;
      QueryMTL.last;
      QueryMTL.First;
      //差異反紅功能
      if (ED8.text<>'') or (ED9.text<>'')  then
        if(QueryMTL.RecordCount>0) then
        begin
          Material:=QueryMTL.FieldByName('Material').asstring;
          FlexMaterialCode:=QueryMTL.FieldByName('FlexMaterialCode').asstring;
          color:=QueryMTL.FieldByName('color').asstring;
          PriceOVR:=QueryMTL.FieldByName('PriceOVR').asstring;
          MaterialCost:=QueryMTL.FieldByName('MaterialCost').asstring;
          BaseMaterialPrice:=QueryMTL.FieldByName('BaseMaterialPrice').asstring;
          SupplierFreightValue:=QueryMTL.FieldByName('SupplierFreightValue').asstring;
          TRPnGRPUpcharge:=QueryMTL.FieldByName('TRPnGRPUpcharge').asstring;
          T1Freight:=QueryMTL.FieldByName('T1Freight').asstring;
          colorcomments:=QueryMTL.FieldByName('ColorComments').asstring;
        end;
      QueryMTL.cachedupdates:=true;
      QueryMTL.requestlive:=true;
      QueryMTL.Edit;
      BA6.Enabled:=true;
      BA7.Enabled:=true;
end;

procedure TCostingCBD.BC1Click(Sender: TObject);
begin
   BC2.Enabled:=true;
   with QueryProcess do
      begin
         active:=false;
         sql.Clear;

         sql.add('select CostingMatLibrary.Material_Text,CostingProcessCost.*,CostingXXZLS.GrossUsage');
         sql.add('    ,CostingXXZLS.UnitCost,LEFT(CostingXXZLS.SecondLabor, 6) as SecondLabor,LEFT(CostingXXZLS.SecondOverhead, 6) as SecondOverhead');
         sql.add('    ,CostingXXZLS.NetUsage,CostingXXZLS.CutLoss,CostingXXZLS.SizeGrading,CostingPriceLibrary.PriceOVR,CostingPriceLibrary.MaterialCost,CostingMatLibrary.T1Freight');
         sql.add('From CostingProcessCost');
         sql.add('left join CostingXXZLS on CostingXXZLS.SKU=CostingProcessCost.SKU and CostingXXZLS.Round=CostingProcessCost.Round ');
         sql.add('    and CostingXXZLS.CostingSeason=CostingProcessCost.CostingSeason and CostingXXZLS.No=CostingProcessCost.No');
         sql.add('left join CostingMatLibrary on CostingMatLibrary.MTL_No=CostingXXZLS.MTL_No');
         sql.add('left join CostingPriceListNew on CostingPriceListNew.SKU=CostingProcessCost.SKU and CostingPriceListNew.Round=CostingProcessCost.Round ');
         sql.add('left join CostingPriceLibrary on CostingPriceLibrary.MTL_No=CostingXXZLS.MTL_No and CostingPriceLibrary.Color_No=CostingXXZLS.Color_No');
         sql.add('    and CostingPriceListNew.CostingSeason=CostingProcessCost.CostingSeason ');
         sql.add('Where 1=1');
         if ComboBox2.ItemIndex=0 then
            sql.add('and CostingProcessCost.Factory = ''LYN-9Z''')
         else if ComboBox2.ItemIndex=1 then
            sql.add('and CostingProcessCost.Factory = ''LYI-6L''');
         if (CheckBox4.Checked=true) then
              sql.add('and  CostingProcessCost.Process_No not in(select Process_No from CostingXXZLS where Process_No is not null)');
         if (CheckBox7.Checked=true) then
              sql.add('and CostingProcessCost.Process_No in(select Process_No from CostingXXZLS where Process_No is not null)');
         if EDC1.text<>'' then
            sql.add('and CostingPriceListNew.SR like '''+EDC1.text+'%''');
         if EDC2.text<>'' then
            sql.add('and CostingProcessCost.SKU like '''+EDC2.text+'%''');
         if EDC3.text<>'' then
            sql.add('and CostingXXZLS.Component like '''+EDC3.text+'%''');
         if ((EDC4.text<>'') and (EDC4or.text='')) then
            sql.add('and CostingProcessCost.Process_No = '''+EDC4.text+'''')
         else if ((EDC4.text<>'') and (EDC4or.text<>'')) then
            sql.add('and (CostingProcessCost.Process_No = '''+EDC4.text+''' or CostingProcessCost.Process_No = '''+EDC4or.text+'''  )');

         if EDC5.text<>'' then
            sql.add('and CostingProcessCost.CostingSeason like ''%'+EDC5.text+'%''');
         if EDC6.text<>'' then
            sql.add('and CostingProcessCost.Tooling like ''%'+EDC6.text+'%''');
         //showmessage(SQL.text);
         active:=true;
      end;
      QueryProcess.last;
      QueryProcess.First;
      QueryProcess.cachedupdates:=true;
      QueryProcess.requestlive:=true;
      QueryProcess.Edit;
end;
        
procedure TCostingCBD.BitBtn8Click(Sender: TObject);
begin
   BB2.Enabled:=true;
   BB3.Enabled:=true;
   CheckBox1.checked:=false;

   if (Length(Edit9.text)<>3) and (Length(Edit9.text)<>0) then
      begin
        showmessage('Season need to be like "25F"');
        exit;
      end;

   with UploadlQuery do
      begin
         active:=false;
         sql.Clear;
         sql.add('Select * From CostingPriceListNew');
         sql.add('Where 1=1');
         if Edit10.text<>'' then
            sql.add('and CostingPriceListNew.Round like '''+Edit10.text+'%''');
         if Edit11.text<>'' then
            sql.add('and CostingPriceListNew.SR like '''+Edit11.text+'%''');
         if Edit8.text<>'' then
            sql.add('and CostingPriceListNew.SKU like '''+Edit8.text+'%''');
         sql.add('and CostingSeason like '''+Edit9.text+'%''');
         if ComboBox1.ItemIndex=0 then
            sql.add('and CostingPriceListNew.Factory = ''LYN-9Z''')
         else if ComboBox1.ItemIndex=1 then
            sql.add('and CostingPriceListNew.Factory = ''LYI-6L''');
         if ED_PMRBuy.text<>'' then
            sql.add('and CostingPriceListNew.Round like ''%'+ED_PMR.text+'%''');
         if Checkbox9.Checked=true then
            sql.add('and CostingPriceListNew.UserName = '''+main.Edit1.Text+'''');
         if CheckBox13.Checked then
            sql.add('  and SKU in (select CostingProcessCost.SKU from CostingXXZLS left join CostingProcessCost on  CostingProcessCost.Process_No=CostingXXZLS.Process_No where CostingProcessCost.SecondLF='''' and CostingProcessCost.round like ''FNL%'')');
                                    
         sql.add('order by CostingPriceListNew.SKU');
         //showmessage(SQL.text);
         active:=true;
      end;
    if UploadlQuery.fieldbyname('CBDcompleteDate').asstring='' then
        Complete.Enabled:=true;
    if UploadlQuery.fieldbyname('CBDReadyDate').asstring='' then
        BBReady.Enabled:=true;
      UploadlQuery.last;
      UploadlQuery.First;
      UploadlQuery.cachedupdates:=true;
      UploadlQuery.requestlive:=true;   
      UploadlQuery.Edit;
   with UploadDetailQuery do
      begin
         active:=false;
         sql.Clear;
         sql.add('Select CostingXXZLS.No,CostingXXZLS.PartName, CostingXXZLS.Component, CostingXXZLS.Percentage, CostingMatLibrary.Material_text, ');
         sql.add('       CostingMatLibrary.FlexMaterialCode, ');
         sql.add('       CostingMatLibrary.Measure, CostingMatLibrary.MeasureOVR,');
         sql.add('       CostingPriceLibrary.PriceOVR,');
         sql.add('       CostingXXZLS.NetUsage,CostingXXZLS.CutLoss, CostingXXZLS.SizeGrading, ');
         sql.add('       CostingMatLibrary.T1Freight, CostingXXZLS.LandedCost,');
         sql.add('       CostingXXZLS.GrossUsage, CostingXXZLS.UnitCost,');
         sql.add('       CostingMatLibrary.MaterialComments, CostingMatLibrary.Supplier,     ');
         sql.add('       CostingMatLibrary.SupplierCode, CostingMatLibrary.Tooling, CostingPriceLibrary.TnRP, CostingPriceLibrary.Color,CostingPriceLibrary.ColorGroup, ');
         sql.add('       CostingPriceLibrary.ColorComments, CostingMatLibrary.DeliveryTerm, CostingPriceLibrary.MaterialCost,');
         sql.add('       CostingPriceLibrary.PriceStatus,CostingXXZLS.UserName, CostingXXZLS.UserUpdateTime,');
         sql.add('       CostingPriceLibrary.BaseMaterialPrice,CostingPriceLibrary.SupplierFreightValue,CostingPriceLibrary.TRPnGRPUpcharge,');
         sql.add('       CostingXXZLS.SecondLabor,CostingXXZLS.SecondOverhead,');
         sql.add('       CostingXXZLS.Remark,CostingXXZLS.Round,CostingXXZLS.SKU,CostingXXZLS.CostingSeason,CostingPriceLibrary.MaterialSeason,');
         sql.add('       CostingXXZLS.MTL_No,CostingXXZLS.Color_No,CostingXXZLS.Process_No,CostingXXZLS.Factory,');
         sql.add('       CostingProcessCost.ColorQty,CostingProcessCost.ColorQty_Neon,CostingProcessCost.GUMColor,CostingProcessCost.SecondLF,CostingProcessCost.SecondOF,');
         sql.add('       CostingProcessCost.moldsPperson,CostingProcessCost.pairPmold,CostingProcessCost.PCsPPair,CostingProcessCost.TurnOverRate,CostingProcessCost.TurnOverRate');
         sql.add('From CostingXXZLS  ');
         sql.add('left join CostingMatLibrary on CostingMatLibrary.MTL_No=CostingXXZLS.MTL_No');
         sql.add('left join CostingPriceLibrary on CostingPriceLibrary.MTL_No=CostingXXZLS.MTL_No and CostingPriceLibrary.Color_No=CostingXXZLS.Color_No ');
         sql.add('left join CostingProcessCost on CostingProcessCost.Process_No=CostingXXZLS.Process_No and CostingProcessCost.Factory=CostingXXZLS.Factory');
         sql.add('left join CostingPriceListNew on CostingPriceListNew.Round=CostingXXZLS.Round ');
         sql.add('       and CostingPriceListNew.SKU=CostingXXZLS.SKU ');
         sql.add('       and CostingPriceListNew.CostingSeason=CostingXXZLS.CostingSeason ');
         sql.add('       and CostingPriceListNew.factory=CostingXXZLS.factory ');
         sql.add('where CostingXXZLS.Round=:Round');
         sql.add('  and CostingXXZLS.SKU=:SKU');
         sql.add('  and CostingXXZLS.CostingSeason=:CostingSeason');
         sql.add('  and CostingXXZLS.Factory=:Factory');
         if CheckBox13.Checked then
            sql.add('  and  CostingXXZLS.Process_No is not null');
         sql.add('order by CostingXXZLS.No');

         //showmessage(SQL.text);
         active:=true;
      end;
      UploadDetailQuery.cachedupdates:=true;
      UploadDetailQuery.requestlive:=true;
      UploadDetailQuery.last;
      UploadDetailQuery.First;
      UploadDetailQuery.Edit;
end;
    
procedure TCostingCBD.LO_BB_CANCELClick(Sender: TObject);
begin
  QueryProcess.active:=false;
  BC2.Enabled:=false;
end;
       

procedure TCostingCBD.BA6Click(Sender: TObject);
begin
    QueryMTL.active:=false;
end;

procedure TCostingCBD.BB3Click(Sender: TObject);
begin
  UploadlQuery.active:=false;
  UploadDetailQuery.active:=false;
end;


procedure TCostingCBD.BitBtn12Click(Sender: TObject);
begin
    if DBGridEh1.Height=100 then
      DBGridEh1.Height :=600
    else  
      DBGridEh1.Height :=100;    
end;

procedure TCostingCBD.completeClick(Sender: TObject);
begin
    UploadlQuery.Edit;
    UploadlQuery.FieldByName('UserComplete').value:=main.Edit1.Text;
    UploadlQuery.FieldByName('CBDcompleteDate').value:=Now;
    UpdateSQL2.apply(ukmodify);
end;

procedure TCostingCBD.BBCBDL1Click(Sender: TObject);
begin          
   with Qry_PriceListLOG do
      begin                                                    //Completed
         active:=false;
         sql.Clear;                          
         sql.add('WITH LogAgg AS (');
         sql.add('  SELECT   CostingSeason, Round, SKU, Factory, Version, COUNT(*) AS LogCount');
         sql.add(' FROM CostingXXZLSlogs');
         sql.add('  GROUP BY CostingSeason, Round, SKU, Factory, Version');
         sql.add(')');
         sql.add('Select CostingPLNLog.*,ISNULL(l.LogCount, 0) AS LogCount');
         sql.add('	,CostingPriceListNew.UseRrady,CostingPriceListNew.CBDReadyDate,CostingPriceListNew.UserComplete,CostingPriceListNew.CBDcompleteDate');
         sql.add('from CostingPLNLog');
         sql.add('left join CostingPriceListNew on CostingPriceListNew.Round=CostingPLNLog.Round ');
         sql.add('       and CostingPriceListNew.SKU=CostingPLNLog.SKU ');
         sql.add('       and CostingPriceListNew.CostingSeason=CostingPLNLog.CostingSeason ');
         sql.add('       and CostingPriceListNew.Factory=CostingPLNLog.Factory ');
         sql.add('LEFT JOIN LogAgg l   ON l.Round = CostingPLNLog.Round AND l.SKU = CostingPLNLog.SKU AND l.CostingSeason = CostingPLNLog.CostingSeason');
         sql.add(' AND l.Factory = CostingPLNLog.Factory AND l.Version = CostingPLNLog.Version');
         sql.add('Where 1=1');
            sql.add('and CostingPLNLog.Round  like '''+ED_CBDLRD.text+'%''');
         if ED_CBDLSKU.text<>'' then
            sql.add('and CostingPLNLog.SKU like '''+ED_CBDLSKU.text+'%''');
         sql.add('and CostingPLNLog.CostingSeason  like '''+ED_CBDLSS.text+'%''');
         if CB_CBDLF.ItemIndex=0 then
            sql.add('and CostingPLNLog.Factory = ''LYN-9Z''')
         else if CB_CBDLF.ItemIndex=1 then
            sql.add('and CostingPLNLog.Factory = ''LYI-6L''');
         if ED_CBDLSR.text<>'' then
            sql.add('and CostingPriceListNew.SR  like '''+ED_CBDLSR.text+'%''');
         if ED_CBDLON.text<>'' then
            sql.add('and CostingPLNLog.UserName like '''+ED_CBDLON.text+'%''');
         //showmessage(SQL.text);
         active:=true;
      end;

   with Qry_CBDLog do
      begin                                                    //Completed
         active:=false;
         sql.Clear;
         sql.add('Select * from (');
         sql.add('Select CostingXXZLSlogs.*,CostingPriceLibrary.MaterialCost,CostingPriceLibrary.PriceOVR From CostingXXZLSlogs');
         sql.add('left join CostingPriceListNew on CostingPriceListNew.Round=CostingXXZLSlogs.Round ');
         sql.add('       and CostingPriceListNew.SKU=CostingXXZLSlogs.SKU ');
         sql.add('       and CostingPriceListNew.CostingSeason=CostingXXZLSlogs.CostingSeason ');
         sql.add('       and CostingPriceListNew.Factory=CostingXXZLSlogs.Factory ');
         sql.add('left join CostingPriceLibrary on CostingPriceLibrary.MTL_No=CostingXXZLSlogs.MTL_No  ');
         sql.add('and CostingPriceLibrary.Color_No=CostingXXZLSlogs.Color_No and CostingPriceLibrary.CostingSeason=CostingXXZLSlogs.CostingSeason ');
         sql.add('Where 1=1');
            sql.add('and CostingPriceListNew.Round =:Round');
            sql.add('and CostingPriceListNew.SKU =:SKU');
         sql.add('and CostingPriceListNew.CostingSeason =:CostingSeason');
         sql.add('and CostingPriceListNew.Factory =:Factory');
         if ED_CBDLNO.text<>'' then
            sql.add('and CostingXXZLSlogs.No like '''+ED_CBDLNO.text+'''');
         sql.add('and CostingXXZLSlogs.version =:version');
         {if ED_CBDLON.text<>'' then
            sql.add('and CostingPriceListNew.UserName like '''+ED_CBDLON.text+'%''');        }
         sql.add('   union all');
         sql.add('Select CostingXXZLS.SKU,CostingXXZLS.Costingseason,CostingXXZLS.Factory,CostingXXZLS.round,CostingXXZLS.no, null as version,99 as Seq ');
         sql.add('  ,CostingXXZLS.MTL_No,CostingXXZLS.Color_No,CostingXXZLS.Process_No,CostingXXZLS.NetUsage,CostingXXZLS.CutLoss,CostingXXZLS.SizeGrading,CostingXXZLS.SecondLabor');
         sql.add(',CostingXXZLS.SecondOverhead,CostingXXZLS.UserName,CostingXXZLS.UserUpdateTime');    
         sql.add('  ,CostingPriceLibrary.MaterialCost,CostingPriceLibrary.PriceOVR ');
         sql.add('From CostingXXZLS ');
         sql.add('left join CostingPriceListNew on CostingPriceListNew.Round=CostingXXZLS.Round ');
         sql.add('       and CostingPriceListNew.SKU=CostingXXZLS.SKU ');
         sql.add('       and CostingPriceListNew.CostingSeason=CostingXXZLS.CostingSeason ');
         sql.add('       and CostingPriceListNew.Factory=CostingXXZLS.Factory ');
         sql.add('left join CostingXXZLSlogs on CostingXXZLSlogs.Round=CostingXXZLS.Round ');
         sql.add('       and CostingXXZLSlogs.SKU=CostingXXZLS.SKU and CostingXXZLSlogs.CostingSeason=CostingXXZLS.CostingSeason ');
         sql.add('       and CostingXXZLSlogs.Factory=CostingXXZLS.Factory and CostingXXZLSlogs.No=CostingXXZLS.No');     
         sql.add('       and CostingXXZLSlogs.version =:version');      
         sql.add('left join CostingPriceLibrary on CostingPriceLibrary.MTL_No=CostingXXZLS.MTL_No  ');
         sql.add('and CostingPriceLibrary.Color_No=CostingXXZLS.Color_No and CostingPriceLibrary.CostingSeason=CostingXXZLS.CostingSeason ');
         sql.add('Where 1=1');
         sql.add('and CostingPriceListNew.Round =:Round');
         sql.add('and CostingPriceListNew.SKU =:SKU');
         sql.add('and CostingPriceListNew.CostingSeason =:CostingSeason');
         sql.add('and CostingPriceListNew.Factory =:Factory');
         if ED_CBDLNO.text<>'' then
            sql.add('and CostingXXZLS.No like '''+ED_CBDLNO.text+'''');
         sql.add('and CostingXXZLSlogs.no is not null');
         sql.add('group by CostingXXZLS.SKU,CostingXXZLS.Costingseason,CostingXXZLS.Factory,CostingXXZLS.round,CostingXXZLS.no');
         sql.add('  ,CostingXXZLS.MTL_No,CostingXXZLS.Color_No,CostingXXZLS.Process_No,CostingXXZLS.NetUsage,CostingXXZLS.CutLoss,CostingXXZLS.SizeGrading,CostingXXZLS.SecondLabor');
         sql.add('  ,CostingXXZLS.SecondOverhead,CostingXXZLS.UserName,CostingXXZLS.UserUpdateTime');
         sql.add('  ,CostingPriceLibrary.MaterialCost,CostingPriceLibrary.PriceOVR ');
         sql.add(')A');
         sql.add('order by no,Seq');
         //showmessage(SQL.text);
         active:=true;
      end;
end;

procedure TCostingCBD.BBCP1Click(Sender: TObject);
begin

   with Qry_CBDComparing do
      begin                                                    //Completed
         active:=false;
         sql.Clear;
         sql.add('Select * from CostingPriceListNew');
         sql.add('Where 1=1');
         if EDCP4.text<>'' then
            sql.add('and CostingPriceListNew.Round like '''+EDCP4.text+'%''');
         if EDCP2.text<>'' then
            sql.add('and CostingPriceListNew.SKU like '''+EDCP2.text+'%''');
         sql.add('and CostingPriceListNew.CostingSeason like '''+EDCP3.text+'%''');
         if CBCP1.ItemIndex=0 then
            sql.add('and CostingPriceListNew.Factory = ''LYN-9Z''')
         else if CBCP1.ItemIndex=1 then
            sql.add('and CostingPriceListNew.Factory = ''LYI-6L''');
         if EDCP1.text<>'' then
            sql.add('and CostingPriceListNew.SR like '''+EDCP1.text+'%''');
         //showmessage(SQL.text);
         active:=true;
      end;
end;

procedure TCostingCBD.BBCP5Click(Sender: TObject); 
var i:integer;
    PartName:string;
begin
    Panel8.Height:=120;
    if Qry_CBDComparing.active=false then
      begin
        showmessage('Please query first!');
        exit;
      end;

    //Qry_CBDComparing.First;
    TargetA.Close;
    TargetA.FieldDefs.Clear;
    TargetA.FieldDefs.Add('SKU', ftString, 10);
    TargetA.FieldDefs.Add('Factory', ftString, 10);
    TargetA.FieldDefs.Add('CostingSeason', ftString, 4);
    TargetA.FieldDefs.Add('Round', ftString, 25);
    TargetA.FieldDefs.Add('TargetSamplePrice', ftFloat);
    TargetA.FieldDefs.Add('FOB', ftFloat);
    TargetA.FieldDefs.Add('TotalMaterialCost', ftFloat);
    TargetA.FieldDefs.Add('Labor', ftFloat);
    TargetA.FieldDefs.Add('Overhead', ftFloat);
    TargetA.FieldDefs.Add('Profit', ftFloat);
    TargetA.FieldDefs.Add('ProfitRate', ftFloat);
    TargetA.FieldDefs.Add('MoldCharge', ftFloat);
    TargetA.CreateDataSet;
    TargetA.Open;
    TargetA.Append;
    TargetA.fieldbyname('SKU').value:=Qry_CBDComparing.fieldbyname('SKU').value;
    TargetA.fieldbyname('Factory').value:=Qry_CBDComparing.fieldbyname('Factory').value;
    TargetA.fieldbyname('CostingSeason').value:=Qry_CBDComparing.fieldbyname('CostingSeason').value;
    TargetA.fieldbyname('Round').value:=Qry_CBDComparing.fieldbyname('Round').value;
    TargetA.fieldbyname('TargetSamplePrice').value:=Qry_CBDComparing.fieldbyname('TargetSamplePrice').value;
    TargetA.fieldbyname('FOB').value:=Qry_CBDComparing.fieldbyname('FOB').value;
    TargetA.fieldbyname('TotalMaterialCost').value:=Qry_CBDComparing.fieldbyname('TotalMaterialCost').value;
    TargetA.fieldbyname('Labor').value:=Qry_CBDComparing.fieldbyname('Labor').value;
    TargetA.fieldbyname('Overhead').value:=Qry_CBDComparing.fieldbyname('Overhead').value;
    TargetA.fieldbyname('Profit').value:=Qry_CBDComparing.fieldbyname('Profit').value;
    TargetA.fieldbyname('ProfitRate').value:=Qry_CBDComparing.fieldbyname('ProfitRate').value;
    TargetA.fieldbyname('MoldCharge').value:=Qry_CBDComparing.fieldbyname('MoldCharge').value;
    TargetA.Post;
   with TemQry do
      begin                                                    //Completed
         active:=false;
         sql.Clear;
         sql.add('select PartName,Component,UnitCost from (');
         sql.add('  Select PartName,Component,sum(CAST(UnitCost AS FLOAT)) as UnitCost,Max(No) as no from CostingXXZLS');
         sql.add('  Where Round = '''+TargetA.fieldbyname('Round').asstring+'''');
         sql.add('  and SKU like '''+TargetA.fieldbyname('SKU').asstring+'''');
         sql.add('  and CostingSeason like '''+TargetA.fieldbyname('CostingSeason').asstring+'''');
         sql.add('  and Factory = '''+TargetA.fieldbyname('Factory').asstring+'''');
         sql.add('  and unitcost<>''0''');
         sql.add('group by PartName,Component');
         sql.add(')a order by no');
         //showmessage(SQL.text);
         active:=true;
      end;
    TargetAs.Close;
    TargetAs.Fields.Clear;
    TargetAs.FieldDefs.Clear;
    TargetAs.FieldDefs.Add('PartName', ftString, 20);
    TargetAs.FieldDefs.Add('Component', ftString, 40);
    TargetAs.FieldDefs.Add('UnitCost', ftFloat);
    TargetAs.FieldDefs.Add('YN', ftBoolean);
    TargetAs.CreateDataSet;
    TargetAs.Open;
    //items:=0;
    for i:=1 to TemQry.RecordCount do
    begin
      TargetAs.Append;
      TargetAs.fieldbyname('PartName').value:=TemQry.fieldbyname('PartName').value;
      TargetAs.fieldbyname('Component').value:=TemQry.fieldbyname('Component').value;
      TargetAs.fieldbyname('UnitCost').value:=TemQry.fieldbyname('UnitCost').value;
      TargetAs.fieldbyname('YN').value:=false;   
      TargetAs.Post;
      TemQry.Next;
      //Inc(items);
    end;
    items:=i;
    TemQry.active:=false;
    TargetAs.First;
end;

procedure TCostingCBD.BBComparingClick(Sender: TObject);
var i,j,Impact,TotalImpact,PB_FOB,PB_TFOB:integer;
    PartName,Component:String;
function RoundClassic(R: Single): Int64;
begin
  if Frac(R) >= 0.5 then
    Result := Trunc(R) + 1
  else
    Result:= Trunc(R);
end;
begin
    Panel8.Height:=30;
    Comparing.Close;
    Comparing.FieldDefs.Clear;
    Comparing.FieldDefs.Add('Item', ftString, 10);
    Comparing.FieldDefs.Add('project_A', ftString, 40);
    Comparing.FieldDefs.Add('project_B', ftString, 40);
    Comparing.FieldDefs.Add('Comparing', ftFloat);
    Comparing.FieldDefs.Add('PB_%', ftString, 6);
    Comparing.FieldDefs.Add('PA_Budget$', ftFloat);
    Comparing.FieldDefs.Add('PA_OverBudget$', ftFloat);
    Comparing.CreateDataSet;
    Comparing.Open;
    Comparing.Append;
    Comparing.fieldbyname('Item').value:='SKU';
    Comparing.fieldbyname('project_A').value:=TargetA.fieldbyname('SKU').value;
    Comparing.fieldbyname('project_B').value:=Qry_CBDComparing.fieldbyname('SKU').value;
    Comparing.fieldbyname('Comparing').value:=null;
    Comparing.post;
    Comparing.Append;
    Comparing.fieldbyname('Item').value:='Factory';
    Comparing.fieldbyname('project_A').value:=TargetA.fieldbyname('Factory').value;
    Comparing.fieldbyname('project_B').value:=Qry_CBDComparing.fieldbyname('Factory').value;
    Comparing.fieldbyname('Comparing').value:=null;
    Comparing.post;
    Comparing.Append;
    Comparing.fieldbyname('Item').value:='CostingSeason';
    Comparing.fieldbyname('project_A').value:=TargetA.fieldbyname('CostingSeason').value;
    Comparing.fieldbyname('project_B').value:=Qry_CBDComparing.fieldbyname('CostingSeason').value;
    Comparing.fieldbyname('Comparing').value:=null; 
    Comparing.post;
    Comparing.Append;
    Comparing.fieldbyname('Item').value:='Round';
    Comparing.fieldbyname('project_A').value:=TargetA.fieldbyname('Round').value;
    Comparing.fieldbyname('project_B').value:=Qry_CBDComparing.fieldbyname('Round').value;
    Comparing.fieldbyname('Comparing').value:=null;
    Comparing.post;
    Comparing.Append;
    Comparing.fieldbyname('Item').value:='TargetSamplePrice';
    if TargetA.fieldbyname('TargetSamplePrice').asstring='' then
      begin        
        Comparing.fieldbyname('project_A').value:=0;
        PB_TFOB:=0;
      end
    else
      begin 
        Comparing.fieldbyname('project_A').value:=TargetA.fieldbyname('TargetSamplePrice').value;
        PB_TFOB:=TargetA.fieldbyname('TargetSamplePrice').value*10000;
      end;
    if Qry_CBDComparing.fieldbyname('TargetSamplePrice').asstring='' then
      Comparing.fieldbyname('project_B').value:=0
    else
      Comparing.fieldbyname('project_B').value:=Qry_CBDComparing.fieldbyname('TargetSamplePrice').value;
    Impact:= (Comparing.fieldbyname('project_B').value-Comparing.fieldbyname('project_A').value)*10000;
    Comparing.fieldbyname('Comparing').value:=Impact/10000;
    //Comparing.fieldbyname('Comparing').value:=Qry_CBDComparing.fieldbyname('TargetSamplePrice').value-TargetA.fieldbyname('TargetSamplePrice').value;
    Comparing.post;
    Comparing.Append;
    Comparing.fieldbyname('Item').value:='FOB';
    Comparing.fieldbyname('project_A').value:=FormatFloat('0.00', TargetA.fieldbyname('FOB').value);
    Comparing.fieldbyname('project_B').value:=FormatFloat('0.00',Qry_CBDComparing.fieldbyname('FOB').value);
    PB_FOB:=Qry_CBDComparing.fieldbyname('FOB').value*10000;
    Comparing.fieldbyname('Comparing').value:=Qry_CBDComparing.fieldbyname('FOB').value-TargetA.fieldbyname('FOB').value;
    //Comparing.fieldbyname('PA_Budget$').value:=PB_TFOB/10000;
    Comparing.post;
    Comparing.Append;
    Comparing.fieldbyname('Item').value:='TotalMaterialCost';
    Comparing.fieldbyname('project_A').value:=FormatFloat('0.00',TargetA.fieldbyname('TotalMaterialCost').value);
    Comparing.fieldbyname('project_B').value:=FormatFloat('0.00',Qry_CBDComparing.fieldbyname('TotalMaterialCost').value);
    Impact:= (Qry_CBDComparing.fieldbyname('TotalMaterialCost').value-TargetA.fieldbyname('TotalMaterialCost').value)*10000;
    Comparing.fieldbyname('Comparing').value:=RoundClassic(Impact/100)/100;
    Comparing.fieldbyname('PB_%').value:= RoundClassic(
                          Qry_CBDComparing.fieldbyname('TotalMaterialCost').value*1000000/PB_FOB*10
                          )/10;
    Comparing.fieldbyname('PA_Budget$').value:=RoundClassic(
                          Comparing.fieldbyname('PB_%').value*PB_TFOB/10000
                          )/100;

    Comparing.fieldbyname('PA_OverBudget$').value:=RoundClassic(
                        (Comparing.fieldbyname('PA_Budget$').value-Comparing.fieldbyname('project_A').value)*100
                        )/100;
    //Comparing.fieldbyname('Comparing').value:=Qry_CBDComparing.fieldbyname('TotalMaterialCost').value-TargetA.fieldbyname('TotalMaterialCost').value;
    Comparing.post;
    Comparing.Append;
    Comparing.fieldbyname('Item').value:='Labor';
    Comparing.fieldbyname('project_A').value:=FormatFloat('0.00',TargetA.fieldbyname('Labor').value);
    Comparing.fieldbyname('project_B').value:=FormatFloat('0.00',Qry_CBDComparing.fieldbyname('Labor').value);
    Impact:= (Qry_CBDComparing.fieldbyname('Labor').value-TargetA.fieldbyname('Labor').value)*10000;
    Comparing.fieldbyname('Comparing').value:=RoundClassic(Impact/100)/100;
    Comparing.fieldbyname('PB_%').value:= RoundClassic(
                          Qry_CBDComparing.fieldbyname('Labor').value*1000000/PB_FOB*10
                          )/10;
    Comparing.fieldbyname('PA_Budget$').value:=RoundClassic(
                          Comparing.fieldbyname('PB_%').value*PB_TFOB/10000
                          )/100;

    Comparing.fieldbyname('PA_OverBudget$').value:=RoundClassic(
                        (Comparing.fieldbyname('PA_Budget$').value-Comparing.fieldbyname('project_A').value)*100
                        )/100;
    {Comparing.fieldbyname('Comparing').value:=FormatFloat('0.00',Impact/10000);
    Comparing.fieldbyname('PB_%').value:=FormatFloat('0.0', (Qry_CBDComparing.fieldbyname('Labor').value)*1000000/PB_FOB);
    Comparing.fieldbyname('PA_Budget$').value:=FormatFloat('0.00',Comparing.fieldbyname('PB_%').value*PB_TFOB/1000000);
    Comparing.fieldbyname('PA_OverBudget$').value:=FormatFloat('0.00',Comparing.fieldbyname('PA_Budget$').value-Comparing.fieldbyname('project_A').value);     }
    //Comparing.fieldbyname('Comparing').value:=Qry_CBDComparing.fieldbyname('Labor').value-TargetA.fieldbyname('Labor').value;
    Comparing.post;
    Comparing.Append;
    Comparing.fieldbyname('Item').value:='Overhead';
    Comparing.fieldbyname('project_A').value:=FormatFloat('0.00',TargetA.fieldbyname('Overhead').value);
    Comparing.fieldbyname('project_B').value:=FormatFloat('0.00',Qry_CBDComparing.fieldbyname('Overhead').value);
    Impact:= (Qry_CBDComparing.fieldbyname('Overhead').value-TargetA.fieldbyname('Overhead').value)*10000;
    Comparing.fieldbyname('Comparing').value:=RoundClassic(Impact/100)/100;
    Comparing.fieldbyname('PB_%').value:= RoundClassic(
                          Qry_CBDComparing.fieldbyname('Overhead').value*1000000/PB_FOB*10
                          )/10;
    Comparing.fieldbyname('PA_Budget$').value:=RoundClassic(
                          Comparing.fieldbyname('PB_%').value*PB_TFOB/10000
                          )/100;

    Comparing.fieldbyname('PA_OverBudget$').value:=RoundClassic(
                        (Comparing.fieldbyname('PA_Budget$').value-Comparing.fieldbyname('project_A').value)*100
                        )/100;
    {Comparing.fieldbyname('Comparing').value:=FormatFloat('0.00',Impact/10000);
    Comparing.fieldbyname('PB_%').value:=FormatFloat('0.0', (Qry_CBDComparing.fieldbyname('Overhead').value)*1000000/PB_FOB);
    Comparing.fieldbyname('PA_Budget$').value:=FormatFloat('0.00',Comparing.fieldbyname('PB_%').value*PB_TFOB/1000000);
    Comparing.fieldbyname('PA_OverBudget$').value:=FormatFloat('0.00',Comparing.fieldbyname('PA_Budget$').value-Comparing.fieldbyname('project_A').value);  }
    //Comparing.fieldbyname('Comparing').value:=Qry_CBDComparing.fieldbyname('Overhead').value-TargetA.fieldbyname('Overhead').value;
    Comparing.post;
    Comparing.Append;
    Comparing.fieldbyname('Item').value:='Profit';
    Comparing.fieldbyname('project_A').value:=FormatFloat('0.00',TargetA.fieldbyname('Profit').value);
    Comparing.fieldbyname('project_B').value:=FormatFloat('0.00',Qry_CBDComparing.fieldbyname('Profit').value);
    Impact:= (Qry_CBDComparing.fieldbyname('Profit').value-TargetA.fieldbyname('Profit').value)*10000;
    Comparing.fieldbyname('Comparing').value:=RoundClassic(Impact/100)/100;
    Comparing.fieldbyname('PB_%').value:= RoundClassic(
                          Qry_CBDComparing.fieldbyname('Profit').value*1000000/PB_FOB*10
                          )/10;
    Comparing.fieldbyname('PA_Budget$').value:=RoundClassic(
                          Comparing.fieldbyname('PB_%').value*PB_TFOB/10000
                          )/100;

    Comparing.fieldbyname('PA_OverBudget$').value:=RoundClassic(
                        (Comparing.fieldbyname('PA_Budget$').value-Comparing.fieldbyname('project_A').value)*100
                        )/100;
    {Comparing.fieldbyname('Comparing').value:=FormatFloat('0.00',Impact/10000);
    Comparing.fieldbyname('PB_%').value:=FormatFloat('0.0', (Qry_CBDComparing.fieldbyname('Profit').value)*1000000/PB_FOB);
    Comparing.fieldbyname('PA_Budget$').value:=FormatFloat('0.00',Comparing.fieldbyname('PB_%').value*PB_TFOB/1000000);
    Comparing.fieldbyname('PA_OverBudget$').value:=FormatFloat('0.00',Comparing.fieldbyname('PA_Budget$').value-Comparing.fieldbyname('project_A').value);  }
    //Comparing.fieldbyname('Comparing').value:=Qry_CBDComparing.fieldbyname('Profit').value-TargetA.fieldbyname('Profit').value;
    Comparing.post;
    Comparing.Append;
    Comparing.fieldbyname('Item').value:='MoldCharge';
    if TargetA.fieldbyname('MoldCharge').asstring='' then
      Comparing.fieldbyname('project_A').value:=0
    else
      begin
        Comparing.fieldbyname('project_A').value:=TargetA.fieldbyname('MoldCharge').value;
      end;
    if Qry_CBDComparing.fieldbyname('MoldCharge').asstring='' then
      Comparing.fieldbyname('project_B').value:=0
    else
      begin  
        Comparing.fieldbyname('project_B').value:=Qry_CBDComparing.fieldbyname('MoldCharge').value;  
    Comparing.fieldbyname('PB_%').value:= RoundClassic(
                          Qry_CBDComparing.fieldbyname('MoldCharge').value*1000000/PB_FOB*10
                          )/10;
    Comparing.fieldbyname('PA_Budget$').value:=RoundClassic(
                          Comparing.fieldbyname('PB_%').value*PB_TFOB/10000
                          )/100;

    Comparing.fieldbyname('PA_OverBudget$').value:=RoundClassic(
                        (Comparing.fieldbyname('PA_Budget$').value-Comparing.fieldbyname('project_A').value)*100
                        )/100;
        {Comparing.fieldbyname('PB_%').value:=FormatFloat('0.0', (Qry_CBDComparing.fieldbyname('Profit').value)*1000000/PB_FOB);
        Comparing.fieldbyname('PA_Budget$').value:=FormatFloat('0.00',Comparing.fieldbyname('PB_%').value*PB_TFOB/1000000);
        Comparing.fieldbyname('PA_OverBudget$').value:=FormatFloat('0.00',Comparing.fieldbyname('PA_Budget$').value-Comparing.fieldbyname('project_A').value);}
      end;
    Impact:= (Comparing.fieldbyname('project_B').value-Comparing.fieldbyname('project_A').value)*10000;
    Comparing.fieldbyname('Comparing').value:=RoundClassic(Impact/100)/100;
    //Comparing.fieldbyname('Comparing').value:=Qry_CBDComparing.fieldbyname('MoldCharge').value-TargetA.fieldbyname('MoldCharge').value;
    Comparing.post;    
    Comparing.Append;
    Comparing.fieldbyname('Item').value:='Profit %';
    Comparing.fieldbyname('project_A').value:=TargetA.fieldbyname('ProfitRate').value;
    Comparing.fieldbyname('project_B').value:=Qry_CBDComparing.fieldbyname('ProfitRate').value;
    Impact:= (Qry_CBDComparing.fieldbyname('ProfitRate').value-TargetA.fieldbyname('ProfitRate').value)*10000;
    Comparing.fieldbyname('Comparing').value:=RoundClassic(Impact/100)/100;
    //Comparing.fieldbyname('Comparing').value:=Qry_CBDComparing.fieldbyname('ProfitRate').value-TargetA.fieldbyname('ProfitRate').value;
    Comparing.post;

   with TemQry do
      begin                                                    //Completed
         active:=false;
         sql.Clear;
         sql.add('select PartName,Component,UnitCost,SKU,Round,CostingSeason,Factory from (');
         sql.add('  Select PartName,Component,sum(CAST(UnitCost AS FLOAT)) as UnitCost,Max(No) as no,SKU,Round,CostingSeason,Factory from CostingXXZLS');
         sql.add('Where Round = '''+Qry_CBDComparing.fieldbyname('Round').value+'''');
         sql.add('and SKU like '''+Qry_CBDComparing.fieldbyname('SKU').value+'''');
         sql.add('and CostingSeason like '''+Qry_CBDComparing.fieldbyname('CostingSeason').value+'''');
         sql.add('and Factory = '''+Qry_CBDComparing.fieldbyname('Factory').value+'''');
         sql.add('  and unitcost<>''0''');
         sql.add('group by PartName,Component,SKU,Round,CostingSeason,Factory');
         sql.add(')a order by no');
         //showmessage(SQL.text);
         active:=true;

    Comparing.Append;
    Comparing.fieldbyname('Item').value:='-----------';
    Comparing.fieldbyname('project_A').value:='----------------';
    Comparing.fieldbyname('project_B').value:='----------------';
    Comparing.post;


         TargetAS.First;
         for i:=1 to items-1 do
          begin
              TargetAS.edit;
              TargetAS.fieldbyname('YN').AsBoolean:=false;
              TargetAS.Next;
          end;
         PartName:='';
         i:=0;
         j:=0;
         while (not eof)  do
          begin
              if ((TemQry.fieldbyname('UnitCost').value=0)or (TemQry.fieldbyname('UnitCost').value=null))then
                begin
                  TemQry.Next;
                end
              else if (PartName<>TemQry.fieldbyname('PartName').value) then      // PartName都填完
                begin
                  //showmessage('PartName都填完');
                  Impact:=0;
                  Comparing.Edit;
                  Comparing.Append;
                  PartName:=TemQry.fieldbyname('PartName').asstring;
                  //Component:=TemQry.fieldbyname('Component').asstring;
                  Comparing.fieldbyname('Item').value:=TemQry.fieldbyname('PartName').asstring;

                  //加總相同名稱總金額  Comparing.fieldbyname('project_B').value:=TemQry.fieldbyname('UnitCost').value;
                  j:=0;
                  while (not eof) do
                    begin
                    if (PartName=TemQry.fieldbyname('PartName').asstring) and ((TemQry.fieldbyname('UnitCost').value<>0) and (TemQry.fieldbyname('UnitCost').value<>null))then
                      begin
                        Impact:=Impact+(TemQry.fieldbyname('UnitCost').value*10000);
                      end;
                      Inc(j);
                      TemQry.Next;
                    end;
                  while j>0 do
                    begin
                      TemQry.Prior;
                      Dec(j);
                    end;
                  Comparing.fieldbyname('project_B').value:=RoundClassic(Impact/100)/100;
                  TotalImpact:=Impact;
                  //填如果有相同 Component NAME
                  Impact:=0;
                  TargetAs.First;
                  for j:=1 to items-1 do
                    begin
                    if (PartName=TargetAs.fieldbyname('PartName').asstring) and ((TargetAS.fieldbyname('UnitCost').value<>0) and (TargetAS.fieldbyname('UnitCost').value<>null))then
                      begin
                        Impact:=Impact+(TargetAs.fieldbyname('UnitCost').value*100000);
                        TargetAs.Edit;
                        TargetAs.fieldbyname('YN').AsBoolean:=true;
                      end;
                      TargetAs.Next;
                    end;
                  Comparing.fieldbyname('project_A').value:=RoundClassic(Impact/1000)/100;
                  TotalImpact:=TotalImpact-RoundClassic(Impact/10);
                  Comparing.fieldbyname('Comparing').value:=RoundClassic(TotalImpact/100)/100;
                  TemQry.Next;
                end
              else //if(PartName=TemQry.fieldbyname('PartName').value) then                                                                    // TargetAs還未完成
                begin
                  TemQry.Next;
                end;
          end;
      //補充如果沒有被選擇到
      {PartName:='';
      TargetAs.First;
      while NOT(TargetAs.eof) do  //待測試 需實際案例
         begin
          if (PartName<>TargetAs.fieldbyname('PartName').asstring) and ((TargetAS.fieldbyname('UnitCost').value<>0) and (TargetAS.fieldbyname('UnitCost').value<>null))then
            begin
              PartName:=TargetAs.fieldbyname('PartName').asstring;
              Impact:=TargetAs.fieldbyname('UnitCost').value*100;
              TargetAs.Edit;
              TargetAs.fieldbyname('YN').AsBoolean:=true;            
              Comparing.Append;
              Comparing.fieldbyname('Item').value:=TargetAs.fieldbyname('PartName').asstring;
              Comparing.fieldbyname('project_A').value:=Impact/100;
              Comparing.fieldbyname('Comparing').value:=(Impact/100)*-1;
            end
          else if (PartName=TargetAs.fieldbyname('PartName').asstring) and ((TargetAS.fieldbyname('UnitCost').value<>0) and (TargetAS.fieldbyname('UnitCost').value<>null))then
            begin
                Impact:=Impact+(TargetAs.fieldbyname('UnitCost').value*100);
                TargetAs.Edit;
                TargetAs.fieldbyname('YN').AsBoolean:=true;
                Comparing.fieldbyname('project_A').value:=Impact/100;
                Comparing.fieldbyname('Comparing').value:=(Impact/100)*-1;
            end;
          TargetAs.Next;
         end;      }

    Comparing.Append;
    Comparing.fieldbyname('Item').value:='-----------';
    Comparing.fieldbyname('project_A').value:='----------------';
    Comparing.fieldbyname('project_B').value:='----------------';
    Comparing.post;
         TemQry.First;
         TargetAS.First;
         for i:=1 to items-1 do
          begin
              TargetAS.edit;
              TargetAS.fieldbyname('YN').AsBoolean:=false;
              TargetAS.Next;
          end;
         PartName:='';
         i:=0;
         j:=0;
         //showmessage('部位對比');
         while (not eof) or (i=items)  do
          begin
              if ((TemQry.fieldbyname('UnitCost').value=0)or (TemQry.fieldbyname('UnitCost').value=null))then
                begin
                  TemQry.Next;
                  //showmessage('TemQry 價格為0');
                end
              else if (PartName<>TemQry.fieldbyname('PartName').value)and(j=0) then      // PartName都填完
                begin
                  //showmessage('PartName都填完');
                  TotalImpact:=0;
                  Comparing.Edit;
                  Comparing.Append;
                  PartName:=TemQry.fieldbyname('PartName').asstring;
                  Component:=TemQry.fieldbyname('Component').asstring;
                  Comparing.fieldbyname('Item').value:=TemQry.fieldbyname('PartName').asstring;
                  Comparing.fieldbyname('project_B').value:=TemQry.fieldbyname('Component').asstring;
                  //填如果有相同 Component NAME
                  TargetAs.First;
                  for j:=1 to items-1 do
                    begin
                    if (PartName=TargetAs.fieldbyname('PartName').asstring) and (Component=TargetAs.fieldbyname('Component').asstring)
                          and (TargetAs.fieldbyname('YN').AsBoolean=false)  and ((TargetAS.fieldbyname('UnitCost').value<>0) and (TargetAS.fieldbyname('UnitCost').value<>null))then
                      begin
                        Comparing.fieldbyname('project_A').value:=TargetAs.fieldbyname('Component').asstring;
                        TargetAs.Edit;
                        TargetAs.fieldbyname('YN').AsBoolean:=true;
                        Inc(i);
                        break;
                      end;
                      TargetAs.Next;
                    end;
                  if Comparing.fieldbyname('project_A').asstring='' then
                       Comparing.fieldbyname('project_A').value:='--------';
                  Impact:= (TemQry.fieldbyname('UnitCost').value-TargetAS.fieldbyname('UnitCost').value)*10000;
                  Comparing.fieldbyname('Comparing').value:=RoundClassic(Impact/100)/100;
                  TotalImpact:=TotalImpact+Impact;
                  TemQry.Next;
                end
              else if (PartName<>TemQry.fieldbyname('PartName').value)and(j>0) then  //對照組還未完成
                begin                 
                  //showmessage('對照組檢查');
                  Comparing.Edit;
                  Comparing.Append;
                  Comparing.fieldbyname('project_B').value:='--------';
                  TargetAs.First;
                  for j:=1 to items-1 do
                  begin
                    //showmessage('123');
                    if (TargetAs.fieldbyname('YN').AsBoolean=false) then
                    if (PartName=TargetAs.fieldbyname('PartName').asstring) //and (Component=TargetAs.fieldbyname('Component').asstring)
                            and ((TargetAS.fieldbyname('UnitCost').value<>0) and (TargetAS.fieldbyname('UnitCost').value<>null))then
                      begin
                        //showmessage(TargetAs.fieldbyname('YN').asstring);
                        if Comparing.fieldbyname('project_A').asstring<>'' then
                          begin
                            Comparing.Append;
                            Comparing.fieldbyname('project_B').value:='--------';
                          end;
                        Comparing.Edit;
                        Comparing.fieldbyname('Item').value:=TargetAs.fieldbyname('PartName').asstring;
                        Comparing.fieldbyname('project_A').value:=TargetAs.fieldbyname('Component').asstring;
                        Impact:= -(TargetAS.fieldbyname('UnitCost').value)*10000;
                        Comparing.fieldbyname('Comparing').value:=RoundClassic(Impact/100)/100;
                        TotalImpact:=TotalImpact+Impact;
                        TargetAs.edit;
                        TargetAs.fieldbyname('YN').AsBoolean:=true;
                        Inc(i);
                      end;
                      TargetAs.Next;
                  end;
                  if Comparing.fieldbyname('project_A').asstring='' then
                      begin
                            Comparing.fieldbyname('project_A').value:='--------';
                            Comparing.fieldbyname('Comparing').value:=RoundClassic(Impact/100)/100;
                      end
                    else
                      begin
                            Comparing.Append;
                            Comparing.fieldbyname('project_A').value:='--------';
                            Comparing.fieldbyname('project_B').value:='--------';
                            Comparing.fieldbyname('Comparing').value:=RoundClassic(TotalImpact/100)/100;
                      end;
                    j:=0;
                end
              else if(PartName=TemQry.fieldbyname('PartName').value) then                                                                    // TargetAs還未完成
                begin
                  //showmessage('PartName 相同繼續往下');
                  Comparing.Edit;
                  Comparing.Append;
                  Component:=TemQry.fieldbyname('Component').asstring;
                  Comparing.fieldbyname('Item').value:=TemQry.fieldbyname('PartName').asstring;
                  Comparing.fieldbyname('project_B').value:=TemQry.fieldbyname('Component').asstring;
                  //填如果有相同 Component NAME
                  TargetAs.First;
                  for j:=1 to items-1 do
                    begin
                    if (PartName=TargetAs.fieldbyname('PartName').asstring) and (Component=TargetAs.fieldbyname('Component').asstring)
                          and (TargetAs.fieldbyname('YN').AsBoolean=false)  and ((TargetAS.fieldbyname('UnitCost').value<>0)and (TargetAS.fieldbyname('UnitCost').value<>null))then
                      begin
                        Comparing.fieldbyname('project_A').value:=TargetAs.fieldbyname('Component').asstring;
                        TargetAs.Edit;
                        TargetAs.fieldbyname('YN').AsBoolean:=true;
                        Inc(i);
                        break;
                      end;
                      TargetAs.Next;
                    end;
                  if Comparing.fieldbyname('project_A').asstring='' then
                       Comparing.fieldbyname('project_A').value:='--------';
                  Impact:= (TemQry.fieldbyname('UnitCost').value-TargetAS.fieldbyname('UnitCost').value)*10000;
                  Comparing.fieldbyname('Comparing').value:=RoundClassic(TotalImpact/100)/100;
                  TotalImpact:=TotalImpact+Impact;
                  //Comparing.fieldbyname('Comparing').value:=TemQry.fieldbyname('UnitCost').value-TargetAS.fieldbyname('UnitCost').value;
                  TemQry.Next;
                end;
          end;                
      end;           
      Comparing.post;
      Comparing.First;
end;

procedure TCostingCBD.BBCP4Click(Sender: TObject);
var  eclApp,WorkBook:olevariant;
     i,j:integer;
begin
 //if DetQry<>nil then DetQry.Active:=false;
 if  Comparing.active  then
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
        for   i:=0   to   Comparing.fieldcount-1   do
        begin
            eclApp.Cells(1,i+1):=Comparing.fields[i].FieldName;
        end;

        Comparing.First;
        j:=2;
        while   not   Comparing.Eof   do
        begin
          for   i:=0   to  Comparing.fieldcount-1  do
          begin
            eclApp.Cells(j,i+1):=Comparing.Fields[i].Value;
          end;
        Comparing.Next;
        inc(j);
        end;
       eclapp.columns.autofit;
       showmessage('Succeed');
       eclApp.Visible:=True;

      except
        on   F:Exception   do
          showmessage(F.Message);
      end;
    end;
end;

procedure TCostingCBD.DBGridEh9DblClick(Sender: TObject);
begin
{  if (DBGridEh6.SelectedField.FieldName = 'Process_No') and (Qry_CBDLog.FieldByName('Process_No').AsString<>'0') and (Qry_CBDLog.FieldByName('Process_No').AsString<>'') then
  begin

    CostingCBD:=TCostingCBD.Create(self);
    CostingCBD.PageControl1.ActivePageIndex:=2;
    CostingCBD.EDC4.text:= Qry_CBDLog.FieldByName('Process_No').AsString;
  end;
  if (DBGridEh6.SelectedField.FieldName = 'MTL_No') or (DBGridEh6.SelectedField.FieldName = 'Color_No')then
  begin
    CostingCBD:=TCostingCBD.Create(self);
    CostingCBD.PageControl1.ActivePageIndex:=1;
    CostingCBD.ED8.text:= Qry_CBDLog.FieldByName('MTL_No').AsString;
    CostingCBD.ED9.text:= Qry_CBDLog.FieldByName('Color_No').AsString;
    CostingCBD.ComboBox3.ItemIndex:=2;
    CostingCBD.CheckBox16.Checked:=false;
  end;    }

end;

procedure TCostingCBD.DBGridEh10DblClick(Sender: TObject);
begin

  if Comparing.Active then
  begin
  if (DBGridEh10.SelectedField.FieldName = 'project_A') and (Comparing.FieldByName('project_A').AsString<>'') then
  begin
    //CostingCBD:=TCostingCBD.Create(self);
    PageControl1.ActivePageIndex:=0;
    Edit8.text:= TargetA.FieldByName('SKU').AsString;
    Edit9.text:= TargetA.FieldByName('CostingSeason').AsString;
    Edit10.text:= TargetA.FieldByName('Round').AsString;
    if  TargetA.FieldByName('Factory').AsString='LYN-9Z' then
      ComboBox1.ItemIndex:=0
    else
      ComboBox1.ItemIndex:=1;
    BitBtn8.Click;
  end
  else if (DBGridEh10.SelectedField.FieldName = 'project_B') and (Comparing.FieldByName('project_B').AsString<>'') then
  begin
    //CostingCBD:=TCostingCBD.Create(self);
    PageControl1.ActivePageIndex:=0;
    Edit8.text:= TemQry.FieldByName('SKU').AsString;
    Edit9.text:= TemQry.FieldByName('CostingSeason').AsString;
    Edit10.text:= TemQry.FieldByName('Round').AsString;
    if  TemQry.FieldByName('Factory').AsString='LYN-9Z' then
      ComboBox1.ItemIndex:=0
    else
      ComboBox1.ItemIndex:=1;
    BitBtn8.Click;
  end;
  end;
end;

procedure TCostingCBD.DBGLogsDblClick(Sender: TObject);
begin
  if (DBGridEh6.SelectedField.FieldName = 'Process_No') and (Qry_CBDLog.FieldByName('Process_No').AsString<>'0') and (Qry_CBDLog.FieldByName('Process_No').AsString<>'') then
  begin

    PageControl1.ActivePageIndex:=2;
    EDC4.text:= Qry_CBDLog.FieldByName('Process_No').AsString;
  end;
  if (DBGridEh6.SelectedField.FieldName = 'MTL_No') or (DBGridEh6.SelectedField.FieldName = 'Color_No')then
  begin
    //CostingCBD:=TCostingCBD.Create(self);
    PageControl1.ActivePageIndex:=1;
    ED8.text:= Qry_CBDLog.FieldByName('MTL_No').AsString;
    ED9.text:= Qry_CBDLog.FieldByName('Color_No').AsString;
    ComboBox3.ItemIndex:=2;
    CheckBox16.Checked:=false;
  end;
end;


procedure TCostingCBD.BBReadyClick(Sender: TObject);
begin
    UploadlQuery.Edit;
    UploadlQuery.FieldByName('UseRrady').value:=main.Edit1.Text;
    UploadlQuery.FieldByName('CBDReadyDate').value:=Now;
    UpdateSQL2.apply(ukmodify);
end;

procedure TCostingCBD.DBGLogsGetCellParams(Sender: TObject;
  Column: TColumnEh; AFont: TFont; var Background: TColor;
  State: TGridDrawState);
begin 
  if (Qry_CBDLog.FieldByName('Seq').AsString='99') then
  begin
    DBGLogs.canvas.font.color:=clred;
  end;
end;

procedure TCostingCBD.BBCBDL4Click(Sender: TObject);
var  eclApp,WorkBook:olevariant;
     i,j:integer;
begin
 //if DetQry<>nil then DetQry.Active:=false;
 if  Qry_PriceListLOG.active  then
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
        for   i:=0   to   Qry_PriceListLOG.fieldcount-1   do
        begin
            eclApp.Cells(1,i+2):=Qry_PriceListLOG.fields[i].FieldName;
        end;

        Qry_PriceListLOG.First;

        j:=2;
        while   not   Qry_PriceListLOG.Eof   do
        begin
          eclApp.Cells(j,1):=j-1;
          for   i:=0   to  Qry_PriceListLOG.fieldcount-1  do
          begin
            eclApp.Cells(j,i+2):=Qry_PriceListLOG.Fields[i].Value;
          end;
        Qry_PriceListLOG.Next;
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

procedure TCostingCBD.btn1Click(Sender: TObject);
var
  year,StartM,EndM:word;
  UserInput:string;
  StartDate, EndDate: TDate;
begin
    if Edit2.Text='' then
    begin
      Edit2.color:=clMenuHighlight;
      ShowMessage('first season can not be null');
      Exit;
    end
    else
      Edit2.color:=clWindow;
    //計算季度
    UserInput:= copy(Edit2.Text,3,1);
    if UserInput = 'F' then
    begin
       year:=StrToInt(copy(Edit2.Text,1,2));
       StartM:=1;
       EndM:=3;
    end
    else if UserInput = 'H' then
    begin
       year:=StrToInt(copy(Edit2.Text,1,2));
       StartM:=4;
       EndM:=6;
    end
    else if UserInput = 'S' then
    begin
       year:=StrToInt(copy(Edit2.Text,1,2))-1;
       StartM:=7;
       EndM:=9;
    end
    else if UserInput = 'U' then
    begin
       year:=StrToInt(copy(Edit2.Text,1,2))-1;
       StartM:=10;
       EndM:=12;
    end;

  StartDate := EncodeDate(2000 + year, StartM, 1);
  EndDate := EndOfTheMonth(EncodeDate(2000 + year, EndM, 1)); // DateUtils 裡的函數


  
  with TemQry do
  begin
     active:=false;
     sql.Clear;
     sql.add('WITH RankedData AS (');
     sql.add('    SELECT ');
     sql.add('        ROW_NUMBER() OVER (');
     sql.add('            PARTITION BY CostingSeason, Factory, SKU,EffectBuy');
     sql.add('            ORDER BY  CostingSeason, Factory, SKU, EffectBuy');
     sql.add('        ) AS RowNum,');
     sql.add('        CASE ');
     sql.add('            WHEN RIGHT(CostingSeason, 1) = ''F'' THEN (LEFT(CostingSeason, 2) + ''U'')');
     sql.add('            WHEN RIGHT(CostingSeason, 1) = ''H'' THEN (LEFT(CostingSeason, 2) + ''F'')');
     sql.add('            WHEN RIGHT(CostingSeason, 1) = ''S'' THEN (CAST(CAST(LEFT(CostingSeason, 2) AS INT) - 1 AS VARCHAR) + ''H'')');
     sql.add('            WHEN RIGHT(CostingSeason, 1) = ''U'' THEN (LEFT(CostingSeason, 2) + ''S'')');
     sql.add('        END as PreviousSeason,');
     sql.add('        round,');
     sql.add('        CostingSeason,');
     sql.add('        Factory,');
     sql.add('        SKU,');
     sql.add('        EffectBuy');
     sql.add('    FROM CostingPriceListNew');
     sql.add('    where round like ''FNL%''');
     sql.add('),');
     sql.add('RowNumOneOnly AS (');
     sql.add('    SELECT RankedData.*,ROW_NUMBER() OVER (PARTITION BY CostingSeason, Factory, SKU,EffectBuy ORDER BY RowNum) AS FinalIndex');
     sql.add('    FROM RankedData');
     sql.add('),');
     sql.add('RowNumOneOnly2 AS (');
     sql.add('    SELECT RowNumOneOnly.*');
     sql.add('        ,ROW_NUMBER() OVER (');
     sql.add('            PARTITION BY CostingSeason, Factory, SKU');
     sql.add('            ORDER BY  CostingSeason, Factory, SKU, EffectBuy');
     sql.add('        ) AS RowNum2');
     sql.add('    FROM RowNumOneOnly');
     sql.add('where FinalIndex=1');
     sql.add('),');

     sql.add('WithNext AS (');
     sql.add('    SELECT ');
     sql.add('        curr.*,');
     sql.add('        CASE ');
     sql.add('            WHEN next.EffectBuy IS NULL THEN ');
     sql.add('                CASE ');
     sql.add('                    WHEN RIGHT(curr.CostingSeason, 1) = ''F'' THEN (''20'' + LEFT(curr.CostingSeason, 2) + ''03'')');
     sql.add('                    WHEN RIGHT(curr.CostingSeason, 1) = ''H'' THEN (''20'' + LEFT(curr.CostingSeason, 2) + ''06'')');
     sql.add('                    WHEN RIGHT(curr.CostingSeason, 1) = ''S'' THEN (''20'' + CAST(CAST(LEFT(curr.CostingSeason, 2) AS INT) - 1 AS VARCHAR) + ''09'')');
     sql.add('                    WHEN RIGHT(curr.CostingSeason, 1) = ''U'' THEN (''20'' + CAST(CAST(LEFT(curr.CostingSeason, 2) AS INT) - 1 AS VARCHAR) + ''12'')');
     sql.add('                END');
     sql.add('            WHEN next.EffectBuy = curr.EffectBuy THEN '''' ');
     sql.add('            ELSE CAST(next.EffectBuy AS INT) - 1 ');
     sql.add('        END AS EndBuy,');
     sql.add('        CASE ');
     sql.add('            WHEN (PreviousSeasonCFM.SKU is null) and (curr.RowNum2=1) then ');
     sql.add('                CASE ');
     sql.add('                    WHEN RIGHT(curr.CostingSeason, 1) = ''F'' THEN (''20'' + CAST(CAST(LEFT(curr.CostingSeason, 2) AS INT) - 1 AS VARCHAR) + ''10'')');
     sql.add('                    WHEN RIGHT(curr.CostingSeason, 1) = ''H'' THEN (''20'' + LEFT(curr.CostingSeason, 2) + ''01'')');
     sql.add('                    WHEN RIGHT(curr.CostingSeason, 1) = ''S'' THEN (''20'' + CAST(CAST(LEFT(curr.CostingSeason, 2) AS INT) - 1 AS VARCHAR) + ''04'')');
     sql.add('                    WHEN RIGHT(curr.CostingSeason, 1) = ''U'' THEN (''20'' + CAST(CAST(LEFT(curr.CostingSeason, 2) AS INT) - 1 AS VARCHAR) + ''07'')');
     sql.add('                END');
     sql.add('        else ');
     sql.add('                curr.EffectBuy	');
     sql.add('        END AS PreviousSeasonBuy--,PreviousSeasonCFM.SKU as PreviousSeasonCFM');
     sql.add('    FROM RowNumOneOnly2 curr');
     sql.add('    LEFT JOIN RowNumOneOnly2 next ');
     sql.add('        ON curr.RowNum2 + 1 = next.RowNum2 ');
     sql.add('        AND curr.SKU = next.SKU');
     sql.add('        AND curr.CostingSeason = next.CostingSeason');
     sql.add('        AND curr.Factory = next.Factory');
     sql.add('    left join (select* from(');
     sql.add('        select SKU,PricingSeason,Factory  From CostingPriceList ');
     sql.add('        UNION all ');
     sql.add('        select SKU,CostingSeason as PricingSeason,Factory  From CostingPriceListnew )a');
     sql.add('        group by SKU,Factory,PricingSeason ');
     sql.add('        )PreviousSeasonCFM on PreviousSeasonCFM.SKU=curr.SKU and PreviousSeasonCFM.PricingSeason=curr.PreviousSeason and PreviousSeasonCFM.factory=curr.factory ');

     sql.add(')');
     sql.add('Select WithNext.sku,DDZL.ARTICLE,DDZL.BUYNO,YWDD.KHDDBH2DATE from YWDD');
     sql.add('left join DDZL on YWDD.DDBH=DDZL.DDBH');
     sql.add('left join xxzl on xxzl.XieXing=DDZL.XieXing and xxzl.SheHao=DDZL.SheHao ');
     sql.add('left join WithNext on WithNext.SKU = left(xxzl.article,charindex(''/'',xxzl.article+''/'')-1)');
     sql.add('		and CONVERT(VARCHAR(6), KHDDBH2DATE, 112) between  WithNext.PreviousSeasonBuy and WithNext.EndBuy ');
     sql.add('WHERE YWDD.KHDDBH2DATE BETWEEN '+QuotedStr(FormatDateTime('yyyy-mm-dd', StartDate))+' AND '+QuotedStr(FormatDateTime('yyyy-mm-dd', EndDate)));
     sql.add('        AND DDZL.KHBH=''036''  AND WithNext.sku IS NULL ');
     //showmessage(SQL.text);
     active:=true;

     if not Eof then
        begin
          CheckNoInCostingPriceList:=TCheckNoInCostingPriceList.Create(self);
          CheckNoInCostingPriceList.Edit2.text:=Edit2.text;
          CheckNoInCostingPriceList.btn1.Click;
          CheckNoInCostingPriceList.ShowModal();
        end;
  end;

end;

procedure TCostingCBD.btn2Click(Sender: TObject);
begin

  with Qry_List do
  begin
     active:=false;
     sql.Clear;
     sql.add('select * from CostingProcessList');
     sql.add('where 1=1 ');
     if Edit17.text<>'' then
        sql.add('and Process_No = '''+Edit17.text+'''');
     if Edit36.text<>'' then
        sql.add('and TypeA = '''+Edit36.text+'''');
     if ComboBox5.ItemIndex=0 then
        sql.add('and Factory = ''LYN-9Z''')
     else if ComboBox5.ItemIndex=1 then
        sql.add('and Factory = ''LYI-6L''');
     if chk2.Checked then
        sql.add('and EXISTS (SELECT 1 FROM CostingXXZLS AS Z WHERE Z.Process_No = CostingProcessList.Process_No);');
     active:=true;
  end;

end;

procedure TCostingCBD.btn31Click(Sender: TObject);
begin

  with Qry_IP do
  begin
     active:=false;
     sql.Clear;
     sql.add('Select * from costingprocessIP');

     sql.add('where CostingProcessIP.Factory='''+cbb2.text+'''');
     if Edit19.text<>'' then
        sql.add('and Process_No = '+Edit19.text);
     if edt8.text<>'' then
        sql.add('and CompoundsName like '''+edt8.text+'%''');
     if edt81.text<>'' then
        sql.add('and ColorCode like '''+edt81.text+'%''');
     if Edit28.text<>'' then
        sql.add('and ToolingCode like '''+Edit28.text+'%''');   
     if CheckBox18.Checked then
        sql.add('and EXISTS (SELECT 1 FROM CostingXXZLS AS Z WHERE Z.Process_No = CostingProcessIP.Process_No);');
     //showmessage(SQL.text);
     active:=true;
     RequestLive:=true;
     CachedUpdates:=true;
  end;
end;

procedure TCostingCBD.BD2Click(Sender: TObject);
begin
  if qry_IP.Active then
  begin
    qry_IP.RequestLive:=true;
    qry_IP.CachedUpdates:=true;
    qry_IP.Insert;
  end;
end;

procedure TCostingCBD.btn41Click(Sender: TObject);
begin

  if Qry_IP.Active then
  with Qry_IP do
  try
      qry_IP.first;
      while not qry_IP.eof do
      begin
          edit;
          FieldByName('UserName').Value:=main.edit1.text;
          case qry_IP.updatestatus of
            usinserted:
              begin
                      With TemQry do
                      begin
                          active:= false;
                          sql.Clear;
                          sql.Add('Select COALESCE(MAX(Process_No), 0) + 1 as MaxNo From CostingProcessList');
                          sql.Add(' Where Factory='''+qry_IP.fieldbyname('Factory').AsString+'''');
                          active:=true;

                          qry_IP.fieldbyname('Process_No').AsString:= fieldbyname('MaxNo').AsString;
                          active:= false;
                          sql.Clear;
                          sql.Add(' INSERT INTO CostingProcessList');
                          sql.Add(' Values(');
                          sql.Add(    qry_IP.fieldbyname('Process_No').AsString+', ');
                          sql.Add('   '''+qry_IP.fieldbyname('Factory').AsString+''', ');
                          sql.Add('   3');  // link to costingprocesscost
                          sql.Add('   )');
                          //showmessage(SQL.text);
                          execsql;
                      end;
                    updtsql1.apply(ukinsert);
              end
            else
              begin
                      updtsql1.apply(ukmodify);
              end;
          end;
          qry_IP.next;
      end;
      qry_IP.active:=false;
      qry_IP.active:=true;
    except
      Messagedlg('Have wrong, can not save data!',mtwarning,[mbyes],0);
    end;
end;

procedure TCostingCBD.btn6Click(Sender: TObject);
var
  i:integer;
  MsExcel:olevariant;
  MsExcelWorkbook: Variant;
begin
  try
    MsExcel:=CreateOleObject('Excel.Application');
  except
      on E:Exception do
      begin
        Application.MessageBox(PChar('NO EXCEL'+E.Message),'', MB_OK+MB_ICONWarning);
        EXIT;
      end;
  end;
  try
   if OpenDialog.Execute=true then
   begin
    MsExcelWorkBook := msExcel.Workbooks.Open(OpenDialog.FileName);
    with UploadlQuery do
    begin
     {cachedupdates:=true;
     requestlive:=true;
     UploadlQuery.edit;
     UploadlQuery.first;
     insert;   }
     EDEL1.text:=msExcel.WorkBooks[1].WorkSheets[1].Cells[2,1];            //Part
     EDEL2.text:=msExcel.WorkBooks[1].WorkSheets[1].Cells[15,5].Formula;   //Forecast
     EDEL4.text:=msExcel.WorkBooks[1].WorkSheets[1].Cells[2,2].text;       //SR
     EDEL5.text:=msExcel.WorkBooks[1].WorkSheets[1].Cells[11,4].Formula;   //Frame
     EDEL6.text:=msExcel.WorkBooks[1].WorkSheets[1].Cells[8,1];            //prs per board
     //EDEL5.text:=msExcel.WorkBooks[1].WorkSheets[1].Cells[15,5].value;
     EDEL9.text:=msExcel.WorkBooks[1].WorkSheets[1].Cells[22,5].value;   //CBD Cost
     Edit20.text:=msExcel.WorkBooks[1].WorkSheets[1].Cells[1,6].value;   //Season
     if EDEL9.text='' then      //非轉印版本
     begin
        EDEL3.text:=msExcel.WorkBooks[1].WorkSheets[1].Cells[17,1].value;    //Printing Output
        EDEL9.text:=msExcel.WorkBooks[1].WorkSheets[1].Cells[20,5].value;   //CBD Cost
        EDEL7.text:=msExcel.WorkBooks[1].WorkSheets[1].Cells[18,5].Formula;   //Labor Cost
        EDEL8.text:=msExcel.WorkBooks[1].WorkSheets[1].Cells[19,5].Formula;   //Loss
     end
     else
     begin
        lbl1112.Caption:='CBD Cost(E22)';
        lbl13.Caption:='Printing Output(A19)';
        EDEL3.text:=msExcel.WorkBooks[1].WorkSheets[1].Cells[19,1].value;    //Printing Output
        lbl111.Caption:='Labor(E20)';
        EDEL7.text:=msExcel.WorkBooks[1].WorkSheets[1].Cells[20,5].Formula;   //Labor Cost
        lbl1113.Caption:='Loss(E21)';
        EDEL8.text:=msExcel.WorkBooks[1].WorkSheets[1].Cells[21,5].Formula;   //Loss
        EDEL10.text:=msExcel.WorkBooks[1].WorkSheets[1].Cells[17,1].value;   //轉印紙
        EDEL11.text:=msExcel.WorkBooks[1].WorkSheets[1].Cells[18,1].value;   //離形紙
        Edit21.text:=msExcel.WorkBooks[1].WorkSheets[1].Cells[17,5].Formula;   //轉印紙
        Edit22.text:=msExcel.WorkBooks[1].WorkSheets[1].Cells[18,5].Formula;   //離形紙
     end;
     btn8.Click;


     PrintingInk:=TPrintingInk.Create(self);
     PrintingInk.BitBtn5.Click;     //Query
     i:=25;
     while i<100 do
     begin
       if msExcel.WorkBooks[1].WorkSheets[1].Cells[i,1].text='' then
         Break;
       PrintingInk.edit8.text:=msExcel.WorkBooks[1].WorkSheets[1].Cells[i,1].value;
       PrintingInk.edit9.text:=msExcel.WorkBooks[1].WorkSheets[1].Cells[i,2].value;
       PrintingInk.edit1.text:=msExcel.WorkBooks[1].WorkSheets[1].Cells[i,3].Formula;
       PrintingInk.edit2.text:=msExcel.WorkBooks[1].WorkSheets[1].Cells[i,4].value;
       PrintingInk.edit10.text:=msExcel.WorkBooks[1].WorkSheets[1].Cells[i,6].value;
       PrintingInk.edit11.text:=msExcel.WorkBooks[1].WorkSheets[1].Cells[i,7].value;
       PrintingInk.BitBtn6Click(nil);     //insert
       i:=i+1;
     end;
     //PrintingInk.BitBtn4.Click;  //SAVE
     PrintingInk.ShowModal();

      MsExcel.ActiveWorkBook.Saved := True;
      MsExcelWorkBook.Close;
      MsExcel.Quit;
      VarClear(MsExcel);
   end;
   end;
   except
   on E:Exception do
      begin
        //showmessage('123');
        Application.MessageBox(PChar('NO EXCEL '+E.Message),'', MB_OK);
        MsExcel.ActiveWorkBook.Saved := True;
        MsExcelWorkBook.Close;
        MsExcel.Quit;
        VarClear(MsExcel);
        Exit;
      end;
  end;

end;

procedure TCostingCBD.btn3Click(Sender: TObject);
begin

  with QryPrint do
  begin
     active:=false;
     sql.Clear;
     sql.add('Select * from CostingPrintCost');
     sql.add('Where 1=1');
     sql.add('and Factory = '''+cbb1.text+'''');
     if edt7.text<>'' then
        sql.add('and Process_No = '+edt7.text);
     if edt1.text<>'' then
        sql.add('and SR like '''+edt1.text+'%''');
     if edt6.text<>'' then
        sql.add('and Component like ''%'+edt6.text+'%''');
     if chk1.Checked then
        sql.add('and EXISTS (SELECT 1 FROM CostingXXZLS AS Z WHERE Z.Process_No = CostingPrintCost.Process_No);');


     //showmessage(SQL.text);
     active:=true;
     RequestLive:=true;
     CachedUpdates:=true;
  end;
end;

procedure TCostingCBD.btn8Click(Sender: TObject);  
var
  nums: TStringList;
begin
      with QryPrint do
      begin
        active:=false;
        sql.Clear;
        sql.add('Select * from CostingPrintCost');
        sql.add('Where 1=2');
        active:=true;
        RequestLive:=true;
        CachedUpdates:=true;
        Insert;
        Edit;
        fieldbyname('Factory').value:=cbb1.text;
        fieldbyname('Component').value:=UTF8Encode(EDEL1.text);
        fieldbyname('SR').value:=EDEL4.text;
        fieldbyname('Season').value:=edit20.text;
        nums := ExtractNumbersList(EDEL5.text);
        if nums.Count < 4 then
        begin
          ShowMessage('D11 not enough data');
          exit;
        end;
        fieldbyname('segments').value:=nums[0];
        fieldbyname('ExRate').value:=nums[2];
          fieldbyname('Colors').value:=nums[3];
        nums := ExtractNumbersList(EDEL2.text);
        if nums.Count < 2 then
        begin                 
          ShowMessage('A8 not enough data');
          exit;
        end;
        fieldbyname('PiecePPair').value:=nums[0];
        fieldbyname('PairPBoard').value:=nums[1];
        nums := ExtractNumbersList(EDEL6.text);
        if nums.Count < 2 then
        begin                
          ShowMessage('E15 not enough data');
          exit;
        end;
        fieldbyname('PairsPMold').value:=nums[1];
        nums := ExtractNumbersList(EDEL3.text);   
        if nums.Count < 2 then
        begin                           
          ShowMessage('A17 not enough data');
          exit;
        end;
        //fieldbyname('OutputPrs').value:=nums[0];
        fieldbyname('OutputPpl').value:=nums[1];
        nums := ExtractNumbersList(EDEL7.text);
        if nums.Count < 3 then
        begin
          ShowMessage('E18 not enough data');
          exit;
        end;
        fieldbyname('MinWage').value:=nums[0];
        fieldbyname('OutputPrs').value:=nums[2]*fieldbyname('OutputPpl').value;  //用計算欄位公式推算產出數量
        fieldbyname('LOSS').value:=StrToIntDef(EDEL8.text[Length(EDEL8.text)],0);
        if  EDEL10.text<>'' then
        begin
          fieldbyname('TRF_PP_Name').value:=UTF8Encode(EDEL10.text);
          nums := ExtractNumbersList(Edit21.text);    
          if nums.Count < 4 then
          begin
            ShowMessage('TRF_PP not enough data');
            exit;
          end;
          fieldbyname('TRF_PP_Price').value:=nums[0];
          fieldbyname('TRF_PP_CM').value:=nums[1];
          fieldbyname('TRF_PP_PRS').value:=nums[2];
          fieldbyname('TRF_PP_M').value:=nums[3];
          fieldbyname('TRF_PP_Cost').value:=fieldbyname('TRF_PP_Price').value*fieldbyname('TRF_PP_CM').value/fieldbyname('TRF_PP_PRS').value/fieldbyname('TRF_PP_M').value;
        end;          
        if  EDEL11.text<>'' then
        begin
          fieldbyname('REL_PP_Name').value:=UTF8Encode(EDEL11.text);
          nums := ExtractNumbersList(Edit22.text);   
          if nums.Count < 4 then
          begin
            ShowMessage('REL_PP not enough data');
            exit;
          end;
          fieldbyname('REL_PP_Price').value:=nums[0];
          fieldbyname('REL_PP_CM').value:=nums[1];
          fieldbyname('REL_PP_PRS').value:=nums[2];
          fieldbyname('REL_PP_M').value:=nums[3];
          fieldbyname('REL_PP_Cost').value:=fieldbyname('REL_PP_Price').value*fieldbyname('REL_PP_CM').value/fieldbyname('REL_PP_PRS').value/fieldbyname('REL_PP_M').value;
        end;

        fieldbyname('CBDCost').value:=EDEL9.text;

      end;
end;

procedure TCostingCBD.btn9Click(Sender: TObject);
begin
  if QryPrintP.Active then
  begin
    QryPrintP.RequestLive:=true;
    QryPrintP.CachedUpdates:=true;
    QryPrintP.Insert;
    QryPrintP.edit;
  end;
end;

procedure TCostingCBD.btn7Click(Sender: TObject);
begin
  PrintingInk:=TPrintingInk.Create(self);
  PrintingInk.ShowModal();
end;


procedure TCostingCBD.btn4Click(Sender: TObject);    
var
  Cost:Currency;
begin

  if QryPrint.Active then
  try
      Cost:=0;         
      QryPrint.first;
      with QryPrint do
      begin
          while not eof do
          begin
              if  FieldByName('InkNGlue_No').IsNull then
              begin
                showmessage('Pls enter INK data');
                break; //abort;
              end;
              Edit;
              fieldbyname('LaborCost').value:= fieldbyname('MinWage').value/26/fieldbyname('OutputPrs').value*fieldbyname('OutputPpl').value;
              fieldbyname('MoldFee').value:= (fieldbyname('Segments').value*StrToCurrDef(edt2.text,0)/fieldbyname('MinWage').value*(fieldbyname('Colors').value+1+1)
                                            +fieldbyname('Segments').value*(StrToCurrDef(edt3.text,0)+StrToCurrDef(edt4.text,0))
                                                /fieldbyname('MinWage').value*(fieldbyname('Colors').value+1+1))     /fieldbyname('PairsPMold').value;
              if fieldbyname('TRF_PP_Cost').AsString='' then
                fieldbyname('TRF_PP_Cost').value:=0;
              if fieldbyname('REL_PP_Cost').AsString='' then
                fieldbyname('REL_PP_Cost').value:=0;
              fieldbyname('CostPPair').value:= (fieldbyname('MoldFee').value+fieldbyname('LaborCost').value+fieldbyname('InkNGlueCost').value
                                                  +fieldbyname('TRF_PP_Cost').value+fieldbyname('REL_PP_Cost').value)
                                                                *(1+(fieldbyname('Loss').value*0.01));
              FieldByName('UserName').Value:=main.edit1.text;
              //ShowMessage('save');
              case updatestatus of
                usinserted:
                  begin
                      With TemQry do
                      begin
                          active:= false;
                          sql.Clear;
                          sql.Add('Select COALESCE(MAX(Process_No), 0) + 1 as MaxNo From CostingProcessList');
                          sql.Add(' Where Factory='''+QryPrint.fieldbyname('Factory').AsString+'''');
                          active:=true;

                          QryPrint.fieldbyname('Process_No').AsString:= fieldbyname('MaxNo').AsString;
                          active:= false;
                          sql.Clear;
                          sql.Add(' INSERT INTO CostingProcessList');
                          sql.Add(' Values(');
                          sql.Add(    QryPrint.fieldbyname('Process_No').AsString+', ');
                          sql.Add('   '''+QryPrint.fieldbyname('Factory').AsString+''', ');
                          sql.Add('   1');  // link to costingprocesscost
                          sql.Add('   )');
                          //showmessage(SQL.text);
                          execsql;
                      end;
                       updtsql2.apply(ukinsert);
                  end;
                usmodified:
                  begin
                        updtsql2.apply(ukmodify);
                  end;
              end;
              QryPrint.next;
          end;
      end;
    except
      Messagedlg('Have wrong, can not save data!',mtwarning,[mbyes],0);
    end;
end;

procedure TCostingCBD.Button1Click(Sender: TObject);
var
  i:integer;
  MsExcel:olevariant;
  MsExcelWorkbook: Variant;
begin
  try
    MsExcel:=CreateOleObject('Excel.Application');
  except
      on E:Exception do
      begin
        Application.MessageBox(PChar('NO EXCEL'+E.Message),'', MB_OK+MB_ICONWarning);
        EXIT;
      end;
  end;
  try
   if OpenDialog.Execute=true then
   begin
    MsExcelWorkBook := msExcel.Workbooks.Open(OpenDialog.FileName);

    with QryPrintP do
    begin
       active:=false;
       sql.Clear;
       sql.add('Select * from CostingPrintCost_Pro');
       sql.add('Where 1=2');
       active:=true;
       RequestLive:=true;
       CachedUpdates:=true;
       Edit;
       i:=2;
       while i<45 do
       begin
          if msExcel.WorkBooks[1].WorkSheets[1].Cells[16,i].text='' then
            break;
          Insert;
          if msExcel.WorkBooks[1].WorkSheets[1].Cells[7,2].text='LYN' then
            fieldbyname('Factory').value:='LYN-9Z'
          else
            fieldbyname('Factory').value:='LYI-6L';
          fieldbyname('SR').value:=msExcel.WorkBooks[1].WorkSheets[1].Cells[4,2];
          fieldbyname('Component').value:=msExcel.WorkBooks[1].WorkSheets[1].Cells[11,i];
          fieldbyname('Area').value:=msExcel.WorkBooks[1].WorkSheets[1].Cells[12,i];
          fieldbyname('PCsPerScreen').value:=msExcel.WorkBooks[1].WorkSheets[1].Cells[13,i];
          fieldbyname('Colors').value:=msExcel.WorkBooks[1].WorkSheets[1].Cells[14,i];
          fieldbyname('PCsPerPair').value:=msExcel.WorkBooks[1].WorkSheets[1].Cells[15,i];
          fieldbyname('Cost').value:=msExcel.WorkBooks[1].WorkSheets[1].Cells[16,i];
          fieldbyname('UserName').value:=main.Edit1.Text;

          i:=i+6;
       end;

    end;

        MsExcel.ActiveWorkBook.Saved := True;
        MsExcelWorkBook.Close;
        MsExcel.Quit;
        VarClear(MsExcel);
   end;
   except
   on E:Exception do
      begin
        //showmessage('123');
        Application.MessageBox(PChar('NO EXCEL '+E.Message),'', MB_OK);
        MsExcel.ActiveWorkBook.Saved := True;
        MsExcelWorkBook.Close;
        MsExcel.Quit;
        VarClear(MsExcel);
        Exit;
      end;
  end;

end;

procedure TCostingCBD.BitBtn2Click(Sender: TObject);
begin
  with QryPrintP do
  begin
     active:=false;
     sql.Clear;
     sql.add('Select * from CostingPrintCost_Pro');
     sql.add('Where 1=1');
     sql.add('and Factory = '''+ComboBox6.text+'''');
     if edt7.text<>'' then
        sql.add('and Process_No = '+Edit34.text);
     if edt1.text<>'' then
        sql.add('and SR like '''+Edit27.text+'%''');
     if edt6.text<>'' then
        sql.add('and Component like ''%'+Edit33.text+'%''');                  
     if CheckBox17.Checked then
        sql.add('and EXISTS (SELECT 1 FROM CostingXXZLS AS Z WHERE Z.Process_No = CostingPrintCost_Pro.Process_No);');

     //showmessage(SQL.text);
     active:=true;
     RequestLive:=true;
     CachedUpdates:=true;
  end;
end;

procedure TCostingCBD.BitBtn4Click(Sender: TObject);
begin
  if QryPrintP.Active then
    with QryPrintP do
    begin
          first;
          while not eof do
          begin
              //ShowMessage('save');
              case updatestatus of
                usinserted:
                  begin
                      With TemQry do
                      begin
                          active:= false;
                          sql.Clear;
                          sql.Add('Select COALESCE(MAX(Process_No), 0) + 1 as MaxNo From CostingProcessList');
                          sql.Add(' Where Factory='''+QryPrintP.fieldbyname('Factory').AsString+'''');
                          active:=true;
                          QryPrintP.Edit;
                          QryPrintP.fieldbyname('Process_No').AsString:= fieldbyname('MaxNo').AsString;
                          active:= false;
                          sql.Clear;
                          sql.Add(' INSERT INTO CostingProcessList');
                          sql.Add(' Values(');
                          sql.Add(    QryPrintP.fieldbyname('Process_No').AsString+', ');
                          sql.Add('   '''+QryPrintP.fieldbyname('Factory').AsString+''', ');
                          sql.Add('   2');  // link to costingprocesscost
                          sql.Add('   )');
                          //showmessage(SQL.text);
                          execsql;
                      end;
                       updtsql3.apply(ukinsert);
                  end;
                usmodified:
                  begin
                       updtsql3.apply(ukmodify);
                  end;
              end;
              next;
          end;
    end;
end;

procedure TCostingCBD.Button2Click(Sender: TObject);
var
  i:integer;
  str1:string;               
  F: Double;
  MsExcel:olevariant;
  MsExcelWorkbook: Variant;
  nums: TStringList;
begin
  try
    MsExcel:=CreateOleObject('Excel.Application');
  except
      on E:Exception do
      begin
        Application.MessageBox(PChar('NO EXCEL'+E.Message),'', MB_OK+MB_ICONWarning);
        EXIT;
      end;
  end;
  try
   if OpenDialog.Execute=true then
   begin
    MsExcelWorkBook := msExcel.Workbooks.Open(OpenDialog.FileName);

    with Qry_IP do
    begin
        active:=false;
        sql.Clear;
        sql.add('Select * from costingprocessIP');

        sql.add('Where 1=2');
        //showmessage(SQL.Text);
        active:=true;
        RequestLive:=true;
        CachedUpdates:=true;
        Edit;
        for i := 2 to msExcel.WorkBooks[1].Worksheets.Count do
        begin
            if msExcel.WorkBooks[1].WorkSheets[i].Cells[15,6].text='' then
              Break;
            Insert;
            fieldbyname('LaborCostPerLine_F').value:=msExcel.WorkBooks[1].WorkSheets[1].Cells[4,2].Formula;
            fieldbyname('LaborCostPerLine').value:=msExcel.WorkBooks[1].WorkSheets[1].Cells[4,2];
            str1:=msExcel.WorkBooks[1].WorkSheets[1].Cells[5,2].Formula;
            str1:= StringReplace(str1, 'B4', fieldbyname('LaborCostPerLine').asstring, [rfReplaceAll]);
            fieldbyname('CompoundingFee_F').value:=str1;
            fieldbyname('PriceSeason').value:=msExcel.WorkBooks[1].WorkSheets[1].Cells[1,8];
            fieldbyname('CostingSize').value:=msExcel.WorkBooks[1].WorkSheets[1].Cells[2,8];

            fieldbyname('C_WorkersPerLine').value:=msExcel.WorkBooks[1].WorkSheets[1].Cells[16,2];
            fieldbyname('C_ShiftsPerDay').value:=msExcel.WorkBooks[1].WorkSheets[1].Cells[16,3];
            fieldbyname('C_ToolingNumberSets').value:=msExcel.WorkBooks[1].WorkSheets[1].Cells[16,4];
            fieldbyname('C_InjectionTime_sec').value:=msExcel.WorkBooks[1].WorkSheets[1].Cells[16,5];
            fieldbyname('C_CuringTime_sec').value:=msExcel.WorkBooks[1].WorkSheets[1].Cells[16,6];
            fieldbyname('C_MEOF_sec').value:=msExcel.WorkBooks[1].WorkSheets[1].Cells[16,7];
            fieldbyname('C_MoldRelAirBlow_sec').value:=msExcel.WorkBooks[1].WorkSheets[1].Cells[16,8];
            fieldbyname('C_InjectorMoveMoldOp_sec').value:=msExcel.WorkBooks[1].WorkSheets[1].Cells[16,9];
            fieldbyname('C_TTCycletime_sec').value:=msExcel.WorkBooks[1].WorkSheets[1].Cells[16,10];         //?y??????

            fieldbyname('Shifts').value:=msExcel.WorkBooks[1].WorkSheets[1].Cells[19,2];
            fieldbyname('WorkingHoursPerShift').value:=msExcel.WorkBooks[1].WorkSheets[1].Cells[19,3];
            fieldbyname('ToolingNumberSets').value:=msExcel.WorkBooks[1].WorkSheets[1].Cells[19,4];
            fieldbyname('Efficiency').value:=msExcel.WorkBooks[1].WorkSheets[1].Cells[19,5];
            fieldbyname('PPL').value:=msExcel.WorkBooks[1].WorkSheets[1].Cells[19,7];

            fieldbyname('PIM1_Cycletime_sec').value:=msExcel.WorkBooks[1].WorkSheets[1].Cells[19,1];

            fieldbyname('PIM1_Output').value:='=ROUNDDOWN('+fieldbyname('Shifts').asstring+'*'+fieldbyname('WorkingHoursPerShift').asstring
                              +'*'+fieldbyname('ToolingNumberSets').asstring+'*'+fieldbyname('Efficiency').asstring
                              +'*3600/'+fieldbyname('PIM1_Cycletime_sec').asstring+',0)';

            str1:=msExcel.WorkBooks[1].WorkSheets[1].Cells[19,8].Formula;
            str1:= StringReplace(str1, 'B19', fieldbyname('Shifts').asstring, [rfReplaceAll]);
            str1:= StringReplace(str1, 'G19', fieldbyname('PPL').asstring, [rfReplaceAll]);
            fieldbyname('PIM1_TTLaborCost').value:=str1;
            //showmessage(str1);
            //str1:=msExcel.WorkBooks[1].WorkSheets[1].Cells[19,9].Formula;
            //str1:= Copy(StringReplace(str1, 'H19', fieldbyname('PIM1_TTLaborCost').asstring, [rfReplaceAll]),2,99);
            //str1:= '('+Copy(StringReplace(str1, 'F19', fieldbyname('PIM1_Output').asstring, [rfReplaceAll]),2,99)+')';
            fieldbyname('PIM1_LaborPerPR').value:='='+VarToStr(msExcel.WorkBooks[1].WorkSheets[1].Cells[19,8].value)+'/'+VarToStr(msExcel.WorkBooks[1].WorkSheets[1].Cells[19,6].value);   
            nums := ExtractNumbersList(msExcel.WorkBooks[1].WorkSheets[1].Cells[19,10].Formula);
            fieldbyname('PIM1_').value:=StrToFloat(nums[1]) * 0.01;
            if nums.Count < 4 then
            begin
              FieldByName('PIM2_').value:=0; // ?????]?° 0
            end
            else
              FieldByName('PIM2_').Value := StrToFloat(nums[3]) * 0.01;
            str1:=msExcel.WorkBooks[1].WorkSheets[1].Cells[20,1];
            if (str1='') and (str1='0') then
              fieldbyname('PIM2_Cycletime_sec').value:=0
            else
              fieldbyname('PIM2_Cycletime_sec').value:=msExcel.WorkBooks[1].WorkSheets[1].Cells[20,1];
            if (fieldbyname('PIM2_Cycletime_sec').AsString='0') then
            begin
              fieldbyname('PIM2_TTLaborCost').value:='0';
              fieldbyname('PIM2_LaborPerPR').value:='0';
              fieldbyname('PIM2_Cycletime_sec').value:=0;
              fieldbyname('PIM2_Output').value:='0';
              fieldbyname('PIM_outputPlinePday').value:=fieldbyname('PIM1_').value
                                              *Floor(FieldByName('Shifts').Value*FieldByName('WorkingHoursPerShift').Value*3600*FieldByName('ToolingNumberSets').Value
                                                *FieldByName('Efficiency').Value/FieldByName('PIM1_Cycletime_sec').Value);
            end
            else
            begin         
              fieldbyname('PIM2_Output').value:='=ROUNDDOWN('+fieldbyname('Shifts').asstring+'*'+fieldbyname('WorkingHoursPerShift').asstring
                                +'*'+fieldbyname('ToolingNumberSets').asstring+'*'+fieldbyname('Efficiency').asstring
                                +'*3600/'+fieldbyname('PIM2_Cycletime_sec').asstring+',0)';
              str1:=msExcel.WorkBooks[1].WorkSheets[1].Cells[20,8].Formula;
              str1:= StringReplace(str1, 'B20', fieldbyname('Shifts').asstring, [rfReplaceAll]);
              str1:= StringReplace(str1, 'G20', fieldbyname('PPL').asstring, [rfReplaceAll]);
              fieldbyname('PIM2_TTLaborCost').value:=str1;
              fieldbyname('PIM2_LaborPerPR').value:='='+VarToStr(msExcel.WorkBooks[1].WorkSheets[1].Cells[20,8].value)+'/'+VarToStr(msExcel.WorkBooks[1].WorkSheets[1].Cells[20,6].value);
              fieldbyname('PIM_outputPlinePday').value:=fieldbyname('PIM1_').value
                                              *Floor(FieldByName('Shifts').Value*FieldByName('WorkingHoursPerShift').Value*3600*FieldByName('ToolingNumberSets').Value
                                                *FieldByName('Efficiency').Value/FieldByName('PIM1_Cycletime_sec').Value)
                                          +fieldbyname('PIM2_').value
                                              *Floor(FieldByName('Shifts').Value*FieldByName('WorkingHoursPerShift').Value*3600*FieldByName('ToolingNumberSets').Value
                                                  *FieldByName('Efficiency').Value/FieldByName('PIM2_Cycletime_sec').Value);
            end;

            fieldbyname('TotalOH').value:=msExcel.WorkBooks[1].WorkSheets[1].Cells[27,4];
            nums := TStringList.Create;
            nums.Delimiter := ' ';
            nums.DelimitedText := Trim(msExcel.WorkBooks[1].WorkSheets[1].Cells[30,3].text);
            str1:='';
            if nums.Count >= 3 then
            begin
              str1 := nums[0]+' '+ nums[2];
            end;
            fieldbyname('OverheadLevel').value:=str1;
            fieldbyname('OHCost').value:=msExcel.WorkBooks[1].WorkSheets[1].Cells[30,4];
            //str1:=msExcel.WorkBooks[1].WorkSheets[1].Cells[19,10].Formula;

            fieldbyname('ColorCode').value:=TrimStrSHEETS(1,2,i,msExcel);
            fieldbyname('CompoundsName').value:=TrimStrSHEETS(3,2,i,msExcel);//msExcel.WorkBooks[1].WorkSheets[i].Cells[3,2];
            fieldbyname('FormulaPrice').value:=msExcel.WorkBooks[1].WorkSheets[i].Cells[3,3];
            fieldbyname('FreightCost').value:=msExcel.WorkBooks[1].WorkSheets[i].Cells[3,4];
            fieldbyname('FinalMaterialPrice').value:=msExcel.WorkBooks[1].WorkSheets[i].Cells[3,6];

            fieldbyname('ModelName').value:=TrimStrSHEETS(7,2,i,msExcel);//msExcel.WorkBooks[1].WorkSheets[i].Cells[7,2];
            fieldbyname('ToolingCode').value:=TrimStrSHEETS(7,3,i,msExcel);//msExcel.WorkBooks[1].WorkSheets[i].Cells[7,3];
            fieldbyname('Costingweight').value:=msExcel.WorkBooks[1].WorkSheets[i].Cells[7,4];
            fieldbyname('ComponentMaterialPrice').value:=msExcel.WorkBooks[1].WorkSheets[i].Cells[7,5];
            fieldbyname('ComponentMaterialPriceWDR').value:=msExcel.WorkBooks[1].WorkSheets[i].Cells[7,6];
            fieldbyname('ApprovedModelDR').value:=msExcel.WorkBooks[1].WorkSheets[i].Cells[15,5];
          //fieldbyname('DirectLaborCost').value:=fieldbyname('PIM1_').value*fieldbyname('PIM1_LaborPerPR').value
          //                                +fieldbyname('PIM2_').value*fieldbyname('PIM2_LaborPerPR').value;   
          fieldbyname('CompoundingFee').value:=msExcel.WorkBooks[1].WorkSheets[i].Cells[3,5];
          fieldbyname('DirectLaborCost').value:=msExcel.WorkBooks[1].WorkSheets[i].Cells[11,5];
          FieldByName('FinalMaterialPrice').Value:=msExcel.WorkBooks[1].WorkSheets[i].Cells[3,6];;
          FieldByName('ComponentMaterialPrice').Value:=FieldByName('Costingweight').Value*FieldByName('FinalMaterialPrice').Value;
          fieldbyname('ComponentMaterialPriceWDR').value:=fieldbyname('ComponentMaterialPrice').value*(fieldbyname('ApprovedModelDR').value+1);
          fieldbyname('FinalComponentPrice').value:=fieldbyname('ComponentMaterialPriceWDR').value+fieldbyname('OHCost').value+fieldbyname('DirectLaborCost').value;
          FieldByName('Factory').Value:=cbb2.text;
          if FieldByName('PIM2_LaborPerPR').AsString='' then
                FieldByName('PIM2_LaborPerPR').Value:='0';
        end;


      MsExcel.ActiveWorkBook.Saved := True;
      MsExcelWorkBook.Close;
      MsExcel.Quit;
      VarClear(MsExcel);
    end;
   end;
   except
   on E:Exception do
      begin
        //showmessage('123');
        Application.MessageBox(PChar('NO EXCEL '+E.Message),'', MB_OK);
        MsExcel.ActiveWorkBook.Saved := True;
        MsExcelWorkBook.Close;
        MsExcel.Quit;
        VarClear(MsExcel);
        Exit;
      end;
  end;
end;        
procedure TCostingCBD.btn51Click(Sender: TObject);
var  eclApp,WorkBook:olevariant;
     i,j:integer;
begin
 //if DetQry<>nil then DetQry.Active:=false;
 if  qry_IP.active  then
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
        //eclApp.ActiveSheet.Range['A:XFD'].NumberFormatLocal := '_-* $#,##0.00_-;-* $#,##0.00_-;_-* ""-""??_-;_-@_-';
        eclApp.ActiveSheet.Columns[23].NumberFormat := '@';
        eclApp.ActiveSheet.Columns[24].NumberFormat := '@';
        //eclApp.ActiveSheet.Columns[20].NumberFormat := '@';
        //eclApp.ActiveSheet.Columns[76].NumberFormat := '@';
        eclApp.Cells(1,1):='No';
        for   i:=0   to   qry_IP.fieldcount-1   do
        begin
            eclApp.Cells(1,i+2):=qry_IP.fields[i].FieldName;
        end;

        qry_IP.First;

        j:=2;
        while   not   qry_IP.Eof   do
        begin
          eclApp.Cells(j,1):=j-1;
          for   i:=0   to  qry_IP.fieldcount-1  do
          begin
           //if (i=18) then
           //     eclApp.Cells(j,i+2):=StringReplace(qry_IP.Fields[i].asstring, 'B4', 'S'+IntToStr(j), [rfReplaceAll])
           //else
                eclApp.ActiveSheet.Cells[j, i+2].Value:=VarToStr(qry_IP.Fields[i].Value);
          end;
        qry_IP.Next;
        inc(j);
        end;


       eclapp.columns.autofit;
       eclApp.ActiveSheet.Range['A:XFD'].NumberFormatLocal := '_-* $#,##0.00_-;-* $#,##0.00_-;_-* ""-""??_-;_-@_-';
       eclApp.ActiveSheet.Range['A:XFD'].HorizontalAlignment := -4108;
       eclApp.Cells(1,11):='FinalComponentPrice$/PR';
       eclApp.Cells(1,12):='ComponentMaterialPriceWDR$/PR';
       eclApp.Cells(1,13):='DirectLaborCost$/PR';
       eclApp.Cells(1,14):='OHCost$/PR';
       eclApp.Cells(1,15):='ApprovedModelDR%';
       eclApp.Cells(1,16):='ComponentMaterialPrice$/KG';
       eclApp.Cells(1,17):='Costingweight/PR';
       eclApp.Cells(1,18):='FinalMaterialPrice$/KG';
       eclApp.Cells(1,19):='FormulaPrice$/KG';
       eclApp.Cells(1,20):='FreightCost$/KG';  
       eclApp.Cells(1,22):='CompoundingFee$/KG';
       eclApp.Cells(1,21):='LaborCost$/Line';
       eclApp.Cells(1,24):='CompoundingFee$/KG_F';
       eclApp.Cells(1,23):='LaborCost$/Line_F';
       eclApp.Cells(1,25):='C_Workers/Line';
       eclApp.Cells(1,26):='C_Shifts/Day';
       eclApp.Cells(1,35):='WorkingHours/Shift/Day';
       eclApp.Cells(1,37):='Efficiency%';
       eclApp.Cells(1,38):='PPL/Line';
       eclApp.Cells(1,39):='1PIM_%';
       eclApp.Cells(1,40):='1PIM_CT_sec';
       eclApp.Cells(1,41):='1PIM_Output/Line/Day';
       eclApp.Cells(1,42):='1PIM_TTLaborCost$/Line/Day';
       eclApp.Cells(1,43):='1PIM_Labor$/PR';
       eclApp.Cells(1,44):='2PIM_%';
       eclApp.Cells(1,45):='2PIM_CT_sec';
       eclApp.Cells(1,46):='2PIM_Output/Line/Day';
       eclApp.Cells(1,47):='2PIM_TTLaborCost$/Line/Day';
       eclApp.Cells(1,48):='2PIM_Labor$/PR';
       eclApp.Cells(1,49):='PIM_Output/Line/Day';
       eclApp.Cells(1,50):='TotalOH$/Day/Machine';


       eclApp.ActiveSheet.Columns[1].NumberFormat := '@';
       eclApp.ActiveSheet.Columns[2].NumberFormat := '@';
       eclApp.ActiveSheet.Columns[11].NumberFormatLocal := '_-* $#,##0.000_-;-* $#,##0.000_-;_-* ""-""??_-;_-@_-';
       eclApp.ActiveSheet.Columns[15].NumberFormatLocal := '0.00%';
       eclApp.ActiveSheet.Columns[17].NumberFormatLocal := '_-* #,##0.0000_-;-* #,##0.0000_-;_-* ""-""??_-;_-@_-';
       eclApp.ActiveSheet.Columns[37].NumberFormatLocal := '0.00%';
       eclApp.ActiveSheet.Columns[38].NumberFormat := '@';
       eclApp.ActiveSheet.Columns[39].NumberFormatLocal := '0%';
       eclApp.ActiveSheet.Columns[41].NumberFormat := '@';
       eclApp.ActiveSheet.Columns[44].NumberFormatLocal := '0%';
       eclApp.ActiveSheet.Columns[51].NumberFormat := '@';
       eclApp.ActiveSheet.Columns[52].NumberFormat := 'dd/mm/yyyy';

       eclApp.ActiveSheet.Columns[12].Interior.ThemeColor := 7;
       eclApp.ActiveSheet.Columns[13].Interior.ThemeColor := 5;
       eclApp.ActiveSheet.Columns[14].Interior.ThemeColor := 10;
       eclApp.ActiveSheet.Columns[50].Interior.ThemeColor := 10;
       eclApp.ActiveSheet.Range['O:X'].Interior.ThemeColor := 7;
       eclApp.ActiveSheet.Range['Y:AG'].Interior.ThemeColor := 9;
       eclApp.ActiveSheet.Range['AH:AW'].Interior.ThemeColor := 5;
       eclApp.ActiveSheet.Range['Y:AJ'].NumberFormat := '@';
       eclApp.ActiveSheet.Columns[36].NumberFormat := '@';
       eclApp.ActiveSheet.Columns[40].NumberFormat := '@';
       eclApp.ActiveSheet.Columns[45].NumberFormat := '@';
       eclApp.ActiveSheet.Columns[47].NumberFormat := '@';  
       eclApp.ActiveSheet.Columns[49].NumberFormat := '0';
       eclApp.ActiveSheet.Columns[50].NumberFormat := '$0';

       //eclApp.ActiveSheet.Range['Z:AH'].NumberFormat := '@';
       //eclApp.ActiveSheet.Columns[4].ColumnWidth := 50;
       //eclApp.ActiveSheet.Range['A1:L30'].VerticalAlignment:=-4108;
       //eclApp.ActiveSheet.Range['A1:L30'].HorizontalAlignment:=-4108;       
       eclApp.ActiveSheet.Rows[1].Interior.ColorIndex := 6;
       showmessage('Succeed');
       eclApp.Visible:=True;

      except
        on   F:Exception   do
          showmessage(F.Message);
      end;
    end;
end;
   
procedure TCostingCBD.BB2Click(Sender: TObject);
var i,j,colors:Byte;
    Value: Double;
    MaxNo:Word;
    SumMTL,Sum2ndL,Sum2ndO,SumTTFreight,TempUnitCost,TempLandCost,TempUsage,Salary_previous:Single;
    LeastPart:String;
    UserInput,NextVersion: string;
    IsOK,Updated: Boolean;
    buyno:Integer;
function Eval(expStr: string): string;
var js: OleVariant;
begin js := CreateOleObject('ScriptControl');
js.Language := 'JavaScript';
Result := js.Eval(expStr);
js := Unassigned;
end;
function RoundClassic(R: Single): Int64;
begin
  if Frac(R) >= 0.5 then
    Result := Trunc(R) + 1
  else
    Result:= Trunc(R);
end;
begin
    with ExistCheck do
          begin
            active:=false;
            sql.Clear;
            sql.Add('select CBDcompleteDate from CostingPriceListNew');
            sql.Add('   where CostingSeason='''+UploadlQuery.fieldbyname('CostingSeason').AsString+''' ');
            sql.Add('   and Round='''+UploadlQuery.fieldbyname('Round').AsString+'''');
            sql.Add('   and SKU = '''+UploadlQuery.fieldbyname('SKU').AsString+'''');
            sql.Add('   and Factory = '''+UploadlQuery.fieldbyname('Factory').AsString+'''');
            //sql.Add('   and No = '''+UploadDetailQuery.fieldbyname('No').AsString+'''');
            //showmessage(SQL.text);
            active:=true;
            if ((not eof) and (ExistCheck.fieldbyname('CBDcompleteDate').asstring<>'')) then
            begin
            UploadlQuery.Edit;
              UploadlQuery.fieldbyname('CBDcompleteDate').value:=ExistCheck.fieldbyname('CBDcompleteDate').asstring;
            end;

            Close;
          end;
    //排除costingsize null
    if UploadlQuery.fieldbyname('costingsize').value=null then
      begin
        UploadlQuery.Edit;
        IsOK := InputQuery('Costing Size missing!', 'Costing Size：', UserInput);
        if IsOK then
          UploadlQuery.fieldbyname('costingsize').value:=UserInput
        else
          exit;
      end;
    if CheckBox13.Checked then
      begin
        showmessage('only show 2nd LO, can not save!');
        exit;
      end;
    if UploadDetailQuery.active=false then
      begin
        showmessage('Please import or query first!');
        exit;
      end;
    if copy(UploadlQuery.FieldByName('Round').asstring,1,3)='FNL' then
    begin
        if (ED_PMR.text<>'') then
          begin
            i:=pos('CT',UploadlQuery.FieldByName('Round').asstring);
            if i>0  then
                UploadlQuery.FieldByName('Round').value:=copy(UploadlQuery.FieldByName('Round').asstring,1,i-1)+ED_PMR.text
            else
                UploadlQuery.FieldByName('Round').value:=UploadlQuery.FieldByName('Round').asstring+'-'+ED_PMR.text;
            if (ED_PMRBuy.text<>'') then
                UploadlQuery.FieldByName('EffectBuy').value:=ED_PMRBuy.Text
            else
              begin
                showmessage('fill EffectBuy,and save again');
                exit;
              end;
          end;
          //防呆計算正確起始月份
        buyno:= StrToInt(Copy(UploadlQuery.FieldByName('CostingSeason').AsString, 1, 2))*100+200000;
        UserInput:= copy(UploadlQuery.fieldbyname('CostingSeason').AsString,3,1);
        UploadlQuery.edit;
        if UserInput = 'F' then buyno := buyno + 1
        else if UserInput = 'H' then buyno := buyno + 4
        else if UserInput = 'S' then buyno := buyno + 7 -100
        else if UserInput = 'U' then buyno := buyno + 10 -100;
        if UploadlQuery.fieldbyname('EffectBuy').AsString<>'' then
        begin
          if  StrToInt(UploadlQuery.fieldbyname('EffectBuy').AsString)<buyno then
            UploadlQuery.fieldbyname('EffectBuy').Value:=inttostr(buyno);
        end
        else
            UploadlQuery.fieldbyname('EffectBuy').Value:=inttostr(buyno);
        if not TryStrToFloat(UploadlQuery.fieldbyname('EffectBuy').AsString, Value) then
        begin
            showmessage('EffectBuy need to be like 202507');
            exit;
        end;

    end;
    

    SumMTL:=0;
    Sum2ndL:=0;
    Sum2ndO:=0;
    SumTTFreight:=0;
    UploadDetailQuery.cachedupdates:=true;
    UploadDetailQuery.requestlive:=true;
    UploadDetailQuery.last;
    UploadDetailQuery.First;
    UploadDetailQuery.Edit;    
      //查詢NextVersion
      if (UploadlQuery.FieldByName('CBDcompleteDate').AsString<>'') or (UploadlQuery.FieldByName('CBDReadyDate').AsString<>'') then
      begin
       with ExistCheck do
          begin
            active:=false;
            sql.Clear;
            sql.Add('select ISNULL(MAX(Version), 0) + 1 AS NextVersion from CostingPLNLog');
            sql.Add('   where CostingSeason='''+UploadlQuery.fieldbyname('CostingSeason').AsString+''' ');
            sql.Add('   and Round='''+UploadlQuery.fieldbyname('Round').AsString+'''');
            sql.Add('   and SKU = '''+UploadlQuery.fieldbyname('SKU').AsString+'''');
            sql.Add('   and Factory = '''+UploadlQuery.fieldbyname('Factory').AsString+'''');
            //showmessage(SQL.text);
            active:=true;
            NextVersion:=fieldbyname('NextVersion').AsString;
            Close;
          end;
      end;
      Updated:=false;

    for i:=1 to UploadDetailQuery.RecordCount do
    begin
      UploadDetailQuery.Edit;
      UploadDetailQuery.fieldbyname('CostingSeason').value:=UploadlQuery.fieldbyname('CostingSeason').AsString;
      UploadDetailQuery.fieldbyname('Round').value:=UploadlQuery.fieldbyname('Round').AsString;
      UploadDetailQuery.fieldbyname('SKU').value:=UploadlQuery.fieldbyname('SKU').AsString;
      UploadDetailQuery.fieldbyname('Factory').value:=UploadlQuery.fieldbyname('Factory').AsString;
      if UploadDetailQuery.fieldbyname('MaterialCost').value=null then
            UploadDetailQuery.fieldbyname('MaterialCost').value:=0
      else
          UploadDetailQuery.fieldbyname('MaterialCost').value:=RoundClassic(UploadDetailQuery.fieldbyname('MaterialCost').value*10000000)/10000000;
      if UploadDetailQuery.fieldbyname('PriceOVR').value=null then
          UploadDetailQuery.fieldbyname('PriceOVR').value:=0
      else
          UploadDetailQuery.fieldbyname('PriceOVR').value:=RoundClassic(UploadDetailQuery.fieldbyname('PriceOVR').value*10000)/10000;
          
      if UploadDetailQuery.fieldbyname('BaseMaterialPrice').value=null then
            UploadDetailQuery.fieldbyname('BaseMaterialPrice').value:=0
      else
          UploadDetailQuery.fieldbyname('BaseMaterialPrice').value:=RoundClassic(UploadDetailQuery.fieldbyname('BaseMaterialPrice').value*10000000)/10000000;
      if UploadDetailQuery.fieldbyname('TRPnGRPUpcharge').value=null then
            UploadDetailQuery.fieldbyname('TRPnGRPUpcharge').value:=0;
      if UploadDetailQuery.fieldbyname('SupplierFreightValue').value=null then
            UploadDetailQuery.fieldbyname('SupplierFreightValue').value:=0;
         if UploadDetailQuery.fieldbyname('T1Freight').Value=null then
            UploadDetailQuery.fieldbyname('T1Freight').Value:=0;
         if UploadDetailQuery.fieldbyname('CutLoss').Value=null then
            UploadDetailQuery.fieldbyname('CutLoss').Value:=0;
         if UploadDetailQuery.fieldbyname('SizeGrading').Value=null then
            UploadDetailQuery.fieldbyname('SizeGrading').Value:=0;
         if UploadDetailQuery.fieldbyname('SecondLabor').Value=null then
            UploadDetailQuery.fieldbyname('SecondLabor').Value:=0;
         if UploadDetailQuery.fieldbyname('SecondOverhead').Value=null then
            UploadDetailQuery.fieldbyname('SecondOverhead').Value:=0;
         if UploadDetailQuery.fieldbyname('NetUsage').Value=null then
            UploadDetailQuery.fieldbyname('NetUsage').Value:=0
         else
            UploadDetailQuery.fieldbyname('NetUsage').Value:=RoundClassic(UploadDetailQuery.fieldbyname('NetUsage').Value*10000)/10000;
      if (main.Edit1.Text='51295') or (main.Edit1.Text='51267') then
        begin
          if Edit24.text<>'' then
            UploadDetailQuery.fieldbyname('UserName').value:=Edit24.text
          else
            UploadDetailQuery.fieldbyname('UserName').value:=UploadlQuery.fieldbyname('UserName').AsString;
        end
      else
          UploadDetailQuery.fieldbyname('UserName').value:=main.Edit1.Text;
      //BOM序號檢查
      with ExistCheck do
          begin           
            ParamCheck := False;
            active:=false;
            sql.Clear;
            sql.Add(' select CostingSeason,Round,SKU,No from CostingXXZLS');
            sql.Add('   where CostingSeason='''+UploadlQuery.fieldbyname('CostingSeason').AsString+''' ');
            sql.Add('   and Round='''+UploadlQuery.fieldbyname('Round').AsString+'''');
            sql.Add('   and SKU = '''+UploadlQuery.fieldbyname('SKU').AsString+'''');
            sql.Add('   and No = '''+UploadDetailQuery.fieldbyname('No').AsString+'''');
            sql.Add('   and Factory = '''+UploadDetailQuery.fieldbyname('Factory').AsString+'''');
            //showmessage(SQL.text);
            active:=true;
            if eof then
              begin
                      active:= false;
                      sql.Clear;
                      sql.Add(' INSERT INTO CostingXXZLS(CostingSeason,Round,SKU,Factory,No)');
                      sql.Add(' Values(');
                      sql.Add('   '''+UploadlQuery.fieldbyname('CostingSeason').AsString+''', ');
                      sql.Add('   '''+UploadlQuery.fieldbyname('Round').AsString+''', ');
                      sql.Add('   '''+UploadlQuery.fieldbyname('SKU').AsString+''', ');
                      sql.Add('   '''+UploadlQuery.fieldbyname('Factory').AsString+''', ');
                      sql.Add('   '''+UploadDetailQuery.fieldbyname('No').AsString+''') ');
                      //showmessage(SQL.text);
                      execsql;
              end;
              Close;
          end; //BOM序號檢查
          //檢查MatLibrary
      with ExistCheck do
          begin
            active:=false;
            sql.Clear;
            sql.Add(' Select MTL_No');
            sql.Add(' From CostingMatLibrary');
            sql.Add(' Where 1=1 ');
              sql.Add('    and FlexMaterialCode='''+UploadDetailQuery.fieldbyname('FlexMaterialCode').AsString+'''');
              sql.Add('    and Supplier='''+UploadDetailQuery.fieldbyname('Supplier').AsString+''' ');
              sql.Add('    and CAST(Material_Text AS VARCHAR(MAX)) = '''+UploadDetailQuery.fieldbyname('Material').AsString+''' ');
              sql.Add('    and MaterialComments = '''+UploadDetailQuery.fieldbyname('MaterialComments').AsString+''' ');
              sql.Add('    and DeliveryTerm like '''+UploadDetailQuery.fieldbyname('DeliveryTerm').AsString+''' ');
              sql.Add('    and T1Freight = CAST('+UploadDetailQuery.fieldbyname('T1Freight').AsString +' as DECIMAL(5,2)) ');
              sql.Add('    and Measure like '''+UploadDetailQuery.fieldbyname('Measure').AsString+''' ');
              sql.Add('    and MeasureOVR like '''+UploadDetailQuery.fieldbyname('MeasureOVR').AsString+''' ');
              sql.Add('    and Tooling like '''+UploadDetailQuery.fieldbyname('Tooling').AsString+''' ');
            sql.Add('    and Factory like '''+UploadDetailQuery.fieldbyname('Factory').AsString+''' ');

            //showmessage(SQL.text);
            active:=true;
            //showmessage('123');
            if eof then
              begin
                      active:= false;
                      sql.Clear;
                      sql.Add('Select case when Max(MTL_No) is null then 1 else Max(MTL_No)+1 end as MaxNo From CostingMatLibrary');
                      //sql.Add('    where Factory like '''+UploadDetailQuery.fieldbyname('Factory').AsString+''' ');
                      //sql.Add('    and FlexMaterialCode='''+UploadDetailQuery.fieldbyname('FlexMaterialCode').AsString+'''');
                      active:=true;

                      UploadDetailQuery.fieldbyname('MTL_No').AsString:= ExistCheck.fieldbyname('MaxNo').AsString;
                      active:= false;
                      sql.Clear;
                      sql.Add(' INSERT INTO CostingMatLibrary');
                      sql.Add(' Values(');
                      sql.Add('   '''+UploadDetailQuery.fieldbyname('MTL_No').AsString+''', ');        
                      sql.Add('   '''+UploadDetailQuery.fieldbyname('Factory').AsString+''', ');
                      sql.Add('   '''+UploadDetailQuery.fieldbyname('FlexMaterialCode').AsString+''', ');
                      sql.Add('   '''+UploadDetailQuery.fieldbyname('Supplier').AsString+''', ');
                      sql.Add('   '''+UploadDetailQuery.fieldbyname('SupplierCode').AsString+''', ');
                      sql.Add('   '''+UploadDetailQuery.fieldbyname('Material').AsString+''', ');
                      sql.Add('   '''+UploadDetailQuery.fieldbyname('MaterialComments').AsString+''', ');
                      sql.Add('   '''+UploadDetailQuery.fieldbyname('DeliveryTerm').AsString+''', ');
                      sql.Add('   '''+UploadDetailQuery.fieldbyname('T1Freight').AsString+''', ');
                      sql.Add('   '''+UploadDetailQuery.fieldbyname('Measure').AsString+''', ');
                      sql.Add('   '''+UploadDetailQuery.fieldbyname('MeasureOVR').AsString+''', ');
                      sql.Add('   '''+UploadDetailQuery.fieldbyname('Tooling').AsString+''', ');
                      sql.Add('   '''+main.Edit1.Text+''', ');
                      sql.Add('   GETDATE()');
                      sql.Add('   )');
                      //showmessage(SQL.text);
                      execsql;
              end
            else
              begin
                   UploadDetailQuery.fieldbyname('MTL_No').AsString:= ExistCheck.fieldbyname('MTL_No').AsString;
              end;
              Close;
          end; //檢查MatLibrary
      //補充color group
      with ExistCheck do
      begin
         active:=false;
         sql.Clear;
         sql.add('Select TOP 1 ColorGroup From CLZL_ColorGroup_FLEX where 1=1');
         sql.add('  and '''+UploadDetailQuery.fieldbyname('Color').AsString+''' like ''%''+Color+''%''');
         sql.add('  and '''+UploadDetailQuery.fieldbyname('Color').AsString+''' like ''%''+Name+''%''');
         sql.add('ORDER BY LEN(NamenColor) desc;');
         active:=true;
        if  not eof then
             UploadDetailQuery.fieldbyname('ColorGroup').value:=ExistCheck.fieldbyname('ColorGroup').value;
      end;
      //檢查PriceLibrary
      with ExistCheck do
          begin
            active:=false;
            sql.Clear;
            sql.Add(' Select  Color_No');
            sql.Add(' From CostingPriceLibrary');
            sql.Add(' Where 1=1 ');
            sql.Add('    and MTL_No='''+UploadDetailQuery.fieldbyname('MTL_No').AsString+'''');
            sql.Add('    and MaterialSeason='''+UploadDetailQuery.fieldbyname('MaterialSeason').AsString+''' ');
            sql.Add('    and Color = '''+UploadDetailQuery.fieldbyname('Color').AsString+''' ');
            sql.Add('    and ColorComments = '''+UploadDetailQuery.fieldbyname('ColorComments').AsString+''' ');
            sql.Add('    and PriceStatus = '''+UploadDetailQuery.fieldbyname('PriceStatus').AsString+''' ');
            sql.Add('    and MaterialCost = '''+UploadDetailQuery.fieldbyname('MaterialCost').AsString+'''  ');
            sql.Add('    and PriceOVR = '''+UploadDetailQuery.fieldbyname('PriceOVR').AsString+''' ');
            sql.Add('    and TnRP = '''+UploadDetailQuery.fieldbyname('TnRP').AsString+''' ');
            sql.Add('    and BaseMaterialPrice = '''+UploadDetailQuery.fieldbyname('BaseMaterialPrice').AsString+'''  ');
            sql.Add('    and TRPnGRPUpcharge = CAST('+UploadDetailQuery.fieldbyname('TRPnGRPUpcharge').AsString+' as DECIMAL(9,5)) ');
            sql.Add('    and SupplierFreightValue = CAST('+UploadDetailQuery.fieldbyname('SupplierFreightValue').AsString+' as DECIMAL(9,5)) ');
           //showmessage(SQL.text);
            active:=true;
            if eof then
              begin
                      active:= false;
                      sql.Clear; 
                      sql.Add('Select case when Max(Color_No) is null then 1 else Max(Color_No)+1 end as MaxNo From CostingPriceLibrary');
                      sql.Add(' Where MTL_No='''+UploadDetailQuery.fieldbyname('MTL_No').AsString+'''');
                      active:=true;

                      UploadDetailQuery.fieldbyname('Color_No').AsString:= ExistCheck.fieldbyname('MaxNo').AsString;
                      active:= false;
                      sql.Clear;
                      sql.Add(' INSERT INTO CostingPriceLibrary');
                      sql.Add(' Values(');
                      sql.Add('   '''+UploadDetailQuery.fieldbyname('MTL_No').AsString+''', ');
                      sql.Add('   '''+UploadDetailQuery.fieldbyname('Color_No').AsString+''', ');
                      sql.Add('   '''+UploadDetailQuery.fieldbyname('CostingSeason').AsString+''', ');
                      sql.Add('   '''+UploadDetailQuery.fieldbyname('MaterialSeason').AsString+''', ');
                      sql.Add('   '''+UploadDetailQuery.fieldbyname('Color').AsString+''', ');
                      sql.Add('   '''+UploadDetailQuery.fieldbyname('ColorComments').AsString+''', ');
                      sql.Add('   '''+UploadDetailQuery.fieldbyname('ColorGroup').AsString+''', ');
                      sql.Add('   '''+UploadDetailQuery.fieldbyname('PriceStatus').AsString+''', ');
                      sql.Add('   '''+UploadDetailQuery.fieldbyname('MaterialCost').AsString+''', ');
                      sql.Add('   '''+UploadDetailQuery.fieldbyname('PriceOVR').AsString+''', ');
                      sql.Add('   '''+UploadDetailQuery.fieldbyname('TnRP').AsString+''', ');
                      sql.Add('   '''+UploadDetailQuery.fieldbyname('BaseMaterialPrice').AsString+''', ');
                      sql.Add('   '''+UploadDetailQuery.fieldbyname('TRPnGRPUpcharge').AsString+''', ');
                      sql.Add('   '''+UploadDetailQuery.fieldbyname('SupplierFreightValue').AsString+''', ');
                      sql.Add('   '''+main.Edit1.Text+''', ');     
                      sql.Add('   GETDATE()');
                      //sql.Add('   '+formatdatetime('yyyy/MM/dd hh:mm:ss',now())+'');
                      sql.Add('   ,0,'''')');
                      //showmessage(SQL.text);
                      execsql;
              end
            else
              begin
                      UploadDetailQuery.fieldbyname('Color_No').AsString:= ExistCheck.fieldbyname('Color_No').AsString;
                      active:= false;
                      sql.Clear;
                      sql.Add(' update CostingPriceLibrary');
                      sql.Add(' Set Costingseason='''+UploadDetailQuery.fieldbyname('Costingseason').AsString+'''');
                      sql.Add(' , ColorGroup='''+UploadDetailQuery.fieldbyname('ColorGroup').AsString+'''');
                      sql.Add(' Where 1=1 ');
                      sql.Add('    and MTL_No='''+UploadDetailQuery.fieldbyname('MTL_No').AsString+'''');
                      sql.Add('    and Color_No='''+UploadDetailQuery.fieldbyname('Color_No').AsString+'''');
                      sql.Add('    and MaterialSeason='''+UploadDetailQuery.fieldbyname('MaterialSeason').AsString+''' ');
                      //showmessage(SQL.text);
                      execsql;
              end;
              Close;
          end;

      //檢查 MTL_Seasonalprice  價格是否符合
      if chk_AutoCheckP.Checked then
      if  UploadDetailQuery.fieldbyname('PriceOVR').AsString ='0'  then
      with ExistCheck do
      begin
         active:=false;
         sql.Clear;
         sql.add('select price from MTLBasicData');
         sql.add('left join MTL_Seasonalprice on MTL_Seasonalprice.MTLBD_NO=MTLBasicData.MTLBD_NO');
         sql.add('where FlexMaterialCode='''+UploadDetailQuery.fieldbyname('FlexMaterialCode').AsString+''' ');
         if Copy(UploadDetailQuery.fieldbyname('Round').AsString,1,3)='FNL' then
            sql.add('  and MTL_Seasonalprice.Season='''+UploadDetailQuery.fieldbyname('MaterialSeason').AsString+' F''')
         else
            sql.add('  and MTL_Seasonalprice.Season like '''+UploadDetailQuery.fieldbyname('MaterialSeason').AsString+' %''');
         sql.add('  and supplier = '''+UploadDetailQuery.fieldbyname('Supplier').AsString+''' ');
         sql.add('  and ((T1Supplier = '''+UploadDetailQuery.fieldbyname('Factory').AsString+''') or (T1Supplier is null) or (T1Supplier =''''))');
         //showmessage(SQL.text);
         active:=true;
        if not ExistCheck.eof then
        begin
             active:=false;
             sql.Clear;
             sql.add('select price from MTLBasicData');
             sql.add('left join MTL_Seasonalprice on MTL_Seasonalprice.MTLBD_NO=MTLBasicData.MTLBD_NO');
             sql.add('where FlexMaterialCode='''+UploadDetailQuery.fieldbyname('FlexMaterialCode').AsString+''' ');
             if Copy(UploadDetailQuery.fieldbyname('Round').AsString,1,3)='FNL' then
                sql.add('  and MTL_Seasonalprice.Season='''+UploadDetailQuery.fieldbyname('MaterialSeason').AsString+' F''')
             else
                sql.add('  and MTL_Seasonalprice.Season like '''+UploadDetailQuery.fieldbyname('MaterialSeason').AsString+' %''');
             sql.add('  and supplier = '''+UploadDetailQuery.fieldbyname('Supplier').AsString+''' ');
             sql.add('  and price='+UploadDetailQuery.fieldbyname('MaterialCost').AsString);
             sql.add('  and ((T1Supplier = '''+UploadDetailQuery.fieldbyname('Factory').AsString+''') or (T1Supplier is null) or (T1Supplier =''''))');
             active:=true;
             if  ExistCheck.eof then
            //if  ExistCheck.fieldbyname('price').Value<>UploadDetailQuery.fieldbyname('MaterialCost').Value)  then
              begin
                ShowMessage(UploadDetailQuery.fieldbyname('FlexMaterialCode').AsString+' not match with N387');
                break;
              end;
        end;
      end;

      //檢查PriceLibrary
        if (checkbox6.Checked) and (UploadDetailQuery.fieldbyname('NetUsage').Value=null)  //倒算用量
            and Not(UploadDetailQuery.fieldbyname('MaterialCost').Value=null)and Not(UploadDetailQuery.fieldbyname('PriceOVR').Value=null) then
            begin
                TempUsage:= UploadDetailQuery.fieldbyname('PriceOVR').Value/UploadDetailQuery.fieldbyname('MaterialCost').Value/(1+(UploadDetailQuery.fieldbyname('T1Freight').Value/100));
                UploadDetailQuery.fieldbyname('NetUsage').Value:=
                RoundClassic(TempUsage*(1-(UploadDetailQuery.fieldbyname('CutLoss').Value/100))/(1+(UploadDetailQuery.fieldbyname('SizeGrading').Value/100))*10000)/10000;
                UploadDetailQuery.fieldbyname('PriceOVR').Value:=0;
            end
         else                                           ///Roundto(strtofloat(tempText),-4);
            begin
                TempUsage:=
                UploadDetailQuery.fieldbyname('NetUsage').Value/(1-(UploadDetailQuery.fieldbyname('CutLoss').Value/100))*(1+(UploadDetailQuery.fieldbyname('SizeGrading').Value/100));
            end;
         //計算 UnitCost
         if UploadDetailQuery.fieldbyname('PriceOVR').Value>0 then
            TempLandCost:= UploadDetailQuery.fieldbyname('PriceOVR').Value*(1+(UploadDetailQuery.fieldbyname('T1Freight').Value/100))
         else
            TempLandCost:= UploadDetailQuery.fieldbyname('MaterialCost').Value*(1+(UploadDetailQuery.fieldbyname('T1Freight').Value/100));
          TempUnitCost:=TempLandCost*TempUsage;
          UploadDetailQuery.fieldbyname('UnitCost').Value:=  RoundClassic(TempUnitCost*1000000)/1000000;
          UploadDetailQuery.fieldbyname('LandedCost').Value:=  RoundClassic(TempLandCost*1000000)/1000000;    //TempUsage
          UploadDetailQuery.fieldbyname('GrossUsage').Value:=  RoundClassic(TempUsage*1000000)/1000000;


         //計算 2nd LO 準備
      if (ComboBox1.ItemIndex=1) then        //LYI 只有Outsole Textile 含2nd LO
        begin
        if ((pos('FNW- 38421',UploadDetailQuery.fieldbyname('FlexMaterialCode').AsString)>0) or (pos('COM- 40696',UploadDetailQuery.fieldbyname('FlexMaterialCode').AsString)>0))
                  and(UploadDetailQuery.fieldbyname('Tooling').AsString='') then
          begin
                 colors:=Countcolors();
                 UploadDetailQuery.Edit;
                 UploadDetailQuery.fieldbyname('ColorQty').Value:=colors;
                 if UploadDetailQuery.fieldbyname('ColorQty_Neon').Value=null then   //螢光色數量暫時無法判斷
                    UploadDetailQuery.fieldbyname('ColorQty_Neon').Value:=0;
          end
        end
      else if (UploadDetailQuery.fieldbyname('UnitCost').Value<>'0') and (UploadDetailQuery.fieldbyname('UnitCost').Value<>'') then
            begin
              if ((pos('Rubber',UploadDetailQuery.fieldbyname('material').asstring)>0)
                and  (UploadDetailQuery.fieldbyname('NetUsage').Value>0)
                and (UploadDetailQuery.fieldbyname('Measure').Value='kg')    
                and (UploadDetailQuery.fieldbyname('supplier').Value='Factory In-House')) then  //後面考慮增加in house判斷條件 (Rubber幾乎都是內製)
              if NOT(copy(UploadDetailQuery.fieldbyname('material').Value,1,8)='Adhesive') then  //排除貼合
              begin
                //showmessage(UploadDetailQuery.fieldbyname('material').Value);
                 UploadDetailQuery.Edit;
                if (pos('Gum',UploadDetailQuery.fieldbyname('material').Value)>0) then
                    UploadDetailQuery.fieldbyname('GUMColor').Value:=1
                else
                    UploadDetailQuery.fieldbyname('GUMColor').Value:=0;
                colors:=Countcolors();
                 UploadDetailQuery.Edit;
                if ((pos('Left',UploadDetailQuery.fieldbyname('MaterialComments').asstring)>0)
                        or (pos('Right',UploadDetailQuery.fieldbyname('MaterialComments').asstring)>0))   then
                    UploadDetailQuery.fieldbyname('PCsPPair').Value:='1'
                else
                    UploadDetailQuery.fieldbyname('PCsPPair').Value:='0';  //0為未設定
                //showmessage(UploadDetailQuery.fieldbyname('PCsPPair').asstring+'///'+UploadDetailQuery.fieldbyname('MaterialComments').asstring+':'+inttostr(pos('Left',UploadDetailQuery.fieldbyname('MaterialComments').asstring)));

                 UploadDetailQuery.fieldbyname('ColorQty').Value:=colors;
                 if UploadDetailQuery.fieldbyname('ColorQty_Neon').Value=null then   //螢光色數量暫時無法判斷
                    UploadDetailQuery.fieldbyname('ColorQty_Neon').Value:=0;
              end;
            end;
      //2nd LO 資料庫
      if (UploadDetailQuery.fieldbyname('Process_No').Value=null) and (UploadDetailQuery.fieldbyname('ColorQty').Value<>null)then
      begin
          with ExistCheck do
          begin
            active:=false;
            sql.Clear;
            sql.Add(' Select  Process_No,SecondOF,SecondLF,moldsPperson,pairPmold,TurnOverRate,MaterialComments');
            sql.Add(' From CostingProcessCost');
            sql.Add(' Where 1=1 ');
            sql.Add('    and Component='''+UploadDetailQuery.fieldbyname('Component').AsString+''' ');
            if (pos('Logo',UploadDetailQuery.fieldbyname('Component').AsString)>0) then
              begin
                sql.Add('    and Tooling like '''+UploadDetailQuery.fieldbyname('Tooling').AsString+''' ');
                sql.Add('    and ColorQty = '''+UploadDetailQuery.fieldbyname('ColorQty').AsString+''' ');
                sql.Add('    and ColorQty_Neon = '''+UploadDetailQuery.fieldbyname('ColorQty_Neon').AsString+''' ');
                sql.Add('    and GUMColor = '''+UploadDetailQuery.fieldbyname('GUMColor').AsString+''' ');
                sql.Add('    and PCsPPair = '''+UploadDetailQuery.fieldbyname('PCsPPair').AsString+''' ');
              end
            else if (pos('Outsole Textile',UploadDetailQuery.fieldbyname('Component').AsString)>0) and(UploadDetailQuery.fieldbyname('Tooling').AsString='') then
              begin
                sql.Add('    and Tooling = '''' ');
              end
            else
              begin
                //if UploadDetailQuery.fieldbyname('Tooling').Value<>null then
                sql.Add('    and Tooling like '''+UploadDetailQuery.fieldbyname('Tooling').AsString+''' ');
                //if UploadDetailQuery.fieldbyname('MaterialComments').Value<>null then
                //  sql.Add('    and MaterialComments like ''%'+UploadDetailQuery.fieldbyname('MaterialComments').AsString+'%'' ');
                //if UploadDetailQuery.fieldbyname('ColorQty').Value<>null then
                  sql.Add('    and ColorQty = '''+UploadDetailQuery.fieldbyname('ColorQty').AsString+''' ');
                //if UploadDetailQuery.fieldbyname('ColorQty_Neon').Value<>null then
                  sql.Add('    and ColorQty_Neon = '''+UploadDetailQuery.fieldbyname('ColorQty_Neon').AsString+''' ');
                //if UploadDetailQuery.fieldbyname('GUMColor').Value<>null then
                  sql.Add('    and GUMColor = '''+UploadDetailQuery.fieldbyname('GUMColor').AsString+''' ');   
                sql.Add('    and PCsPPair = '''+UploadDetailQuery.fieldbyname('PCsPPair').AsString+''' ');
              end;     
            sql.Add('    and Factory like '''+UploadDetailQuery.fieldbyname('Factory').AsString+''' ');

            //showmessage(SQL.text);
            active:=true;
            if eof then
              begin
                      active:= false;
                      sql.Clear;
                      sql.Add('Select COALESCE(MAX(Process_No), 0) + 1 as MaxNo From CostingProcessList');
                      sql.Add(' Where Factory='''+UploadDetailQuery.fieldbyname('Factory').AsString+'''');
                      active:=true;
                      UploadDetailQuery.Edit;
                      UploadDetailQuery.fieldbyname('Process_No').value:= ExistCheck.fieldbyname('MaxNo').AsString;
                      active:= false;
                      sql.Clear;
                      sql.Add(' INSERT INTO CostingProcessList');
                      sql.Add(' Values(');
                      sql.Add('   '''+UploadDetailQuery.fieldbyname('Process_No').AsString+''', ');
                      sql.Add('   '''+UploadDetailQuery.fieldbyname('Factory').AsString+''', ');
                      sql.Add('   0');  // link to costingprocesscost
                      sql.Add('   )');
                      //showmessage(SQL.text);
                      execsql;
                      sql.Clear;
                      sql.Add(' INSERT INTO CostingProcessCost');
                      sql.Add(' Values(');
                      sql.Add('   '''+UploadDetailQuery.fieldbyname('Process_No').AsString+''', ');
                      sql.Add('   '''+UploadDetailQuery.fieldbyname('Component').AsString+''', ');
                      sql.Add('   '''+UploadDetailQuery.fieldbyname('Tooling').AsString+''', ');
                      sql.Add('   '''+UploadDetailQuery.fieldbyname('MaterialComments').AsString+Molded+''', ');
                      sql.Add('   '''+UploadDetailQuery.fieldbyname('ColorQty').AsString+''', ');
                      sql.Add('   '''+UploadDetailQuery.fieldbyname('ColorQty_Neon').AsString+''', ');
                      sql.Add('   '''+UploadDetailQuery.fieldbyname('GUMColor').AsString+''', ');                 //111
                      sql.Add('   '''+UploadDetailQuery.fieldbyname('moldsPperson').AsString+''', ');
                      sql.Add('   '''+UploadDetailQuery.fieldbyname('pairPmold').AsString+''', ');
                      sql.Add('   '''+UploadDetailQuery.fieldbyname('PCsPPair').AsString+''', ');
                      sql.Add('   '''+UploadDetailQuery.fieldbyname('TurnOverRate').AsString+''', ');
                      sql.Add('   '''+UploadDetailQuery.fieldbyname('SecondLF').AsString+''', ');
                      sql.Add('   '''+UploadDetailQuery.fieldbyname('SecondOF').AsString+''', ');
                      sql.Add('   '''+UploadDetailQuery.fieldbyname('Round').AsString+''', ');
                      sql.Add('   '''+UploadDetailQuery.fieldbyname('SKU').AsString+''', ');
                      sql.Add('   '''+UploadDetailQuery.fieldbyname('CostingSeason').AsString+''', ');  
                      sql.Add('   '''+UploadDetailQuery.fieldbyname('Factory').AsString+''', ');
                      sql.Add('   '''+UploadDetailQuery.fieldbyname('No').AsString+''', ');
                      sql.Add('   '''+main.Edit1.Text+''', ');
                      sql.Add('   GETDATE()');
                      //sql.Add('   '+formatdatetime('yyyy/MM/dd hh:mm:ss',now())+'');
                      sql.Add('   )');
                      //showmessage(SQL.text);
                      execsql;
              end                                                                              //,moldsPperson,pairPmold,TurnOverRate
            else
              begin
                  if (UploadDetailQuery.fieldbyname('MaterialComments').AsString+Molded<>'') then
                    begin
                           for j:=1 to ExistCheck.RecordCount do
                           begin
                               if ((pos(ExistCheck.fieldbyname('MaterialComments').AsString,UploadDetailQuery.fieldbyname('MaterialComments').AsString+Molded)>0)
                                    or (ExistCheck.fieldbyname('MaterialComments').AsString=UploadDetailQuery.fieldbyname('MaterialComments').AsString+Molded))then
                               begin
                                  //showmessage(inttostr(pos(ExistCheck.fieldbyname('MaterialComments').AsString,UploadDetailQuery.fieldbyname('MaterialComments').AsString)));
                                  break;
                               end;
                               //showmessage(ExistCheck.fieldbyname('MaterialComments').AsString);
                               ExistCheck.next;
                           end;
                    end;
                  if ((pos(ExistCheck.fieldbyname('MaterialComments').AsString,UploadDetailQuery.fieldbyname('MaterialComments').AsString+Molded)>0)
                          or (ExistCheck.fieldbyname('MaterialComments').AsString=UploadDetailQuery.fieldbyname('MaterialComments').AsString+Molded))then
                    begin
                      UploadDetailQuery.fieldbyname('Process_No').AsString:= ExistCheck.fieldbyname('Process_No').AsString;
                      UploadDetailQuery.fieldbyname('moldsPperson').AsString:= ExistCheck.fieldbyname('moldsPperson').AsString;
                      UploadDetailQuery.fieldbyname('pairPmold').AsString:= ExistCheck.fieldbyname('pairPmold').AsString;
                      UploadDetailQuery.fieldbyname('TurnOverRate').AsString:= ExistCheck.fieldbyname('TurnOverRate').AsString;
                      UploadDetailQuery.fieldbyname('SecondLF').AsString:= ExistCheck.fieldbyname('SecondLF').AsString;
                      UploadDetailQuery.fieldbyname('SecondOF').AsString:= ExistCheck.fieldbyname('SecondOF').AsString
                    end
                  else
                    begin
                      active:= false;
                      sql.Clear;
                      sql.Add('Select COALESCE(MAX(Process_No), 0) + 1 as MaxNo From CostingProcessList');
                      sql.Add(' Where Factory='''+UploadDetailQuery.fieldbyname('Factory').AsString+'''');
                      active:=true;
                      UploadDetailQuery.edit;
                      UploadDetailQuery.fieldbyname('Process_No').AsString:= ExistCheck.fieldbyname('MaxNo').AsString;
                      active:= false;
                      sql.Clear;
                      sql.Add(' INSERT INTO CostingProcessList');
                      sql.Add(' Values(');
                      sql.Add('   '''+UploadDetailQuery.fieldbyname('Process_No').AsString+''', ');
                      sql.Add('   '''+UploadDetailQuery.fieldbyname('Factory').AsString+''', ');
                      sql.Add('   0');  // link to costingprocesscost
                      sql.Add('   )');
                      //showmessage(SQL.text);
                      execsql;
                      sql.Clear;
                      ////

                      active:= false;
                      sql.Clear;
                      sql.Add(' INSERT INTO CostingProcessCost');
                      sql.Add(' Values(');
                      sql.Add('   '''+UploadDetailQuery.fieldbyname('Process_No').AsString+''', ');
                      sql.Add('   '''+UploadDetailQuery.fieldbyname('Component').AsString+''', ');
                      sql.Add('   '''+UploadDetailQuery.fieldbyname('Tooling').AsString+''', ');
                      sql.Add('   '''+UploadDetailQuery.fieldbyname('MaterialComments').AsString+Molded+''', ');
                      sql.Add('   '''+UploadDetailQuery.fieldbyname('ColorQty').AsString+''', ');
                      sql.Add('   '''+UploadDetailQuery.fieldbyname('ColorQty_Neon').AsString+''', ');
                      sql.Add('   '''+UploadDetailQuery.fieldbyname('GUMColor').AsString+''', ');                 //111
                      sql.Add('   '''+UploadDetailQuery.fieldbyname('moldsPperson').AsString+''', ');
                      sql.Add('   '''+UploadDetailQuery.fieldbyname('pairPmold').AsString+''', ');
                      sql.Add('   '''+UploadDetailQuery.fieldbyname('PCsPPair').AsString+''', ');
                      sql.Add('   '''+UploadDetailQuery.fieldbyname('TurnOverRate').AsString+''', ');
                      sql.Add('   '''+UploadDetailQuery.fieldbyname('SecondLF').AsString+''', ');
                      sql.Add('   '''+UploadDetailQuery.fieldbyname('SecondOF').AsString+''', ');
                      sql.Add('   '''+UploadDetailQuery.fieldbyname('Round').AsString+''', ');
                      sql.Add('   '''+UploadDetailQuery.fieldbyname('SKU').AsString+''', ');
                      sql.Add('   '''+UploadDetailQuery.fieldbyname('CostingSeason').AsString+''', ');
                      sql.Add('   '''+UploadDetailQuery.fieldbyname('Factory').AsString+''', ');
                      sql.Add('   '''+UploadDetailQuery.fieldbyname('No').AsString+''', ');
                      sql.Add('   '''+main.Edit1.Text+''', ');   
                      sql.Add('   GETDATE()');
                      //sql.Add('   '+formatdatetime('yyyy/MM/dd hh:mm:ss',now())+'');
                      sql.Add('   )');
                      //showmessage(SQL.text);
                      execsql;
                    end;
              end;      
            Close;
          end //結束如果沒有Process code;
      end;
      //查詢更新  SecondOF,SecondLF,moldsPperson,pairPmold,TurnOverRate,MaterialComments 3
      if UploadDetailQuery.fieldbyname('Process_No').AsString<>'' then
      begin     
        with ExistCheck do
        begin
          active:=false;
          sql.Clear;
          sql.Add(' Select  Process_No,SecondOF,SecondLF,moldsPperson,pairPmold,TurnOverRate,MaterialComments');
          sql.Add(' From CostingProcessCost');
          sql.Add(' Where Process_No ='+UploadDetailQuery.fieldbyname('Process_No').AsString+' ');
          active:=true;
          UploadDetailQuery.fieldbyname('moldsPperson').AsString:= ExistCheck.fieldbyname('moldsPperson').AsString;
          UploadDetailQuery.fieldbyname('pairPmold').AsString:= ExistCheck.fieldbyname('pairPmold').AsString;
          UploadDetailQuery.fieldbyname('TurnOverRate').AsString:= ExistCheck.fieldbyname('TurnOverRate').AsString;
          UploadDetailQuery.fieldbyname('SecondLF').AsString:= ExistCheck.fieldbyname('SecondLF').AsString;
          UploadDetailQuery.fieldbyname('SecondOF').AsString:= ExistCheck.fieldbyname('SecondOF').AsString;
          Close;
        end;       
      end;


          //end 2nd LO 資料庫

        //重新計算 2nd LO
        //if  (UploadDetailQuery.fieldbyname('NetUsage').Asstring<>'')and (UploadDetailQuery.fieldbyname('NetUsage').Asstring<>'0') then
        //檢查2nd LO相同
        if  (UploadDetailQuery.FieldByName('SecondLabor').AsString<>'0') then   //檢查 2nd LO正確性
            begin
              if UploadDetailQuery.FieldByName('SecondLabor_auto').AsString='' then
              begin
                  showmessage('Key in formula related info in Tab "Second LO"');
                  exit;
              end
              else if NOT(
                RoundClassic(strtofloat(UploadDetailQuery.FieldByName('SecondLabor_auto').AsString)*10000)/10000
                  =RoundClassic(strtofloat(UploadDetailQuery.FieldByName('SecondLabor').AsString)*10000)/10000
                  ) then
                begin
            //自動填入2LN計算結果
                   //UploadDetailQuery.FieldByName('SecondLabor').AsString:=UploadDetailQuery.FieldByName('SecondLabor_auto').AsString;
                   //UploadDetailQuery.FieldByName('SecondOverhead').AsString:=UploadDetailQuery.FieldByName('SecondOverhead_auto').AsString;
                  showmessage('Second L result not match');
                  exit;
                end;
              if NOT(
                  RoundClassic(strtofloat(UploadDetailQuery.FieldByName('SecondOverhead_auto').AsString)*10000)/10000
                    =RoundClassic(strtofloat(UploadDetailQuery.FieldByName('SecondOverhead').AsString)*10000)/10000
                    )then
                begin
            //自動填入2LN計算結果
                   //UploadDetailQuery.FieldByName('SecondLabor').AsString:=UploadDetailQuery.FieldByName('SecondLabor_auto').AsString;
                   //UploadDetailQuery.FieldByName('SecondOverhead').AsString:=UploadDetailQuery.FieldByName('SecondOverhead_auto').AsString;
                  showmessage('Second O result not match');
                  exit;
                end;
            end;

          SumMTL:=SumMTL+TempUnitCost;
          Sum2ndL:=Sum2ndL+UploadDetailQuery.fieldbyname('SecondLabor').Value;
          Sum2ndO:=Sum2ndO+UploadDetailQuery.fieldbyname('SecondOverhead').Value;
         if UploadDetailQuery.fieldbyname('PriceOVR').Value>0 then
            SumTTFreight:=SumTTFreight+UploadDetailQuery.fieldbyname('PriceOVR').Value*UploadDetailQuery.fieldbyname('T1Freight').Value/100*TempUsage
         else    
            SumTTFreight:=SumTTFreight+ UploadDetailQuery.fieldbyname('MaterialCost').Value*UploadDetailQuery.fieldbyname('T1Freight').Value/100*TempUsage;

      if (i=UploadDetailQuery.RecordCount) then
        MaxNo:=UploadDetailQuery.fieldbyname('No').value;
      if (LeastPart<>'') and (CheckBox1.Checked) then                //刪除上傳後超出部位最大NO
        if ((LeastPart<>UploadDetailQuery.fieldbyname('PartName').value) or (i=UploadDetailQuery.RecordCount)) then   //部位切換或最後一筆
           with ExistCheck do
            begin
              active:=false;
              sql.Clear;
              sql.Add('DELETE FROM  CostingXXZLS');
              sql.Add('   where CostingSeason='''+UploadlQuery.fieldbyname('CostingSeason').AsString+''' ');
              sql.Add('   and Round='''+UploadlQuery.fieldbyname('Round').AsString+'''');
              sql.Add('   and SKU = '''+UploadlQuery.fieldbyname('SKU').AsString+'''');
              sql.Add('   and Factory = '''+UploadlQuery.fieldbyname('Factory').AsString+'''');
              sql.Add('   and No > '+inttostr(MaxNo));
              sql.Add('   and PartName= '''+LeastPart+'''');
              //showmessage(SQL.text);
              execsql;
            end;
      MaxNo:=UploadDetailQuery.fieldbyname('No').value;
      LeastPart:=UploadDetailQuery.fieldbyname('PartName').value;
      //保存修改紀錄
      if (UploadlQuery.FieldByName('CBDcompleteDate').AsString<>'') or (UploadlQuery.FieldByName('CBDReadyDate').AsString<>'') then
      begin
       with ExistCheck do
          begin
            active:=false;
            sql.Clear;
            sql.Add('select MTL_No,Color_No,Process_No,NetUsage,CutLoss,SizeGrading,SecondLabor,SecondOverhead,UserName,UserUpdateTime from CostingXXZLS');
            sql.Add('   where CostingSeason='''+UploadlQuery.fieldbyname('CostingSeason').AsString+''' ');
            sql.Add('   and Round='''+UploadlQuery.fieldbyname('Round').AsString+'''');
            sql.Add('   and SKU = '''+UploadlQuery.fieldbyname('SKU').AsString+'''');
            sql.Add('   and Factory = '''+UploadlQuery.fieldbyname('Factory').AsString+'''');
            sql.Add('   and No = '''+UploadDetailQuery.fieldbyname('No').AsString+'''');
            //showmessage(SQL.text);
            active:=true;
            if ((ExistCheck.fieldbyname('MTL_No').AsString<>UploadDetailQuery.fieldbyname('MTL_No').AsString)
                or (ExistCheck.fieldbyname('Color_No').AsString<>UploadDetailQuery.fieldbyname('Color_No').AsString)
                or (ExistCheck.fieldbyname('Process_No').AsString<>UploadDetailQuery.fieldbyname('Process_No').AsString)
                or (ExistCheck.fieldbyname('NetUsage').AsString<>UploadDetailQuery.fieldbyname('NetUsage').AsString)
                or (ExistCheck.fieldbyname('CutLoss').AsString<>UploadDetailQuery.fieldbyname('CutLoss').AsString)
                or (ExistCheck.fieldbyname('SizeGrading').AsString<>UploadDetailQuery.fieldbyname('SizeGrading').AsString)
                or (ExistCheck.fieldbyname('SecondLabor').AsString<>UploadDetailQuery.fieldbyname('SecondLabor').AsString)
                or (ExistCheck.fieldbyname('SecondOverhead').AsString<>UploadDetailQuery.fieldbyname('SecondOverhead').AsString))then
            begin
              Updated:=true;
              with TemQry do
              begin
                active:=false;
                sql.Clear;
                sql.Add('select ISNULL(MAX(Seq), 0) + 1 AS NextSeq from CostingXXZLSlogs');
                sql.Add('   where CostingSeason='''+UploadlQuery.fieldbyname('CostingSeason').AsString+''' ');
                sql.Add('   and Round='''+UploadlQuery.fieldbyname('Round').AsString+'''');
                sql.Add('   and SKU = '''+UploadlQuery.fieldbyname('SKU').AsString+'''');
                sql.Add('   and Factory = '''+UploadlQuery.fieldbyname('Factory').AsString+'''');
                sql.Add('   and No = '''+UploadDetailQuery.fieldbyname('No').AsString+'''');
                active:=true;
                UserInput:=TemQry.fieldbyname('NextSeq').AsString;
                active:=false;
                sql.Clear;
                sql.Add('INSERT INTO CostingXXZLSLogs (    CostingSeason,Round, SKU, Factory,No,Version,Seq, MTL_No, Color_No, Process_No');
                sql.Add('   ,NetUsage,CutLoss,SizeGrading,SecondLabor,SecondOverhead,UserName,UserUpdateTime');
                sql.Add(') VALUES (');
                sql.Add('   '''+UploadlQuery.fieldbyname('CostingSeason').AsString+''', ');
                sql.Add('   '''+UploadlQuery.fieldbyname('Round').AsString+''', ');
                sql.Add('   '''+UploadlQuery.fieldbyname('SKU').AsString+''', ');
                sql.Add('   '''+UploadlQuery.fieldbyname('Factory').AsString+''', ');
                sql.Add('   '''+UploadDetailQuery.fieldbyname('No').AsString+''', ');    
                sql.Add('   '''+NextVersion+''', ');
                sql.Add('   '''+UserInput+''', ');
                sql.Add('   '''+ExistCheck.fieldbyname('MTL_No').AsString+''', ');
                sql.Add('   '''+ExistCheck.fieldbyname('Color_No').AsString+''', ');
                sql.Add('   '''+ExistCheck.fieldbyname('Process_No').AsString+''', ');
                sql.Add('   '''+ExistCheck.fieldbyname('NetUsage').AsString+''', ');
                sql.Add('   '''+ExistCheck.fieldbyname('CutLoss').AsString+''', ');
                sql.Add('   '''+ExistCheck.fieldbyname('SizeGrading').AsString+''', ');
                sql.Add('   '''+ExistCheck.fieldbyname('SecondLabor').AsString+''', ');
                sql.Add('   '''+ExistCheck.fieldbyname('SecondOverhead').AsString+''', ');
                sql.Add('   '''+ExistCheck.fieldbyname('UserName').AsString+''', ');
                if UploadDetailQuery.fieldbyname('UserUpdateTime').asstring='' then
                  sql.Add('   null) ')
                else
                  sql.Add('   '''+StringReplace(StringReplace(ExistCheck.fieldbyname('UserUpdateTime').asstring, '下午', '', []), '上午', '', [])+''') ');     //yyyy/MM/dd hh:mm:ss
                //showmessage(SQL.text);
                execsql;
              end;
            end;     
            Close;
          end;
      end;
      UpdateSQL1.apply(ukmodify);

      UploadDetailQuery.Next;
    end; //BOM & 價格更新結束
    UploadDetailQuery.First;
    //showmessage('next');
    //ExistCheck.Active:=false;
    //if (UploadlQuery.fieldbyname('CostMitigation').AsString='') and(UploadlQuery.fieldbyname('C2BL').value<>null) then
       with ExistCheck do
          begin
            active:=false;
            sql.Clear;
            sql.Add(' select CostingSeason,FactoryPriceSubmitStatus,SKU from CostingPriceListNew');
            sql.Add('   where CostingSeason='''+UploadlQuery.fieldbyname('CostingSeason').AsString+''' ');
            sql.Add('   and Round='''+UploadlQuery.fieldbyname('Round').AsString+'''');
            sql.Add('   and SKU = '''+UploadlQuery.fieldbyname('SKU').AsString+'''');
            sql.Add('   and Factory = '''+UploadlQuery.fieldbyname('Factory').AsString+'''');
            //showmessage(SQL.text);
            active:=true;
            if eof then
               UpdateSQL2.apply(ukinsert);

            edit9.Text:= UploadlQuery.fieldbyname('CostingSeason').AsString;
            active:=false;
            sql.Clear;

            if (Copy(UploadlQuery.fieldbyname('CostingSeason').AsString,3,1)='F') or  (Copy(UploadlQuery.fieldbyname('CostingSeason').AsString,3,1)='H')  then
                sql.add('Select CostingPriceListNew.*,CostingPriceList.FY'+Copy(UploadlQuery.fieldbyname('CostingSeason').AsString,1,2)+'_CostMitigation as CurrnetCostMitigation')
            else
                sql.add('Select CostingPriceListNew.*,CostingPriceList.FY'+inttoStr(StrToInt(Copy(UploadlQuery.fieldbyname('CostingSeason').AsString,1,2))-1)
                      +'_CostMitigation as CurrnetCostMitigation');
            //sql.add(',Costing_Salary.Salary,Costing_Salary_previous.Salary as Salary_previous');
            sql.add(',Costing_Salary.Salary');

            sql.add('From CostingPriceListNew');

            sql.add('left join CostingPriceList on CostingPriceList.PricingSeason=CostingPriceListNew.CostingSeason and CostingPriceList.SKU=CostingPriceListNew.SKU');
            if ComboBox1.ItemIndex=0 then
                sql.add('     and CostingPriceList.KFCQ=''JNG''')
            else if ComboBox1.ItemIndex=1 then
                sql.add('     and CostingPriceList.KFCQ=''YQA''');
            sql.add('left join Costing_Salary on Costing_Salary.PricingSeason=CostingPriceListNew.CostingSeason and Costing_Salary.Factory_CTS=CostingPriceListNew.Factory');
            {if (Copy(UploadlQuery.fieldbyname('CostingSeason').AsString,3,1)='F')  then
                sql.add('left join Costing_Salary Costing_Salary_previous on Costing_Salary_previous.PricingSeason='''+Copy(UploadlQuery.fieldbyname('CostingSeason').AsString,1,2)+'U'' and Costing_Salary_previous.Factory_CTS=CostingPriceListNew.Factory')
            else if (Copy(UploadlQuery.fieldbyname('CostingSeason').AsString,3,1)='H')  then
                sql.add('left join Costing_Salary Costing_Salary_previous on Costing_Salary_previous.PricingSeason='''+Copy(UploadlQuery.fieldbyname('CostingSeason').AsString,1,2)+'F'' and Costing_Salary_previous.Factory_CTS=CostingPriceListNew.Factory')
            else if (Copy(UploadlQuery.fieldbyname('CostingSeason').AsString,3,1)='S')  then
                sql.add('left join Costing_Salary Costing_Salary_previous on Costing_Salary_previous.PricingSeason='''+inttoStr(StrToInt(Copy(UploadlQuery.fieldbyname('CostingSeason').AsString,1,2))-1)+'H'' and Costing_Salary_previous.Factory_CTS=CostingPriceListNew.Factory')
            else if (Copy(UploadlQuery.fieldbyname('CostingSeason').AsString,3,1)='U')  then
                sql.add('left join Costing_Salary Costing_Salary_previous on Costing_Salary_previous.PricingSeason='''+Copy(UploadlQuery.fieldbyname('CostingSeason').AsString,1,2)+'S'' and Costing_Salary_previous.Factory_CTS=CostingPriceListNew.Factory');
            }
           // sql.Add(' select CostingSeason,FactoryPriceSubmitStatus,SKU from CostingPriceListNew');
            sql.Add('   where CostingPriceListNew.CostingSeason='''+UploadlQuery.fieldbyname('CostingSeason').AsString+''' ');
            sql.Add('   and CostingPriceListNew.Round='''+UploadlQuery.fieldbyname('Round').AsString+'''');
            sql.Add('   and CostingPriceListNew.SKU = '''+UploadlQuery.fieldbyname('SKU').AsString+'''');
            sql.Add('   and CostingPriceListNew.Factory = '''+UploadlQuery.fieldbyname('Factory').AsString+'''');
            //showmessage(SQL.text);
            active:=true;
            if (ExistCheck.fieldbyname('Salary').AsString='') or (ExistCheck.fieldbyname('Salary').AsString='0') then
            begin
                showmessage('Check Salary N384 for season:'+UploadlQuery.fieldbyname('CostingSeason').AsString);
                exit;
            end;
          end;
    UploadlQuery.edit;
    UploadlQuery.fieldbyname('TotalMaterialCost').Value:=SumMTL;
    UploadlQuery.fieldbyname('SecondLabor').Value:=Sum2ndL;
    UploadlQuery.fieldbyname('SecondOverhead').Value:=Sum2ndO;
    UploadlQuery.fieldbyname('TTFreight').Value:=SumTTFreight;
    //

   if UploadlQuery.fieldbyname('SecondLabor_IP').Value=null then
      UploadlQuery.fieldbyname('SecondLabor_IP').Value:=0;
   if UploadlQuery.fieldbyname('SecondOverhead_IP').Value=null then
      UploadlQuery.fieldbyname('SecondOverhead_IP').Value:=0;
    if UploadlQuery.fieldbyname('CostMitigation').AsString='' then
        if (ExistCheck.fieldbyname('CurrnetCostMitigation').AsString='') or (ExistCheck.fieldbyname('CurrnetCostMitigation').AsString='0') then
            UploadlQuery.fieldbyname('CostMitigation').value:='0'
        else
            UploadlQuery.fieldbyname('CostMitigation').value:=ExistCheck.fieldbyname('CurrnetCostMitigation').value;
    //  鎖定2.51 ?
    //UploadlQuery.fieldbyname('Labor').value:=RoundClassic((ExistCheck.fieldbyname('Salary').value/ExistCheck.fieldbyname('Salary_previous').value

    if (UploadlQuery.fieldbyname('C2BL').AsString<>'') and (UploadlQuery.fieldbyname('C2BL').AsString<>'0') then
      begin
         //上一季人工換算
        //showmessage(ExistCheck.fieldbyname('Salary').value);
        if  ED_MinWage.TEXT<>'' then
          begin
            //showmessage('match pph with Salary_previous');
            Salary_previous:=RoundClassic(UploadlQuery.fieldbyname('R2B_PPH').Value*(UploadlQuery.fieldbyname('C2BL').value+Sum2ndL)*100)/100;
            //替換人工輸入薪資率
            UploadlQuery.fieldbyname('Labor').value:=RoundClassic((strtofloat(ED_MinWage.text)/Salary_previous
                *(UploadlQuery.fieldbyname('C2BL').value+Sum2ndL)+UploadlQuery.fieldbyname('CostMitigation').value+UploadlQuery.fieldbyname('SecondLabor_IP').value)*10000)/10000;
            UploadlQuery.fieldbyname('C2B_PPH').Value:=Salary_previous/UploadlQuery.fieldbyname('C2BL').value;
            UploadlQuery.fieldbyname('CFM_C2B_PPH').Value:=ExistCheck.fieldbyname('Salary').value
                /(ExistCheck.fieldbyname('Salary').value/Salary_previous*UploadlQuery.fieldbyname('C2BL').value+UploadlQuery.fieldbyname('CostMitigation').value);
            UploadlQuery.fieldbyname('R2B_PPH').Value:=Salary_previous/(UploadlQuery.fieldbyname('C2BL').value+Sum2ndL);
          end
        else if  UploadlQuery.fieldbyname('R2B_PPH').AsString<>'' then
          begin
            //showmessage('match pph with Salary_previous');
            Salary_previous:=RoundClassic(UploadlQuery.fieldbyname('R2B_PPH').Value*(UploadlQuery.fieldbyname('C2BL').value+Sum2ndL)*100)/100;
            UploadlQuery.fieldbyname('Labor').value:=RoundClassic((ExistCheck.fieldbyname('Salary').value/Salary_previous
                *(UploadlQuery.fieldbyname('C2BL').value+Sum2ndL)+UploadlQuery.fieldbyname('CostMitigation').value+UploadlQuery.fieldbyname('SecondLabor_IP').value)*10000)/10000;
            UploadlQuery.fieldbyname('C2B_PPH').Value:=Salary_previous/UploadlQuery.fieldbyname('C2BL').value;
            UploadlQuery.fieldbyname('CFM_C2B_PPH').Value:=ExistCheck.fieldbyname('Salary').value
                /(ExistCheck.fieldbyname('Salary').value/Salary_previous*UploadlQuery.fieldbyname('C2BL').value+UploadlQuery.fieldbyname('CostMitigation').value);
            UploadlQuery.fieldbyname('R2B_PPH').Value:=Salary_previous/(UploadlQuery.fieldbyname('C2BL').value+Sum2ndL);
          end
        {else
          begin
            showmessage(floattostr(Trunc(ExistCheck.fieldbyname('Salary_previous').value/(UploadlQuery.fieldbyname('C2BL').value+Sum2ndL)*10000)/10000));
            showmessage(floattostr(ExistCheck.fieldbyname('Salary_previous').value));
            showmessage(floattostr((UploadlQuery.fieldbyname('C2BL').value+Sum2ndL)));
            UploadlQuery.fieldbyname('Labor').value:=RoundClassic((UploadlQuery.fieldbyname('C2BL').value+Sum2ndL+UploadlQuery.fieldbyname('CostMitigation').value)*10000)/10000;
          end   }
        else 
            UploadlQuery.fieldbyname('Labor').value:=RoundClassic((UploadlQuery.fieldbyname('C2BL').value+Sum2ndL+UploadlQuery.fieldbyname('CostMitigation').value)*10000)/10000;
      end;
    UploadlQuery.fieldbyname('CFM_R2B_PPH').Value:=ExistCheck.fieldbyname('Salary').value/UploadlQuery.fieldbyname('Labor').value;
    //待測試是否結果相同
    //UploadlQuery.fieldbyname('CFM_R2B_PPH').Value:=ExistCheck.fieldbyname('Salary').value/
    //            ((ExistCheck.fieldbyname('Salary').value/2.51*UploadlQuery.fieldbyname('C2BL').value+UploadlQuery.fieldbyname('CostMitigation').value)
    //            +(ExistCheck.fieldbyname('Salary').value/2.51*Sum2ndL));
    //     UploadlQuery.fieldbyname('Labor').value:=(UploadlQuery.fieldbyname('C2BL').value+Sum2ndL)/UploadlQuery.fieldbyname('C2BL').value+UploadlQuery.fieldbyname('CurrnetCostMitigation').value;
    if UploadlQuery.fieldbyname('OHRed_25H').asstring='' then
      UploadlQuery.fieldbyname('OHRed_25H').value:='0';
    if UploadlQuery.fieldbyname('C2BO').value<>null then
          UploadlQuery.FieldByName('Overhead').Value :=
            RoundClassic(
              (
                StrToFloat(UploadlQuery.FieldByName('C2BO').Value) +
                StrToFloat(UploadlQuery.FieldByName('OHRed_25H').Value) +
                StrToFloat(UploadlQuery.FieldByName('SecondOverhead').Value) +
                StrToFloat(UploadlQuery.FieldByName('SecondOverhead_IP').Value)
              ) * 10000
            ) / 10000;
    //showmessage(UploadlQuery.fieldbyname('C2BO').value+UploadlQuery.fieldbyname('SecondOverhead').Value);
    UploadlQuery.fieldbyname('Profit').Value:=((SumMTL+UploadlQuery.fieldbyname('Labor').Value+UploadlQuery.fieldbyname('Overhead').Value)*UploadlQuery.fieldbyname('ProfitRate').Value/100);
    if UploadlQuery.fieldbyname('MoldCharge').asstring<>'' then
      UploadlQuery.fieldbyname('FOB').Value:=RoundClassic((SumMTL+UploadlQuery.fieldbyname('Labor').Value+UploadlQuery.fieldbyname('Overhead').Value
            +((SumMTL+UploadlQuery.fieldbyname('Labor').Value+UploadlQuery.fieldbyname('Overhead').Value)*UploadlQuery.fieldbyname('ProfitRate').Value/100)
            +UploadlQuery.fieldbyname('MoldCharge').Value
            )*100)/100
    else         
      UploadlQuery.fieldbyname('FOB').Value:=RoundClassic((SumMTL+UploadlQuery.fieldbyname('Labor').Value+UploadlQuery.fieldbyname('Overhead').Value
            +((SumMTL+UploadlQuery.fieldbyname('Labor').Value+UploadlQuery.fieldbyname('Overhead').Value)*UploadlQuery.fieldbyname('ProfitRate').Value/100)
            )*100)/100;
    UploadlQuery.fieldbyname('TTFreight').value:=SumTTFreight;
    UploadlQuery.fieldbyname('UserName').value:=UploadDetailQuery.fieldbyname('UserName').value;
    UploadlQuery.fieldbyname('UserUpdateTime').value:=formatdatetime('yyyy/MM/dd hh:mm:ss',now());
    UpdateSQL2.apply(ukmodify);
    //保存修改紀錄
    if (UploadlQuery.FieldByName('CBDcompleteDate').AsString<>'') or (UploadlQuery.FieldByName('CBDReadyDate').AsString<>'') then
      begin
       with ExistCheck do
          begin
            active:=false;
            sql.Clear;

            sql.Add('select FOB,TotalMaterialCost,Labor, Overhead, C2BL, C2BO, SecondLabor, SecondOverhead,OHRed_25H, CostMitigation, Profit, ProfitRate');
            sql.Add('    , MoldCharge,CBDReadyDate,CBDcompleteDate,UserName,UserUpdateTime');
            sql.Add('   From CostingPriceListNew');
            sql.Add('   where CostingSeason='''+UploadlQuery.fieldbyname('CostingSeason').AsString+''' ');
            sql.Add('   and Round='''+UploadlQuery.fieldbyname('Round').AsString+'''');
            sql.Add('   and SKU = '''+UploadlQuery.fieldbyname('SKU').AsString+'''');
            sql.Add('   and Factory = '''+UploadlQuery.fieldbyname('Factory').AsString+'''');
            //showmessage(SQL.text);
            active:=true;
            if ((FieldByName('FOB').AsString <> UploadlQuery.FieldByName('FOB').AsString) or
                (FieldByName('TotalMaterialCost').AsString <> UploadlQuery.FieldByName('TotalMaterialCost').AsString) or
                (FieldByName('Labor').AsString <> UploadlQuery.FieldByName('Labor').AsString) or
                (FieldByName('Overhead').AsString <> UploadlQuery.FieldByName('Overhead').AsString) or
                (FieldByName('C2BL').AsString <> UploadlQuery.FieldByName('C2BL').AsString) or
                (FieldByName('C2BO').AsString <> UploadlQuery.FieldByName('C2BO').AsString) or
                (FieldByName('SecondLabor').AsString <> UploadlQuery.FieldByName('SecondLabor').AsString) or
                (FieldByName('SecondOverhead').AsString <> UploadlQuery.FieldByName('SecondOverhead').AsString) or
                (FieldByName('OHRed_25H').AsString <> UploadlQuery.FieldByName('OHRed_25H').AsString) or
                (FieldByName('CostMitigation').AsString <> UploadlQuery.FieldByName('CostMitigation').AsString) or
                (FieldByName('Profit').AsString <> UploadlQuery.FieldByName('Profit').AsString) or
                (FieldByName('ProfitRate').AsString <> UploadlQuery.FieldByName('ProfitRate').AsString) or
                (FieldByName('MoldCharge').AsString <> UploadlQuery.FieldByName('MoldCharge').AsString) or
                Updated) then
            begin
              with TemQry do
              begin
                sql.Clear;
                if  NextVersion='1' then
                begin     
                    sql.Add('INSERT INTO CostingPLNLog (    CostingSeason,Round, SKU, Factory,Version, FOB, TotalMaterialCost, Labor');
                    sql.Add('   ,Overhead,C2BL,C2BO,SecondLabor,SecondOverhead,OHRed_25H,CostMitigation,Profit,ProfitRate,MoldCharge');
                    sql.Add('   ,UserName,UserUpdateTime');
                    sql.Add(') VALUES (');
                    sql.Add('   '''+UploadlQuery.fieldbyname('CostingSeason').AsString+''', ');
                    sql.Add('   '''+UploadlQuery.fieldbyname('Round').AsString+''', ');
                    sql.Add('   '''+UploadlQuery.fieldbyname('SKU').AsString+''', ');
                    sql.Add('   '''+UploadlQuery.fieldbyname('Factory').AsString+''', ');
                    sql.Add('   '''+NextVersion+''', ');
                    NextVersion:='2';
                    sql.Add('   '''+ExistCheck.fieldbyname('FOB').AsString+''', ');
                    sql.Add('   '''+ExistCheck.fieldbyname('TotalMaterialCost').AsString+''', ');
                    sql.Add('   '''+ExistCheck.fieldbyname('Labor').AsString+''', ');
                    sql.Add('   '''+ExistCheck.fieldbyname('Overhead').AsString+''', ');
                    sql.Add('   '''+ExistCheck.fieldbyname('C2BL').AsString+''', ');
                    sql.Add('   '''+ExistCheck.fieldbyname('C2BO').AsString+''', ');
                    sql.Add('   '''+ExistCheck.fieldbyname('SecondLabor').AsString+''', ');
                    sql.Add('   '''+ExistCheck.fieldbyname('SecondOverhead').AsString+''', ');
                    sql.Add('   '''+ExistCheck.fieldbyname('OHRed_25H').AsString+''', ');
                    sql.Add('   '''+ExistCheck.fieldbyname('CostMitigation').AsString+''', ');
                    sql.Add('   '''+ExistCheck.fieldbyname('Profit').AsString+''', ');
                    sql.Add('   '''+ExistCheck.fieldbyname('ProfitRate').AsString+''', ');
                    sql.Add('   '''+ExistCheck.fieldbyname('MoldCharge').AsString+''', ');
                    sql.Add('   '''+ExistCheck.fieldbyname('UserName').AsString+''', ');
                    sql.Add('   '''+StringReplace(StringReplace(ExistCheck.fieldbyname('UserUpdateTime').asstring, '下午', '', []), '上午', '', [])+''')');
                end;
                sql.Add('INSERT INTO CostingPLNLog (    CostingSeason,Round, SKU, Factory,Version, FOB, TotalMaterialCost, Labor');
                sql.Add('   ,Overhead,C2BL,C2BO,SecondLabor,SecondOverhead,OHRed_25H,CostMitigation,Profit,ProfitRate,MoldCharge');
                sql.Add('   ,UserName,UserUpdateTime');
                sql.Add(') VALUES (');
                sql.Add('   '''+UploadlQuery.fieldbyname('CostingSeason').AsString+''', ');
                sql.Add('   '''+UploadlQuery.fieldbyname('Round').AsString+''', ');
                sql.Add('   '''+UploadlQuery.fieldbyname('SKU').AsString+''', ');
                sql.Add('   '''+UploadlQuery.fieldbyname('Factory').AsString+''', ');
                sql.Add('   '''+NextVersion+''', ');
                sql.Add('   '''+UploadlQuery.fieldbyname('FOB').AsString+''', ');
                sql.Add('   '''+UploadlQuery.fieldbyname('TotalMaterialCost').AsString+''', ');
                sql.Add('   '''+UploadlQuery.fieldbyname('Labor').AsString+''', ');
                sql.Add('   '''+UploadlQuery.fieldbyname('Overhead').AsString+''', ');
                sql.Add('   '''+UploadlQuery.fieldbyname('C2BL').AsString+''', ');
                sql.Add('   '''+UploadlQuery.fieldbyname('C2BO').AsString+''', ');
                sql.Add('   '''+UploadlQuery.fieldbyname('SecondLabor').AsString+''', ');
                sql.Add('   '''+UploadlQuery.fieldbyname('SecondOverhead').AsString+''', ');
                sql.Add('   '''+UploadlQuery.fieldbyname('OHRed_25H').AsString+''', ');
                sql.Add('   '''+UploadlQuery.fieldbyname('CostMitigation').AsString+''', ');
                sql.Add('   '''+UploadlQuery.fieldbyname('Profit').AsString+''', ');
                sql.Add('   '''+UploadlQuery.fieldbyname('ProfitRate').AsString+''', ');
                sql.Add('   '''+UploadlQuery.fieldbyname('MoldCharge').AsString+''', ');
                sql.Add('   '''+UploadlQuery.fieldbyname('UserName').AsString+''', ');
                sql.Add('   getdate())');
                //showmessage(SQL.text);
                execsql;
              end;
            end;  
            Close;
          end;
      end;
    if UploadlQuery.fieldbyname('CBDcompleteDate').asstring='' then
        Complete.Enabled:=true;    
    if UploadlQuery.fieldbyname('CBDReadyDate').asstring='' then
        BBReady.Enabled:=true;
    //BitBtn8.Click;
end;

procedure TCostingCBD.DataSource1DataChange(Sender: TObject;
  Field: TField);
begin
      if UploadlQuery.FieldByName('CBDReadyDate').AsString='' then
      begin
           BBReady.Enabled:=True;
           complete.Enabled:=False;
      end
      else if UploadlQuery.FieldByName('CBDcompleteDate').AsString='' then
      begin
           BBReady.Enabled:=False;
           complete.Enabled:=True;
      end
      else
      begin
           BBReady.Enabled:=False;
           complete.Enabled:=False;
      end;

end;

end.




