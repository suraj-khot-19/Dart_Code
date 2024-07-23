void main() {
  List<int> list = [51, 85, 14, 66, -78, 88, 475, 0, -787, 1];
/*
Bubble sort is a simple sorting algorithm that repeatedly steps through the list, compares adjacent elements, and swaps them if they are in the wrong order. It derives its name because with each pass through the list, larger elements "bubble" to the top (end) of the list, much like bubbles rising to the surface in water. 

*Pros of Bubble Sort:*
1. Simplicity:
Easy to understand and implement, making it a good choice for teaching fundamental concepts of sorting algorithms.

2. Stable Sort:
Maintains the relative order of equal elements, which can be important in certain applications.

3. In-place Sorting:
Requires only a small amount of additional memory space (O(1)), making it space-efficient.

4. Best-case Performance:
If the list is already sorted, bubble sort can detect this and terminate early, resulting in a best-case time complexity of O(n).

*Cons of Bubble Sort:*
1. Time Complexity:
Bubble sort has a time complexity of O(n^2) in the average and worst cases, making it inefficient for large lists.

2. Not Adaptive:
Unlike some other sorting algorithms, bubble sort does not adapt well to nearly sorted lists, except for the best-case scenario.

3. Large Number of Swaps:
The algorithm can perform a significant number of swaps, leading to inefficiency, especially compared to more advanced sorting algorithms.

4. Performance:
In practical scenarios, bubble sort is much slower than algorithms like quicksort, merge sort, and even insertion sort.
 */
  //buuble sort
  int n = list.length;

  for (int i = 0; i < n - 1; i++) {
    for (int j = 0; j < n - i - 1; j++) {
      if (list[j] > list[j + 1]) {
        int temp = list[j];
        list[j] = list[j + 1];
        list[j + 1] = temp;
      }
    }
  }
  print(list); //[-787, -78, 0, 1, 14, 51, 66, 85, 88, 475]

  //for understanding
  List<int> a = [1, 45, -5, 54, 0, -58];
  int x = a.length;
  for (int i = 0; i < x - 1; i++) {
    for (int j = 0; j < x - i - 1; j++) {
      if (a[j] > a[j + 1]) {
        int temp = a[j];
        a[j] = a[j + 1];
        a[j + 1] = temp;
      }
      print("i=$i j=$j : $a");
      /* output inner for loop:
      **** (length-1) times iterations with decresing i value 
        i=0 j=0 : [1, 45, -5, 54, 0, -58]
        i=0 j=1 : [1, -5, 45, 54, 0, -58]
        i=0 j=2 : [1, -5, 45, 54, 0, -58] 
        i=0 j=3 : [1, -5, 45, 0, 54, -58]
        i=0 j=4 : [1, -5, 45, 0, -58, 54]
        i=1 j=0 : [-5, 1, 45, 0, -58, 54]
        i=1 j=1 : [-5, 1, 45, 0, -58, 54]
        i=1 j=2 : [-5, 1, 0, 45, -58, 54]
        i=1 j=3 : [-5, 1, 0, -58, 45, 54]
        i=2 j=0 : [-5, 1, 0, -58, 45, 54]
        i=2 j=1 : [-5, 0, 1, -58, 45, 54]
        i=2 j=2 : [-5, 0, -58, 1, 45, 54]
        i=3 j=0 : [-5, 0, -58, 1, 45, 54]
        i=3 j=1 : [-5, -58, 0, 1, 45, 54]
        i=4 j=0 : [-58, -5, 0, 1, 45, 54]
       */
    }
    print("$i : $a");
    /*
    output: outer for loop
    **** (length-1) iterations are done for outer for loop to sort ****
      0 : [1, -5, 45, 0, -58, 54]
      1 : [-5, 1, 0, -58, 45, 54]
      2 : [-5, 0, -58, 1, 45, 54]
      3 : [-5, -58, 0, 1, 45, 54]
      4 : [-58, -5, 0, 1, 45, 54]
     */
  }
}
