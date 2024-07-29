void main() {
  //object
  final obj = MyClass1(23, "suraj");
  /*
    this is a constructor
    This : Instance of 'MyClass1'
    23
    suraj
    My Class 1 method called from constructor
  */

  print(obj.age); //23
  print(obj.name); //suraj
  obj.age = 52;
  obj.name = "papa";
  print(obj.age); //52
  print(obj.name); //papa

  //!intrview corner
  //?if we not create a instance one time

  print(MyClass2().age); //20
  print(MyClass2().name); //xyz

  //changing values
  MyClass2().age = 60;
  MyClass2().name = "abc";
  //printing
  print(MyClass2().age); //?20
  print(MyClass2().name); //?xyz
  //changing
  MyClass2().age = 80;
  MyClass2().name = "mno";
  // printing
  print(MyClass2().age); //?20
  print(MyClass2().name); //?xyz
  //?so always prefer to create a instance of variable only one time
  //!everytime it create a new memory as new keyword in java creates new memory so value not directly changing it just create a block of memory for each time instanciation
}

class MyClass1 {
  int age;
  String name;
  //when object is created what is first called is a constructor and is act like a method
  MyClass1(this.age, this.name) {
    print("this is a constructor");
    print("this: $this");
    print(age);
    print(name);
    myClass1Method();
  }
  void myClass1Method() {
    print("My Class 1 method called from constructor");
  }
}

class MyClass2 {
  int age = 20;
  String name = "xyz";
}
