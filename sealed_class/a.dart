sealed class SealedClass1{
  void printDesc(){
    print("This is a sealed class.");
  }
}

sealed class SealedClass2{
  int a= 10;
  int b= 20;

  SealedClass2(this.a, this.b);

  int add(){
    return a+b;
  }
}

class A extends SealedClass1{
  String name= "This is Class A which extends Sealed class 1";
}

class B implements SealedClass1{
  @override
  void printDesc() {
    print("inside class b which implements Sealed class 1");
  }
}
class XtendA extends A{
  void printDesc(){
    print("This class directly extends a subclass of sealed class");
  }
}

class Operations extends SealedClass2{
  Operations(super.a, super.b);

  int subtract(){
    return a-b;
  }

}