Future<void> printOrderMessage() async {
  print('Awaiting user order...');
  var order = await fetchUserOrder();
  print('Your order is: $order');
}

Future<String> fetchUserOrder() async{
  // Imagine that this function is more complex and slow.
  return await Future.delayed(const Duration(seconds: 4), () => 'Large Latte');
}

void main() async {
  await countSeconds(4);
  await printOrderMessage();
  print('Lavi');
}

// You can ignore this function - it's here to visualize delay time in this example.
Future<void> countSeconds(int s) async{
  for (var i = 1; i <= s; i++) {
   await Future.delayed(Duration(seconds: i), () => print(i));
  }
}