pred reflexive(s: set univ, r: s->s) {
  iden:>s in r
}

pred irreflexive(s: set univ, r: s->s) {
  no iden:>s & r
}

pred coreflexive(s: set univ, r: s->s) {
  r in iden:>s
}

pred transitive(s: set univ, r: s->s) {
  r.r in r
}

pred antisymmetric(s: set univ, r: s->s) {
  r & ~r in iden
}

pred symmetric(s: set univ, r: s->s) {
  r in ~r
}

pred asymmetric(s: set univ, r: s->s) {
  no r & ~r
}

pred connected(s: set univ, r: s->s) {
  r + ~r = s->s
}


pred tolerance(s: set univ, r: s->s) {
  reflexive[s,r]
  symmetric[s,r]
}

pred preorder(s: set univ, r: s->s) {
  reflexive[s,r]
  transitive[s,r]
}


pred partial_order(s: set univ, r: s->s) {
  preorder[s,r]
  antisymmetric[s,r]
}

pred equivalence(s: set univ, r: s->s) {
  preorder[s,r]
  symmetric[s,r]
}


pred linear(s: set univ, r: s->s) {
  partial_order[s,r]
  connected[s,r]
}

pred discrete(s: set univ, r: s->s) {
  r = iden:>s
}

pred strict_order(V: set univ, C: V->V) {
  transitive[V,C]
  asymmetric[V,C]
}

pred comparable(A: set univ, R: A->A, x,y: A) {
	x->y in R + ~R
}

pred incomparable(A: set univ, R: A->A, x,y: A) {
	not comparable[A,R,x,y]
}
