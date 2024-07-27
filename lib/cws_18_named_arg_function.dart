// till now we learned positioned argument
// fun(int x,String y,int x)=>then while callinging we need to keep in mind the sequence of the arg

void main() {
  namedArg(age: 18, name: "suraj", isReletion: true, reletion: "brother");
  /*
      output:
      18
      suraj
      true
      brother
  */

  nullableNamedArg(age: 18, name: "suraj", isReletion: false);
  /*
      output
      18
      suraj
      false

  */

  nullableNamedArg(age: 18, name: "shub", isReletion: true, reletion: "bro");
  /*
      output:
      18
      suraj
      true
      brother
  */
}

void namedArg({
  required int age,
  required String name,
  required bool isReletion,
  required String reletion,
}) {
  print(age);
  print(name);
  print(isReletion);
  print(reletion);
}

// so what if we dont to make required anything
void nullableNamedArg({
  required int age,
  required String name,
  required bool isReletion,
  String? reletion,
}) {
  print(age);
  print(name);
  print(isReletion);
  isReletion ? print(reletion) : null;
}
