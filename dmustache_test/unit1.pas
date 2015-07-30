unit Unit1;

{$mode objfpc}{$H+}

interface

uses
  Classes, SysUtils, FileUtil, Forms, Controls, Graphics, Dialogs, ExtCtrls,
  StdCtrls, SynMustache, SynCommons;

type

  { TFDMustacheTest }

  TFDMustacheTest = class(TForm)
    BtnRender: TButton;
    GBContext: TGroupBox;
    LEHtmlResult: TLabeledEdit;
    LEContext1: TLabeledEdit;
    LEContext2: TLabeledEdit;
    LEMustachedLine: TLabeledEdit;
    procedure BtnRenderClick(Sender: TObject);
  private
    { private declarations }
  public
    { public declarations }
  end;

var
  FDMustacheTest: TFDMustacheTest;
  mustache: TSynMustache;
  doc: variant;

implementation

{$R *.lfm}

{ TFDMustacheTest }

procedure TFDMustacheTest.BtnRenderClick(Sender: TObject);
begin
  doc := _Obj(['name',LEContext1.Text ,'value',LEContext2.Text]);
  mustache := TSynMustache.Parse(LEMustachedLine.Text);
  // Render it:
  LEHtmlResult.Text := mustache.Render(doc);
end;

end.

