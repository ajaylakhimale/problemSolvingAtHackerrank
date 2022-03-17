// Staircase detail

// This is a staircase of size : 3(base and height must be same)

//    #
//   ##
//  ###

void main() {
  String stairs = "";
  void staircase(int n) {
    for (int i = 0; i <= n - 1; i++) {
      stairs += "#";
      print(stairs.padLeft(n, ' '));
    }
  }

  staircase(7);
}
