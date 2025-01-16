class A{
  int? a;
  String? b= "Class A instance member";

  void printClass(){
    print("Class A");
  }
}
 class D{
    String d= "String of class d";

    void printClass(){
      print("Class D");
    }
 }
class B extends A{
  String? b="call B instance member";
  int? c;
  void printClass(){
    super.printClass();
    print("Class B");
  }
}

class C extends B{
  int? d;

  // void printClass(){
  //   print("class c");
  // }
}

void main(){
  var objOfB= B();
  print(objOfB.hashCode);

  print('this is b: ${objOfB.b}');
  objOfB.printClass();
  print('\n\n calling c');
  var objOfC= C();
  objOfC.printClass();
}