import 'dart:async';

Future<void> main() async {
  print('Start main');

  // Start async operations
  var result1 = asyncTask('Task 1', 1);
  var result2 = asyncTask('Task 2', 1);

  // Wait for them to complete
  await result1;
  await result2;

  print('End main');
}

Future<void> asyncTask(String taskName, int seconds) async {
  print('Starting $taskName');
  await Future.delayed(Duration(seconds: seconds), ()=> print("$taskName"));
  print('$taskName completed');
}

///---------output----------
/*
start main
Starting task 1
starting task 2
task 2 completed
task 1 completed
end main
*/