//Syntax:
        class ClassName {
                // properties or fields
                // methods or functions}
                }

class Student {
  //naming of class name should be capitalized.
  var name;
  var age;
  var isStudent;

  void display() {
    //Declared function inside the class
    print("$name with age: $age, is he student: $isStudent");
  }
}

void main() {
  // Here student is object of class Student.
  var student = Student(); //creating oject instance of class
  student.name = "Luther";
  student.age = 16;
  student.isStudent = true;

  student.display(); //accessing class function
}
