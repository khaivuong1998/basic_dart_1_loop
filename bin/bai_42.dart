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
  int min = 9;
  for (int i = 0; i < string.length; i++) {
    if (int.parse(string[i]) < min) {
      min = int.parse(string[i]);
    }
  }
  print(min);
}
