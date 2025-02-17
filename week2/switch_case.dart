void main() {
  final int classDegree = 0;
  bool isSuccess = false;

  const int succesValueHigh = 3;
  const int succesValueEq = 2;
  const int succesValueLower = 1;

  switch (classDegree) {
    case succesValueHigh:
      print('BRAVO!');
      isSuccess = true;
      break;
    case succesValueEq:
      print('OLUR');
      isSuccess = true;
      break;
    case succesValueLower:
      print('Yeterli');
      isSuccess = true;
      break;
    default:
      print('FAIL!');
      isSuccess = false;
  }

  print('SONUCUNUZ : $isSuccess');
}
