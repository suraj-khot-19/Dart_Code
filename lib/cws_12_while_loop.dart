void main() {
  String s = "SurajKhot";
  int x = s.length;
  int i = 0;
  while (i < x) {
    print("$i: ${s[i]}");
    i++;
  }
  /*
  output :
    0: S
    1: u
    2: r
    3: a
    4: j
    5: K
    6: h
    7: o
    8: t
  */
  print("");
  int k = 0;
  while (k < x) {
    if (k == 5) {
      k++;
      continue;
    }
    print("$k: ${s[k]}"); //skipping "k" in khot
    k++;
  }
  /*
  output
    0: S
    1: u
    2: r
    3: a
    4: j
    6: h
    7: o
    8: t

  */
}
