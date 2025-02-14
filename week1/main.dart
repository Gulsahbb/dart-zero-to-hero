void main() {
  // Bir değeri console da görmek, yazdırmak için kullanılıyor.
  // Debug ederken kontrol için de kullanabilabiliyor.
  // İçerisine yazılan her şey nesnedir. (object)
  print('Merhaba Dünya');

  // Karakter Tanımlaması
  print('Merhaba' + ' ' + 'Dünya');

  // Numara Tanımlaması
  print(2 + 3);

  // ? String
  // Daha efektif kod yazmak için yazdıracağımız veri değişkene atanır.
  // İsimlendirme yaparken anlamlı bir isimlendirme yapmamız daha iyi olur.
  String metin = 'Lorem ipsum 3';

  print(metin);
  print(metin);
  print(metin);
  print(metin);
  print(metin);
  print(metin);

  // ? int
  int money = 15;
  // Farklı veri tiplerini toplayamayız. Bu yüzden String interpolation kullanılabilir.
  print(metin + money.toString());
  // Ya da çağıracağımız nesneyi '$money' yazabiliriz.
  print(metin + ' ' + '$money');
}
