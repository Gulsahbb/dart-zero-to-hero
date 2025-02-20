import 'model/user_model.dart';
import 'model/user_model_2.dart';

void main() {
  // Müşteri ad, para, yaş,.. var
  // Müşteri 1
  /* final customerName = 'ahmet';
  final customerMoney = 50;
  final customerAge = 23;
  final customerCity = 'Ankara';*/

  // Müşteri 2
  /*final customerName2 = 'zeki';
  final customerMoney2 = 10;
  final customerAge2 = 10;
  final customerCity2 = 'Bal';*/

  /*controlCustomerAge(customerAge);
  controlCustomerAge(customerAge2);*/

  // Müşterileri kümeleyebiliriz. Class yapılarını kullanarak.
  // print('---------------' * 10);

  User customer1 = User(
    'G',
    15,
    customerAge: 23,
    customerCity: 'Ankara',
    customerId: '123',
  );
  User customer2 = User('G2', 10, customerCity: 'Eskişehir', customerId: '12');
  User customer3 = User('A', 234, customerAge: 34, customerId: '123');

  User newUser = User('B', 345, customerId: '1212');
  newUser.isEmptyId;
  User2 newUser2 = User2('C', 456);
  newUser2.customerMoney;
  print(customer1.customerName);

  // son gelen müşteri şehrine göre kampanya yapılacak.
  if (customer2.customerCity == null) {
    print(customer2.userCode);
  } else {
    if (customer2.customerCity!.isEmpty) {
      print('okok');
    } else if (customer2.customerCity == 'İstanbul') {
      print(
        '${customer2.customerName} isimli müşterinin şehri ${customer2.customerCity}. Tebrikler kazandınız!',
      );
    } else {
      print(
        '${customer2.customerName} isimli müşterinin şehri ${customer2.customerCity}. Kaybettiniz!',
      );
    }
  }
  // Müşteri id si 12 olana indirim yap.
  if (customer3.isSpecialUser('123')) {
    print('İndirim Kazandınız!!');
  } else {
    print('İndirim Yapılamadı.');
  }
}

/*
void controlCustomerAge(int value) {
  // Müşteri yaşı 13 den büyükse işlem yap.
  if (value > 13) {
    print('Alışveriş yapabilirsiniz.');
  } else {
    print('Alışveriş yapamazsınız.');
  }
}

*/
