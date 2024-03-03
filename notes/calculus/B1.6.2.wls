ClearAll["`*"];

f[x_] := Sin'[x]
g[x_] := D[x^2, x] 

d1 = {f, g} //Definition//ToBoxes//BoxData//Cell;

c1 = Integrate[f[g[x]], x] //HoldForm;

in1 = c1//ToBoxes//BoxData//Cell;

out1 = c1//ReleaseHold//ToBoxes//BoxData//Cell;

c2 = Integrate[Exp[-RealAbs[x]], x] //HoldForm;

in2 = c2//ToBoxes//BoxData//Cell;

out2 = c2//ReleaseHold//ToBoxes//BoxData//Cell;

f[x_] := x^3 + 2/3 x - 2;

d3 = f //Definition//ToBoxes//BoxData//Cell;

c3 = {f[0], f'[0], f''[x]} //HoldForm;

in3 = c3//ToBoxes//BoxData//Cell;

out3 = c3//ReleaseHold//ToBoxes//BoxData//Cell;

g4 = Plot[{f[x], f'[x], 2x/3 - 2}, {x, -2, 2}] //HoldForm;

in4 = g4//ToBoxes//BoxData//Cell;

out4 = g4//ReleaseHold//ToBoxes//BoxData//Cell;

c5 = Integrate[Log[x]/x^2, x] // HoldForm;

in5 = c5//ToBoxes//BoxData//Cell;

out5 = c5//ReleaseHold//ToBoxes//BoxData//Cell;

f[x_] = Exp[-x]

d6 = f //Definition//ToBoxes//BoxData//Cell;

c6 = Row[{f'[x], Integrate[f'[Log[x]]/x, x]}, Spacer[20]] //HoldForm;

in6 = c6//ToBoxes//BoxData//Cell;

out6 = c6//ReleaseHold//ToBoxes//BoxData//Cell;

F[x_] = x^2 + C[1]

d7 = F //Definition//ToBoxes//BoxData//Cell;

c7 = Row[{F'[x],
          Integrate[x F'[1-x^2], x]},
         Spacer[20]
     ] //HoldForm;

in7 = c7//ToBoxes//BoxData//Cell;

out7 = c7//ReleaseHold//ToBoxes//BoxData//Cell;

c8 = Integrate[x/(1-x)^3, x] //HoldForm;

in8 = c8//ToBoxes//BoxData//Cell;

out8 = c8//ReleaseHold//Apart //ToBoxes//BoxData//Cell;

c9 = Integrate[(Sin[x]Cos[x])/(1+Sin[x]^4), x] //HoldForm;

in9 = c9//ToBoxes//BoxData//Cell;

out9 = c9//ReleaseHold//ToBoxes//BoxData//Cell;

c10 = Integrate[2^x + x^2, x] //HoldForm;

in10 = c10//ToBoxes//BoxData//Cell;

out10 = c10//ReleaseHold//ToBoxes//BoxData//Cell;

nb = Notebook[{
        d1, in1, out1,
        in2, out2,
        in3, out3,
        in4, out4,
        in5, out5,
        d6, in6, out6,
        d7, in7, out7,
        in8, out8,
        in9, out9,
        in10, out10
        }
     ];

Export["B1.6.2.nb", nb]
