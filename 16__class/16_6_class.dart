/**
 * 类的构造函数
 *      5.常量构造方法
 *      在某些情况下，传入相同值时，我们希望 返回同一个对象, 这个时候可以使用 常量构造方法
 *      在一个构造函数中，去调用另外一个构造函数
 *      注意事项：
 *        注意一：拥有常量构造方法的类中，所有的成员变量必须是final修饰的.
 *        注意二：为了可以通过常量构造方法，创建出相同的对象，不再使用 new关键字，而是使用const关键字
 */

class Person {
  String name;
  int age;

  //语法糖
  Person(this.name, this.age);
}

class Student {
  //注意一：拥有常量构造方法的类中，所有的成员变量必须是final修饰的.
  final String name;
  final int age;

  //如果将构造方法前加const进行修饰，那么可以保证同一个参数，创建出来的对象是相同
  const Student(this.name, this.age);
}

main(List<String> args) {
  final p1 = new Person('hua', 18);
  final p2 = new Person('hua', 18);
  print(identical(p1, p2)); //false

  //如果将构造方法前加const进行修饰，那么可以保证同一个参数，创建出来的对象是相同
  //创建出相同的对象，不再使用 new关键字，而是使用const关键字
  final p3 = const Student('sun', 18);
  final p4 = const Student('sun', 18);
  print(identical(p3, p4));
}
