final class Final1{
  String? param1;
  String? param2;

  Final1(this.param1, this.param2);
}

base class A extends Final1{
  A(super.param1, super.param2);

  void printSomething(){
    print("Base class A extends final class Final1");
  }

  void printParams(){
    print("param1: $param1, Param2: $param2");
  }

}