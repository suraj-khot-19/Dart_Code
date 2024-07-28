void main() {
  List<int> a = [10, 20, 30, 40, 50];

  int l = 0; //lower index
  int u = 4; //upper index
  int mid = 0; //for middle value
  int f = 0; //for found or not
  int s = 50; //search this

  // loop till lower index<=upper index
  while (l <= u) {
    mid = ((l + u) / 2).floor();
    if (a[mid] == s) {
      f = 1;
      break;
    }
    if (a[mid] < s) {
      l++;
    } else {
      u--;
    }
  }
  if (f == 1) {
    print("$s  is found at position ${mid + 1}");
  } else {
    print("$s in not found in $a");
  }
}
