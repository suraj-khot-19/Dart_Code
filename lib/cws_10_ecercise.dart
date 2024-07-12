void main() {
  int weight = 500;
  String destination = "pqr";

  // using if else
  if (destination.contains("xyz")) {
    print("shipping cost:${weight * 5}");
  } else if (destination.contains("abc")) {
    print("shipping cost:${weight * 7}");
  } else if (destination.contains("pqr")) {
    print("shipping cost:${weight * 10}");
  } else {
    print("error");
  }

  destination = "xyz";
  // using switch
  switch (destination) {
    case "xyz":
      print("shipping cost:${weight * 5}");
    case "abc":
      print("shipping cost:${weight * 7}");
    case "pqr":
      print("shipping cost:${weight * 10}");
    default:
      print("error");
  }
}
