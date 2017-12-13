# <subset> is a subset of AsList(obj)
InstallMethod(IsIdeal, "for a skew brace and a collection", [ IsSkewBrace, IsCollection ], 
function(obj, subset)
  local a, x;

  if IsSkewBrace(subset) then
    if HasParent(subset) and Parent(subset) = obj then
      return true;
    fi;
  fi;

  subset := AsList(subset);

  if Order(Group(List(subset, x->x![1]))) <> Size(subset) then
    return false;
  fi;

  for a in obj do
    for x in subset do
      if not Lambda(a, x) in subset or not a*x*a^-1 in subset or not a+x-a in subset then
        return false;
      fi;
    od;
  od;
  return true;
end);

# <subset> is a subset of AsList(obj)
is_ideal := function(obj, subset)
  local lst, a, x;

  lst := AsList(obj);

  if Order(Group(List(subset, x->x![1]))) <> Size(subset) then
    return false;
  fi;

  for a in lst do
    for x in subset do
      if not Lambda(a, x) in subset or not a*x*a^-1 in subset or not a+x-a in subset then
        return false;
      fi;
    od;
  od;
  return true;
end;

InstallMethod(Ideals, "for a skew brace", [ IsSkewBrace], function(obj)
  local add, sg, l, subset, x, res, tmp;
  l := [];
  add := SkewBraceAList(obj);
  for sg in NormalSubgroups(Group(add)) do 
    subset := List(sg, x->SkewBraceElmConstructor(obj, x));
    if is_ideal(obj, subset) then
      Add(l, subset);
    fi;
  od;
  res := [];
  for x in l do
    tmp := SubSkewBrace(obj, x);
    SetIsIdealInParent(tmp, true);
    Add(res, tmp);
  od;
  return res;
end);

InstallGlobalFunction(SubSkewBrace, function(obj, sub)
  local p, res, add, mul, per, fam, gens;

  p := List(sub, y->[y![1], y^InverseBijective1Cocycle(obj)]);

  add := List(p, x->x[1]); 
  per := Sortex(add);
  mul := Permuted(List(p, x->x[2]), per);
 
  fam := ElementsFamily(FamilyObj(obj)); 
  res := Objectify(NewType(CollectionsFamily(fam), IsSkewBrace and IsAttributeStoringRep), rec());

  SetSize(res, Size(add)); 
  SetSkewBraceAList(res, add);
  SetSkewBraceMList(res, mul);

  gens := SmallGeneratingSet(Group(add));
  if gens = [] then
    SetUnderlyingAdditiveGroup(res, Group(()));
  else
    SetUnderlyingAdditiveGroup(res, Group(gens));
  fi;

  gens := SmallGeneratingSet(Group(mul));
  if gens = [] then
    SetUnderlyingMultiplicativeGroup(res, Group(()));
  else
    SetUnderlyingMultiplicativeGroup(res, Group(gens));
  fi;

  SetParent(res, obj);
  return res;

end);

ideals := function(obj)
  local add, sg, l, subset;
  l := [];
  add := SkewBraceAList(obj);
  for sg in NormalSubgroups(Group(add)) do 
    subset := List(sg, x->SkewBraceElmConstructor(obj, x));
    if is_ideal(obj, subset) then
      Add(l, subset);
    fi;
  od;
  return l;
end;

InstallMethod(IsSimpleSkewBrace, "for a skew brace", [ IsSkewBrace ], 
function(obj)
  return Size(ideals(obj))=2;
end);

InstallMethod(Socle, "for a skew brace", [ IsSkewBrace ], function(obj)
  local add, l;
  add := SkewBraceAList(obj);
  l := List(Center(Group(add)), x->SkewBraceElmConstructor(obj, x));
  return AsIdeal(obj, Filtered(l, a->ForAll(AsList(obj), b->Lambda(a,b)=b)));
end);

skewbrace2solution := function(obj)
  local a, b, x, y, u, v, add, set, tmp_r, tmp_l, lperms, rperms;

  add := AsList(obj);
  set := [1..Size(obj)];

  lperms := [];
  rperms := [];

  for a in AsList(obj) do

    tmp_l := [];
    tmp_r := [];

    for b in AsList(obj) do
      Add(tmp_l, Position(AsList(obj), Lambda(a,b))); 
      Add(tmp_r, Position(AsList(obj), Lambda(a,b)^(-1)*a*b)); 
    od;
    Add(lperms, tmp_l);
    Add(rperms, tmp_r);
  od;

  lperms := List(lperms, PermList);
  rperms := List(TransposedMat(rperms), PermList);

  return Permutations2YB(lperms, rperms); 
end;

yb2permutation := function(obj)
  local perm, x, y, u, v;

  perm := [1..Size(obj)^2];

  for x in [1..Size(obj)] do
    for y in [1..Size(obj)] do
      u := YB_xy(obj, x, y)[1];
      v := YB_xy(obj, x, y)[2];
      perm[x+Size(obj)*y] := u+Size(obj)*v;
    od;
  od;
  return PermList(perm);
end;

InstallMethod(AsIdeal, "for a skew brace and a subset of a skew brace", [ IsSkewBrace, IsCollection ], 
function(obj, subset)
  local res;
  res := SubSkewBrace(obj, subset);
  SetIsIdealInParent(res, true);
  return res;
end);

