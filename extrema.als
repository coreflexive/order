open common

-- Extremal Elements
pred below(A: set univ, R: A->A, S: set A, y: A) {
	all s: S | y->s in R
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
