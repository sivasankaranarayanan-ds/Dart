//why async?
           //Asynchronous programming allows these operations to be performed without blocking the main thread,
           //ensuring that the UI remains responsive.

void main() {
  print("Start");
  getData();
  print("End");
}

void getData() async{  // You can use the async keyword before a function body to make it asynchronous.
  String data = await middleFunction();  //You can use the await keyword to get the completed result of an asynchronous expression.
  print(data);
}

Future<String> middleFunction(){
  return Future.delayed(Duration(seconds:2), ()=> "Champs");
}