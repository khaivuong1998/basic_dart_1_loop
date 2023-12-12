void main() {
  int count;
  int tong = 0;
  for (int i = 10000; i < 100000; i++) {
    count = 0;
    for (int j = 1; j <= i; j++) {
      if (i % j == 0) {
        count++;
      }
    }
    if (count == 2) {
      print(i);
      tong++;
    }
  }
  print(tong);
}
