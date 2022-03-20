import 'dart:math' as math;
//
// problem : https://www.hackerrank.com/challenges/kangaroo/problem?isFullScreen=true
// Number Line Jump.
//
void main() {
  int x1 = math.Random().nextInt(10); //position/location of kangaroo 1
  int v1 = math.Random().nextInt(10); // moving speed of kangaroo 1
  int x2 = math.Random().nextInt(10); //position/location of kangaroo 2
  int v2 = math.Random().nextInt(10); // moving speed of kangaroo 2

  print("Kangaroo 1 is at $x1 and moving at rate $v1 = ${x1 + v1}");
  print("Kangaroo 2 is at $x2 and moving at rate $v2 = ${x2 + v2}");
  print("are they at same position when jumped: ${x1 + v1 == x2 + v2 ? 'Yes': 'No'}");
}
// That was simple one.
