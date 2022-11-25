; ZLoop
; Go up and down the z-axis to help evenly spread lube on the z-axis lead screw.
;
; Copyright (C) 2022 GHIFARI160
; This work is free. You can redistribute it and/or modify it under the terms of the Do What The
; Fuck You Want To Public License, Version 2,as published by Sam Hocevar. See the LICENSE file
; for more details.

G28                 ; Home all axes
G21                 ; Millimeter units
G90                 ; Absolute positioning
M300 S300 P1000     ; Beep
M0 Start?
G0 Z0
G0 Z255 F1500
G0 Z0 F1500
G0 Z255 F1500
G0 Z0 F1500
G0 Z255 F1500
G0 Z0 F1500
M400                ; Finish moves
M300 S300 P300      ; Beeps
M300 S300 P300
M300 S300 P300
M117
