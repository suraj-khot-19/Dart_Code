void main() {
  /*
  synatx

1. simple>>>
  switch(expression){
  case 1:
    code;
    break;
  case 2:
    code;
    break;
  default:
    code;
  }

2. without break>>>
  switch(expression){
  case 1:
    code;
  case 2:
    code;
  default:
    code;
  }

3.enhanced>>>
switch(expression){
  case 1 when (bool condition):
    code;
    break;
  case 2 when (bool condition):
    code;
    break;
  default:
    code;
  }
   */

////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////

  String s = "hi!";
  switch (s) {
    case "hi":
      print("s contain hi");
    case "hi!":
      print("s contain hi!");
    default:
      print("s contain $s");
  }
  /*
  output
  s contain hi!
  */

////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////

  switch (s) {
    case "hi":
    case "hi!":
    default:
      print("i dont know $s");
  }
  /*
  output
i dont know hi!
*/

////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////

// break; is not require but if case returning null then we must need to write a break;
  switch (s) {
    case "hi":
    case "hi!":
      print("$s is having value");
      break;
    default:
      print("i dont know $s");
  }
  /*
  output
hi! is having value
*/

////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////

//featured switch statement
  int a = 10;
  switch (s) {
    case "hi":
    case "hi!" when a > 0:
      print("$s with special switch");
      break;
    default:
      print("i dont know $s");
  }
  /*
  output
hi! with special switch
*/
  switch (s) {
    case "hi":
    case "hi!" when a < 0:
      print("$s with special switch");
      break;
    default:
      print("i dont know $s");
  }
  /*
  output 
i dont know hi!
*/
}
