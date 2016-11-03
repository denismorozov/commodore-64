5 S=54272
10 FOR L=S TO S+24: POKE L,0: NEXT  :REM Clear sound chip registers
20 POKE S+5,9: POKE S+6,0           :REM Voice 1: A=0, D=9, S=0, R=0
30 POKE S+24,15                     :REM Set volume to maximum
40 READ HF,LF,DR                    :REM Read high high freq, low freq, dur
50 IF HF < 0 THEN END               :REM Song over when HF < 0
60 POKE S+1,HF: POKE S,LF           :REM Poke high and low freq of v1
70 POKE S+4,33                      :REM Gate sawtooth waveform for v1
80 FOR T=1 TO DR: NEXT              :REM Timing loop for duration of note
90 POKE S+4,32: FOR T=1 TO 50: NEXT :REM Release sawtooth waveform for v1
100 GOTO 40                         :REM Return for next note
110 DATA 25,177,250, 28,214,250     :REM HF, LF, Duration of each note:
120 DATA 25,177,250, 25,177,250
130 DATA 25,177,125, 28,214,125
140 DATA 32,94,750,  25,177,250
150 DATA 28,214,250, 19,63,250
160 DATA 19,63,250,  19,63,250
170 DATA 21,154,63,  24,63,63
180 DATA 25,177,250, 24,63,125
190 DATA 19,63,250,  -1,-1,-1       :REM Last note (negative signals end)