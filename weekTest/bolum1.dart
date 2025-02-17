import 'dart:io';

void main() {
  /* double productPrice = 50000;
  const String productName = 'Bilgisayar';
  int productStock = 30;
  int discount = 12;

  print(
    'Ürün : $productName\nFiyat : $productPrice\nStok Sayısı : $productStock',
  );

  productPrice -= productPrice * (discount / 100);
  print('Ürüne %$discount indirim yapıldı. Yeni Fiyat : $productPrice');

  productStock--;
  print('Ürün satın Alındı. Kalan : $productStock');*/

  /*var now = DateTime.now();
  int year = now.year;
  print("Doğum Tarihinizi Giriniz :");
  int? BirtYear = int.parse(stdin.readLineSync()!);

  int age = year - BirtYear;
  print("Yaşınız : ${age}");*/

  /* print(
    'Hadi birlikte dörtgenlerin alan ve çevresini bulalım!!\nBize bir kısa kenar birde uzun kenar söylemek ister misin?\nBaşlıyoruz~~',
  );
  print('Kısa Kenar: ');
  int? kisaKenar = int.parse(stdin.readLineSync()!);
  print('Uzun Kenar: ');
  int? uzunKenar = int.parse(stdin.readLineSync()!);

  int alan = kisaKenar * uzunKenar;
  int cevre = (kisaKenar + uzunKenar) * 2;

  if (kisaKenar > 0 && uzunKenar > 0) {
    if (kisaKenar < uzunKenar) {
      print(
        'Bu bir dikdörtgen!\nKısa Kenar : $kisaKenar\nUzun Kenar : $uzunKenar\nAlan : $alan\nÇevre : $cevre',
      );
    } else if (kisaKenar == uzunKenar) {
      print(
        'Bu bir kare!\nKısa Kenar : $kisaKenar\nUzun Kenar : $uzunKenar\nAlan : $alan\nÇevre : $cevre',
      );
    } else {
      print('Hay aksi! Tekrar Çalıştır.');
    }
  }*/

  /*  int toplamKarakter = 0;
  print("Lütfen bir metin giriniz. : ");
  String? metin = stdin.readLineSync();

  List<String>? kelimeler = metin?.split(' ');
  //print(kelimeler?[1]);

  for (var i = 0; i < kelimeler!.length; i++) {
    int karakter = kelimeler[i].length;

    toplamKarakter += karakter;
  }

  print('Yazdığınız metin : $metin\nKarakter Sayısı : $toplamKarakter');*/

  /* print('Bir sayı Giriniz : ');
  int? sayi = int.parse(stdin.readLineSync()!);

  if (sayi > 0) {
    print('$sayi, pozitif bir sayıdır.');
  } else if (sayi < 0) {
    print('$sayi, negatif bir sayıdır.');
  } else if (sayi == 0) {
    print('$sayi, sıfıra eşittir..');
  } else {
    print('Geçersiz Değer');
  }*/

  /* print('Bir harf Giriniz : ');
  String? harf = stdin.readLineSync();
  // harf = harf?.toLowerCase();
  if (harf == 'a' ||
      harf == 'e' ||
      harf == 'ı' ||
      harf == 'i' ||
      harf == 'u' ||
      harf == 'ü' ||
      harf == 'o' ||
      harf == 'ö') {
    print('Girdiğiniz harf sesli bir harftir.');
  } else {
    print('Girdiğiniz harf sessiz bir harftir.');
  }*/

  /*print('1.Sayıyı Giriniz. : ');
  int? sayi1 = int.parse(stdin.readLineSync()!);
  print('2.Sayıyı Giriniz. : ');
  int? sayi2 = int.parse(stdin.readLineSync()!);

  if (sayi1 > sayi2) {
    print('Büyük Sayi : $sayi1');
  } else if (sayi1 < sayi2) {
    print('Büyük Sayi : $sayi2');
  } else if (sayi1 == sayi2) {
    print('İki sayı birbirine eşittir.');
  } else {
    print('Lütfen geçerli bir değer girin.');
  }*/

  /* print('Şifrenizi giriniz. : ');
  String? password = stdin.readLineSync();

  if (password!.length < 8) {
    print('Şifre en az 8 karakter uzunluğunda olmalıdır.');
  } else if (!password.contains(RegExp(r'[A-Z]'))) {
    print('Şifre en az bir büyük harf içermelidir.');
  } else if (!password.contains(RegExp(r'[a-z]'))) {
    print('Şifre en az bir küçük harf içermelidir.');
  } else {
    print('Şifre geçerli.');
  }*/
}
