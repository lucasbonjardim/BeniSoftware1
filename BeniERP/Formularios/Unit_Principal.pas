unit Unit_Principal;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.ExtCtrls, Vcl.StdCtrls,
  Vcl.Imaging.pngimage, Vcl.WinXCtrls, Vcl.CategoryButtons, Vcl.ComCtrls,
  System.ImageList, Vcl.ImgList, System.Actions, Vcl.ActnList, RxExtenders,
  RxGrdCpt, Vcl.Buttons, Data.Cloud.CloudAPI, Data.Cloud.AzureAPI, Vcl.Grids,
  Vcl.Samples.Calendar, Vcl.AppAnalytics, cxPC, dxSkinsCore, dxSkinBlack,
  dxSkinBlue, dxSkinBlueprint, dxSkinCaramel, dxSkinCoffee, dxSkinDarkRoom,
  dxSkinDarkSide, dxSkinDevExpressDarkStyle, dxSkinDevExpressStyle, dxSkinFoggy,
  dxSkinGlassOceans, dxSkinHighContrast, dxSkiniMaginary, dxSkinLilian,
  dxSkinLiquidSky, dxSkinLondonLiquidSky, dxSkinMcSkin, dxSkinMetropolis,
  dxSkinMetropolisDark, dxSkinMoneyTwins, dxSkinOffice2007Black,
  dxSkinOffice2007Blue, dxSkinOffice2007Green, dxSkinOffice2007Pink,
  dxSkinOffice2007Silver, dxSkinOffice2010Black, dxSkinOffice2010Blue,
  dxSkinOffice2010Silver, dxSkinOffice2013DarkGray, dxSkinOffice2013LightGray,
  dxSkinOffice2013White, dxSkinOffice2016Colorful, dxSkinOffice2016Dark,
  dxSkinPumpkin, dxSkinSeven, dxSkinSevenClassic, dxSkinSharp, dxSkinSharpPlus,
  dxSkinSilver, dxSkinSpringTime, dxSkinStardust, dxSkinSummer2008,
  dxSkinTheAsphaltWorld, dxSkinsDefaultPainters, dxSkinValentine,
  dxSkinVisualStudio2013Blue, dxSkinVisualStudio2013Dark,
  dxSkinVisualStudio2013Light, dxSkinVS2010, dxSkinWhiteprint,
  dxSkinXmas2008Blue, dxSkinscxPCPainter, dxBarBuiltInMenu, cxClasses,
  dxTabbedMDI, cxGraphics, Vcl.PlatformDefaultStyleActnCtrls, Vcl.ActnMan,
  cxLookAndFeels, dxSkinsForm, cxControls, cxLookAndFeelPainters, dxRibbonSkins,
  dxSkinsdxRibbonPainter, dxRibbonCustomizationForm, dxRibbon, dxGDIPlusClasses,
  dxNavBarOfficeNavigationBar, dxSkinsdxBarPainter, dxBar,
  dxSkinsdxStatusBarPainter, dxStatusBar, ACBrBase, ACBrEnterTab;

type
  TForm_Principal = class(TForm)
    ActionList1: TActionList;
    actHome: TAction;
    actLayout: TAction;
    actPower: TAction;
    imlIcons: TImageList;
    cxmglst_icones: TcxImageList;
    dxSkinController1: TdxSkinController;
    pnl_lateral: TPanel;
    SV: TSplitView;
    catMenuItems: TCategoryButtons;
    pnlToolbar: TPanel;
    pnl_top_esquerdo: TPanel;
    pnl_search: TPanel;
    Panel2: TPanel;
    pnl_logo: TPanel;
    lbl_info: TLabel;
    Panel1: TPanel;
    btn_lateral: TButton;
    dxTabbedMDIManager1: TdxTabbedMDIManager;
    img_fundo: TImage;
    dxRibbon1: TdxRibbon;
    tabCadastro: TdxRibbonTab;
    tabMovimentos: TdxRibbonTab;
    tabFinanceiro: TdxRibbonTab;
    dxRibbon1Tab1: TdxRibbonTab;
    tabConsultas: TdxRibbonTab;
    tabMiscelanea: TdxRibbonTab;
    dxRibbon1Tab2: TdxRibbonTab;
    dxBarManager1: TdxBarManager;
    dxBarManager1Bar1: TdxBar;
    dxBarManager1Bar2: TdxBar;
    dxBarManager1Bar3: TdxBar;
    dxBarManager1Bar4: TdxBar;
    dxBarManager1Bar5: TdxBar;
    dxBarManager1Bar6: TdxBar;
    dxBarManager1Bar7: TdxBar;
    dxBarManager1Bar8: TdxBar;
    dxBarManager1Bar9: TdxBar;
    dxBarManager1Bar10: TdxBar;
    dxBarManager1Bar11: TdxBar;
    dxBarManager1Bar12: TdxBar;
    dxBarManager1Bar13: TdxBar;
    dxBarManager1Bar14: TdxBar;
    CE000: TdxBarLargeButton;
    ADM000: TdxBarSubItem;
    C025: TdxBarLargeButton;
    E003: TdxBarLargeButton;
    E001: TdxBarLargeButton;
    E002: TdxBarLargeButton;
    C1030: TdxBarLargeButton;
    M001: TdxBarLargeButton;
    M002: TdxBarLargeButton;
    dxBarLargeButton1: TdxBarLargeButton;
    dxBarLargeButton2: TdxBarLargeButton;
    ADM001: TdxBarSubItem;
    dxBarLargeButton3: TdxBarLargeButton;
    U000: TdxBarSubItem;
    F001: TdxBarSubItem;
    F002: TdxBarSubItem;
    F003: TdxBarSubItem;
    F004: TdxBarSubItem;
    F005: TdxBarSubItem;
    F006: TdxBarLargeButton;
    F007: TdxBarLargeButton;
    F008: TdxBarLargeButton;
    dxBarSubItem1: TdxBarSubItem;
    C000: TdxBarSubItem;
    R000: TdxBarSubItem;
    T000: TdxBarSubItem;
    dxBarButton1: TdxBarButton;
    C1040: TdxBarButton;
    dxBarSubItem2: TdxBarSubItem;
    C1042: TdxBarButton;
    C007: TdxBarButton;
    CX000: TdxBarSubItem;
    CX001: TdxBarButton;
    CX002: TdxBarButton;
    dxBarButton2: TdxBarButton;
    CX003: TdxBarLargeButton;
    CX004: TdxBarLargeButton;
    CX005: TdxBarLargeButton;
    dxBarLargeButton4: TdxBarLargeButton;
    dxBarLargeButton5: TdxBarLargeButton;
    dxBarLargeButton6: TdxBarLargeButton;
    M301: TdxBarLargeButton;
    dxBarSubItem3: TdxBarSubItem;
    dxBarSubItem4: TdxBarSubItem;
    dxBarButton3: TdxBarButton;
    dxBarLargeButton7: TdxBarLargeButton;
    dxBarSubItem5: TdxBarSubItem;
    dxBarButton4: TdxBarButton;
    dxBarSubItem6: TdxBarSubItem;
    dxBarSubItem7: TdxBarSubItem;
    dxBarLargeButton8: TdxBarLargeButton;
    dxBarSubItem8: TdxBarSubItem;
    dxBarSubItem9: TdxBarSubItem;
    dxBarButton5: TdxBarButton;
    dxBarButton6: TdxBarButton;
    dxBarButton7: TdxBarButton;
    dxBarButton8: TdxBarButton;
    dxBarSubItem10: TdxBarSubItem;
    dxBarLargeButton9: TdxBarLargeButton;
    dxBarButton9: TdxBarButton;
    dxBarLargeButton10: TdxBarLargeButton;
    dxBarLargeButton11: TdxBarLargeButton;
    dxBarButton10: TdxBarButton;
    CP000: TdxBarSubItem;
    C007ANT: TdxBarButton;
    C004: TdxBarButton;
    C006: TdxBarButton;
    C028: TdxBarButton;
    C029: TdxBarButton;
    C005: TdxBarButton;
    C020: TdxBarButton;
    C027: TdxBarButton;
    C236: TdxBarButton;
    C035: TdxBarButton;
    C031: TdxBarButton;
    C034: TdxBarButton;
    C1024: TdxBarButton;
    C1031: TdxBarButton;
    CC000: TdxBarSubItem;
    C003: TdxBarButton;
    C008: TdxBarButton;
    C009: TdxBarButton;
    C002: TdxBarButton;
    Vendedor1: TdxBarButton;
    C014: TdxBarButton;
    C015: TdxBarButton;
    FormasdePagamentos1: TdxBarButton;
    C016: TdxBarButton;
    C024: TdxBarButton;
    C012: TdxBarButton;
    C023: TdxBarButton;
    C022: TdxBarButton;
    C021: TdxBarButton;
    C036: TdxBarButton;
    ClassifContasReceber1: TdxBarButton;
    C011: TdxBarSubItem;
    Contas1: TdxBarButton;
    CentrodeCusto1: TdxBarButton;
    C010: TdxBarButton;
    C026: TdxBarButton;
    LocaisdeEstoque1: TdxBarSubItem;
    LocaisdeEstoque2: TdxBarButton;
    C1041: TdxBarButton;
    C1023: TdxBarButton;
    C1025: TdxBarButton;
    C1029: TdxBarButton;
    S002: TdxBarButton;
    M014: TdxBarButton;
    M013: TdxBarButton;
    M019: TdxBarButton;
    GerenciadorNFe1: TdxBarButton;
    M020: TdxBarButton;
    R999: TdxBarButton;
    M023: TdxBarButton;
    M024: TdxBarButton;
    M025: TdxBarButton;
    Duplicata1: TdxBarButton;
    M008: TdxBarButton;
    M009: TdxBarButton;
    M010: TdxBarButton;
    M017: TdxBarButton;
    M037: TdxBarButton;
    M005: TdxBarButton;
    M006: TdxBarButton;
    M007: TdxBarButton;
    M003: TdxBarButton;
    M004: TdxBarButton;
    M022: TdxBarButton;
    M015: TdxBarSubItem;
    LanamentoFluxodecaixa1: TdxBarButton;
    AbreCaixa1: TdxBarButton;
    Boletos1: TdxBarSubItem;
    C1027: TdxBarButton;
    M031: TdxBarButton;
    M038: TdxBarButton;
    M039: TdxBarButton;
    LivrosFiscais1: TdxBarSubItem;
    M035: TdxBarButton;
    M036: TdxBarButton;
    M021: TdxBarButton;
    Contabilidade1: TdxBarButton;
    Cadastro2: TdxBarSubItem;
    C101: TdxBarButton;
    C107: TdxBarButton;
    C104: TdxBarButton;
    C106: TdxBarButton;
    C109: TdxBarButton;
    C108: TdxBarButton;
    C102: TdxBarButton;
    C115: TdxBarButton;
    C116: TdxBarButton;
    C215: TdxBarButton;
    C112: TdxBarButton;
    C117: TdxBarButton;
    C103: TdxBarButton;
    C105: TdxBarButton;
    C214: TdxBarButton;
    C110: TdxBarButton;
    C111: TdxBarButton;
    C114: TdxBarButton;
    C1026: TdxBarButton;
    Movimento2: TdxBarSubItem;
    Entrada1: TdxBarSubItem;
    C201: TdxBarButton;
    C202: TdxBarButton;
    Vendas1: TdxBarSubItem;
    C203: TdxBarButton;
    C204: TdxBarButton;
    C205: TdxBarButton;
    C211: TdxBarButton;
    C227: TdxBarButton;
    C223: TdxBarSubItem;
    C228: TdxBarButton;
    C229: TdxBarButton;
    C216: TdxBarButton;
    C217: TdxBarButton;
    OrcamentosEmitidos1: TdxBarButton;
    OSEmitdas1: TdxBarButton;
    PreVendasEmitidas1: TdxBarButton;
    C206: TdxBarButton;
    C207: TdxBarSubItem;
    C230: TdxBarButton;
    C231: TdxBarButton;
    C208: TdxBarButton;
    ConsCtr: TdxBarSubItem;
    C209: TdxBarButton;
    C224: TdxBarButton;
    Estoque: TdxBarSubItem;
    C210: TdxBarButton;
    C232: TdxBarButton;
    ContasCorrente1: TdxBarSubItem;
    C219: TdxBarButton;
    C220: TdxBarButton;
    C221: TdxBarButton;
    C226: TdxBarButton;
    Diversas1: TdxBarSubItem;
    C212: TdxBarButton;
    Cadastro3: TdxBarSubItem;
    R001: TdxBarButton;
    R002: TdxBarButton;
    R003: TdxBarButton;
    R004: TdxBarSubItem;
    R019: TdxBarButton;
    R020: TdxBarButton;
    R022: TdxBarButton;
    R023: TdxBarButton;
    Cliente4: TdxBarSubItem;
    R005: TdxBarButton;
    R006: TdxBarButton;
    R007: TdxBarButton;
    R008: TdxBarButton;
    R009: TdxBarButton;
    R010: TdxBarButton;
    R011: TdxBarButton;
    R012: TdxBarButton;
    R013: TdxBarButton;
    R014: TdxBarButton;
    R016: TdxBarButton;
    R017: TdxBarButton;
    Movimento3: TdxBarSubItem;
    Entradas3: TdxBarSubItem;
    R101: TdxBarButton;
    R102: TdxBarButton;
    R145: TdxBarButton;
    Vendas3: TdxBarSubItem;
    R103: TdxBarButton;
    R122: TdxBarButton;
    R104: TdxBarButton;
    R144: TdxBarButton;
    R114: TdxBarButton;
    R132: TdxBarButton;
    R142: TdxBarButton;
    R138: TdxBarButton;
    R139: TdxBarButton;
    R140: TdxBarButton;
    R1024: TdxBarButton;
    R143: TdxBarButton;
    R119: TdxBarButton;
    R120: TdxBarButton;
    OramentosEmitidos1: TdxBarButton;
    OSEmitidas1: TdxBarButton;
    R127: TdxBarButton;
    ContasaReceber3: TdxBarSubItem;
    R105: TdxBarButton;
    R106: TdxBarButton;
    R123: TdxBarButton;
    R107: TdxBarButton;
    R108: TdxBarButton;
    R117: TdxBarButton;
    R128: TdxBarButton;
    ContasaReceberCarto1: TdxBarButton;
    ContasaPagar3: TdxBarSubItem;
    R109: TdxBarButton;
    R110: TdxBarButton;
    R129: TdxBarButton;
    InventriodeEstoque1: TdxBarSubItem;
    R111: TdxBarButton;
    R118: TdxBarButton;
    R113: TdxBarButton;
    R130: TdxBarButton;
    Produto5: TdxBarSubItem;
    R116: TdxBarButton;
    R141: TdxBarButton;
    R027: TdxBarButton;
    ContasCorrente2: TdxBarSubItem;
    R124: TdxBarButton;
    R126: TdxBarButton;
    R300: TdxBarButton;
    MalaDireta1: TdxBarSubItem;
    R135: TdxBarButton;
    R136: TdxBarButton;
    R028: TdxBarButton;
    Estatsticas1: TdxBarSubItem;
    R029: TdxBarButton;
    R030: TdxBarButton;
    R137: TdxBarButton;
    Contabil2: TdxBarSubItem;
    LivrosFiscais3: TdxBarSubItem;
    R024: TdxBarButton;
    R025: TdxBarButton;
    MapaResumo1: TdxBarSubItem;
    R133: TdxBarButton;
    R026: TdxBarButton;
    R134: TdxBarButton;
    R015: TdxBarButton;
    ApuracaoPisCofins1: TdxBarButton;
    ComissesdeVendedores1: TdxBarButton;
    P008: TdxBarButton;
    P010: TdxBarButton;
    C018: TdxBarButton;
    P002: TdxBarButton;
    P004: TdxBarButton;
    P005: TdxBarButton;
    P001: TdxBarButton;
    P006: TdxBarButton;
    P009: TdxBarButton;
    C1028: TdxBarButton;
    P011: TdxBarButton;
    GerarLivroSaidasMapaResumo1: TdxBarButton;
    P003: TdxBarButton;
    B001: TdxBarButton;
    B002: TdxBarButton;
    B003: TdxBarButton;
    B004: TdxBarButton;
    B005: TdxBarButton;
    C2: TdxBarButton;
    Informaesdelicena1: TdxBarButton;
    Sobre1: TdxBarButton;
    C00: TdxBarSubItem;
    M00: TdxBarSubItem;
    Financeiro1: TdxBarSubItem;
    Contabil1: TdxBarSubItem;
    R00: TdxBarSubItem;
    P000: TdxBarSubItem;
    SB: TdxStatusBar;
    pnl_info: TPanel;
    ACBrEnterTab1: TACBrEnterTab;
    pnl_infodados: TPanel;
    procedure CarregaConfiguracao;
    procedure FormCreate(Sender: TObject);
    procedure imgMenuClick(Sender: TObject);
    procedure catMenuItemsCategoryCollapase(Sender: TObject;
      const Category: TButtonCategory);
    procedure p_abreconfig(Sender: TObject);
    procedure actLayoutExecute(Sender: TObject);
    procedure btn_lateralClick(Sender: TObject);
    procedure C007Click(Sender: TObject);
    procedure C1042Click(Sender: TObject);
    procedure B003Click(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);


  private
    hora : TDateTime;
    dia, tarde, noite: string;

  public
   vg_usunome     : String;
   vg_ususenh     : String;
   vg_codigogrupo : String;
   vg_temacor     : String;
   vg_cadeado     : Boolean;
    procedure Exibeefeitoespera;
  end;

var
  Form_Principal: TForm_Principal;

implementation

uses
Unit_Variaveis_Globais, Unit_Rotinas, UdtmBcoErp, Unit_Cadastro_Modelo,
  Unit_Cadastro_Produtos, Unit_Cadastro_ICMS, Unit_Acesso, ParamControleLicenca,
  ParamControleTerminalECF, ParamControleTerminalPDV, UdtmACBR, UdtmImagens,
  Unit_Alerta, Unit_Baixa_Tabela_IBPT, Unit_exibeefeitoespera,
  Unit_F_mensagem_Dialog, Unit_Relatorios, unit_utilfuncs,
  Unit_Cadastro_Usuario;

{$R *.dfm}


procedure TForm_Principal.actLayoutExecute(Sender: TObject);
begin
  AbreForm(TForm_Cadastro_Produtos,Form_Cadastro_Produtos);
end;

procedure TForm_Principal.B003Click(Sender: TObject);
begin
   AbreForm(TForm_Cadastro_usuario,Form_Cadastro_usuario);
end;

procedure TForm_Principal.btn_lateralClick(Sender: TObject);
begin
  if pnl_lateral.Width =185 then
  begin
    pnl_lateral.Width :=53;
  end
  else
  begin
    pnl_lateral.Width :=185;
  end;
end;

procedure TForm_Principal.C007Click(Sender: TObject);
begin
   AbreForm(TForm_Cadastro_Produtos,Form_Cadastro_Produtos);
end;

procedure TForm_Principal.C1042Click(Sender: TObject);
begin
   AbreForm(TForm_Cadastro_ICMS,Form_Cadastro_ICMS);
end;

procedure TForm_Principal.CarregaConfiguracao;
begin
  COD_EMP :=1;
  pnl_lateral.Width :=53;

  if FileExists(ExtractFilePath(Application.ExeName) + 'imagens\fundo.jpg') then
  begin
    img_fundo.Picture.LoadFromFile(ExtractFilePath(Application.ExeName) +
    'imagens\fundo.jpg');
    img_fundo.Visible := true;
  end;
end;

procedure TForm_Principal.catMenuItemsCategoryCollapase(Sender: TObject;
  const Category: TButtonCategory);
begin
   catMenuItems.Categories[0].Collapsed := False;
end;

procedure TForm_Principal.FormClose(Sender: TObject; var Action: TCloseAction);
begin
   if KDialog( 'Deseja Mesmo Sair do Sistema?', 'Sair', tdtPergunta ) then
    Application.Terminate
   else
    abort;
end;

procedure TForm_Principal.FormCreate(Sender: TObject);
begin
  CarregaConfiguracao;
end;

procedure TForm_Principal.imgMenuClick(Sender: TObject);
begin
  if SV.Opened then
  begin
     SV.Close;
     pnl_lateral.Width :=0;
  end
  else
  begin
    SV.Open;
    pnl_lateral.Width :=185;
  end;
end;

procedure TForm_Principal.p_abreconfig(Sender: TObject);
begin
  AbreForm(TForm_Cadastro_Modelo,Form_Cadastro_Modelo);
end;

procedure TForm_Principal.Exibeefeitoespera;
begin
  try
    Application.CreateForm(Tform_exibeefeitoespera, form_exibeefeitoespera);
    form_exibeefeitoespera.Show;
    sleep(590);
  finally
   FreeAndNil(form_exibeefeitoespera);
  end;

end;

end.
