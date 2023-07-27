/**
 * 类的构造函数
 *      7.setter 和 getter
 *      默认情况下，Dart中类定义的属性是可以直接被外界访问的
 *      但是某些情况下，我们希望监控这个类的属性被访问的过程，
 *      这个时候就可以使用setter和getter了
 */

class Person {
  String name;

  String get getName {
    print('get:$name');
    return name;
  }

  set setName(String name) {
    print('set:$name');
    this.name = name;
  }

  Person(this.name);
}

main(List<String> args) {
  final p = new Person('hua');
  p.setName = 'sun';
  p.getName;
}
