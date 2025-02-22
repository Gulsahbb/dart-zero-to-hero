Future<void> main(List<String> args) async {
  // Dart, Single tread çalışır.
  // Servise istek attık cevap sonradan gelecek.
  // asenkron dendiğinde Future göreceğiz sürekli.
  print('a');
  // 5 saniye bekle sonra gel. Hiçbir müşteri alma.
  // ----------------------------------------------------------------------------
  // Bir işlemvar bu duruma göre ya da anlık olarak değişecek.
  Stream<int> bankMoneys = Stream.empty();
  bankMoneys = dataAddMoney(5, 3);
  /*  bankMoneys.listen((event) {
    print(event);
  });*/

  print(await bankMoneys.where((event) => event == 23).toList());
  // ----------------------------------------------------------------------------
  /*  await Future.forEach([1, 2, 3, 4, 5, 6], (element) async {
    await Future.delayed(Duration(seconds: 2));
    print('İşlem bitti. $element');
  });*/
  // await Future.delayed(Duration(seconds: 2));

  print('ab');
  // Önce ana sonra future yapısındaki işler biter await yazmadan kullanırsak.
  print('Hello');
  Future.delayed(Duration(seconds: 1)).whenComplete(() {
    print('Hello 2');
  });
  print('Hello 3');
  Future.delayed(Duration(seconds: 1)).whenComplete(() {
    print('Hello 4');
  });
}

Stream<int> dataAddMoney(int retryCount, int money) async* {
  int _localRetry = 0;
  await Future.delayed(Duration(seconds: 1));
  while (_localRetry < retryCount) {
    _localRetry++;
    yield money += 5;
    yield 5;
  }
}
