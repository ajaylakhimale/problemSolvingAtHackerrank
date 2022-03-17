// =========DIAGONAL DIFFERENCE ========HACKERRANK PROBLEM 5 (ALGORITHMS).
//
//Given a square matrix, calculate the absolute difference between the sums of its diagonals.
//
// As Dart does not have multidimensional arrays or lists to be specific.
// I'm trying to create a matrix of 3x3.

class MatrixT {
  // The 3x3 matrix has 9 elements as follows
  //
  // R11C11, R12C21, R13C31 // first 3 elements in the list.
  // R21C12, R22C22, R23C32 // second 3 elements in the list.
  // R31C13, R32C23, R33C33 // last 3 elements in the list .
  //
  // to create a matrix we're gonna create a list of length 9
  // each 3 elements represent each row. 1 2 3 respectively.

  //this are the elements of the matrix.
  int r11 = 0;
  int r12 = 0;
  int r13 = 0;
  int r21 = 0;
  int r22 = 0;
  int r23 = 0;
  int r31 = 0;
  int r32 = 0;
  int r33 = 0;
  MatrixT(this.r11, this.r12, this.r13, this.r21, this.r22, this.r23, this.r31,
      this.r32, this.r33);

  List createMatrix() {
    List<int> matrix = [];
    matrix.add(r11);
    matrix.add(r12);
    matrix.add(r13);
    matrix.add(r21);
    matrix.add(r22);
    matrix.add(r23);
    matrix.add(r31);
    matrix.add(r32);
    matrix.add(r33);
    return matrix;
  }

  // to print matrix in it's like. we'll print row by row,

  void printMatrix() {
    List<int> rowOne = [];
    List<int> rowTwo = [];
    List<int> rowThree = [];
    rowOne.add(r11);
    rowOne.add(r12);
    rowOne.add(r13);
    rowTwo.add(r21);
    rowTwo.add(r22);
    rowTwo.add(r23);
    rowThree.add(r31);
    rowThree.add(r32);
    rowThree.add(r33);
    print('⬇️ Here is Your Matrix ⬇️');
    print(rowOne);
    print(rowTwo);
    print(rowThree);
  }

  // Todo: create a method which return leftDiagonal addition and rightDiagonal addition.
  List<int> leftDiagonal() {
    int lSum = 0;
    List<int> leftDiagonal = [r11, r22, r33];
    for (int number in leftDiagonal) {
      lSum = lSum + number;
    }

    leftDiagonal.add(lSum);
    return leftDiagonal;
  }

  // Todo: create a method which return rightDiagonal addition and rightDiagonal addition.
  List<int> rightDiagonal() {
    int sum = 0;

    List<int> rightDiagonal = [r13, r22, r31];
    for (int number in rightDiagonal) {
      sum = sum + number;
    }

    rightDiagonal.add(sum);
    return rightDiagonal;
  }
}

void main() {
  MatrixT newMatrix = MatrixT(21, 22, 1, 45, 1, 25, 21, 25, 52);
  int leftDiagonalSum = newMatrix.leftDiagonal().last;
  int rightDiagonalSum = newMatrix.rightDiagonal().last;
  newMatrix.printMatrix();
  print(
      "\nLeft to right Diagonal: ${newMatrix.leftDiagonal().sublist(0, newMatrix.leftDiagonal().length - 1)}");
  print(
      "Right to left Diagonal: ${newMatrix.rightDiagonal().sublist(0, newMatrix.rightDiagonal().length - 1)}\n");
  print(
      "The addition of elements of left to right diagonal is : $leftDiagonalSum");
  print(
      "The addition of elements of right to left diagonal is : $rightDiagonalSum\n");
  print(
      'Hence the Diagonal difference of the above Matrix is : ${(leftDiagonalSum - rightDiagonalSum).abs()}');
}
