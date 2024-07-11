void main() {
  /**
   * synax 
   * <final/const/var> <variblename> value ;
   */

////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
//1. var
//means we may pass int/double/string as an value it may varry
  var a = 20;
  a = a + 30;
  print(a); //50

  var b = 50;
  //  b= b + 60.50;
  //A value of type 'double' can't be assigned to a variable of type 'int'.Try changing the type of the variable, or casting the right-hand type to 'int'.
  b = b + 60; //b+=60;
  print(b); //110

//types
  print(a.runtimeType); //int
  print(b.runtimeType); //int

  // var String s = "suraj";
  //Variables can't be declared using both 'var' and a type name.Try removing 'var.'

  var s = "suraj";
  s = "${s}khot";
  print(s); //surajkhot
  print(s.runtimeType); //string

////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
//2. final
// user may or may not know the value at compile(means while typing the code) time and cant be set once declared
  final x = 20;
  // x = x + 20;//The final variable 'x' can only be set once.
  print(x); //cant set > 20

//we may or may not write a data type before variable
  final String suraj = "suraj";
  print(suraj); //suraj

////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
// 3. const
//means user must know the value at initalizing it at compile time
  const m = 20.5;

  // m=m + 20;
  //Constant variables can't be assigned a value.Try removing the assignment, or remove the modifier 'const' from the variable.
  print(m);
  print(m.runtimeType); //double

////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
  ///then what is diffrence btn const and final

  //1.const

  //const time = DateTime.now();//it is not knowing at compile time
  /*
The constructor being called isn't a const constructor.
Try removing 'const' from the constructor 
Const variables must be initialized with a constant value.
Try changing the initializer to be a constant expression.
  */

  //2.final
  // if we dont know the value and we dont want to change its value in program execution then we final
  final time = DateTime.now(); //this is goes changing
  print(time); //2024-07-11 16:04:43.790433
}
