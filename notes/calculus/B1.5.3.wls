(* r[t_] := Sqrt[12/(1+Sin[t]Cos[t])] *)

(* d1 = Cell[r//Definition//TraditionalForm//ToBoxes//BoxData]; *)

g1 = HoldForm[PolarPlot[Sqrt[12/(1+Sin[t]Cos[t])], {t, 0, 2Pi}]]

in1 = Cell[g1//ToBoxes//BoxData];

out1 = Cell[g1//ReleaseHold//ToBoxes//BoxData];

g2 = HoldForm[Plot[x Sin[x] + Cos[x] - x^2, {x, -Pi, Pi}]]

in2 = Cell[g2//ToBoxes//BoxData];

out2 = Cell[g2//ReleaseHold//ToBoxes//BoxData];

g3 = Manipulate[Plot[k ArcTan[x] - x, {x, -5, 5}], {k, 1, 5}]

out3 = Cell[g3//ToBoxes//BoxData];

nb = Notebook[{
        in1, out1,
        in2, out2,
        out3
        }];

Export["B1.5.3.nb", nb]
