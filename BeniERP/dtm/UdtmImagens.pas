unit UdtmImagens;

interface

uses
  System.SysUtils, System.Classes, System.ImageList, Vcl.ImgList, Vcl.Controls,
  cxGraphics;

type
  TdtmImagens = class(TDataModule)
    cxImageList16: TcxImageList;
    cxImageListL32: TcxImageList;
    cxImageList48: TcxImageList;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  dtmImagens: TdtmImagens;

implementation

{%CLASSGROUP 'Vcl.Controls.TControl'}

{$R *.dfm}

end.
