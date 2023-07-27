/**
 * 类的构造函数
 *      1.普通构造方法
 *        通过类创建一个对象的时候，会调用这个类的构造方法
 *        当类中没有明确指定构造方法的时候，将默认拥有一个无参的构造方法
 */

class Person {
  late String name;
  late int age;
  late double height;
  void study() {
    print('$name在学习');
  }

  //定义自己的构造方法,默认的构造方法将会失效
  //在实现构造方法时，通常做的事情就是通过 参数 给 属性 赋值
  //参数设置为可选参数
  // Person(String name, [int? age, double? height]) {
  //   this.name = name;
  //   this.age = age!;
  //   this.height = height!;
  // }

  //语法糖
  //Person(this.name, this.age, this.height);

  //Map
  Person(Map<String, dynamic> map) {
    this.name = map['name'];
    this.age = map['age'];
    this.height = map['height'];
  }
}

main(List<String> args) {
  //final p = new Person('hua', 20, 1.88);
  Map<String, dynamic> info = {'name': 'hua', 'age': 18, 'height': 1.88};
  final p = new Person(info);
  p.study();
}
