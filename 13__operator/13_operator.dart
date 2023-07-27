/**
 * 运算符
 * 
 * 除法 /
 * 
 * 整除 ～/
 * 
 * 求模 %
 * 
 * 赋值操作 ??=
 *    1.当变量为null时，使用后面的内容进行赋值。
 *    2.当变量有值时，使用自己原来的值。
 * 
 * 条件运算符 expr1 ?? expr2
 *    1.如果expr1是null，则返回expr2的结果
 *    2.如果expr1不是null，则直接使用expr1的结果
 * 
 * 级联语法
 * 对一个对象进行连续的操作
 */

class Person {
  String? name;
  void eat() {
    print("${name} is eating");
  }

  void sleep() {
    print("${name} is sleeping");
  }

  void code() {
    print("${name} is codeing");
  }
}

main(List<String> args) {
  //除法、整除、取模运算
  int num = 11;
  //除法
  print(num / 3); //3.6666666666666665
  //整除
  print(num ~/ 3); //3
  //求模
  print(num % 3); //2

  //??=赋值操作
  //var name = 'harden';
  var name = null;
  name ??= 'curry';
  print(name); //当name初始化为 harden 时，结果为 harden，当初始化为null时，赋值了 curry

  //条件运算符 expr1 ?? expr2
  //var temp = 'nba';
  var temp = null;
  var game = temp ?? 'cba';
  print(game);

  //级联
  final p = new Person();
  p.name = 'hua';
  p.eat();
  p.sleep();
  p.code();

  final s = Person()
    ..name = 'sun'
    ..eat()
    ..sleep()
    ..code();
  print(s);
}
