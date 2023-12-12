import 'dart:io';

void main() {
  final NUMERIC = RegExp(r'^[0-9]+$');
  print('nhập số nguyên dương bất kỳ');
  String string = stdin.readLineSync() ?? "";
  // int number;
  if (string.isEmpty || !NUMERIC.hasMatch(string)) {
    while (true) {
      print('bạn đã nhập sai, mời nhập lại');
      string = stdin.readLineSync() ?? "";
      if (NUMERIC.hasMatch(string)) {
        // number = int.parse(string);
        break;
      }
    }
  }
  print(string.length);
  // number = int.parse(string);
  // string = string.split(",") as String;
  // String str = string.split(",") as String;
}
