void f1() {
  for(int i=0; i<10 ; i++){
    print(i);
    if(i==5){
      Future.delayed(Duration(seconds: 3), ()=> print(i));
      print("after delay");
    }
  }
}

Future<void> f2() async{
  print("inside f2");
  for (int j=0; j<5; j++){
    print(j*j);

  }
  await f3();
  print("exiting f2");
}

Future<void> f3() async{
  Future.delayed(Duration(seconds: 3), ()=> print("Func 3"));
}
void main() async{
  f2();
  print("inside main.");
  f1();
  print("F1 completed");
  await f2();
  print("f2 completed");
}