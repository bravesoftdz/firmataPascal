implementation

{$R *.lfm}
    begin
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

             {
             sleep(20);
              if pwmValue = 0 then
                begin
                  fadeControl := 1;
                  pwmValue += fadeControl;
                  analogWrite(red, fadeControl);
                end
              else
                  begin
                    if pwmValue = 255 then
                    begin
                        fadeControl := -1;
                        pwmValue += fadeControl;
                        analogWrite(red, fadeControl);
                    end
                  else
                    begin
                       pwmValue += fadeControl;
                       analogWrite(red, pwmValue);
                    end;
                  end;
                 }
              //digitalWrite($09,$00);
              //digitalWrite($0A,$01);
              //digitalWrite($0B,$01);
              //analogWrite($09, 255);
              //sleep(200);

              //digitalWrite($09,$01);
              //digitalWrite($0A,$00);
              //digitalWrite($0B,$01);
              //analogWrite($09, 0);
              //sleep(200);


              //digitalWrite($09,$01);
              //digitalWrite($0A,$01);
              //digitalWrite($0B,$00);
              //analogWrite($09, 255);
              //sleep(200);


              //digitalWrite($09,$01);
              //digitalWrite($0A,$01);
              //digitalWrite($0B,$01);
              //analogWrite($09, $00);
              //analogWrite($0A, $00);
              //analogWrite($0B, $00);
              //sleep(200);


              //piscadas -=1;
           end;


  end. 