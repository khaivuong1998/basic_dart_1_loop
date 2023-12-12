import 'dart:io';
import 'dart:math';

void main() {
  final NUMERIC = RegExp(r'^[0-9]+$');
  print('mời đoán 1 số bất kỳ từ 1 - 100');
  String string = stdin.readLineSync() ?? "";
  Random random = Random();
  int n = random.nextInt(100) + 1;
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
  if (number == n) {
    print('Xin chúc mừng bạn, bạn đã đoán chính xác');
  }
  int count = 0;
  while (number != n) {
    count++;
    if (count > 3) {
      print('Bạn đã đoán sai 3 lần, bạn đã hết lượt đoán');
      break;
    } else if (number > n) {
      print('Số bạn đoán chưa chính xác, bạn cần đoán nhỏ hơn');
    } else if (number < n) {
      print('Số bạn đoán chưa chính xác, bạn cần đoán lớn hơn');
    } else {
      print('Xin chúc mừng bạn, bạn đã đoán chính xác');
      break;
    }
    number = int.parse(stdin.readLineSync() ?? "0");
  }
}
