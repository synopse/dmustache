program dmustachetest;

{$mode objfpc}{$H+}

uses
  {$IFDEF UNIX}{$IFDEF UseCThreads}
  cthreads,
  {$ENDIF}{$ENDIF}
  Interfaces, // this includes the LCL widgetset
  Forms, Unit1, SynMustache;

{$R *.res}

begin
  Application.Title := 'dmustache test';
  RequireDerivedFormResource := True;
  Application.Initialize;
  Application.CreateForm(TFDMustacheTest, FDMustacheTest);
  Application.Run;
end.

