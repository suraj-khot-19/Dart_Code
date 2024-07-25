void main() {
  for (int i = 0; i <= 10; i++) {
    if (i == 4 || i == 6) {
      continue;
    }
    print(i);
  }
  /*
  output:
    0
    1
    2
    3
    5
    7
    8
    9
    10
  */
  for (int i = 0; i <= 10; i++) {
    if (i == 4 || i == 6) {
      break;
    }
    print(i);
  }
  /*
  output:
    0
    1
    2
    3
  */

  /*
continue==>skipps current iteration
break==>exit the loop
  */
}
