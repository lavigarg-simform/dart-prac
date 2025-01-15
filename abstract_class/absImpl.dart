import 'abs.dart';

class TV extends Electronics {
  String model = "LGTV";

  TV({required int itemStock, required double itemCost, String? model})
      : super(itemCost: itemCost, itemStock: itemStock);

  @override
  void displayDetails() {
    print("Item Name= $model, Item Cost= $itemCost");
  }
}

class Mobile implements Electronics {
  //must override abstract methods an dconcrete methods both
  String? model;

  Mobile(
      {required String this.model,
      required double this.itemCost}); //, required double this.itemCost});

  @override
  void displayDetails() {
    print("this mobile is of model $model");
  }

  @override
  double? itemCost;

  @override
  int? itemStock;

  @override
  double getTotal(int pcs) {
    return pcs * itemCost!;
  }
}

void main() {
  Electronics tv = TV(itemStock: 10, itemCost: 20000.00);
  print("const created");
  print(tv.getTotal(5));
  print("displaying details now");
  tv.displayDetails();

  Electronics mob = Mobile(model: "Samsung", itemCost: 15000);
  mob.displayDetails();
  print(mob.getTotal(4));
}
