import 'a.dart';

//a is a direct subclass of sealed class. Class C should not extend it.
class C extends A{

}
class D extends Operations{
  D(super.a, super.b);
}
//error
// class E implements SealedClass1{
//   @override
//   void printDesc() {
//     print("Class E implements sealed class in diff lib");
//   }
//
// }


void main(){

  A a= A();
  print(a.name);
  a.printDesc();

  C c= C();
  print(c.name);

  print("\nB class");
  B b= B();
  b.printDesc();

  D d= D(20, 5);
  print('Sum of 20 and 5 is ${d.add()}');

  var x= XtendA();
  x.printDesc();

  //var sealed1= SealedClass1();
}