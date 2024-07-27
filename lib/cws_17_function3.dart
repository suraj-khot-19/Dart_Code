void main() {
  nullableFun1();
  nullableFun2();

  String name = "suraj";
  printName(name); //suraj khot
  //fun not affect original value
  print(name); //suraj
}

//nullable function
String? nullableFun1() {
  return null;
}

//nullable function may or may not return value
String? nullableFun2() {
  // return; ==>error
  return '';
}

//logic
void printName(String name) {
  String name = "suraj khot";
  print(name);
}
