; Ender 3 v2 End
; For PrusaSlicer v2.5.0.
;
; Copyright (C) 2022 GHIFARI160
; This work is free. You can redistribute it and/or modify it under the terms of the Do What The
; Fuck You Want To Public License, Version 2,as published by Sam Hocevar. See the LICENSE file
; for more details.

G91                                     ; relative coordinates
G1 E-2 F2700                            ; retract
G1 E-2 Z0.2 F2400                       ; retract and raise Z
G0 X5 Y5 F3000                          ; wipe out
G0 Z10                                  ; raise Z
G90                                     ; absolute coordinates
G1 X0 Y{print_bed_max[1]}               ; present print
M140 S0                                 ; turn off bed
M104 S0                                 ; turn off nozzle
M107                                    ; turn off fan
M84 X Y E                               ; disable steppers
; End of Ender 3 v2 End
