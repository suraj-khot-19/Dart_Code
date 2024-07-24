void main() {
  String s = "SurajKhot";
  int len = s.length;
  int i = 0;
  do {
    print("$i: ${s[i]}");
    i++;
  } while (i < len);

  //so what is difference
  // while=>check condition then print
  // do while=>print first then check condition

  print("");

  // ex
  int j = 0;
  do {
    print("$j ${s[j]}");
    i++;
  } while (j != j);
  /**
    output:
      0 S

      conditon is wrong still printing it haaa...
   */
}
