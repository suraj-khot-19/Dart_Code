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
      l = mid + 1;
    } else {
      u = mid - 1;
    }
  }
  if (f == 1) {
    print("$s is found at position ${mid + 1}");
  } else {
    print("$s in not found in $a");
  }
}

/*
trace pgm
  List<int> a = [10, 20, 30, 40, 50];
  s=10
while:

?itration 1
    l=0 u=4
    mid=l+u/2= 0+4/2= 2

    if(a[2]==10){
    30==10 
    !false
    }

    if(a[2]<10){
    !false
    }
    else{
    u=2-1=1
    }

?itratuin 2
l=0 u=1 s=10

  mid=l+u/2=0+1/2=0
  if(a[0]==10){
  true
  f=1
  ?exit;
  }
 */

/*
trace pgm
l=0 u=4 s=50
?itration 1
while:
    (l<=u)0<=4  //?true
    {
      mid=l+u/2 =0+4/2 =2

      if(a[mid]==s) a[2]==50 30==50 //!false
      {
        !not execute
      }

      if(a[mid]<s) a[2]<50 =30<50 //?true
      {
        l=mid+1 =2+1 =3
      }
      else
      {
        !not execute
      }
    }
?itration 2
l=3 u=4 s=50
while:
  (l<=u) 3<=4
  {
    mid=l+u/2 =3+4/2 =3
    if(a[mid]==s) a[3]==s =40==50 //!false
    {
      !not execute
    }

    if(a[mid]<s) a[3]<50 =40<50  //?true
    {
      l=mid+1  l=3+1 =4
    }
    else
    {
      !not execute
    }
  } 
?iteration 3:
    l=4 u=4 s=50
    while:
      (l<=u) 4<=4 //?true
      {
        mid=l+u/2 4+4/2 =4
        if(a[mid]==s) a[4]==50 50==50 //?true
        {
          f=1
          break //?exit
        }

        !not execute
      }
print==>50 found at position 4
*/