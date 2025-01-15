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

  mydict2.forEach((key, value) {
    print('Key: $key, Value: $value');
  });
  //update
  //update all
  //map

  mydict2.update('string1', (newvalue) => newvalue + " thisis appended");
  print(mydict2);
  for (var entries in mydict2.entries) {
    print('${entries.key}: ${entries.value}');
  }

  mydict2.update('string3', (newvalue) => newvalue + " hey",
      ifAbsent: () => 'new value');

  print('\n\nmap 2 with new key updated-');
  for (var k in mydict2.keys) print('$k : ${mydict2[k]}');


  mydict.updateAll((key, value) => value.toString() + ' xxx');

  print('\n\n map1 with xxx appended-');
  for (var v in mydict.values) print(v);
}
