// You are in charge of the cake for a child's birthday.
// You have decided the cake will have one candle for
// each year of their total age. They will only be able to blow
// out the tallest of the candles. Count how many candles are tallest.
// -----Basically it means get the largest no in the list and see how
// -----Many times it's reccuring and return it on the console.
import 'dart:math' as math;

void main() {
  List<int> candlesHeight = [];
  int childAge = math.Random().nextInt(12);
  while (candlesHeight.length < childAge - 1) {
    int randomNo = math.Random().nextInt(20);
    candlesHeight.add(randomNo);
  }
  print('The child\'s age is:$childAge');
  print(candlesHeight);

  void birthdayCakeCandles() {
    //
    int biggestCandleHeight = 0;
    int noOfBigCandles = 0;
    candlesHeight.sort();
    //as we've sorted the list in ascending order the largest no will be on the last index of the list.
    //so assign biggestCandleHeight to it.
    biggestCandleHeight = candlesHeight.last;
    //
    for (int n in candlesHeight) {
      if (n == biggestCandleHeight) {
        noOfBigCandles += 1;
      }
      //
    }
    print("The child should blow: $noOfBigCandles Candles on his b'day!!");
  }

  
  //Calling our beloved function 😊❤️©
  birthdayCakeCandles();
}
