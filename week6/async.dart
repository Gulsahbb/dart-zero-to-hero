Future<void> main(List<String> args) async {
  // Dart, Single tread çalışır.
  // Servise istek attık cevap sonradan gelecek.
  // asenkron dendiğinde Future göreceğiz sürekli.
  print('a');
  // 5 saniye bekle sonra gel. Hiçbir müşteri alma.
  /*  await Future.forEach([1, 2, 3, 4, 5, 6], (element) async {
    await Future.delayed(Duration(seconds: 2));
    print('İşlem bitti. $element');
  });*/
  // await Future.delayed(Duration(seconds: 2));

  print('ab');
  // Önce ana sonra future yapısındaki işler biter await yazmadan kullanırsak.
  print('Hello');
  Future.delayed(Duration(seconds: 2)).whenComplete(() {
    print('Hello 2');
  });
  print('Hello 3');
  Future.delayed(Duration(seconds: 1)).whenComplete(() {
    print('Hello 4');
  });
}
