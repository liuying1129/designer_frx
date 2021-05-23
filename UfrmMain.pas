unit UfrmMain;

interface

uses
  Windows, Classes, Controls, Forms,SysUtils,StdCtrls, Buttons,LYEdit,
  frxClass, frxDesgn, frxCrypt, frxGZip, frxDCtrl, frxDMPExport,
  frxGradient, frxChBox, frxCross, frxRich, frxOLE, frxBarcode, frxPreview,
  ExtCtrls, frxDock, frxDesgnCtrls, frxCtrls, frxDBSet;

type
  TForm1 = class(TForm)
    LYEdit1: TLYEdit;
    BitBtn1: TBitBtn;
    BitBtn2: TBitBtn;
    frxReport1: TfrxReport;
    procedure BitBtn2Click(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

{$R *.dfm}

procedure TForm1.BitBtn2Click(Sender: TObject);
begin
  close;
end;

procedure TForm1.FormShow(Sender: TObject);
begin
  LYEdit1.Text:=ExtractFilePath(application.ExeName);
end;

procedure TForm1.BitBtn1Click(Sender: TObject);
begin
  frxReport1.LoadFromFile(LYEdit1.Text);
  frxReport1.DesignReport;
end;

end.
