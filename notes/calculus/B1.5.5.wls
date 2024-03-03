ClearAll[f]

f[x_] := 6 + 14(x-1) + 11(x-1)^2 + 3(x-1)^3 + O[x, 1]^4;

d1 = Cell[f//Definition//ToBoxes//BoxData];

g1 = HoldForm[Series[f[x] // Normal, {x, 0, 3}]]

in1 = Cell[g1//ToBoxes//BoxData];

out1 = Cell[g1//ReleaseHold//ToBoxes//BoxData];

f[x_] := x^4 Sin[x]

d2 = Cell[f//Definition//ToBoxes//BoxData];

g2 = HoldForm[Series[f[x], {x, 0, 13}]]

in2 = Cell[g2//ToBoxes//BoxData];

out2 = Cell[g2//ReleaseHold//ToBoxes//BoxData];

g3 = HoldForm[(D[f[x], {x, 9}] /. x -> 0) == 9!/5!]

in3 = Cell[g3//ToBoxes//BoxData];

out3 = Cell[g3//ReleaseHold//ToBoxes//BoxData];

g4 = HoldForm[Series[{Sin[x], x Cos[x]}, {x, 0, 4}] // Column]

in4 = Cell[g4//ToBoxes//BoxData];

out4 = Cell[g4//ReleaseHold//ToBoxes//BoxData];

f[x_] := (4/3 - 1/3 Cos[x]) Sin[x] - x;

d5 = f//Definition//ToBoxes//BoxData//Cell;

g5 = Series[f[x], {x, 0, 7}] // HoldForm;

in5 = g5//ToBoxes//BoxData//Cell;

out5 = g5//ReleaseHold//ToBoxes//BoxData//Cell;

f[x_] := x - (4/3 - 1/3 Cos[x]) Sin[x];

d6 = f//Definition//ToBoxes//BoxData//Cell;

g6 = Series[f[x], {x, 0, 7}] // HoldForm;

in6 = g6//ToBoxes//BoxData//Cell;

out6 = g6//ReleaseHold//ToBoxes//BoxData//Cell;

nb = Notebook[{
        d1, in1, out1,
        d2, in2, out2,
        in3, out3,
        in4, out4,
        d5, in5, out5,
        d6, in6, out6
        }
     ];

Export["B1.5.5.nb", nb]
