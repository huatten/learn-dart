/**
 * 类和对象
 * 
 * class 类名(){
 *  类型 成员名；
 *  返回值类型 方法名(参数列表) {
 *    方法体
 *   }
 * }
 */

class Person {
  //1.late关键字延迟初始化
  //late String name;
  //2.使用 ? 表示可空类型
  String? name;
  void study() {
    print('$name在学习');
  }
}

main(List<String> args) {
  var p1 = new Person();
  p1.name = 'curry';
  p1.study();

  //new关键字可以省略
  var p2 = Person();
  print(p2);
}
