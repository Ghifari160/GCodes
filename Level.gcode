; Level
; Go to each corner (30x30mm offset from bed edge) and center, and pause for user input before
; going down to 0.40 mm.

; Use this to help with leveling with a feeler gauge. Why 0.40 mm? Because that's the feeler gauge
; I have available. It also makes sense as the most common layer height for a 0.4 mm nozzle is
; 0.20 mm, and 0.40 is the double of 0.20 mm. In theory, it would be better to level at 0.20 mm
; with the applicable feeler gauge. In practice, I doubt it'd make much of a difference in most
; situations. Feel free to prove me wrong.
;
; Copyright (C) 2022 GHIFARI160
; This work is free. You can redistribute it and/or modify it under the terms of the Do What The
; Fuck You Want To Public License, Version 2,as published by Sam Hocevar. See the LICENSE file
; for more details.

G28
G0 Z10

; bottom left corner
G0 X30 Y30 F5000
M0 Level?
G0 Z0.4
M0 Done?
G0 Z10

; bottom right corner
G0 X195 F5000
M0 Level?
G0 Z0.4
M0 Done?
G0 Z10

; top right corner
G0 Y195 F5000
M0 Level?
G0 Z0.4
M0 Done?
G0 Z10

; top left corner
G0 X30 F5000
M0 Level?
G0 Z0.4
M0 Done?
G0 Z10

; center
G0 X112.5 Y112.5 F5000
M0 Level?
G0 Z0.4
M0 Done?
G0 Z10

; bottom left corner
G0 X30 Y30 F5000
M0 Level?
G0 Z0.4
M0 Done?
G0 Z10

; bottom right corner
G0 X195 F5000
M0 Level?
G0 Z0.4
M0 Done?
G0 Z10

; top right corner
G0 Y195 F5000
M0 Level?
G0 Z0.4
M0 Done?
G0 Z10

; top left corner
G0 X30 F5000
M0 Level?
G0 Z0.4
M0 Done?
G0 Z10

; center
G0 X112.5 Y112.5 F5000
M0 Level?
G0 Z0.4
M0 Done?
G0 Z10
