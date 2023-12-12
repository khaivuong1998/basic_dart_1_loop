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
  for (int i = 1; i <= number1 * number2; i++) {
    if (i % number1 == 0 && i % number2 == 0) {
      print('BCNN của $number1,$number2 là $i');
      break;
    }
  }
  // int a = 1071;
  // int b = 462;
  // print(a % b);
  // int c;
  // int d;
  // if (a > b) {
  //   if (a % b == 0) {
  //     print('UCLN của $a và $b là $b');
  //   } else {
  //     c = a % b;//147
  //     d = b;//462
  //     while (true) {
  //       if (d % c == 0) {
  //         print('UCLN của $a và $b là $c');
  //         break;
  //       }
  //       d = d % c;//21
  //       c = b % c;
  //     }
  //   }
  // }
}
