open extrema

pred meet_semilattice(A: set univ, R: A->A) {
	partial_order[A,R]

	all a,b: A | some inf[A,R,a+b]
}

pred join_semilattice(A: set univ, R: A->A) {
	partial_order[A,R]

	all a,b: A | some sup[A,R,a+b]
}

pred lattice(A: set univ, R: A->A) {
	meet_semilattice[A,R]
	join_semilattice[A,R]
}
