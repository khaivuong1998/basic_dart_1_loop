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
  bool check = true;
  for (int i = 0; i < string.length - 1; i++) {
    if (int.parse(string[i]) >= int.parse(string[i + 1])) {
      check = false;
      break;
    }
  }
  if (check) {
    print('$string có các chữ số tăng dần');
  } else {
    print('$string có các chữ số không phải tăng dần');
  }
}
