enum Weekdays {
  Monday,
  Tuesday,
  Wednesday,
  Thursday,
  Friday,
  Saturday,
  Sunday,
}

void main() {
  var op = Weekdays.Monday;
  switch (op) {
    case Weekdays.Monday:
      print("Monday!");
      break;
    case Weekdays.Tuesday:
      print("Tuesday");
      break;
    case Weekdays.Wednesday:
      print("Wednesday");
      break;
    case Weekdays.Thursday:
      print("thursday");
      break;
    case Weekdays.Friday:
      print("Friday");
      break;
    case Weekdays.Saturday:
      print("Saturday");
    case Weekdays.Sunday:
      print("Sunday");
      break;
  }
}


enum Fruits{
  final String color;
  final String Shape;

  Fruits({required String this.color, required String this.shape});

  Apple(color:'red', shape:'round'),
  Banana(),
  Coconut(),
  DragonFruit();

}