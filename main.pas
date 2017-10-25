unit main;

{$mode objfpc}{$H+}

interface

uses
  Classes, SysUtils, FileUtil, Forms, Controls, Graphics, Dialogs, synaser, FirmataPascal, firmataconstants;

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
       (*
      //FF = apagado
      //00 = Full duty
      red := $0A;
      green := $09;
      blue := $0B;

      initializeComm;

      setPinMode($09,$03);
      setPinMode($0A,$03);
      setPinMode($0B,$03);

      //analogWrite(green, $FF);
      //analogWrite(blue, $FF);

      piscadas := 100;

      fadeControl := 0;
      pwmValue := 0;

      while piscadas > 0 do
           begin

             //crossfadeRGB LED
              redVal := 255;
              blueVal := 0;
              greenVal := 0;
              for count := 1 to 255 do
                begin
                  greenVal += 1;
                  redVal -= 1;
                  analogWrite( green, 255 - greenVal );
                  analogWrite( red, 255 - redVal );
                  sleep(5);
                end;

              redVal := 0;
              blueVal := 0;
              greenVal := 255;
              for count := 1 to 255 do
                begin
                  blueVal += 1;
                  greenVal -= 1;
                  analogWrite( blue, 255 - blueVal );
                  analogWrite( green, 255 - greenVal );
                  sleep(5);
                end;

              redVal := 0;
              blueVal := 255;
              greenVal := 0;
              for count := 1 to 255 do
                begin
                  redVal += 1;
                  blueVal -= 1;
                  analogWrite( red, 255 - redVal );
                  analogWrite( blue, 255 - blueVal );
                  sleep(5);
                end;

       *)


      initializeComm;



      setPinMode($A0, PIN_MODE_ANALOG);
      analogReport(0, true);

      setPinMode($02, PIN_MODE_INPUT);
      //digitalReport($00, true);


      repetir := true;
      while repetir = true do
           begin

              //write(digitalRead($02));
              write(analogRead(0));
              write(#13);
           end;



  end.

