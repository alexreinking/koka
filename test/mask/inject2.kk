
fun xforeach-indexed( xs : list<a>, action : (int,a) -> e () ) : e ()
{
  val i = ref(0)
  xs.foreach fn(x) {
    val j = !i;
    mask<read>{ mask<write>{ action(j,x) } }
    i := !i+1
  }
}

fun main() {
  var acc := 0
  [0,41].xforeach-indexed fn(idx,x) {
    acc := acc + idx + x
  }
  println(acc)
}
