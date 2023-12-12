import 'dart:io';

void main() {
  final NUMERIC = RegExp(r'^[0-9]+$');
  print('nhập số nguyên dương thứ 1');
  String string1 = stdin.readLineSync() ?? "";
  int number1;
  if (string1.isEmpty || !NUMERIC.hasMatch(string1)) {
    while (true) {
      print('bạn đã nhập sai, mời nhập lại');
      string1 = stdin.readLineSync() ?? "";
      if (NUMERIC.hasMatch(string1)) {
        number1 = int.parse(string1);
        break;
      }
    }
  }
  number1 = int.parse(string1);
  print('nhập số nguyên dương thứ 2');
  String string2 = stdin.readLineSync() ?? "";
  int number2;
  if (string2.isEmpty || !NUMERIC.hasMatch(string2)) {
    while (true) {
      print('bạn đã nhập sai, mời nhập lại');
      string2 = stdin.readLineSync() ?? "";
      if (NUMERIC.hasMatch(string2)) {
        number2 = int.parse(string2);
        break;
      }
    }
  }
  number2 = int.parse(string2);
  int a;
  int b;
  if (number1 > number2) {
    if (number1 % number2 == 0) {
      print('UCLN của $number1 và $number2 là $number2');
    } else {
      a = number1 % number2;
      b = number2;
      while (true) {
        if (b % a == 0) {
          print('UCLN của $number1 và $number2 là $a');
          break;
        }
        b = b % a;
        a = number2 % a;
      }
    }
  }
}
