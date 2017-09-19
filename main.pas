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

  piscadas: integer;

implementation

{$R *.lfm}
    begin

      initializeComm;

      setPinMode($0D,$01);
      piscadas := 1000;
      while piscadas > 0 do
           begin
              digitalWrite($0D,$01);
              sleep(60);
              digitalWrite($0D,$00);
              sleep(20);
              piscadas -=1;
           end;


  end.

