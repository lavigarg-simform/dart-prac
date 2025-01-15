void main() {
  //unordered collection of data
  var myFirstSet = {1, 2, 3, "String ele1", "String ele 2"};
  print(myFirstSet);

  myFirstSet.add(4);
  print(myFirstSet);

  myFirstSet.add(3);
  print(myFirstSet);

  var anotherSet = {4, 5, 6, 7};
  var newSet = myFirstSet.union(anotherSet);
  print(newSet);
  print(myFirstSet);
  print(anotherSet);
  print('length of my set is: ${myFirstSet.length}');

  var intersectionSet = myFirstSet.intersection(anotherSet);
  print(intersectionSet);

//prints the elements present in set 1 but not in set2
  var differenceSet = myFirstSet.difference(anotherSet);
  print(differenceSet);
}
