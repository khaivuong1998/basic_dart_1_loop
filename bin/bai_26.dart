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
  bool check = false;
  for (int i = 0; i < string.length / 2; i++) {
    if (string[i] == string[string.length - 1 - i]) {
      check = true;
    } else {
      check = false;
      break;
    }
  }
  if (check == true) {
    print('$string là số thuận nghịch');
  } else {
    print('$string không phải là số thuận nghịch');
  }
}
