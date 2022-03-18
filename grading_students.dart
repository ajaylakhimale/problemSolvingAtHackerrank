import 'dart:math' as math;
// problem link down below.
// https://www.hackerrank.com/challenges/grading/problem?isFullScreen=true

void main() {
  //
  //this is the list of marks that  students has obtained in seven different subjects, and this list is dynamic/random.
  List<int> grades = List.generate(7, (index) => (math.Random().nextInt(100)));
  //
  //
  for (int grade in grades) {
    gradingStudents(grade);
  }
}

// get student marks check if it's more than 38,
// and 2 or 1 digit closer to the no who's divisible by 5,
//
// do not round the marks if it's 3 digit away from the no who's
// divisible by 5(e.g: 42[coz 42 + 3 =45 and 45 is divisible by 5 but we only round grades which are 2 digit away only])
// do not round grade if it's less than 38.
void gradingStudents(int n) {
  int roundNumber = 0;
  if (n % 5 == 0) {
    roundNumber = n;
  } else if (n % 5 != 0 && n > 38 && (n + 2) % 5 == 0) {
    roundNumber = n + 2;
  } else if (n % 5 != 0 && n > 38 && (n + 1) % 5 == 0) {
    roundNumber = n + 1;
  } else if (n % 5 != 0 && (n + 3) % 5 == 0) {
    roundNumber = n;
  } else {
    roundNumber = n;
  }
  print(roundNumber);
}
// if you can optimise this code please do it and tag me @ajaylakhimale.
