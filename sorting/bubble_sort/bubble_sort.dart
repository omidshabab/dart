import 'dart:math';

void bubbleSort(List<int> list) {
  int length = list.length - 1;
  for (int i = 0; i < length; i++) {
    bool swapped = false;
    for (int j = 0; j < length; j++) {
      if (list[j] > list[j + 1]) {
        int temp = list[j];
        list[j] = list[j + 1];
        list[j + 1] = temp;
        swapped = true;
      }
    }
    if (!swapped) {
      break;
    }
  }
}

void main() {
  final int maxNumber = 20;
  Random random = Random();
  int listLength = 10;
  List<int> list = List<int>.generate(
    listLength,
    (i) => random.nextInt(maxNumber),
    growable: false,
  );
  print('before sorting: ');
  print(list);
  print('--------------------------');
  print('After sorting: ');
  bubbleSort(list);
  print(list);
}
