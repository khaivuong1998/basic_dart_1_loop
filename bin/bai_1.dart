import 'dart:io';

void main() {
  final NUMERIC = RegExp(r'^-?[0-9]+$');
  print('bạn tên là gì?');
  String string = stdin.readLineSync() ?? "";
  print('bạn bao nhiêu tuổi?');
  String string1 = stdin.readLineSync() ?? "";
  int number;
  if (string1.isEmpty || !NUMERIC.hasMatch(string1)) {
    while (true) {
      print('bạn đã nhập sai, mời nhập lại');
      string1 = stdin.readLineSync() ?? "";
      if (NUMERIC.hasMatch(string1)) {
        number = int.parse(string1);
        break;
      }
    }
  }
  number = int.parse(string1);
  print('${string} còn ${100 - number} năm nữa là sẽ mừng thọ 100 tuổi');
}
