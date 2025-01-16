class Abc{
  //Abc();
  int? var1;
  int? var2;

  Abc();
  Abc.someName(this.var1, this.var2);

  factory Abc.myFac(double d1, double d2){
    return Abc.someName(d1.toInt(), d2.toInt());
  }
}

void main(){
  Abc obj= Abc.myFac(1.1, 2.8);
  print("var1: ${obj.var1}, ${obj.var1.runtimeType}, var2: ${obj.var2}, ${obj.var2.runtimeType}");
}