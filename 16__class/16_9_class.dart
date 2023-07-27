/**
 * 类的构造函数
 *      8.继承
 *      继承不仅仅可以减少我们的代码量，也是多态的使用前提。
 *      Dart中的继承使用extends关键字，子类中使用super来访问父类。
 *      父类中的所有成员变量和方法都会被继承,，但是构造方法除外。
 */

class Animal {
  int age;
  //构造函数
  Animal(this.age);

  eat() {
    print('eating....');
  }
}

class Person extends Animal {
  //子类可以拥有自己的成员变量
  late String name;
  //构造函数
  //初始化列表
  Person(this.name, int age) : super(age); //子类调用父类

  @override
  eat() {
    print('$name is eating...');
  }

  @override
  String toString() {
    return '$name, $age';
  }
}

main(List<String> args) {
  final p = new Person('hua', 18);
  print(p); //hua, 18
  p.age = 19;
  p.eat(); //hua is eating
}
