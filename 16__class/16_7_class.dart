/**
 * 类的构造函数
 *      6.工厂构造方法
 *          Dart提供了factory关键字, 用于通过工厂去获取对象
 */

class Person {
  String name;

  static final Map<String, dynamic> _cache = <String, Person>{};

  //语法糖
  Person._internal(this.name);

  //工厂函数必须有返回值
  factory Person(String name) {
    if (_cache.containsKey(name)) {
      return _cache[name];
    } else {
      final p = Person._internal(name);
      _cache[name] = p;
      return p;
    }
  }
}

main(List<String> args) {
  final p1 = new Person('hua');
  final p2 = new Person('hua');
  print(identical(p1, p2)); //true
}
