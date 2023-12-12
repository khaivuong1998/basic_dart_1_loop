import 'dart:io';

void main() {
  final NUMERIC = RegExp(r'^[0-9]+$');
  print('nhập số nguyên dương bất kỳ');
  String string = stdin.readLineSync() ?? "";
  int number;
  if (string.isEmpty || !NUMERIC.hasMatch(string)) {
    while (true) {
      print('bạn đã nhập sai, mời nhập lại');
      string = stdin.readLineSync() ?? "";
      if (NUMERIC.hasMatch(string)) {
        number = int.parse(string);
        break;
      }
    }
  }
  number = int.parse(string);
  int sum = number;
  for (int i = 1; i < number; i++) {
    stdout.write('$i*');
    sum = sum * i;
  }
  stdout.write('$number = $sum');
}
