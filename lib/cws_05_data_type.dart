void main() {
  //////////////////////////////////////////////////////////////////////////
  //////////////////////////////////////////////////////////////////////////
  /*
An integer number.
The default implementation of int is 64-bit two's complement integers with operations 
that wrap to that range on overflow.
Note: When compiling to JavaScript, integers are restricted to values that can be 
represented exactly by double-precision floating point values. The available integer
values include all integers between -2^53 and 2^53, and some integers with larger 
magnitude. That includes some integers larger than 2^63. The behavior of the operators
and methods in the [int] class therefore sometimes differs between the Dart VM and Dart
code compiled to JavaScript. For example, the bitwise operators truncate their operands
to 32-bit integers when compiled to JavaScript.
Classes cannot extend, implement, or mix in int.
  */
  int a = 20;
  print(a); //20

  // int a = 20; The name 'a' is already defined.

  int canChange = 125;
  print(canChange); //125
  canChange = 45;
  print(canChange); //45 we can update the value

  // canChange=10.5;
/*error=>
A value of type 'double' can't be assigned to a variable of type 'int'.
Try changing the type of the variable, or casting the right-hand type to 'int'.
*/

  //////////////////////////////////////////////////////////////////////////
  //////////////////////////////////////////////////////////////////////////

/*
A double-precision floating point number.
Representation of Dart doubles containing double specific constants and 
operations and specializations of operations inherited from [num].
Dart doubles are 64-bit floating-point numbers as specified in the
IEEE 754 standard.The [double] type is contagious. Operations on [double]s 
return [double] results.It is a compile-time error for a class to attempt 
to extend or implement double
*/
  double x = 10;
  double y = 10.5000;
  print(x); //10.0
  print(y); //10.5
  print(canChange + y); //45+10.5=55.5 int+double=double

  //////////////////////////////////////////////////////////////////////////
  //////////////////////////////////////////////////////////////////////////

/*
A sequence of UTF-16 code units.
Strings are mainly used to represent text. A character may be represented by multiple code points,
each code point consisting of one or two code units. A string can be either single or multiline.
Single line strings are written using matching single or double quotes, and multiline strings are written using triple quotes. 
The following are all valid Dart strings:

'Single quotes';
"Double quotes";
'Double quotes in "single" quotes';
"Single quotes in 'double' quotes";

'''A
multiline
string''';

"""
Another
multiline
string""";
Strings are immutable. Although you cannot change a string, you can perform an operation on a string which creates a **new string:
*/
  String s = "suraj";
  print(s);
  s = "khot";
  print(s); //changed but it create a new string because immutable
  s = "${s}khot"; //  s = s + "khot";
  print(s); //khotkhot

  //1. multi line
  String multiLine = '''
String
having multi
line''';

  print(multiLine);
//2. new line
  String newLine = "first line\nnew line";
  print(newLine);
//3. $ printing
  // String doller = "$doller"; Local variable 'doller' can't be referenced before it is declared.
  String doller = "\$doller";
  print(doller);

//4. " printing
// erroe String doubleQuote=""this is double qoute";
  String doubleQuote = "\"this is double qoute";
  print(doubleQuote);

  //5. ' printing single qoute
  // Error String singleQoute1=''this is single qoute';
  String singleQoute2 = '\'this is single qoute';
  String singleQoute3 = "'this is single qoute";
  print(singleQoute2);
  print(singleQoute3);

  //6. \ printing
  // error String backSlash="\"; Expected to find ';'
  String backSlash = "\\this is back slash";
  print(backSlash);

  //////////////////////////////////////////////////////////////////////////
  //////////////////////////////////////////////////////////////////////////
  dynamic dynamic1 = "dyanamic string";
  dynamic dynamic2 = 1;
  dynamic dynamic3 = 1.5;
  dynamic3 += 50.5; //dynamic + double
  dynamic2 += 50; //dynamic + int
  // dynamic3 += "suraj"; //error 'String' is not a subtype of type 'num' of 'other'
  print(dynamic1);
  print(dynamic2);
  print(dynamic3);
}
