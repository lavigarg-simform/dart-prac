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

  for (Vehicle v in vehicles) {
    String t = v.printVehicleType();
    print(t);
  }
}
////