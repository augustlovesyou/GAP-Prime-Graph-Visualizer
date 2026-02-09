LoadPackage("Digraphs");



order:= Size(G);

Print("Order of G is ");
Display(order);
prime_divs:= PrimeDivisors(order);

subgroups:= Filtered(LowIndexSubgroups(G,order),IsCyclic);
l:=Set(List(subgroups,Size));

if(IsCyclic(G)) then
	Display("G is Cyclic");
else
	Display("G is not Cyclic");
fi;


if(IsNilpotentGroup(G)) then
	Display("G is Nilpotent");
else
	Display("G is not Nilpotent");
fi;


if(IsSolvableGroup(G)) then
	Display("G is Solvable");
else
	Display("G is not Solvable");
fi;


if(IsSimple(G)) then
	Display("G is Simple");
else
	Display("G is not Simple");
fi;

#Display(prime_divs);
#Display(subgroups);
#Display(l);

source:=[];
range:=[];
for a in prime_divs do
	for b in prime_divs do
		if ((a*b) in l) and (not a=b) then
			Add(source,a);
			Add(range,b);
		fi;
	od;
od;

#Display(source);
#Display(range);




D:= Digraph(prime_divs,source,range);
D:= MaximalAntiSymmetricSubdigraph(D);

d:=DotVertexLabelledDigraph(D);
d:=ReplacedString(d,"digraph","graph");
d:=ReplacedString(d,"->","--");
Splash(d);
QUIT;
