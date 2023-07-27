/**
 * 类的构造函数
 *      2.命名构造方法
 *        因为不支持方法（函数）的重载，所以我们没办法创建相同名称的构造方法。
 *        因此需要使用命名构造方法
 */

class Person {
  late String name;
  late int age;
  late double height;

  Person() {
    name = 'hua';
    age = 18;
  }

  //命名构造方法
  Person.withArgments(String name, int age) {
    this.name = name;
    this.age = age;
  }
  //命名构造方法
  Person.fromMap(Map<String, dynamic> map) {
    this.name = map['name'];
    this.age = map['age'];
  }
}

main(List<String> args) {
  final p = new Person();
  print(p);

  final p1 = new Person.withArgments('sun', 20);
  print(p1);

  final p2 = new Person.fromMap({'name': 'li', 'age': 22});
  print(p2);
}
