void main() {
  //named record
  var record = (A: 1, B: 2, C: 3, D: 4);

  var (B: a, A: b, C: c, D: d) = record;
  print('$a $b $c $d');

  var (:A, :B, :C, :D) = record;
  print('$A $B $C $D');

  //print(record.runtimeType);
  //print(record.$1);
  //print('The fourth element of first record is ' '${record.$4}');

  var rec2 = ('hello', 'how', 2, {'id': 1, 'name': 'Lavi'});
  print('$rec2' '\n' '${rec2.runtimeType}');

  print(rec2.$1);
  print(rec2.$4['id']);

  ({int a, int b}) recordAB = (a: 1, b: 2);
  ({int x, int y}) recordXY = (x: 3, y: 4);

  print(recordXY.runtimeType); //its runtime type is {int x, int y}
  print(recordAB.runtimeType); //its runtime type is {int a, int b}

  (int newa, int newb) recordCD = (1, 2);
  //print("Printing values of newa and newb");
  //print(recordCD.newA);
  (int P, int Q) recordPQ = (3, 4);

  var (p, q) = recordPQ;
  print('P: $p, Q: $q');

  assert(recordCD == recordPQ, "Both records are different"); // OK.

  //-----------------func calls-----------------

  //calling record function
  var (s1, s2, s3) = concatStrings('good ', 'morning');
  print('$s1 $s2 $s3');

/*
  var studRecords = studDetails(505, 'ABC', 'Need to work harder');
  print(studRecords.runtimeType);
  print(studRecords);
  print(studRecords.$1.keys);

  for (var i in studRecords.$1.keys) {
    print('$i: ' '${studRecords.$1[i]}');
  }
  */

  /*
  var r = (3, 2);
  var swappedvalues = swap(r);
  print(swappedvalues);
  */
}

//-------------main ended-----------------

//records in function
(String a, String b, String c) concatStrings(String s1, String s2) {
  return ('this is the concatinated string: ', s1 + s2, 'to you!!');
}

(Map, String) studDetails(int id, String name, String remarks) {
  return ({'id': id, 'name': name}, remarks);
}

(int, int) swap((int, int) record) {
  var (a, b) = record;
  return (b, a);
}
