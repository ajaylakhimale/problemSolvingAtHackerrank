// Question: Write a dart code that returns the sum of integers in an array.
//algorithm: you need a array i.e List in dart. and a for in loop,
// and a variable to hold the sum.
//Level: very easy. 


void main(){
  int sum = 0;
  var myList = List<int>.generate(21 , (e)=> e);
  myList.removeAt(0);
  print(myList);
  print('the addition by formula is = ${(20 * 21)/2}');
  
  // implement Logic from here.
  for (int number in myList){
    sum = sum + number;
  }
  print( "i got you baby , so the answer is = $sum");
  
}
