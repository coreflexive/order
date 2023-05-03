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

-- Least (min)
pred least(A: set univ, R: A->A, Y: set A, x: A) {
	x in Y
	x in below[A,R,Y]
}

fun least(A: set univ, R: A->A, Y: set A) : set Y {
	Y & below[A,R,Y]
}

fun min(A: set univ, R: A->A, Y: set A) : set Y {
	least[A,R,Y]
}

-- Greatest (max)
pred greatest(A: set univ, R: A->A, Y: set A, x: A) {
	x in Y
	x in above[A,R,Y]
}

fun greatest(A: set univ, R: A->A, Y: set A) : set Y {
	Y & above[A,R,Y]
}

fun max(A: set univ, R: A->A, Y: set A) : set Y {
	greatest[A,R,Y]
}
