class MyCustomClass<T extends num> {
  T? var1;
  T? var2;

  MyCustomClass(this.var1, this.var2);

  T? add() {
      return (var1! + var2!) as T;
  }
}

//-------------------------
abstract class Cache<T> {
  T getByKey(String key);
  void setByKey(String key, T value);
}

// A StringCache that is a specialized version of Cache, with type restriction.
class StringCache implements Cache<String> {
  final Map<String, String> _cache = {};

  @override
  String getByKey(String key) {
    return _cache[key] ?? 'Not found';
  }

  @override
  void setByKey(String key, String value) {
    _cache[key] = value;
  }
}

// A generic method that returns the first element of a list.
T getFirstElement<T>(List<T> list) {
  if (list.isEmpty) {
    throw ArgumentError('List cannot be empty');
  }
  return list[0];
}

// A method that demonstrates how to limit a type using extends
class Foo<T extends Object> {
  final T value;
  Foo(this.value);

  @override
  String toString() => 'Foo<$T>: $value';
}

void main() {

  // Using Map with Generics
  var userDetails = <String, String>{
    'name': 'John',
    'email': 'john@example.com'
  };
  userDetails['phone'] = '1234567890';
  print('User details: $userDetails');

  // using Cache with Generics (StringCache)
  var stringCache = StringCache();
  stringCache.setByKey('user1', 'Alice');
  stringCache.setByKey('user2', 'Bob');

  print('User1 from cache: ${stringCache.getByKey('user1')}');
  print('User3 from cache: ${stringCache.getByKey('user3')}'); // Will print 'Not found'

  // Example 5: Using the first() generic method
  var integers = <int>[10, 20, 30];
  print('First integer: ${getFirstElement(integers)}');

  var strings = <String>['first', 'second', 'third'];
  print('First string: ${getFirstElement(strings)}');

  // Example 6: Restricting the type in a generic class (Foo)
  var foo1 = Foo<String>('Hello, World!');
  var foo2 = Foo<int>(42);

  print(foo1); // Output: Foo<String>: Hello, World!
  print(foo2); // Output: Foo<int>: 42

  // Example 7: Using a parameterized constructor for collections
  var setOfStrings = Set<String>.from(strings); // Creates a Set from a List
  print('Set of strings: $setOfStrings');

  var mapFromList =
      Map<int, String>.fromIterables([1, 2, 3], ['one', 'two', 'three']);
  print('Map from list: $mapFromList');

  // Example 8: Checking type of a collection
  print('Is names a List<String>: ${strings is List<String>}'); // true
  print('Is userDetails a Map<String, String>: ${userDetails is Map<String, String>}'); // true
}
