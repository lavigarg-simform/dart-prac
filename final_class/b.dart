import 'a.dart';

void main(){
  A a= A('par1  in another file', 'par 2 ijn another file');
  a.printParams();
  a.printSomething();

  var f= Final1("hey", "hello");
  print(f.param2);
  f.param2= "changed";
  print(f.param2);


}