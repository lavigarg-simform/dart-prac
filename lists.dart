class Vehicle {
  String? regNum;
  String? type;
  int? tyres;

  Vehicle({
    required this.regNum,
    required this.type,
    required this.tyres,
  });

  String printVehicleType() {
    return "This is a $type !";
  }
}

void main() {
  List<Vehicle> vehicles = [
    Vehicle(regNum: 'GJ01RX0000', type: 'Car', tyres: 4),
    Vehicle(regNum: 'xxxxxxx', type: 'Bus', tyres: 6),
    Vehicle(regNum: 'yyyyyyy', type: 'Truck', tyres: 4),
    Vehicle(regNum: 'zzzzzzz', type: 'Helicopter', tyres: 0),
  ];
  /*
  for (Vehicle v in vehicles) {
    String t = v.printVehicleType();
    print(t);
  }
*/
  ///----------------- normal list impl-----------------------
  var studs = ['Lavi', 'Gati', 'ABC', 'XYZ'];
  studs.add('Ishita');

  studs.addAll(['6', '7', '8', '9']);

  //for (var stud in studs) print(stud);

  var mixedList = [
    'this is a string',
    5,
    8.0,
    true,
    {"obj1": "this is the first element of map"}
  ];
  print("\n\n $mixedList");

  mixedList.addAll([5, 4]);

  mixedList.insert(4, false);

  if (mixedList.contains([4, 5]))
    print("Contains 4,5 is true");
  else
    print("Does not contain 4,5 ");
  //mixedList.sort(); //error

  print("\nOriginal list: ");
  mixedList.forEach(print);
  print("\nlist is reversed: ");
  print(
      "reversed list: ${mixedList.reversed}"); //not print all elemnets. it is printing ... for some

  var reversed = mixedList.reversed;
  print(reversed); // does not prit all elements
  print(reversed.runtimeType); //Object
  print(reversed.toList()); // Output: correct all elements

  print("\n\nconverting each object to string:");
  mixedList.map((li) => li.toString());
  //for (var li in mixedList) print(li.runtimeType);
  print(mixedList);

  print("\n\nClearing the list");
  mixedList.clear();
  mixedList.forEach(print);
}
