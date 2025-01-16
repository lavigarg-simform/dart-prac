mixin SomeWork{
  void performSomeWork();
  void makeCoffee(){
    print("Making coffee");
  }
  void drinkCoffee(){
    print("Drinking coffee...");
  }
}

mixin TeamMeet on Employee{
  Future<void> callTeamMeet() async {
    print("Team meeting started");
    await Future.delayed(Duration(seconds: 5), ()=> print("Meeting is ongoing"));
    print("Team meeting ended");
  }
}

mixin class MixinClass{
  void printDesc(){
    print("This is a mixin class!");
  }
}
class Employee with SomeWork{
  String? name;

  @override
  void performSomeWork() {
    print("Working on a task...");
  }
  void takeANap(){
    print("Sleeping");
  }

}

class Intern extends Employee with TeamMeet{

}
class Manager{

}

void main(){
  //var meet= TeamMeet(); //cant be instantiated
  var emp= Employee();
  emp.drinkCoffee();

  var intern = Intern();
  intern.takeANap();
  intern.drinkCoffee();
  intern.callTeamMeet();

  //creating object of mixin class
  var mixinClass= MixinClass();
  mixinClass.printDesc();
}