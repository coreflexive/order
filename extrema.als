open common

-- Extremal Elements

-- Infimum (Greatest Lower Bound)
pred below(A: set univ, R: A->A, S: set A, y: A) {
	all s: S | y->s in R
}

fun below(A: set univ, R: A->A, S: set A) : set A {
	{ y: A | below[A,R,S,y] }
}

pred infimum(A: set univ, R: A->A, S: set A, x: A) {
	all y: A | below[A,R,S,y] iff y->x in R
}

fun inf(A: set univ, R: A->A, S: set A) : set A {
	{ x: A | infimum[A,R,S,x] }
}

fun top(A: set univ, R: A->A) : set A {
	inf[A,R,none]
}


-- Supremum (Least Upper Bound)
pred above(A: set univ, R: A->A, S: set A, y: A) {
	all s: S | s->y in R
}

fun above(A: set univ, R: A->A, S: set A) : set A {
	{ y: A | above[A,R,S,y] }
}

pred supremum(A: set univ, R: A->A, S: set A, x: A) {
	all y: A | above[A,R,S,y] iff x->y in R
}

fun sup(A: set univ, R: A->A, S: set A) : set A {
	{ x: A | supremum[A,R,S,x] }
}

fun bot(A: set univ, R: A->A) : set A {
	sup[A,R,none]
}
