mixin SomeWork{
  void performSomeWork();
  void makeCoffee(){
    print("Making coffee");
  }
  void drinkCoffee(){
    print("Drinking coffee...");
  }
}

mixin TeamMeet{
  Future<void> callTeamMeet() async {
    print("Team meeting started");
    await Future.delayed(Duration(seconds: 5), ()=> print("Meeting is ongoing"));
    print("Team meeting ended");
  }
}
class Employee with SomeWork, TeamMeet{
  String? name;

  @override
  void performSomeWork() {
    print("Working on a task...");
  }
  void takeANap(){
    print("Sleeping");
  }

}

class Intern extends Employee{

}

void main(){
  //var meet= TeamMeet(); //cant be instantiated
  var emp= Employee();
  emp.drinkCoffee();

  var intern = Intern();
  intern.takeANap();
  intern.drinkCoffee();
  intern.callTeamMeet();
}