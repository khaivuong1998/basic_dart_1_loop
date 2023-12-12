import 'dart:io';

void main() {
  print('nhập số nguyên bất kỳ');
  final NUMERIC = RegExp(r'^-?[0-9]+$');
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
  if (number % 2 == 0) {
    print('${number} là số chẵn');
  } else {
    print('${number} là số lẻ');
  }
}
