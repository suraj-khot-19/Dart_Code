void main() {
  returningFun(); //!blank output
  final fun1 = returningFun();

  print(fun1); //Closure: () => Null

  print(() {}()); //null

  print(() {
    print('object');
  }());
/*
object
null 
*/

  () {
    print('this is right way to call');
  }();
  //?this is right way to call
}
//* basic syntax to define
// Function returnFun() {
//   return () {};
// }

Function returningFun() {
  return () {
    print("hiiii");
  };
}
