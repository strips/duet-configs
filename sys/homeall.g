; homeall.g
; called to home all axes
;
; generated by RepRapFirmware Configuration Tool v2.1.8 on Thu Mar 19 2020 21:32:43 GMT+0100 (Central European Standard Time)
G91                     ; relative positioning
G1 H2 Z5 F6000          ; lift Z relative to current position
G1 H1 X355 Y355 F3000 ; move quickly to X and Y axis endstops and stop there (first pass)
G1 H2 X-5 Y-5 F6000       ; go back a few mm
G1 H1 X355 Y355 F240  ; move slowly to X and Y axis endstops once more (second pass)
G90                     ; absolute positioning
G1 H2 X220 Y192 F6000   ; go to center bed 
G30                     ; home Z by probing the bed
G29 S1 ; enable mesh bed levling
; Uncomment the following lines to lift Z after probing
G91                    ; relative positioning
G1 Z5 F6000             ; lift Z relative to current position
G90                    ; absolute positioning


