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
  int a = -1;
  int b = 1;
  int c;
  for (int i = 0; i < number; i++) {
    c = a + b;
    a = b;
    b = c;
    print(c);
  }
}
