void main() {
  int a = 10;
  int b = 20;
  /*

syntax==>>

if(bool condition1){
code if true
}
else if(bool condition2){
code if true
}
else{
code if neither 1 nor 2 is true
}
  */
  if (a == b) {
    print("$a==$b");
  } else if (a > b) {
    print("$a>$b");
  } else {
    if (b >= 20) {
      print("$b is greater than 20");
    }
    print("$b>$a");
  }
  /*
  output
  20 is greater than 20
  20>10
*/

  if (a < b) {
    print("condition 1");
  } else if (a < b) {
    print("consition 2");
  }
  /*
  output
  condition 1
  because program execution is from top to bottom >>>1 true then 1 else check for next
*/

  String s = "suraj";

  if (s.isNotEmpty) {
    print("$s is not empty");
    if (s.length > 1) {
      print(s.length);
      if (s.length > 5) {
        print(s.length);
      }
    }
  }
  /*
  output
  suraj is not empty
  5
*/
}
