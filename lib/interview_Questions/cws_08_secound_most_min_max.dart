void main() {
  List<int> l = [-85, 40, 55, 84, 302, 99, 99, 98, 98, 99, -15, 1, 5, 3, 8, 17];

//finding secound most maximum number
  int max = 0;
  int smax = 0;
  for (int i = 0; i < l.length; i++) {
    if (l[i] > max) {
      smax = max;
      max = l[i];
    } else if (l[i] > smax && l[i] != max) {
      smax = l[i];
    }
  }
  print("secound most max in  $l  is $smax");
  //  secound most max in  [-85, 40, 55, 84, 302, 99, 99, 98, 98, 99, -15, 1, 5, 3, 8, 17]  is 99
////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////

//finding secound most min in list
  int min = double.maxFinite.toInt();
  int smin = double.maxFinite.toInt();
  for (int i = 0; i < l.length; i++) {
    if (l[i] < min) {
      smin = min;
      min = l[i];
    } else if (l[i] < smin && l[i] != min) {
      smin = l[i];
    }
  }
  print("secound most min in  $l  is $smin");
// secound most min in  [-85, 40, 55, 84, 302, 99, 99, 98, 98, 99, -15, 1, 5, 3, 8, 17]  is -15
////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
//finding secound most smallest odd number
  int oddMin = double.maxFinite.toInt();
  int soddMin = double.maxFinite.toInt();
  for (int i = 0; i < l.length; i++) {
    if (l[i] % 2 != 0) {
      if (l[i] < oddMin) {
        soddMin = min;
        min = l[i];
      } else if (l[i] < soddMin && l[i] != oddMin) {
        soddMin = l[i];
      }
    }
  }
  print("secound most min odd in  $l  is $soddMin");
// secound most min odd in  [-85, 40, 55, 84, 302, 99, 99, 98, 98, 99, -15, 1, 5, 3, 8, 17]  is 3
////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
  int oddMax = 0;
  int soddMax = 0;
//finding secound most largest odd number
  for (int i = 0; i < l.length; i++) {
    if (l[i] % 2 != 0) {
      if (l[i] > oddMax) {
        soddMax = oddMax;
        oddMax = l[i];
      } else if (l[i] > soddMax && l[i] != oddMax) {
        soddMax = l[i];
      }
    }
  }
  print("secound most max odd in  $l  is $soddMax");
// secound most max odd in  [-85, 40, 55, 84, 302, 99, 99, 98, 98, 99, -15, 1, 5, 3, 8, 17]  is 55
////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
//finding secound most max even value
  int evenMax = 0;
  int sevenMax = 0;
  for (int i = 0; i < l.length; i++) {
    if (l[i] % 2 == 0) {
      if (l[i] > evenMax) {
        sevenMax = evenMax;
        evenMax = l[i];
      } else if (l[i] > sevenMax && l[i] != evenMax) {
        sevenMax = l[i];
      }
    }
  }
  print("secound most max even in  $l  is $sevenMax");
// secound most max even in  [-85, 40, 55, 84, 302, 99, 99, 98, 98, 99, -15, 1, 5, 3, 8, 17]  is 98
////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
//finding secound most min even in a list
  int evenMin = double.maxFinite.toInt();
  int sevenMin = double.maxFinite.toInt();

  for (int i = 0; i < l.length; i++) {
    if (l[i] % 2 == 0) {
      if (l[i] < evenMin) {
        sevenMin = evenMin;
        evenMin = l[i];
      } else if (l[i] < sevenMin && l[i] != evenMin) {
        sevenMin = l[i];
      }
    }
  }
  print("secound most min even in  $l  is $sevenMin");
  //secound most min even in  [-85, 40, 55, 84, 302, 99, 99, 98, 98, 99, -15, 1, 5, 3, 8, 17]  is 40
}
