#! @Chapter Ideals and left ideals
#! In this section we describe several functions related 
#! to ideals and left ideals of skew braces. References: 
#! <Cite Key="MR3647970"/> and <Cite Key="MR3763907"/>.

#! @Section Left ideals
#! An left ideal $I$ of a skew brace $A$ is a subgroup $I$ of
#! the additive group of $A$ such that $\lambda_a(I)\subseteq I$ for all $a\in A$.

#! @Arguments obj
#! @Returns a list with the left ideals of the skew brace <A>obj</A>
#! @Description
DeclareAttribute("LeftIdeals", IsSkewbrace);

#! @Arguments obj
#! @Returns <A>true</A> if the subset is a left ideal of <A>obj</A>
#! @Description
#! @ExampleSession
#! gap> br := SmallBrace(8,4);
#! <brace of size 8>
#! gap> leftideals := LeftIdeals(br);
#! [ <brace of size 8>, <brace of size 4>, <brace of size 2>, <brace of size 1> ]
#! gap> List(left_ideals, x->IsLeftIdeal(br, x));
#! [ true, true, true, true ]
#! gap> List(left_ideals, IdBrace);
#! [ [ 8, 4 ], [ 4, 1 ], [ 2, 1 ], [ 1, 1 ] ]
#! @EndExampleSession
DeclareOperation("IsLeftIdeal", [ IsSkewbrace, IsCollection ]);

#! @Section Ideals
#! An ideal $I$ of a skew brace $A$ is a normal subgroup $I$ of
#! the additive group of $A$ such that $\lambda_a(I)\subseteq I$ and $a\circ I=I\circ a$ for all $a\in A$.
#! @Arguments obj,subset
#! @Returns <A>true</A> if the <A>subset</A> is a left ideal of <A>obj</A>
#! @Description
#! @ExampleSession
#! gap> br := SmallBrace(8,4);
#! <brace of size 8>
#! gap> ideals := LeftIdeals(br);
#! [ <brace of size 8>, <brace of size 4>, <brace of size 2>, <brace of size 1> ]
#! gap> List(left_ideals, x->IsLeftIdeal(br, x));
#! [ true, true, true, true ]
#! gap> List(left_ideals, IdBrace);
#! [ [ 8, 4 ], [ 4, 1 ], [ 2, 1 ], [ 1, 1 ] ]
#! @EndExampleSession
DeclareOperation("IsIdeal", [ IsSkewbrace, IsCollection ]);

#! @Arguments obj
#! @Returns a list with the ideals of the skew brace <A>obj</A>
#! @Description
DeclareAttribute("Ideals", IsSkewbrace);

#! 
DeclareOperation("AsIdeal", [ IsSkewbrace, IsCollection ]);

#! @Arguments obj,subset
#! @Returns the ideal of <A>obj</A> generated by the given <A>subset</A>
#! @Description 
#! The ideal of a skew brace $A$ generated by a subset $X$ is the intersection
#! of all the ideals of $A$ containing $X$.
#! @ExampleSession
#! gap> br := SmallSkewbrace(6,6);;
#! gap> AsList(br);
#! [ <()>, <(1,2,3)(4,5,6)>, <(1,3,2)(4,6,5)>, <(1,4)(2,5)(3,6)>, 
#!   <(1,5,3,4,2,6)>, <(1,6,2,4,3,5)> ]
#! gap> IdealGeneratedBy(br, [last[2]]);
#! <brace of size 3>
#! @EndExampleSession
DeclareOperation("IdealGeneratedBy", [ IsSkewbrace, IsCollection ]);

#! @Arguments ideal1,ideal2
#! @Returns the intersection of <A>ideal1</A> and <A>ideal2</A> 
#! @Description
#! @ExampleSession
#! gap> br := SmallSkewbrace(6,6);;
#! gap> Ideals(br);
#! [ <brace of size 6>, <brace of size 2>, <brace of size 3>, <brace of size 1> ]
#! gap> IntersectionOfTwoIdeals(last[2],last[3]);
#! <brace of size 1>
#! @EndExampleSession
DeclareOperation("IntersectionOfTwoIdeals", [ IsSkewbrace and IsIdealInParent, IsSkewbrace and IsIdealInParent ]);

#! @Arguments ideal1,ideal2
#! @Returns the sum of <A>ideal1</A> and <A>ideal2</A> 
#! @Description
#! @ExampleSession
#! gap> br := SmallSkewbrace(6,6);;
#! gap> Ideals(br);
#! [ <brace of size 6>, <brace of size 2>, <brace of size 3>, <brace of size 1> ]
#! gap> SumOfTwoIdeals(last[2],last[3]);
#! <brace of size 6>
#! @EndExampleSession
DeclareOperation("SumOfTwoIdeals", [ IsSkewbrace and IsIdealInParent, IsSkewbrace and IsIdealInParent ]);

#! @Section Sequences (left) ideals
#! @Arguments obj
#! @Returns the left ideals of the left series of <A>obj</A>
#! @Description
#! The left series of a skew brace $A$ is defined recursively as 
#! $A^1=A$ and $A^{n+1}=A*A^n$ for $n\geq1$, where $a*b=\lambda_a(b)-b$. Each
#! $A^n$ is a left ideal.
#! @ExampleSession
#! gap> br := SmallSkewbrace(8,20);
#! <skew brace of size 8>
#! gap> LeftSeries(br);
#! [ <skew brace of size 8>, <brace of size 2>, <brace of size 1> ]
#! @EndExampleSession
DeclareAttribute("LeftSeries", IsSkewbrace);

#! @Arguments obj
#! @Returns the ideals of the right series of <A>obj</A>
#! @Description
#! The right series of a skew brace 0$A$ is defined recursively as 
#! $A^{(1)}=A$ and $A^{(n+1)}=A*A^{(n)}$ for $n\geq1$, where $a*b=\lambda_a(b)-b$
#! @ExampleSession
#! gap> br := SmallSkewbrace(8,20);
#! <skew brace of size 8>
#! gap> RightSeries(br);
#! [ <skew brace of size 8>, <brace of size 2>, <brace of size 1> ]
#! @EndExampleSession
DeclareAttribute("RightSeries", IsSkewbrace);

#! @Arguments obj
#! @Returns <A>true</A> if the skew brace <A>obj</A> is left nilpotent. 
#! @Description
#! A skew brace $A$ is said to be left nilpotent
#! if there exists $n\geq1$ such that $A^n=0$.
#! @ExampleSession
#! gap> IsLeftNilpotent(SmallBrace(8,18));
#! true
#! gap> IsLeftNilpotent(SmallBrace(12,2));
#! false
#! @EndExampleSession
DeclareProperty("IsLeftNilpotent", IsSkewbrace);

#! @Arguments obj
#! @Returns <A>true</A> if the skew brace <A>obj</A> is simple.
#! @Description
#! A skew brace $A$ is said to be simple if $\{0\}$ and $A$ are its only ideals.
#! @ExampleSession
#! gap> IsSimple(SmallSkewbrace(12,22));
#! true
#! gap> IsSimple(SmallSkewbrace(12,21));
#! false
#! @EndExampleSession! 
DeclareProperty("IsSimpleSkewbrace", IsSkewbrace);

#! @Arguments obj
#! @Returns <A>true</A> if the skew brace <A>obj</A> is right nilpotent. 
#! @Description
#! A skew brace $A$ is said to be right nilpotent
#! if there exists $n\geq1$ such that $A^{(n)}=0$.
#! @ExampleSession
#! gap> IsRightNilpotent(SmallBrace(8,18));
#! false
#! gap> IsRightNilpotent(SmallBrace(12,2));
#! true
#! @EndExampleSession
DeclareProperty("IsRightNilpotent", IsSkewbrace);

#! @Arguments obj
#! @Returns the list of right or left nilpotent ideals of <A>obj</A>
#! @Description 
#! An ideal $I$ of a skew brace $A$ is said to be left if
#! it is left nilpotent as a skew brace.
DeclareAttribute("LeftNilpotentIdeals", IsSkewbrace);

#! @Arguments obj
#! @Returns the list of right or left nilpotent ideals of <A>obj</A>
#! @Description 
#! An ideal $I$ of a skew brace $A$ is said to be right nilpotent if
#! An ideal $I$ of a skew brace $A$ is said to be left if
#! it is right nilpotent as a skew brace.
#! @ExampleSession
#! gap> br := SmallBrace(8,18);;
#! gap> IsLeftNilpotent(br);
#! true
#! gap> LeftNilpotentIdeals(br);
#! [ <brace of size 8>, <brace of size 4>, <brace of size 1> ]
#! gap> IsRightNilpotent(br);
#! false
#! gap> RightNilpotentIdeals(br);
#! [ <brace of size 4>, <brace of size 1> ]
#! @EndExampleSession
DeclareAttribute("RightNilpotentIdeals", IsSkewbrace);

#! @Arguments obj,bound 
#! @Returns a list of <A>bound</A> left ideals of the Smoktunowicz's series of <A>obj</A>
#! @Description
#! The Smoktunowicz's series of a skew brace $A$ is defined recursively as 
#! $A^{[1]}=A$ and 
#! $A^{[n+1]}$ is the additive subgroup of $A$ generated by $A^{[i]}*A^{[n+1-i]}$ for $1\leq i+j\leq n+1$, 
#! where $a*b=\lambda_a(b)-b$. 
#! @ExampleSession
#! gap> br := SmallBrace(16,145);;
#! gap> SmoktunowiczSeries(br,4);
#! [ <brace of size 16>, <brace of size 8>, <brace of size 4>, <brace of size 2>,
#!   <brace of size 2> ]
#! gap> SmoktunowiczSeries(br,5);
#! [ <brace of size 16>, <brace of size 8>, <brace of size 4>, <brace of size 2>,
#!   <brace of size 2>, <brace of size 1> ]
#! @EndExampleSession
DeclareOperation("SmoktunowiczSeries", [IsSkewbrace, IsInt]);

#! @Arguments obj
#! @Returns the ideals of the socle series of <A>obj</A>
#! @Description
#! The socle of a skew brace $A$ is the ideal $\ker\lambda\cap Z(A,+)$. 
#! @ExampleSession
#! gap> Socle(SmallSkewbrace(6,2));
#! <brace of size 1>
#! gap> Socle(SmallBrace(8,20));
#! <brace of size 8>
#! gap> Socle(SmallBrace(8,2));
#! <brace of size 4>
#! @EndExampleSession
DeclareAttribute("Socle", IsSkewbrace);

#! @Section Mutipermutation skew braces
#! @Arguments obj
#! @Returns the socle series of <A>obj</A>
#! @Description
#! The socle series of a skew brace $A$ is defined recursively as 
#! $A_1=A$ and $A_{n+1}=A_n/\mathrm{Soc}(A_n)$, see <Cite Key="MR3763907"/>.
DeclareAttribute("SocleSeries", IsSkewbrace);

#! @Arguments obj
#! @Returns the multipermutation level of the skew brace <A>obj</A>
#! @Description
#! The multipermutation level of a skew brace $A$ is defined as the smallest
#! positive integer $n$ such that the $n$-th term 
#! $A_n$ of the socle series has only one element, see 
#! Definition 5.17 of <Cite Key="MR3763907"/>.
#! @ExampleSession
#! gap> br := SmallBrace(8,20);;
#! gap> SocleSeries(br);
#! [ <brace of size 8>, <brace of size 1> ]
#! gap> MultipermutationLevel(br);
#! 2
#! @EndExampleSession
DeclareAttribute("MultipermutationLevel", IsSkewbrace);

#! @Arguments obj
#! @Returns <A>true</A> if the skew brace <A>obj</A> has finite multipermutation
#! level and <A>false</A> otherwise
#! @Description
DeclareProperty("IsMultipermutation", IsSkewbrace);

#! @Arguments obj
#! @Returns <A>true</A> if the skew brace <A>obj</A> has finite multipermutation
#! level and <A>false</A> otherwise
#! @Description
DeclareAttribute("Fix", IsSkewbrace);

#! @Arguments obj
#! @Returns the kernel of the map $\lambda$ as a subset of elements of the skew brace <A>obj</A>.
#! @Description
#! @ExampleSession
#! gap> br := SmallBrace(6,1);;
#! gap> KernelOfLambda(br);
#! [ <()>, <(1,2,3)(4,5,6)>, <(1,3,2)(4,6,5)> ]
#! @EndExampleSession
DeclareAttribute("KernelOfLambda", IsSkewbrace);

#! @Arguments obj,ideal
#! @Returns the quotient <A>obj</A> by <A>ideal</A>
#! @Description
#! @ExampleSession
#! gap> br := SmallBrace(8,10);;
#! gap> ideals := Ideals(br);;
#! gap> Quotient(br, ideals[2]);
#! <brace of size 4>
#! gap> br/ideals[5];
#! <brace of size 2>
#! @EndExampleSession
DeclareOperation("Quotient", [IsSkewbrace, IsSkewbrace]);

#! @Section Prime and semiprime ideals
#! @Arguments obj
#! @Returns <A>true</A> if the skew brace <A>obj</A> is prime
#! @Description
#! A skew brace $A$ is said to be prime if for all non-zero ideals $I$ and $J$ one has
#! $I*J\ne 0$ 
#! @ExampleSession
#! gap> IsPrimeBrace(SmallBrace(24,12));
#! false
#! gap> IsPrimeBrace(SmallBrace(24,94));
#! true
#! @EndExampleSession
DeclareProperty("IsPrimeBrace", IsSkewbrace);

#! @Arguments obj
#! @Returns <A>true</A> if the ideal <A>obj</A> is prime
#! @Description
#! An ideal $I$ of a skew brace $A$ is said to be prime if $A/I$ is a prime skew brace.
#! @ExampleSession
#! gap> br := SmallBrace(24,94);
#! <brace of size 24>
#! gap> IsPrimeBrace(br);
#! true
#! gap> Ideals(br);
#! [ <brace of size 24>, <brace of size 1> ]
#! gap> IsPrimeIdeal(last[2]);
#! true
#! @EndExampleSession
DeclareProperty("IsPrimeIdeal", IsSkewbrace and IsIdealInParent);

#! @Arguments obj
#! @Returns the list of prime ideals of the skew brace <A>obj</A> 
#! @Description
#! @ExampleSession
#! gap> PrimeIdeals(SmallBrace(24,94));
#! [ <brace of size 24>, <brace of size 1> ]
#! @EndExampleSession
DeclareAttribute("PrimeIdeals", IsSkewbrace);

#! @Arguments obj
#! @Returns <A>true</A> if the skew brace <A>obj</A> is semiprime
#! @Description
#! An ideal $I$ of a skew brace $A$ is said to be semiprime if $A/I$ is a semiprime skew brace.
#! @ExampleSession
#! gap> br := DirectProductSkewbraces(SmallSkewbrace(12,22),SmallSkewbrace(12,22));;
#! gap> IsSemiprime(br);
#! true
#! @EndExampleSession
DeclareAttribute("IsSemiprime", IsSkewbrace);

#!
#! @Arguments obj
#! @Returns <A>true</A> if the ideal <A>obj</A> is semiprime
#! @Description
#! @ExampleSession
#! gap> SemiprimeIdeals(SmallSkewbrace(12,24));
#! [ <skew brace of size 12> ]
#! gap> IsSemiprimeIdeal(last[1]);
#! true
#! @EndExampleSession
DeclareAttribute("IsSemiprimeIdeal", IsSkewbrace and IsIdealInParent);

#!
#! @Arguments obj
#! @Returns the list of semiprime ideals of the skew brace <A>obj</A>
#! @Description
#! @ExampleSession
#! gap> SemiprimeIdeals(SmallSkewbrace(12,22));
#! [ <skew brace of size 12>, <brace of size 1> ]
#! gap> SemiprimeIdeals(SmallSkewbrace(12,24));
#! [ <skew brace of size 12> ]
#! @EndExampleSession
DeclareAttribute("SemiprimeIdeals", IsSkewbrace);

#! @Arguments obj
#! @Returns the Baer radical of the skew brace <A>obj</A>
#! @Description
#! @ExampleSession
#! gap> br := SmallSkewbrace(6,2);;
#! gap> BaerRadical(br);
#! <skew brace of size 6>
#! @EndExampleSession
DeclareAttribute("BaerRadical", IsSkewbrace);

#! @Arguments obj
#! @Returns <A>true</A> if the skew brace <A>obj</A> is ia Baer radical skew brace.
#! @Description
#! A skew brace $A$ is said to be Baer radical if $A=B(A)$, where
#! $B(A)$ is the Baer radical of $A$ (i.e., the intersection of all prime ideals of $A$).
#! @ExampleSession
#! gap> br := SmallSkewbrace(6,2);;
#! gap> IsBaer(br);
#! true
#! @EndExampleSession
DeclareProperty("IsBaer", IsSkewbrace);

#! @Arguments obj
#! @Returns the Wedderburn radical of the skew brace <A>obj</A>
#! @Description The Wedderburn radical of a skew brace is the intersection of all its prime ideals
#! @ExampleSession
#! gap> br := SmallSkewbrace(6,2);;
#! gap> WedderburnRadical(br);
#! <brace of size 3>
#! @EndExampleSession
DeclareAttribute("WedderburnRadical", IsSkewbrace);

#! @Arguments obj
#! @Returns a list with the solvable series of the skew brace <A>obj</A>
#! @Description
#! The solvable series of a skew brace $A$ is defined recursively as 
#! $A_{1}=A$ and $A_{n+1}=A_{n}*A_{n}$ for $n\geq1$, where $a*b=\lambda_a(b)-b$
#! @ExampleSession
#! gap> br := SmallSkewbrace(8,20);;
#! gap> IsSolvable(br);
#! true
#! gap> SolvableSeries(br);
#! [ <skew brace of size 8>, <brace of size 2>, <brace of size 1> ]
#! gap> br := SmallSkewbrace(12,23);;
#! gap> IsSolvable(br);
#! false
#! @EndExampleSession
DeclareAttribute("SolvableSeries", IsSkewbrace);

#! @Arguments obj,ideal
#! @Returns <A>true</A> if <A>ideal</A> is a minimal ideal of <A>obj</A>
#! An ideal $I$ of $A$ is said to be **minimal** if does not
#! contain any other ideal of $A$. 
#! To check if an ideal $I$ of $A$ is minimal, one computes the ideals
#! of $I$ and keep only those that are simple as a skew brace.
DeclareProperty("IsMinimalIdeal", IsSkewbrace and IsIdealInParent);

#! @Arguments obj
#! @Returns a list of minimal ideals of the skew brace <A>obj</A>
#! @Description
DeclareAttribute("MinimalIdeals", IsSkewbrace);


#! @DoNotReadRestOfFile

#! @Arguments obj
#! @Returns true if the skew brace <A>obj</A> is solvable 
#! @Description
#! A skew brace $A$ is solvable if there exists some $n$ such that $A_{\{n\}}=\{0\}$. 
#! @ExampleSession
#! gap> br := SmallSkewbrace(8,20);;
#! gap> IsSolvable(br);
#! true
#! gap> SolvableSeries(br);
#! [ <skew brace of size 8>, <brace of size 2>, <brace of size 1> ]
#! gap> br := SmallSkewbrace(12,23);;
#! gap> IsSolvable(br);
#! false
#! gap> SolvableSeries(br);
#! [ <skew brace of size 12> ]
#! @EndExampleSession
# DeclareProperty("IsSolvable", IsSkewbrace);

DeclareGlobalFunction("SubSkewbrace");

#! @Arguments obj
#! @Returns the ideal $A^{(2)}=A^2=A*A$ of the skew brace $A$
#! @Description
#! $A^{(2)}$ is the second term of the right series, where $A*A$ is defined as the additive subgroup of $A$ generated
#! by all the elements $x*y$ for $x,y\in A$. 
#! @ExampleSession
#! gap> br := SmallSkewbrace(8,14);
#! <brace of size 8>
#! gap> RightSeries(br);
#! [ <brace of size 8>, <brace of size 2>, <brace of size 1> ]
#! gap> DerivedSubSkewbrace(br);
#! <brace of size 2>
#! @EndExampleSession
DeclareAttribute("DerivedSubSkewbrace", IsSkewbrace);

#! @Arguments obj
#! @Returns <A>true</A> if the skew brace <A>obj</A> is perfect.
#! @Description
#! A skew brace $A$ is said to be perfect if $A^{(2)}=A$.
#! @ExampleSession
#! @EndExampleSession
#! gap> br := SmallSkewbrace(8,14);
#! <brace of size 8>
#! gap> IsPerfect(br);
#! false
#! gap> br := SmallSkewbrace(12,22);
#! <skew brace of size 12>
#! gap> IsPerfect(br);
#! true
#DeclareProperty("IsPerfect", IsSkewbrace);
