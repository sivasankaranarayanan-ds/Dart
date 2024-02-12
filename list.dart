void main() {
  List l1 = [1, 2, "class", true];
  print(l1);
  print(l1[2]); //prints the value at specific index value
  l1[2] = "hello"; //change the value in l1 at 2nd index
  print("After change the value of class into hello in l1 variable");
  print(l1);
  List l2 = [];
  l2.add(55);
  l2.add(false);
  l2.add("thanks");
  print(l2);
  l2.remove(55); //to remove 55 value in l2
  l2.add(29);
  print("After removed 55 and added 29 in l2 variable");
  print(l2);

  List<int> l3 = [1, 2, 3, 4]; //only store integer value
  List<String> l4 = ["ABC", "XYZ", "PQR"]; //only store String value
  print(l1.runtimeType);
  print(l3.runtimeType);
  print(l4.runtimeType);
}
