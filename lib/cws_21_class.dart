void main() {
  //how to call a class and its properties ==>by creating a object(instance of class)
  //1 way.
  MyClass1 obj1 = MyClass1();
  //2 way.
  final obj2 = MyClass2();

//what is object
  print(obj1); //Instance of 'MyClass1'
  print(obj2); //Instance of 'MyClass2'

  //how to access class memeber
  print(obj1.a); //20
  print(obj1.className); //MyClass 1

  print(obj2.a); //20
  print(obj2.className); //MyClass 2
}

// (class is a template or blue-print from which objects are created)
class MyClass1 {
  int a = 20;
  String className = "MyClass 1";
}

class MyClass2 {
  int a = 20;
  String className = "MyClass 2";
}
