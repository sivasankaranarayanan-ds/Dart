//Scope
//Tow Types:
//  Method Scope  --> only declare inside the function
//  Global Scope  --> declare anywhere the program

//Method Scope:
void main() {  //main function.
  String text = "I am text inside main. Anyone can't access me.";
  print(text);
  go();        //Here, I accessed global function for print purpose.
}

//Global Scope:
String global = "I am Global. Anyone can access me.";
void go() {
  print(global);
}
