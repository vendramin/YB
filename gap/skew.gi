### skew braces
BindGlobal("SkewBraceFamily", NewFamily("SkewBraceFamily"));
#InstallValue(SkewBraceType, NewType(SkewBraceFamily, IsSkewBrace));


InstallMethod(SkewBrace, "for a list of pairs of elements in a group", [IsList], 
function(p)
  local add, mul, per, fam, obj;

  ### <add> is (a permutation representation of) the additive group of the brace
  ### <mul> is the multiplicative group of the brace, 

  add := List(p, x->x[1]); 
  per := Sortex(add);
  mul := Permuted(List(p, x->x[2]), per);
 
  fam := NewFamily("SkewBraceElmFamily", IsSkewBraceElm, IsMultiplicativeElementWithInverse and IsAdditiveElementWithInverse);
  fam!.DefaultType := NewType(fam, IsSkewBraceElmRep);

  obj := Objectify(NewType(CollectionsFamily(fam), IsSkewBrace and IsAttributeStoringRep), rec());
  fam!.Brace := obj;

  SetSize(obj, Size(add)); 
  SetSkewBraceAList(obj, add);
  SetSkewBraceMList(obj, mul);
  SetUnderlyingAdditiveGroup(obj, Group(SmallGeneratingSet(Group(add))));
  SetUnderlyingMultiplicativeGroup(obj, Group(SmallGeneratingSet(Group(mul))));

  return obj;

end);

DeclareOperation("SkewBraceElmConstructor", [IsSkewBrace, IsPerm]);

InstallMethod(SkewBraceElmConstructor, "for a skew brace and an underlying permutation", [ IsSkewBrace, IsPerm ], 
function( obj, perm )
  return Objectify(ElementsFamily(FamilyObj(obj))!.DefaultType, [ perm ]);
end);

InstallMethod( \+,
    "for two elements of a skew brace",
    IsIdenticalObj, [ IsSkewBraceElm, IsSkewBraceElm ],
    function( x, y )
      local fam;
      fam := FamilyObj(x);
      return SkewBraceElmConstructor(fam!.Brace, x![1] * y![1]);
end);

InstallMethod( \=,
    "for two elements of a skew brace",
    IsIdenticalObj, [ IsSkewBraceElm, IsSkewBraceElm ],
    function( x, y )
      return x![1] = y![1];
end);

InstallMethod( \*,
    "for two elements of a skew brace",
    IsIdenticalObj, [ IsSkewBraceElm, IsSkewBraceElm ],
    function( x, y )
      local i, j, obj, mul, add;

      obj := FamilyObj(x)!.Brace;
      add := SkewBraceAList(obj);
      mul := SkewBraceMList(obj);

      i := Position(add, x![1]);
      j := Position(add, y![1]);
      return SkewBraceElmConstructor(obj, add[Position(mul, mul[i]*mul[j])]);
end);

InstallMethod(AdditiveInverseOp, 
    "for an element of a skew brace",
    [ IsSkewBraceElm ],
    function( x )
      return SkewBraceElmConstructor(FamilyObj(x)!.Brace, Inverse(x![1]));
end);

InstallMethod(InverseOp, 
    "for an element of a skew brace",
    [ IsSkewBraceElm ],
    function( x )
      local i, obj, mul, add;

      obj := FamilyObj(x)!.Brace;
      add := SkewBraceAList(obj);
      mul := SkewBraceMList(obj);

      i := Position(add, x![1]);
      return SkewBraceElmConstructor(obj, add[Position(mul, mul[i]^-1)]);
end);

InstallMethod(ZeroOp, 
    "for an element of a skew brace",
    [ IsSkewBraceElm ],
    function( x )
      return SkewBraceElmConstructor(FamilyObj(x)!.Brace, () );
end);

InstallMethod(OneOp, 
    "for an element of a skew brace",
    [ IsSkewBraceElm ],
    function( x )
      return SkewBraceElmConstructor(FamilyObj(x)!.Brace, () );
end);

InstallMethod(ZeroOp, 
    "for an element of a skew brace",
    [ IsSkewBraceElm ],
    function( x )
      return SkewBraceElmConstructor(FamilyObj(x)!.Brace, () );
end);

InstallMethod(ZeroImmutable, 
    "for a skew brace",
    [ IsSkewBrace ],
    function( obj )
      return SkewBraceElmConstructor( obj, () );
end);

InstallMethod(Representative, 
    "for a skew brace",
    [ IsSkewBrace ],
    function( obj )
      return ZeroImmutable( obj );
end);

InstallMethod(Random,
    "for a skew brace",
    [ IsSkewBrace ],
    function( obj )
      return SkewBraceElmConstructor(obj, Random(SkewBraceAList(obj)));
end);

InstallMethod(Enumerator,
    "for a skew brace",
    [ IsSkewBrace ],
    function( obj )
      return AsList(obj);
end);

InstallMethod(AsList, 
    "for a skew brace",
    [ IsSkewBrace ],
    function( obj )
      return List( SkewBraceAList(obj), x->SkewBraceElmConstructor( obj, x ) );
end);

InstallMethod(ViewObj, "for skew braces", [ IsSkewBrace ],
function(obj)
  Print("<skew brace of size ", Size(obj), ">");
end);

InstallMethod(ViewObj, "for skew brace elements", [ IsSkewBraceElm ],
function(x)
  Print("{", x![1], "}");
end);

InstallMethod(PrintObj, "for skew braces", [ IsSkewBrace ],
function(obj)
  if HasIdSkewBrace(obj) then
    Print( "SmallSkewBrace(", IdSkewBrace(obj)[1], ", ", IdSkewBrace(obj)[2], ")");
  else
    Print("<skew brace of size ", Size(obj), ">");
  fi;
end);

#### This function returns true is the <brace> is a two-sided brace
#### This means: (a+b)c+c=ac+bc
#### Equivalent condition: l(a+b)(c)+c=l(a)(c)+l(b)(c), where l(a)(b)=ab-a
InstallMethod(IsTwoSidedSkewBrace, "for a skew brace", [IsSkewBrace], 
function(obj)
  local a, b, c;
  for a in AsList(obj) do 
    for b in AsList(obj) do
      for c in AsList(obj) do 
        if (a+b)*c <> a*c-c+b*c then
          return false;
        fi;
      od;
    od;
  od;
  return true;
end);

InstallMethod(SmallSkewBrace, "for a list of integers", [IsInt, IsInt],
function(size, number)
  local obj, known, implemented, dir, filename;
  known := IsBound(NCBRACES[size]);
  if not known then
    dir := DirectoriesPackageLibrary("YangBaxter", "data")[1];
    filename := Filename(dir, Concatenation("SBsize", String(size), ".g"));
    if IsReadableFile(filename) then
      Read(filename);
    else
      Error("Braces of size ", size, " are not implemented");
    fi;
  fi;
  if number <= NCBRACES[size].implemented then
    obj := SkewBrace(NCBRACES[size].brace[number].perms);
    SetIdSkewBrace( obj, [ size, number ] );
    if size > 15 then
      Unbind(NCBRACES[size]);
    fi;
    return obj;
  else
    Error("there are just ", NrSmallSkewBraces(size), " braces of size ", size);
  fi;
end);

InstallMethod(SmallBrace, "for a list of integers", [IsInt, IsInt],
function(size, number)
  local obj, known, implemented, dir, filename;
  known := IsBound(BRACES[size]);
  if not known then
    dir := DirectoriesPackageLibrary("YangBaxter", "data")[1];
    filename := Filename(dir, Concatenation("Bsize", String(size), ".g"));
    if IsReadableFile(filename) then
      Read(filename);
    else
      Error("Braces of size ", size, " are not implemented");
    fi;
  fi;
  if number <= BRACES[size].implemented then
    obj := SkewBrace(BRACES[size].brace[number].perms);
    SetIdBrace( obj, [ size, number ] );
    if size > 15 then
      Unbind(BRACES[size]);
    fi;
    return obj;
  else
    Error("there are just ", NrSmallBraces(size), " braces of size ", size);
  fi;
end);

InstallMethod(IsSkewBraceImplemented, "for an integer", [IsInt],
function(size)
  local known, implemented, dir, filename;
  known := IsBound(NCBRACES[size]);
  if not known then
    dir := DirectoriesPackageLibrary("YangBaxter", "data")[1];
    filename := Filename(dir, Concatenation("SBsize", String(size), ".g"));
    if IsReadableFile(filename) then
      return true;
    else
      return false;
    fi;
  fi;
  return true;
end);

#### This function returns the number of braces of size <n>
InstallGlobalFunction(NrSmallSkewBraces, 
function(size)
  local dir, filename;
  if size <= 15 then
    return NCBRACES[size].implemented;
  else
    dir := DirectoriesPackageLibrary("YangBaxter", "data")[1];
    filename := Filename(dir, Concatenation("SBsize", String(size), ".g"));
    if IsReadableFile(filename) then
      Read(filename);
      return NCBRACES[size].implemented;
    else
      Error("Skew braces of size ", size, " are not implemented");
    fi;
  fi;
end);

InstallGlobalFunction(NrSmallBraces, 
function(size)
  local dir, filename;
  if size <= 15 then
    return BRACES[size].implemented;
  else
    dir := DirectoriesPackageLibrary("YangBaxter", "data")[1];
    filename := Filename(dir, Concatenation("Bsize", String(size), ".g"));
    if IsReadableFile(filename) then
      Read(filename);
      return BRACES[size].implemented;
    else
      Error("Braces of size ", size, " are not implemented");
    fi;
  fi;
end);

#InstallMethod(SkewBraceLambda, "for a skew brace and two permutations", [ IsSkewBrace, IsPerm, IsPerm],
#function(obj, a, b)
#  return SkewBraceAdd(obj, SkewBraceAInverse(obj, a), SkewBraceMul(obj, a, b));
#end);
#
#InstallMethod(SkewBraceLambdaAsPermutation, "for a skew brace and a permutation", [ IsSkewBrace, IsPerm ],
#function(obj, a)
#  local p, l, x;
#
#  l := AsList(SkewBraceAList(obj));
#  p := [1..Size(obj)];
#
#  for x in [1..Size(obj)] do
#    p[x] := Position(l, SkewBraceLambda(obj, a, l[x]));
#  od;
#
#  return PermList(p);
#end);
#
#InstallMethod(SkewBrace2Solution, "for a skew brace", [ IsSkewBrace ], 
#function(obj)
#  local a, b, x, y, u, v, add, set, tmp_r, tmp_l, lperms, rperms;
#
#  add := Elements(SkewBraceAList(obj));
#  set := [1..Size(obj)];
#
#  lperms := [];
#  rperms := [];
#
#  for a in add do
#
#    tmp_l := [];
#    tmp_r := [];
#
#    for b in add do
#      x := SkewBraceAdd(obj, SkewBraceMul(obj, a, b), SkewBraceAInverse(obj, a));
#      u := Position(add, x);
#      v := Position(add, SkewBraceMul(obj, SkewBraceMul(obj, SkewBraceMInverse(obj, x), a), b));
#      Add(tmp_l, u); 
#      Add(tmp_r, v); 
#    od;
#    Add(lperms, tmp_l);
#    Add(rperms, tmp_r);
#  od;
#
#  lperms := List(lperms, PermList);
#  rperms := List(TransposedMat(rperms), PermList);
#
#  return Permutations2YB(lperms, rperms); 
#end);

InstallMethod(IsClassicalSkewBrace, "for a skew brace", [ IsSkewBrace ], 
function(obj)
  return IsAbelian(Group(SkewBraceAList(obj)));
end);

#### Returns the value of <a> under the image of the 
#### bijective 1-cocycle from the multiplicative group into the 
#### additive group of 
#InstallMethod(Bijective1Cocycle, "for a skew brace and a permutation", [ IsSkewBrace, IsPerm ], 
#function(obj, a)
#  return PreImage(obj!.p, a);
#end);
#
#InstallMethod(InverseBijective1Cocycle, "for a skew brace and a permutation", [ IsSkewBrace, IsPerm ], 
#function(obj, a)
#  return Image(obj!.p, a);
#p := MappingByFunction(ab, gr, x->First(p, y->IsOne(y[1]*Inverse(x)))[2]),
#end);

