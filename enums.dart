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

enum Fruits {
  Apple(color: 'red', shape: 'round'),
  Banana(color: 'red', shape: 'round'),
  Coconut(color: 'red', shape: 'round'),
  DragonFruit(color: 'red', shape: 'round');

  final String color;
  final String shape;

  const Fruits({required this.color, required this.shape});

  String get description => 'The shape is $shape and color is $color';
}
