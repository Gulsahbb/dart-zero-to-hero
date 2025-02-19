void main() {
  //controlUserMoney(10, 0);
  // controlUserMoney(0, 5);

  final int result = convertToStandartDollar(30, dollarIndex: 13);
  // final int newResult = convertToStandartDollar(30);
  // final int newResult2 = convertToEuro(userMoney: 300);
  print(result);

  print(sayHello(name: 'GUL'));

  List<dynamic> users = [1, 'a', true];

  for (var item in users) {
    print(item);
  }

  List<String> userName = ['ali', 'veli', 'zeki'];

  // Bu şekilde kullanmaktansa,
  for (var item in userName) {
    if (item == 'ali') {
      print('var');
    }
  }
  // Bu şekilde kullanmak daha güvenilir
  print(userName.contains('ayse'));
}

void controlUserMoney(int userMoney, int minValue) {
  if (userMoney > minValue) {
    print('Parası var.');
  } else {
    print('Parası yok.');
  }
}

int convertToDollar(int userMoney) {
  return userMoney ~/ 13;
}

int convertToStandartDollar(int userMoney, {int dollarIndex = 14}) {
  return userMoney ~/ dollarIndex;
}

int convertToEuro({required int userMoney, int euroIndex = 14}) {
  return userMoney ~/ euroIndex;
}

String sayHello({required String name}) {
  return 'Hello $name';
}
