unit uPdvECF;

interface

uses
  System.SysUtils, System.Classes, System.UITypes;

type
  TPdvECF = class
  private
    flNumECF        : Integer ;
    flNumCOO        : Integer ;
    flNumCCF        : Integer ;
    flNumCRZ        : Integer ;
    fwNumGNF        : Integer ;
    flDataMovimento : TDate   ;
  public
    property NumECF     : Integer read flNumECF     write flNumECF     ;
    property NumCOO     : Integer read flNumCOO     write flNumCOO     ;
    property NumCCF     : Integer read flNumCCF     write flNumCCF     ;
    property NumCRZ     : Integer read flNumCRZ     write flNumCRZ     ;
    property NumGNF     : Integer read fwNumGNF     write fwNumGNF     ;
    property DataMovimento : TDate   read flDataMovimento write flDataMovimento ;
  end;

implementation

end.

