void main() {
  /* int money = 15;
  String userName = 'Gulsah';
  print('$money' + userName);

  if (money > 10) {
    print('RICH');
  } else {
    print('NOT RICH');
  }

  money = money - 10;

  if (money > 10) {
    print('MORE RICH');
  } else {
    print('GO AWAY');
  }

  // musteri bankaya gelir. 10 tlsi var. bir sorgu yapar. Parası yeterliyse sorgu sonucu 20 tlsi alınır.
  // Kalan para 0 dan küçükse bankadan kovulur.
  // Eğer parası bankingconsta yetmiyorsa bankaya almayın.
  int newCustomerMoney = 0;
  const int bankingCost = 5;
  if (newCustomerMoney > bankingCost) {
    print('Hoşgeldiniz');
    newCustomerMoney = newCustomerMoney - bankingCost;
  } else if (newCustomerMoney > 0) {
    print('Lütfen sıra alınız.');
  } else {
    print('Lütfen kredinizi ödeyin.');
  }*/

  // Bir mağazaya isim verilecek.
  // Örnek isimler toplanır.
  // Örnke isimler : Ahmet, Veli, Mehmet, kx
  // mağaza : Ben sadece karakter uzunluğu sadece iki veya daha altı olanları görmek istiyorum.

  final String ahmetCompany = 'Ahmet';
  final String mehmetCompany = 'Mehmet';
  final String veliCompany = 'Veli';
  final String kxCompany = 'Kx';
  final String xCompany = 'x';
  const int companyLength = 4;
  String results = '';

  if (ahmetCompany.length <= companyLength) {
    results += ahmetCompany;
  }
  if (mehmetCompany.length <= companyLength) {
    results += mehmetCompany;
  }
  if (veliCompany.length <= companyLength) {
    results += veliCompany;
  }
  if (kxCompany.length <= companyLength) {
    results += kxCompany;
  }
  if (xCompany.length <= companyLength) {
    results += xCompany;
  }
  if (results.length <= 0) {
    print('Mağaza ismi bulunamadı.');
  } else {
    print('İstenilen Şartlara Göre Mağaza isimleri : $results');
  }
}
