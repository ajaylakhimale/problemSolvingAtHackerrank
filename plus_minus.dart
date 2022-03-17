// Given an array of integers, calculate the ratios of its 
// elements that are positive, negative, and zero. 
// Print the decimal value of each fraction on a new line with 6 places after the decimal.
// I've addition to this and I've creared a list with random length and contains random elements.
import 'dart:math' as math;

void main(){
  int randomInt = 0;
  int randomLength = math.Random().nextInt(100);
  List randomList = [];

  //create a dynamic list of integers(-ve also) and the length of the list should be dynamic.

  for(int i = 0; i < randomLength; i ++){
  randomInt = math.Random().nextInt(100)-math.Random().nextInt(100);
    randomList.add(randomInt);
   
  }
  // gets how many of all elements are zero's , positive's and negative's respectively.
 int zerosLength = randomList.where((x) => x == 0).length;
 int negativeLength = randomList.where((x) => x < 0).length;
 int positiveLength = randomList.where((x) => x > 0).length;
  randomList.add(0);
  print(randomList);
  
  print('Ratio of 0\'s in the list = :${(zerosLength/randomLength).toStringAsFixed(6)}');
  print('Ratio of positive\'s in the list = :${(positiveLength/randomLength).toStringAsFixed(6)}');
  print('Ratio of 0\'s in the list = :${(negativeLength/randomLength).toStringAsFixed(6)}');
   
}
