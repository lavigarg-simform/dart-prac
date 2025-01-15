void main() {
  var mydict = {
    'hello': 'to you',
    5: 'in the morning',
    {'another dict as key': 'first value'}: 5
  };

  var mydict2 = {'string1': 'value1', "string2": "Lavi Garg"};
  print(mydict2);
  //print(mydict2.runtimeType);

  print(mydict2.values);
  print(mydict2.keys);

  // if (mydict2.containsKey('hello')) {
  //   print(mydict2['hello']);
  // } else {
  //   print("dict does not contain hello key!");
  // }

  print(mydict2[0]);
  print('afeter');

  var gifts = {'first': 'partridge'};
  assert(gifts['first'] == 'partridge', 'first assertion is false');
  assert(2 != 2);
  print('assertion complete');

  
}
