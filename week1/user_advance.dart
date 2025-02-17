void main() {
  // Kullanım tavsiyesi verinin tipi neyse ona göre veri tipi kullanmak.
  // String userName = 'Gulsah';

  // VAR VERİ TİPİ : immutable : Değişkendir,değer değiştirilebilir.
  // var userName2 = 'Gulsah2';
  // var userNameMoney = 15;
  // userNameMoney += 10;

  // FİNAL : Değer değiştirilmesini istemediğimiz yerlerde kullanırız.
  // final int bankMoney = 100;
  // bankMoney += 100; yapamayız. Değer değiştirilemez.

  // CONST : Değer değiştirilmesini istemediğimiz yerlerde kullanırız.
  // const String bankName = 'GBANK';
  // bankName = ''; yapamayız.

  // ----------------
  // Banka ismi : GBANK
  // Bank user 1 = 'ban1musteri' (kimse dokunamaz)
  // bank user 1 parası 100.00

  // yeni müsteri gelecek adı bank2musteri
  // yeni bankaya gelenden bu bank user 1 parasını çıkartıp ekranda göster.

  // const bankName = 'GBANK';
  //  const String bankUser1 = 'bank1musteri';
  const double bankUser1Money = 100.00;

  // const String bankUser2 = 'bank2musteri';
  int bankUser2Money = 500;

  bankUser2Money =
      bankUser2Money -
      bankUser1Money.toInt(); // double ı özelleştirip inte çevirdik.
  print('User 2 Money : $bankUser2Money');

  // Bir haı saha var 100 kişi kapasiteli
  // Saat 10 da 20 kişilik bir müşteri1 maç yapacak
  // 20 kişi kesin gelecek
  // Saat 10 da müşteri2 gelip 50 kişilik yer ayırtacak
  // Bu işlem sonrasında halisaha kapasitesi kaç kalmıştır.

  const int halisahaKapasite = 100;
  const int musteri1 = 20;
  final int musteri2 = 50;

  final int sum = musteri1 + musteri2;
  final int total = halisahaKapasite - sum;
  print(
    'Halısaha Kapasitesi : $halisahaKapasite, Gelen Toplam Kişi : $sum, Halısahada Kalan Yer : $total',
  );
}
