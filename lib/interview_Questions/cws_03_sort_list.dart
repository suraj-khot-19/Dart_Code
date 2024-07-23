void main() {
  List<int> list = [8, 6, 4, 9, 7, 12, 35, -14, -568];
  print(list); //[8, 6, 4, 9, 7, 12, 35, -14, -568]
  /*
  sort();
Sorts this list according to the order specified by the [compare] function.
The [compare] function must act as a [Comparator].
  */

  //sort in order ascending
  list.sort();
  print(list); //[-568, -14, 4, 6, 7, 8, 9, 12, 35]

//sort in reverse decending order
  List<int> l = [8, 6, 4, 9, 7, 12, 35, -14, -568];
  print(l); //[8, 6, 4, 9, 7, 12, 35, -14, -568]
  l.sort((a, b) => a = a > b ? b : a);
  print(l); //[35, 12, 7, 9, 4, 6, 8, -14, -568]
}
