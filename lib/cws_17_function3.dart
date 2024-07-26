void main() {
  nullableFun1();
  nullableFun2();

  String name = "suraj";
  print(name); //suraj
  printName(name); //suraj khot
}

//nullable function
String? nullableFun1() {
  return null;
}

//nullable function
String? nullableFun2() {
  // return; ==>error
  return '';
}

//logic
void printName(String name) {
  String name = "suraj khot";
  print(name);
}
