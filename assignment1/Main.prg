 Sē54272 G
  LēS Ī SŠ24:  L,0:   : CLEAR SOUND CHIP REGISTERS   SŠ5,9:  SŠ6,0           : VOICE 1: A=0, D=9, S=0, R=0 Ā  SŠ24,15                     : SET VOLUME TO MAXIMUM 	(  HF,LF,DR                    : READ HIGH HIGH FREQ, LOW FREQ, DUR @	2  HF ģ 0 §                : SONG OVER WHEN HF < 0 	<  SŠ1,HF:  S,LF           : POKE HIGH AND LOW FREQ OF V1 Â	F  SŠ4,33                      : GATE SAWTOOTH WAVEFORM FOR V1 
P  Tē1 Ī DR:               : TIMING LOOP FOR DURATION OF NOTE E
Z  SŠ4,32:  Tē1 Ī 50:  : RELEASE SAWTOOTH WAVEFORM FOR V1 ~
d  40                         : RETURN FOR NEXT NOTE Á
n  25,177,250, 28,214,250     : HF, LF, DURATION OF EACH NOTE: Þ
x  25,177,250, 25,177,250 û
  25,177,125, 28,214,125   32,94,750,  25,177,250 4  28,214,250, 19,63,250 P   19,63,250,  19,63,250 kŠ  21,154,63,  24,63,63 ī  25,177,250, 24,63,125 Ėū  19,63,250,  -1,-1,-1       : LAST NOTE (NEGATIVE SIGNALS END)   