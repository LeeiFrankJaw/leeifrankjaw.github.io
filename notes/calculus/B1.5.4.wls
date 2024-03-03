ClearAll[f]

f[x_] := x/(1+x^2)

d1 = Cell[f//Definition//ToBoxes//BoxData];

g1 = HoldForm[Plot[{f[x], f'[x], f''[x]}, {x, -5, 5}]]

in1 = Cell[g1//ToBoxes//BoxData];

out1 = Cell[g1//ReleaseHold//ToBoxes//BoxData];

f[x_] := -3/2 x^3 + 9/2 x^2;

d2 = Cell[f//Definition//ToBoxes//BoxData];

g2 = HoldForm[Plot[{f[x], f'[x], f''[x]}, {x, -2, 2}]]

in2 = Cell[g2//ToBoxes//BoxData];

out2 = Cell[g2//ReleaseHold//ToBoxes//BoxData];

f[x_] := (2+x) Exp[1/x]

d3 = Cell[f//Definition//ToBoxes//BoxData];

g3 = HoldForm[Plot[{f[x], f'[x], f''[x]}, {x, -5, 5}]]

in3 = Cell[g3//ToBoxes//BoxData];

out3 = Cell[g3//ReleaseHold//ToBoxes//BoxData];

f[x_] := x + Sin[x]

d4 = Cell[f//Definition//ToBoxes//BoxData];

g4 = HoldForm[Plot[{f[x], f'[x], f''[x]}, {x, -2Pi, 2Pi}]]

in4 = Cell[g4//ToBoxes//BoxData];

out4 = Cell[g4//ReleaseHold//ToBoxes//BoxData];

g5 = HoldForm[Plot[{x^3, Abs[x^3]}, {x, -5, 5}]]

in5 = Cell[g5//ToBoxes//BoxData];

out5 = Cell[g5//ReleaseHold//ToBoxes//BoxData];

f[x_] := (x-1) (x-2)^2 (x-3)^3 (x-4)^4

d6 = Cell[f//Definition//ToBoxes//BoxData];

g6 = HoldForm[Plot[{f[x], f'[x], f''[x]}, {x, 2.5, 3.5}]]

in6 = Cell[g6//ToBoxes//BoxData];

out6 = Cell[g6//ReleaseHold//ToBoxes//BoxData];

g7 = HoldForm[Plot[(x^2+x)/(x^2-1), {x, -10, 10}]]

in7 = Cell[g7//ToBoxes//BoxData];

out7 = Cell[g7//ReleaseHold//ToBoxes//BoxData];

g8 = HoldForm[Plot[{(x^3-x^2+x-1)/(x^2-1), x-1}, {x, -10, 10}]]

in8 = Cell[g8//ToBoxes//BoxData];

out8 = Cell[g8//ReleaseHold//ToBoxes//BoxData];

g9 = HoldForm[PolarPlot[{Sin[2t]/((Cos[t]-Sin[t])(1+Sin[2t]/2)),
                         -2/3/(Sin[t]-Cos[t])},
                        {t, 0, 2Pi}]]

in9 = Cell[g9//ToBoxes//BoxData];

out9 = Cell[g9//ReleaseHold//ToBoxes//BoxData];

nb = Notebook[{
        d1, in1, out1,
        d2, in2, out2,
        d3, in3, out3,
        d4, in4, out4,
        in5, out5,
        d6, in6, out6,
        in7, out7,
        in8, out8,
        in9, out9
        }
     ];

Export["B1.5.4.nb", nb]
