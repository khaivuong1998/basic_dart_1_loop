void main() {
  List<int> list = [];
  for (int i = 10; i <= 200; i++) {
    if (i % 7 == 0 && i % 5 != 0) {
      list.add(i);
    }
  }
  print(list);
}
