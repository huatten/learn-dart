import '16_6_class.dart';

/**
 * 类的构造函数
 *      12. 类成员和方法
 *          前面我们在类中定义的成员和方法都属于对象级别的, 在开发中, 我们有时候也需要定义类级别的成员和方法
 *          在Dart中我们使用static关键字来定义:
 */

class Person {
  String? name;
  int? age;

  static String? sex;

  talk() {
    print('$name is talking');
  }

  static speak() {
    print('sex is $sex');
  }
}

main(List<String> args) {
  final p = new Person();
  p.name = 'hua';
  p.age = 19;
  p.talk();

  //error
  //p.sex = 'man';  //实例对象不能访问类成员
  Person.sex = 'man';

  //error
  //p.speak(); //实例对象不能访问类方法
  Person.speak();
}
