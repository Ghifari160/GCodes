; Ender 3 v2 Start
; For PrusaSlicer v2.5.0.
;
; Copyright (C) 2022 GHIFARI160
; This work is free. You can redistribute it and/or modify it under the terms of the Do What The
; Fuck You Want To Public License, Version 2,as published by Sam Hocevar. See the LICENSE file
; for more details.

G90                                     ; absolute coordinates
M82                                     ; extruder absolute mode
M104 S150                               ; set temporary nozzle temp
M140 S{first_layer_bed_temperature[0]}  ; set final bed temp
M190 S{first_layer_bed_temperature[0]}  ; wait for final bed temp
M109 S150                               ; wait for temporary nozzle temp
G28                                     ; home all axes
G29 A                                   ; enable UBL
G29 L0                                  ; load mesh 0
G29 J4                                  ; 16-point probe for skew compensation
G29 F10.0                               ; set fade height to 10.0 mm
M109 S{first_layer_temperature[0]}      ; set and wait for final nozzle temp
G0 Z2.0 F3000                           ; move z axis up to prevent bed scratching
G0 X0.1 Y20 Z0.2 F5000                  ; move to start position
; nozzle prime sequence
G92 E0                                  ; reset extruder
G1 X0.1 Y200 Z0.2 F1500 E15
G0 X0.4 Y200 Z0.2 F5000
G1 X0.4 Y20 Z0.2 F1500 E30
G92 E0                                  ; reset extruder
; end of nozzle prime sequence
G0 Z2 F3000                             ; move z axis up to prevent bed scratching
G0 X5 Y20 Z0.2 F5000                    ; prevent blob squish
; End of Ender 3 v2 Start
