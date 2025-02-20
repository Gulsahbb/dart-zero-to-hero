// Ad olmak zorunda, Para olmak zorunda , yaşını vermeyeiblir,şehirni vermeyebilir.
// Id ye sadece bu sınıf içinden erişilebilsin.
class User {
  // 1. Özellikler tanımlanır.
  // late ile Bu değişken sonradan değer alacak diyoruz.
  late final String customerName;
  late int customerMoney;
  late final int? customerAge; // Yaşı olmayabilir
  late final String? customerCity; // Şehri olmayabilir.

  late final String userCode;
  // Dart baştan sona OOP - Nesneleri korur.
  // Dart, Nesne kullanıyorsan bunların ne olduğunu, nasıl kullanılacağını bana tanımlaman gerekiyor.
  // Ya da soru işareti at. (Herhangi bir değeri yok demek) Bir işlem yapacağız değer üstüne değer ekelyeceğiz ama değer null da olaiblir o yüzden soru işaretli kullanmamız gerek
  // Kullanılması en kötü yöntem - !- (Ben bu nesnenin dolu geleceğine eminim.)

  late final String _customerId; // private yaptık.
  // Biz burada bu değişkenleri tanımlamamız gerekiyor o yüzden,
  // 2. Constructor
  User(
    String customerName,
    int customerMoney, {
    required String customerId,
    int? customerAge,
    String?
    customerCity, // {} kullanırsak Opsiyonel olarak gelmeyebilir diyoruz bu şekilde yazarak
  }) {
    this.customerName = customerName;
    this.customerMoney = customerMoney;
    this.customerAge = customerAge;
    this.customerCity = customerCity;
    _customerId = customerId;
    userCode =
        '$customerName isimli müşterinin şehri ${(customerCity ?? 'İstanbul')}';
  }
  bool isSpecialUser(String customerId) {
    return _customerId == customerId;
  }

  /*bool isEmptyId(){
    return _customerId.isEmpty;
  }*/

  bool get isEmptyId => _customerId.isEmpty; // Her çağırıldığında hesaplar.
}
