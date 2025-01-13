class MyCustomClass<T> {
  T? var1;
  T? var2;

  MyCustomClass(this.var1, this.var2)

  T add(){
    return (this.var1 + this.var2);
  }
}
