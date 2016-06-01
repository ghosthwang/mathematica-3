(* pol.m : formatting polynomial, (my first mathematica package!) *)
BeginPackage["pol`"];
pol::usage="
 pol[pol, var] : formatting of polynomial\n
 \n
  \tpol: polynomial to be formatted\n
  \tvar: running variable\n
 \n
 Dec 07 2004  martin.pos@philips.com  - creation\n
";
 Begin["`Private`"];
 
  pol[pol__,var_] := 
   Module[{p, n, d},
    p = FullSimplify[pol];
    n = Numerator[pol];
    d = Denominator[pol];
    Divide[
     Collect[n, var, Simplify],
     Collect[d, var, Simplify]
    ]
   ];
 End[ ];

EndPackage[ ];
