; homey.g
; called to home the Y axis
;
; generated by RepRapFirmware Configuration Tool v2.1.8 on Thu Mar 19 2020 21:32:44 GMT+0100 (Central European Standard Time)
G91               ; relative positioning
G1 H2 Z5 F6000    ; lift Z relative to current position
G1 H1 Y355 F3000 ; move quickly to Y axis endstop and stop there (first pass)
G1 H2 Y-5 F6000    ; go back a few mm
G1 H1 Y355 F240  ; move slowly to Y axis endstop once more (second pass)
G1 H2 Y-5 F6000    ; go back a few mm
G1 H2 Z-5 F6000   ; lower Z again
G90               ; absolute positioning

