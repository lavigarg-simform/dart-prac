abstract class Electronics {
  int? itemStock;
  double? itemCost;

  Electronics(
      {required int this.itemStock,
      required double this.itemCost});

  //may or may not be overriden
  double getTotal(int pcs) {
    return (pcs * itemCost!);
  }

  void displayDetails();
}

// void main() {
//   //Electronics e = Electronics(itemName: "TV", ); //error
// }
