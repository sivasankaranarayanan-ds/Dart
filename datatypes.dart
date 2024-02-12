//Data Types:
// Numbers:	int, double, num	It represents numeric values
// Strings:	String	It represents a sequence of characters
// Booleans:	bool	It represents Boolean values true and false
// Lists:	List	It is an ordered group of items
// Maps:	Map	It represents a set of values as key-value pairs
// Sets:	Set	It is an unordered list of unique values of same types
// Runes:	runes	It represents Unicode values of String
// Null:	null	It represents null value

void main() {
  // Declaring Variables with dataTypes
  int num1 = 100; // without decimal point --> int type.
  double num2 = 130.2; // with decimal point --> double type.
  num num3 = 50; // you can store any number include decimal value  --> num type.
  String schoolName = "Diamond School"; //String type.
  String address = "2140";
  bool isMarried = true; //Boolean type.

//Type Conversion
//Convert Int To String --> toString() method
  String stringValue = num1.toString();
//Convert String To Int --> int.parse() method
  int intValue = int.parse(address);

// Printing Info
  print("Num 1 is $num1 int value");
  print("Num 2 is $num2 decimal value");
  print("Num 3 is $num3 num value");
  print("String  --> School name is $schoolName and address is $address");
  print("Boolean --> Married Status: $isMarried");

//Type conversion
  print("DataType of num1 variable is ${num1.runtimeType}"); //num1 datatype
  print("After converting the num1 --> datatype is ${stringValue.runtimeType}");
  print("DataType of address variable is ${address.runtimeType}"); //address datatype
  print("After converting the address --> datatype is ${intValue.runtimeType}");
}
