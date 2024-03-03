f[m_, x_] := Sum[x^k, {k, 1, 2*m}] - 1

g[m_, x_] := Sum[x^k, {k, 1, 2*m}] + 1

d1 = Cell[f//Definition//TraditionalForm//ToBoxes//BoxData];

g1 = Manipulate[Plot[Sum[x^k, {k, 1, 2*m}] - 1, {x, -5, 5}], {m, 1, 10, 1}]

out1 = Cell[g1//ToBoxes//BoxData];

d2 = Cell[g//Definition//TraditionalForm//ToBoxes//BoxData];

g2 = Manipulate[Plot[Sum[x^k, {k, 1, 2*m}] + 1, {x, -5, 5}], {m, 1, 10, 1}]

out2 = Cell[g2//ToBoxes//BoxData];

Clear[f]

f[x_] := 1/(x+1) + 1/(x+2) + 1/(x+3)

d3 = Cell[Definition@f//TraditionalForm//ToBoxes//BoxData];

g3 = HoldForm[Plot[f[x], {x, -5, 5}]]

in3 = Cell[g3//ToBoxes//BoxData];

out3 = Cell[g3//ReleaseHold//ToBoxes//BoxData];

nb = Notebook[{
        d1, out1,
        d2, out2,
        d3, in3, out3
        }];

Export["B1.3.2.nb", nb]
