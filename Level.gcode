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


; thumbnail begin 16x16 504
; iVBORw0KGgoAAAANSUhEUgAAABAAAAAQCAYAAAAf8/9hAAAACXBIWXMA
; AC4jAAAuIwF4pT92AAABK0lEQVQ4jaWTvy5EYRDFf2t1NLcR295X0LDJ0ohEqVIo0Ch4AAovoL7xZ9
; V3m01kE4+gUHkEOiIobqtZR+F8MdYl/pxkMjPnO5k73zdzG5L4D8ZquFmgBG6BoX3P/LcFmkABXAKT
; wD6wbD9hvrDuHZKSHUp6krQQuGjzPj+KfArmJA0tQtKipBtJV5Jy531Jq9a1U4F0hR3gHLgAMqAPnA
; IV0AVmzF9btz16hTtJm45zvWFLUtedICmzX7f+QwfTwL3jypbZqsBj3VRqYNz+AWgF4QGw63xvZHIt
; 4DElDS9S6VGtBGEeuok4A56BtfgGbb/uT/ASpxDnfOw5d77Yg47PT+r2AElNSYW/MJC0IWnJfuAOC+
; tqC8SlKj0q2ffMf9KnR/wz6v7GX+EVEdyendxS0mQAAAAASUVORK5CYII=
; thumbnail end
;

; thumbnail begin 220x124 4876
; iVBORw0KGgoAAAANSUhEUgAAANwAAAB8CAYAAAACRt5vAAAACXBIWXMA
; AC4jAAAuIwF4pT92AAAN+UlEQVR4nO2dfZCVVR3HP7ssOgm4sqJOQQhLgvmaAY6CWiqVmpOmIqjQ6/
; hW0x++AZU1U+kEZWMz5Sia2ii+gW85OmoivqcjohZJgLqshFOi7LqoGCne/vjdm8vdvXt/57nnPPe5
; z/l9Zp5h2D3Pc373PPe75+V3fr/TVCgUMAwjHZrrbYBhxIQJzjBSxARnGCligjOMFDHBGUaKmOAMI0
; VMcIaRIiY4w0gRE5xhpEhLvQ0w+jAa2B/YGxhTvHYHRgDDkXc2rFj2HeBDoBt4C9gIdBav1cBKYH1K
; dhsKmmxrV10ZBBwMHAlMAQ4F2jzX0QU8XbyWAc8C2zzXYSgxwaXPjsAxwKnFf30LrBpdwAPA4uK/W1
; OuP2pMcOkxETgTmAm01tmWEj3ArcA1wIo62xIFJriwtACnAOcDk+tsSzWeBS4HbkfmhUYATHBhaAFm
; AT8FxtbZFlfWAT8HFmHC844Jzj9fB+YD4+ttSI2sBeYBd9XbkDxhgvPHBOAK4Oh6G+KZR4BzgTX1Ni
; QPmOO7dgYDPwZeJH9iA3FZvAhcjHxWowash6uNvYCbyP6CiC+WA2cAL9fbkEbFBJecWcCVwNAAz16P
; LNOvAjqK10ZgE/A+sBnx5w1FXAylq7147YO4IUYHsO1dZIi5KMCzc48Jzp3BwG+AH3h85hvA/cCfgc
; eB1z09dyRwOPAV4FhgD0/PBfgdcAHwgcdn5h4TnButwB34mav1ALcBtyAi+8jDMweiGTgCOA2YgR/n
; +8PAychnMRSY4PSMBB4E9q3xOasQB/OtyPCsHgxFdrychww/a+ElZIvahlqNigETnI6xyF/zWpzYKx
; FH+J+ArDR6E3AC8DPggBqesw7p9df5MCrPmOCq0w48BoxKeP9bwA+B6wg/bExKM/BtxGE/IuEzNgBf
; QBZ4jAqY4AZmFPAoMC7BvR8B1yJi2+TRppDsCvwS+C7JfLQdiOhseFkBE1xlWoEnkGBQVzoRt8FTPg
; 1KkanADUjv7spKZGXUFlL6wXaa9M8OwJ0kE9sS4EAaV2wgth+EfBZX9kfabgevFuUEE1z/XAYc5XjP
; NuAiJLB0s3eL0mcz4j64CPcI8aOQoalRhg0p+zILuNHxni3Ilqe7vVuTDU5EtrDt5HBPoXjfPQHsaV
; hMcNszHngeGOJwTw9wPPBkEIuyw2HAvbg5zLuAzwOvBbGoAbEh5ccMRvYHuoptGvkXG8hn/BJuiyFt
; iIPfogyKmOA+Zg5uu/63AF8FngtjTiZZjnzmLQ73HIKkmDAwwZWYgMR7admG7EmsdSXyLGAu8BAy5+
; nvWlwsM7HGuig+Y37Z87uKzx+ufMZTyGd3WUi5mDCRC41HoVCwq1B4qODGnBrqai8UCvMd6yvxXKFQ
; mJ6wXk2dLs+e42j7nQntztVVdwMycJ1YcOO+QqHQlLCusxzrqsRix3oXOjx7rvKZTQVpCxeOc7Q7d1
; fsq5QtyO79vZTl/4k4hJNs1VqIDCF9sQKYpCg3HRmWujAO3Z7IXYEXgE8rn7sG2I+Is4HFPoebjV5s
; HyG+tiRim49fsYHMxzRCmtvPz+YhkQJN9L+bRGvrJqRNtJuyJyBtHi0x93AtSCo4bcjNNSQTzTRkUS
; QU84AFA/y+/AVfDZxd9rNX2X7fpLb3LOHSe69D/J1R9nIx93AnoRdbKcQmCQsT3qdloBXG/jYf95fS
; fGnZ/7UrliV+hLSRhrFI20dJzIK7wKHsPJINJaeh33F/NeIoLg31Buq1ejOcyr1Lf/Ow/twL08r+36
; 2su8QmpI20XOj4/NwQq+AmIcdEafgHcH3CeqYryy1Ahnm9v+jz0H+JB6qnvPcq+f5KLKbvH4XyezRc
; j7SVhsm4DVlzQ6xzuKvoO4+pxGySp4TrovrwrBtZFazUqzxE3x6oP9oqPCPkKmU5Z6Bvq4XAOQnqaG
; hi7OF2RHZKaOhA9gImYSK6udBSBh7CaXubSqJcggxXtZxN8jQJtyELMBpmIu8iKmIU3LHAzsqyvyL5
; app2K1a1c9m0ghuovrPRzQlPxU2c5XwI/FpZthV5F1ERo+BOVpbbAtxcQz3axZJqgtMelFhN4POQeV
; O58LqLv2sjWYR3OTej39x8iof6GorY5nDNwJvojvm9CQlGTcpidIsmmvlSuZ+sP7pJ//jiSixC5nPV
; 6AJ2I7vZzLwTWw83Gf2X0jXquxytL0uzBK+ZUw13qDM02rZrI56DUID4BKdNUf4GyZbGe6MdUmoEp/
; WLZUVwS4F/K8u65o5paGIT3FRluQdwT5wTEq3gkqS1C8E2JC28Bu07yQWxCe4QZbn7PdSl+fLnOUux
; tg0PDWpFxohJcKPRz99iyFESGm0bthFRNHhMgtMmdX0Nf+ezxczr6LN1JUm425DEJLjPKsv91VN9rh
; uA84i2LbXvpuGJSXBjlOVWeqpPI7isLHKE4m/KcmNCGpElTHB9ecVTffXo4bK2CKPdVzkmpBFZIibB
; 7a4st95TfT59Zz59emmibUvtu2l4YhKcdoXyX57q0/Y2GjFpRNlN9gSnjQLfNagVGSImwWlfqq/DE3
; 0KrlF9eu8oy2VlD2hwYhKc9rP+x1N9vgTXjq6H00YVpIn22K5BQa3IEDEJThsD5+tst1oDR7W/L9HI
; PdywoFZkiJgEp8VXFHI3ul6nWqIhbV6UWjdbGykQk+C0PZfPv7bagM5KOUfmouvhOsjmkFLblu8GtS
; JDxCQ4bZBjPQQ3EUkW1Lunm1+8NNSSFiEk2mF8NElhW+ptQIpsAnZRlPMpuA5EDJqsxNPQO4rL8ZEa
; IQTatuwKakWGiKmH077UEZ7rXUBY/9gCsrlgAvq29OWKyTwxCW6jspzvUJEO9Dkwkzxbm6G5HmjbUv
; tuGp6YBNepLPeZAHUvwb/oOpAzt7O2u6Q345TlOkMakSVMcH0JFZt1NZL30YdAliJiy+pQsoS2LTtD
; GpElYhKcNu/9gQFtWIL81U+6qlganjaC2AA+pyy3OqQRWSKmvJSj0UcgjyKdqO/SoRpnUdn5XVp0WU
; o2fW2V+BT6NtwTf1EamSYmwYGshmk2ys5E8uQbyZmB7lyGLixaILc8oywXXc77AGjb8OmgVmSM2AT3
; lLLcMcTXNj5pBr6sLPuXkIZkjdi+VA8ry+0BHBHSkJxzBPBJZVntO8kFsQnuOfQ7Tmb287OCXRWv3s
; wYuGn/TxfyTqIhNsFtQ58R+DRgSEBb8soQ4HRl2fvJVkr54MQmOIDbleV2RnfkkrE9Z6CPEtC+i9wQ
; m1sAJMB0I7ovxavA3nwcPhJdYznQhESfrEa3pWszkq1ra0ijskaMPdxW9Od2j0M/HzGkrbT7J28lMr
; FBnD0cyNG7y5VlXwIOQAJYo2wsJYOQTMv7KstPJrIFE4izhwN50dqXvS8wO6AteWEWerGtIEKxQbw9
; HMjOfe32rdeRuVw0uTccGYrM3UYqy8+gch6XXBNrDwdwJ7BOWXYkcGlAWxqdS9GLrRNp+yiJWXAfAp
; c4lP8+MCWQLY3MFKRttPyCiJIGlRPzkBJkGXsVsJey/DokxstXsthGZxjwIvrDRtYi87xoBRdzDwfy
; 4uc4lB8L/AHxORnSFi5n3J1PxGIDExzA3bhtoJ0OnBfGlIbifGThSctdwH2BbGkYYh9SltgbGRpp05
; xvA04C7gllUMb5GrLwoT2E4z1gHyKJ6h4I6+GE1bgtoAwCbgGmhjEn00xFPrvLiTeXYGIDrIfrzWAk
; QHWywz09SMbkWJy4k5DcKq0O9zyDxMd9EMSiBsMEtz3jgedxC8vpAY4HngxiUXY4DLgXN7F1AwehT9
; 6Ue2xIuT1rge853tMKPAic4N+czHAC8ABuYisA38LEth0muL7cAPze8Z6dgDuAC/ybU3cuRD6bazDu
; b4l3UakiNqTsnx2QaOSjEtx7C3AOje8c3xlJWJskPGkZkrXrv14tygEmuMq0Ak+QLPV5B/AN9FnCss
; YU4EbcnNolVgKHI3NbowwbUlamBziOZCnF24HHgYXoEs9mhTbE5idIJrYOpM1MbBWwHq467cBjSPrz
; JLyFpDT/I/pTWNOmGfgm8CuSn4+3AfgiyQ+VjALr4arTgfiRtKE85YwArgVeAE4kW/swm5AVyBeA60
; gutk6kjUxsVbAeTs8oZGlcG9VciVXA5cjiynu1GpWQIUgawPOQLVe18BKSqXpDrUbFgAnOjV2Q1G5H
; e3hWDxJxfjMyZwo93GxGFjNOR1YeXXxqlXgYOAV428OzosAE585gpIdyCbqsxhvIl3cZ8Aj+zn5rB4
; 5E3BtHIyncfXEF0kPali0HTHDJmQ1cSZjszOuRedXfgVeQOVI38A7Sm5RyqwxFet1hwHBgDHJk8n7I
; lirf55WDDIPPRdwGhiMmuNoYDyzCbcNzI7Mcyc61tt6GNCq2Slkba5FwlZ+Q76SmW5HPOBUTW01YD+
; ePCcBViC8qTzyKbFVbU2c7coH1cP5YgyxQnEQ+eoGXkc9yJCY2b5jg/HMX4qv7DrLY0Wh0Irbvg3wW
; wyM2pAxLC+KnuhCYWGdbqrECuAzxM0adWSskJrj0mASciT+nsw9KzvdriCdNRF0xwaXPJ5BYsZORLV
; FpRxN0IRHqtyMxf++nXH/UmODqyyDgYGQnyKHFy7cAu4Cni9cy4FkiO+Y3S5jgsseeSNDrBCTT8xhg
; N2Qn/3AkGr20u+U9JKr6beDN4vUasjVsDRIMajlFMoQJzjBSxNwChpEiJjjDSBETnGGkiAnOMFLEBG
; cYKWKCM4wUMcEZRoqY4AwjRUxwhpEi/wPH/azx2ImKjQAAAABJRU5ErkJggg==
; thumbnail end
;

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
