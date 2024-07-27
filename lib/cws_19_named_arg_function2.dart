void main() {
  final named = namedArg(18, "suraj", true, "bro");
  print(named.$1); //18
  print(named); //(18, suraj, true, bro)

  final named2 = namedArg2(18, "name", true, "reletion");
  print(named2); //(age: 18, isreletion: true, name: name, reletion: reletion)
  print(named2.age); //18

//!error
  //final named3 = namedArg3(18, "name",false);
  ///4 positional arguments expected by 'namedArg3', but 3 found.
}

//till now we are passing things like this
(int, String, bool, String) namedArg(
    int age, String name, bool isReletion, String reletion) {
  return (age, name, isReletion, reletion);
}

// but what if we want to return it named
({int age, String name, bool isreletion, String reletion}) namedArg2(
    int age, String name, bool isReletion, String reletion) {
  return (
    age: age,
    name: name,
    isreletion: isReletion,
    reletion: reletion,
  );
}

// but what if we want to return it named with nullable ==> so we cant
({int age, String name, bool isreletion, String? reletion}) namedArg3(
    int age, String name, bool isReletion, String? reletion) {
  return (
    age: age,
    name: name,
    isreletion: isReletion,
    reletion: reletion,
  );
}
