//constructor:
//Syntax:
//class ClassName {
// Constructor declaration: Same as class name
// ClassName() {
// body of the constructor
// }

class Student {
  String? name; //(?) --> This sign is declared as accept the null values also.
  int? age;
  int? rollNumber;

  // Constructor
  Student(String name, int age, int rollNumber) {
    print("Constructor called"); // this is for checking the constructor is called or not.
    this.name = name;
    this.age = age;
    this.rollNumber = rollNumber;
  }
}

void main() {
  // Here student is object of class Student.
  Student student = Student("John", 20, 1);
  print("Name: ${student.name}");
  print("Age: ${student.age}");
  print("Roll Number: ${student.rollNumber}");
}
