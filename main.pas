unit main;

{$mode objfpc}{$H+}

interface

uses
  Classes, SysUtils, FileUtil, Forms, Controls, Graphics, Dialogs, synaser, FirmataPascal;

type
  TForm1 = class(TForm)
  private
    { private declarations }

  public
    { public declarations }
  end;

var
  Form1: TForm1;

  piscadas, fadeControl, pwmValue, count: integer;
  red,green,blue: byte;
  repetir: boolean;

  redVal, blueVal, greenVal: integer;

implementation

{$R *.lfm}
    begin

      initializeComm;

      setPinMode($A0, PIN_MODE_ANALOG);
      analogReport(0, true);

      setPinMode($04, PIN_MODE_INPUT);
      digitalReport($00, true);

      repetir := true;
      while repetir = true do
           begin
              firmataParser();
           end;


  end.

