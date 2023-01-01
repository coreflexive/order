fun strict(s: set univ, r: s->s) : s->s {
  r - iden:>s
}

fun cover(s: set univ, r: s->s) : s->s {
  let str = strict[s,r] {
    str - str.str
  }
}
