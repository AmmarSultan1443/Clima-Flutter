import 'dart:io';

void main() {
  performTasks();
}

void performTasks() async{
  task1();
  String task2Result = await task2();
  task3(task2Result);
}

void task1() {
  String result = 'task 1 data';
  print('Task 1 complete');
}

Future task2() async {
  Duration duration = Duration(seconds: 3);

  String result = 'null';

  await Future.delayed(duration, () {
    result = 'task 2 data';
    print('Task 2 complete');
  });

  return result;
}

void task3(String data) {
  String result = data;
  print('Task 3 complete with $data');
}