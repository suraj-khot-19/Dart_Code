void main() {
  printVoid(); //void function
  print(returnInt()); //12
  print(returnString()); //returning string
  print(returnDouble()); //60.0

  //we can store the data from function
  int x1 = returnInt();
  final x2 = returnInt();
  //we can not make variable as constant
  // const x3 = returnInt(); Methods can't be invoked in constant expressions
  print(
      "returing int using storing in variable: $x1"); //returing int using storing in variable: 12
  print(
      "returing int using storing in variable: $x2"); //returing int using storing in variable: 12

  //what if we want to return more than 1 values from function
  print(multiValues()); //(10, string, false, 50.5)
}

//return type void
void printVoid() {
  print("void function");
}

//return type int
int returnInt() {
  return 10 + 2;
}

//return type string
String returnString() {
  return "returning String";
}

//return type double
double returnDouble() {
  return 10 + 50.0;
}

//returning mltiple values
(int, String, bool, double) multiValues() {
  return (10, "string", false, 50.5);
}
