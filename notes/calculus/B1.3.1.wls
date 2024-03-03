ClearAll[f]

f[x_] := Piecewise[{{(Exp[1/x] - 1)/(Exp[1/x] + 1), x != 0}, {1, x == 0}}]

d1 = Cell[Definition@f//ToBoxes//BoxData];

Limit[f[x], x -> 0, Direction -> "FromAbove"]

Limit[f[x], x -> 0, Direction -> "FromBelow"]

g1 = HoldForm[Plot[f[x], {x, -5, 5}]]

in1 = Cell[g1//ToBoxes//BoxData];

out1 = Cell[g1//ReleaseHold//ToBoxes//BoxData];

f[x_] := 1/(Exp[x/(x-1)]-1)

d2 = Cell[Definition@f//ToBoxes//BoxData];

g2 = HoldForm[Plot[f[x], {x, -5, 5}]]

in2 = Cell[g2//ToBoxes//BoxData];

out2 = Cell[g2//ReleaseHold//ToBoxes//BoxData];

f[x_] := ((Exp[x]+x) Tan[x]) / (x (Exp[1/x] - E))

d3 = Cell[Definition@f//ToBoxes//BoxData];

g3 = HoldForm[Plot[f[x], {x, -2, 2}, PlotRange -> {{-2,2}, {-30,15}}]]

in3 = Cell[g3//ToBoxes//BoxData];

out3 = Cell[g3//ReleaseHold//ToBoxes//BoxData];

f[x_] := (1+x)^(x/Tan[x-Pi/4])

d4 = Cell[Definition@f//ToBoxes//BoxData];

g4 = HoldForm[Plot[f[x], {x, 0, 2Pi}]]

in4 = Cell[g4//ToBoxes//BoxData];

out4 = Cell[g4//ReleaseHold//ToBoxes//BoxData];

f[x_] := Cos[1/x]^2;

d5 = Cell[Definition@f//ToBoxes//BoxData];

g5 = HoldForm[Plot[f[x], {x, -1, 1}]]

in5 = Cell[g5//ToBoxes//BoxData];

out5 = Cell[g5//ReleaseHold//ToBoxes//BoxData];

f[x_] := DiscreteLimit[(x^(2n+1)+1)/(x^(2n+1)-x^(n+1)+x), n -> Infinity]

d6 = Cell[Definition@f//ToBoxes//BoxData];

f[x_] := Piecewise[{
        {1, x > 1},
        {2, x == 1},
        {1/x, 0 < x < 1 || -1 < x < 0},
        {0, x == -1},
        {1, x < -1}
        }]

g6 = HoldForm[Show[
        Plot[f[x],
             {x, -5, 5},
             PlotRange -> 5,
             Exclusions -> {x == 0, "Discontinuities"},
             ExclusionsStyle -> {None, Black}],
        ListPlot[{{-1,0}, {1, 2}}]]
     ]

in6 = Cell[g6//ToBoxes//BoxData];

out6 = Cell[g6//ReleaseHold//ToBoxes//BoxData];

nb = Notebook[{
        d1, in1, out1,
        d2, in2, out2,
        d3, in3, out3,
        d4, in4, out4,
        d5, in5, out5,
        d6, in6, out6
        }];

Export["B1.3.1.nb", nb]
