int linearSearch(List<int> a, int number) {
  for (int i = 0; i < a.length; i++) {
    if (a[i] == number) {
      return i;
    }
  }
  return -1;
}

void main(List<String> args) {
  List<int> list1 = [0, 1, 1, 1, 2, 3, 5, 8, 13, 21, 34, 55, 89];
  int x = 5;
  int index = linearSearch(list1, x);
  if (index != -1) {
    print('$x found at positions: $index');
  } else {
    print('$x Not Found');
  }
}
