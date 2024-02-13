class Math {
  //if we don't want to create the object for accessing purpose, we go with static keyword

  //Static variables are initialized only once, and
  //they retain their values throughout the program's execution.
  static int x = 10;                 //static variables

  static int add(int a, int b) {     //static method
    return a * b;
  }

  void main() {
    print(Math.x);         // Accessing static variable directly
    print(Math.add(5, 8)); // Accessing static method directly
  }
}
