String empName = "Mathew"; //Variable defined outside the method

void main() {
//Declaring Variables
  String name = "Scott";
  String address = "Los Angles";
  int rank = 45;
  num age = 20; // used to store any types of numbers
  num height = 5.2;
  bool isMarried = false;
  const pi = 3.14; // To create a constant in Dart, you can use the const keyword.
  // not possible to change the pi = 4.23, because constant value never changed.

// printing variables value
  print("Name is $name");
  print("Address is $address");
  print("Rank is $rank");
  print("Age is $age");
  print("Height is $height");
  print("Married Status is $isMarried");
  print("Name is $empName"); // You can also access the variable which is defined outside the method
  print("Value of PI is $pi");
}
