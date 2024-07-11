void main() {
  /**
   * synatx:
   * 
   * <date type>? <variable name> ;
  */
  /*
The reserved word null denotes an object that is the sole instance of this class.
The Null class is the only class which does not implement Object. It is a compile-time error for a class to attempt to extend or implement [Null].
The language contains a number of specialized operators for working with null value. 
Examples:
e1!       // Throws if e1 is null.
e2 ?? e3  // Same as e2, unless e2 is null, then use value of e3
x ??= e4  // Same as x unless x is null, then same as `x = e4`.
e5?.foo() // call `foo` on e5, unless e5 is null.
[...? e6] // spreads e6 into the list literal, unless e6 is null.

*/

////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////

// 1.Null is data type

  // String s = null;
  //A value of type 'Null' can't be assigned to a variable of type 'String'.

  final s = null;
  print(s); //null
  print(s.runtimeType); //Null

  const x = null;
  print(x); //null
  print(x.runtimeType); //Null

  final s1 = Null;
  print(s1); //null
  print(s1.runtimeType); // Type

  const x1 = Null;
  print(x1); //null
  print(x1.runtimeType); //Type

////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////

  // const int a = null; A value of type 'Null' can't be assigned to a variable of type 'int'.
  // final int a1=null; A value of type 'Null' can't be assigned to a variable of type 'int'.

////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////

  // so how to declare a null value
  String? p1 = null; //not error warning>>>Redundant initialization to 'null'
  String? p2; //no error no warning
  print(p1.runtimeType); //Null not String
  print(p2.runtimeType); //Null not String
  p1 = "p1";
  p2 = "p2";
  print(p1.runtimeType); // String not null
  print(p2.runtimeType); //String not null

////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////

  // **** so we can declare nullable values like
  // <date type>? <variable name> ;

  // final String? a1; //no error no warning
  // const String? a2; //The constant 'a2' must be initialized.
  // print(a1);  //The final variable 'a1' can't be read because it's potentially unassigned at this point.Ensure that it is assigned on necessary execution
  // print(a2);

  // use of ! this sign

  String? d = "hello asus";
  print(d.length); //10
  d = null;
  // print(d.length);
  /*compiled time error >>>>>>>> The property 'length' can't be unconditionally accessed because the receiver can be 'null'.
Try making the access conditional (using '?.') or adding a null check to the target ('!').*/

  // print(d!.length);
  //run time  error >>>>>>>>> Unhandled exception:Null check operator used on a null value
  print(d?.length); //null  >>>>this is conditional operator

  //so if we dont know about nullable value then user ? it will check like this
  /*
  d?.length
  if d is null then null=>null
  otherwise print its lenght=>10
  */

////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
//////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
// we also use conditinal operator
/*
synatx

1) condition ? if true : if false
2) condition ?? if false
*/
  String? dontKnow;
  print(dontKnow == null ? 0 : dontKnow.length.toString()); //0
  dontKnow = "suraj";
  print(dontKnow == null ? 0 : dontKnow.length.toString()); //5

  //we also have short hand synatx
  print(dontKnow ?? 0); //suraj
  /*
  dontKnow??0
  if dontKnow have value then return it
  else return 0
  */
}
