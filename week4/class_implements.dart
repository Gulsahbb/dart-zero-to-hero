void main(List<String> args) {}

abstract class IStudent {
  final String name;
  final String age;
  int? schoolId;
  void saySomething() {
    print(age);
  }

  IStudent(this.name, this.age, this.schoolId);
}

// Hepsi IStudent kopyası oldular diyebiliriz. Bundan türeyenler dahi aynısı olacak.
class Student implements IStudent {
  final String name;
  final String age;
  Student(this.name, this.age, this.schoolId);

  @override
  void saySomething() {
    print('Student');
  }

  @override
  int? schoolId;
}

class Student2 implements IStudent {
  final String name;
  final String age;
  Student2(this.name, this.age);

  @override
  int? schoolId;

  @override
  void saySomething() {
    print('Student 2');
  }
}
