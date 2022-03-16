// Hackerrank's Triplet comparison problem.
// we have two lists of elements 3.
// our task is to compare element of one list to other list of simmilar index.
// list names are a and b,
// comparison has a point system. as follows.
// if a[0]>b[0] then a gets 1 point. if b[0]>a[0]
// then b get 1 point. if bothe are same at same index then nobody gets point.
//
//proble name   :  Compare The Triplate
//
//-------------Note 'Alice' is reNamed to 'Ajay' as Ajay is a Brilliant Developer 😁😄---------------------------
//
//
import 'dart:math' as math;
void main() {
  //
  // Every time you run the code you get new rating list. cool 😍👍
  List a = List.generate(3, (e)=> math.Random().nextInt(100),);
  List b =  List.generate(3, (e)=> math.Random().nextInt(100));
  List<int> result = [];//to hold points , result[0] = ajayPoints and result[1] = bobPoint;

  // to hold the points.
  int ajayPoint = 0; //developer 😘😊(●'◡'●)
  int bobPoint = 0;
  //Loop through the lists and check for who gets points on the basis of the value of the elements they contain.
  
  for (int i = 0; i <= a.length - 1; i++) {
    
    if (a[i] == b[i]) {
      ajayPoint = ajayPoint;
      
    } else if (a[i] > b[i]) {
      ajayPoint += 1;
      
    } else if (a[i] < b[i]) {
      bobPoint += 1;
    }
  }// for loop ends here

  
  result.add(ajayPoint);
  result.add(bobPoint);
  print(' rating for Ajay\'s challenge is the triplet a = $a');
  print(' rating for Bob\'s challenge is the triplet a = $b\n');
  
  print('The result is $result\n');
  print('In the above Array Ajay has "$ajayPoint" points\nand Bob got "$bobPoint" points');
  //
  //If you can improve code please tell me GitHub @ajaylakhimale
  //
  
}
