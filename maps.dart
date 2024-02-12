void main(){
  Map map1 = {
    "name" : "Hartlin",
    "age" : 33,
  };
  print(map1);

  map1.addAll({ //addAll() is used to add keys and values to map.
    "role" : "fresher",
    "isEmployee" : true
  });
  print(map1);

  print(map1.keys);
  print(map1.values);
  map1.remove("isEmployee"); //to remove a pair
  print(map1);

  Map<String, int> map2 = Map(); //only store values with string keys and int values
  print(map2);  //to print empty set 
  map2.addAll({
    "rank":1,
    "id":20
  });
  print(map2);

  print(map1.runtimeType);
  print(map2.runtimeType);
}