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
  print('nhập số thực thứ 3');
  String string3 = stdin.readLineSync() ?? "";
  double number3;
  if (string3.isEmpty || !DOUBLENUMBER.hasMatch(string3)) {
    while (true) {
      print('bạn đã nhập sai, mời nhập lại');
      string3 = stdin.readLineSync() ?? "";
      if (DOUBLENUMBER.hasMatch(string3)) {
        number3 = double.parse(string3);
        break;
      }
    }
  }
  number3 = double.parse(string3);
  if (number1 > number2 && number1 > number3) {
    print('$number1 là số lớn nhất trong 3 số $number1, $number2, $number3');
  } else if (number2 > number1 && number2 > number3) {
    print('$number2 là số lớn nhất trong 3 số $number1, $number2, $number3');
  } else {
    print('$number3 là số lớn nhất trong 3 số $number1, $number2, $number3');
  }
}
