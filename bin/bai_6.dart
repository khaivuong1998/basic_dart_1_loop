import 'dart:io';

void main() {
  final DOUBLENUMBER = RegExp(r'^-?\d*(\.\d+)?$');
  print('nhập số thực thứ 1');
  String string1 = stdin.readLineSync() ?? "";
  double number1;
  if (string1.isEmpty || !DOUBLENUMBER.hasMatch(string1)) {
    while (true) {
      print('bạn đã nhập sai, mời nhập lại');
      string1 = stdin.readLineSync() ?? "";
      if (DOUBLENUMBER.hasMatch(string1)) {
        number1 = double.parse(string1);
        break;
      }
    }
  }
  number1 = double.parse(string1);
  print('nhập số thực thứ 2');
  String string2 = stdin.readLineSync() ?? "";
  double number2;
  if (string2.isEmpty || !DOUBLENUMBER.hasMatch(string2)) {
    while (true) {
      print('bạn đã nhập sai, mời nhập lại');
      string2 = stdin.readLineSync() ?? "";
      if (DOUBLENUMBER.hasMatch(string2)) {
        number2 = double.parse(string2);
        break;
      }
    }
  }
  number2 = double.parse(string2);
  if (number1 * number2 > 0) {
    print('$number1 và $number2 cùng dấu');
  } else {
    print('$number1 và $number2 khác dấu');
  }
}
