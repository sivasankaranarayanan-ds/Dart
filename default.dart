class Laptop {
  String? brand;
  int? prize; 
  String? model;

  // Constructor --> we didn't pass any parameters in this constructor. So, this is a default constructor.
  Laptop() {
    print("This is a default constructor");
    brand = "Lenovo";  //The default value of laptop brand name. 
  }
}

void main() {
  // Here laptop is object of class Laptop.
  Laptop laptop = Laptop(); 
  laptop.prize = 45000;
  laptop.model = "lenovo l6";
  print("Laptop brand: ${laptop.brand}");
  print("Laptop prize: ${laptop.prize}");
  print("Laptop model: ${laptop.model}");
}
