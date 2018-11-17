unit Unit_Configurar_Pis_Cofins;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, FireDAC.Stan.Intf, FireDAC.Stan.Option,
  FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf,
  FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt, ACBrBase, ACBrEnterTab,
  Vcl.StdCtrls, Vcl.ExtCtrls, Data.DB, FireDAC.Comp.DataSet,
  FireDAC.Comp.Client, Vcl.Buttons;

type
  Tform_Configurar_Pis_Cofins = class(TForm)
    BitBtn1: TBitBtn;
    Conf: TFDQuery;
    Metodo: TRadioGroup;
    Regime: TRadioGroup;
    Tipo: TRadioGroup;
    Versao: TRadioGroup;
    ACBrEnterTab1: TACBrEnterTab;
    ConfCOD: TIntegerField;
    ConfCOD_EMP: TIntegerField;
    ConfVERSAO: TIntegerField;
    ConfREGIME_APURACAO: TIntegerField;
    ConfMETODO: TIntegerField;
    ConfTIPO_CONT: TIntegerField;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure Btn_ok(Sender: TObject);
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
    Existe: Boolean;
  public
    { Public declarations }
  CODEMP: Integer;
  end;

var
  form_Configurar_Pis_Cofins: Tform_Configurar_Pis_Cofins;

implementation

{$R *.dfm}

uses UdtmBcoErp;

procedure Tform_Configurar_Pis_Cofins.Btn_ok(Sender: TObject);
begin
  Conf.Close;
   if Existe then
   begin
     Conf.SQL.Text := 'update TB_EFD_PISCOFINS set VERSAO=:VERSAO,      ' +
                      'REGIME_APURACAO=:REGIME_APURACAO, METODO=:METODO,' +
                      'TIPO_CONT=:TIPO_CONT where COD_EMP=:COD_EMP      ' ;
   end
   else
   begin
    Conf.SQL.Text := 'insert into TB_EFD_PISCOFINS( COD_EMP, VERSAO, REGIME_APURACAO,   ' +
                      'METODO, TIPO_CONT ) Values ( :COD_EMP, :VERSAO, :REGIME_APURACAO,' +
                      ':METODO, :TIPO_CONT);                                            ' ;
   end;

   Conf.ParamByName( 'COD_EMP' ).AsInteger := CODEMP;
   Conf.ParamByName( 'VERSAO').AsInteger := Versao.ItemIndex;
   Conf.ParamByName( 'REGIME_APURACAO').AsInteger := regime.ItemIndex;
   Conf.ParamByName( 'METODO').AsInteger := Metodo.ItemIndex;
   Conf.ParamByName( 'TIPO_CONT').AsInteger := Tipo.ItemIndex;
   Conf.ExecSQL;
   Conf.Close;
end;

procedure Tform_Configurar_Pis_Cofins.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
   Action := caFree;
end;

procedure Tform_Configurar_Pis_Cofins.FormShow(Sender: TObject);
begin
  Conf.Close;
  Conf.ParamByName( 'CODEMP' ).AsInteger := CODEMP;
  Conf.Open;
  if Conf.IsEmpty then
  begin
    Existe := false;
    regime.ItemIndex := 0;
    Metodo.ItemIndex := 0;
    Tipo.ItemIndex := 0;
    Versao.ItemIndex := 0;
  end
  else
  begin
    Existe := True;
    Regime.ItemIndex := ConfREGIME_APURACAO.AsInteger;
    Metodo.ItemIndex := ConfMETODO.AsInteger;
    Tipo.ItemIndex := ConfTIPO_CONT.AsInteger;
    versao.ItemIndex := ConfVERSAO.AsInteger;
  end;
end;

end.
