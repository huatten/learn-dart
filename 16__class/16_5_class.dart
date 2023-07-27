/**
 * 类的构造函数
 *      4.重定向构造方法
 *      在某些情况下, 我们希望在一个构造方法中去调用另外一个构造方法, 这个时候可以使用重定向构造方法：
 *      在一个构造函数中，去调用另外一个构造函数
 */

class Person {
  String? name;
  int? age;

  //语法糖
  Person(this.name, this.age);
  //在一个构造函数中，去调用另外一个构造函数
  //（注意：是在冒号后面使用this调用）
  Person.fromName(String name) : this(name, 0);
  Person.fromAge(int age) : this(null, age);

  @override
  String toString() {
    return '$name';
  }
}

main(List<String> args) {
  final p = new Person.fromName('hua');
  print(p); //hua
}
