void main() {
  print(details()); //(25, valid, false, good morining)
  print(details().$1); //25
  print(details().$2); //valid
  print(details().$3); //false
  print(details().$4); //good morning

  var (age, validity, valid, text) = details();
  print(age); //25
  print(validity); //valid
  print(valid); //false
  print(text); //good morning
}

(int, String, bool, String) details() {
  return (25, "valid", false, "good morining");
}
