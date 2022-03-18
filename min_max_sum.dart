// Given five positive integers, find the minimum and maximum values that can
// be calculated by summing exactly four of the five integers. Then print the
// respective minimum and maximum values as a single line of two space-separated
// long integers.
// Example: [1,2,3,4,5] => 10, 14
// try this code in dartPad first.
import 'dart:math' as math;

void main() {
  List<int> lst = [];
  while (lst.length <= 198) {
    int randomNo = math.Random().nextInt(100);
    lst.add(randomNo);
  }
  print(lst);
  String findMaxAddition() {
    int max = 0;
    lst.sort();
    print("The smallest no is: ${lst.first}");
      print("The largest no is: ${lst.last}");
    lst.remove(lst.first);
    for (int i in lst) {
      max += i;
    }
    return "The Max sum is $max";
  }
    String findMinAddition() {
    int min = 0;
    lst.sort();
    
    lst.remove(lst.last);
    for (int i in lst) {
      min += i;
    }
    return "The min sum is : $min";
  }

  print(findMaxAddition());
  print(findMinAddition());
}
