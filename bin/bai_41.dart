import 'dart:io';

void main() {
  final NUMERIC = RegExp(r'^[0-9]+$');
  print('nhập số nguyên dương bất kỳ');
  String string = stdin.readLineSync() ?? "";
  if (string.isEmpty || !NUMERIC.hasMatch(string)) {
    while (true) {
      print('bạn đã nhập sai, mời nhập lại');
      string = stdin.readLineSync() ?? "";
      if (NUMERIC.hasMatch(string)) {
        break;
      }
    }
  }
  String str;
  String str1 = [string.length] as String;
  // for (int i = 0; i < string.length; i++) {
  //   str = string[i];
  //   str1[i] = string[string.length - 1 - i];
  //   string[string.length - 1 - i] = str;
  // }
}
