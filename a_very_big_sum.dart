import 'dart:math' as math;
// In this challenge, you are required to calculate and print the sum of the elements in an array, 
// keeping in mind that some of those integers may be quite large.
// Function Description
// Complete the aVeryBigSum function in the editor below. It must return the sum of all array elements.
// aVeryBigSum has the following parameter(s):
// int ar[n]: an array of integers .
// Return
// long: the sum of all array elements
// Input Format
// The first line of the input consists of an integer .
// The next line contains  space-separated integers contained in the array.
// Output Format
// Return the integer sum of the elements in the array.
// Constraints
// Sample Input
//-------------------------Above description is same as Hackerrank's problem description,------------------
//----Below is my simplified description-------------------------------------------------------------------
// The Goal is to Calculate sum of integers from an Array/ List as we did in first problem . they thought just by increasing
// The digits in the number makes the problem hard , it may be hard(for Java and c/cpp dev's) but not for dart developers .
// Lets Do It.-------A Very Very Big Sum in seconds. -----------------
void main(){
 
  aVeryBigSum(2);
}

void aVeryBigSum(int n){
   int long = 0;
  List myBigIntList = List.generate(n, (e)=>math.Random().nextInt(10000000));
  print(myBigIntList);
  for(int number in myBigIntList){
    long += number;
  }
  print("Here is the total sum of integers that you can see in above List: $long");
  
}
