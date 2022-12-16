int binarySearch(List<int> list, int firstIndex, int listLength, int number) {
  if (listLength >= firstIndex) {
    int indexMiddle = (firstIndex + listLength) ~/ 2;
    if (list[indexMiddle] == number) {
      return indexMiddle;
    }

    if (list[indexMiddle] > number) {
      return binarySearch(list, firstIndex, indexMiddle - 1, number);
    }

    return binarySearch(list, indexMiddle + 1, listLength, number);
  }
  return -1;
}

void main() {
  List<int> list = [0, 1, 2, 3, 5, 8, 13, 21, 34, 55, 89];
  int number = 21;
  int listLength = list.length - 1;
  int index = binarySearch(list, 0, listLength, number);
  print('list: $list');
  if (index != -1) {
    print('$number found at positions: $index');
  } else {
    print('$number Not Found');
  }
}
