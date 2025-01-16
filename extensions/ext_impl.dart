import 'string_apis.dart' as num1;
import 'string_apis2.dart';

void main() {
  var a = num1.Numparsing('45').parseInt();
  //because methods in both libs have same name

  //if only one lib was imported this ould work
  //var b = '46'.parseInt();
  print(a.runtimeType);
}
