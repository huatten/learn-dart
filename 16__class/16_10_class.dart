import 'dart:math';
/**
 * 类的构造函数
 *      9.抽象类 abstract
 *      抽象方法：在Dart中没有具体实现的方法（没有方法体），就是抽象方法。
 *        1.抽象方法必须存在于抽象类中
 *        2.抽象类是用abstract声明的类
 */

abstract class Person {
  //抽象类里面可以定义抽象方法！！！！
  void foo();
}

//普通类中不能定义抽象方法
// class Animal {
//   void foo();
// }

main(List<String> args) {
  //抽象类不能被实例化！！！！
  //final p = new Person();

  final c1 = Circle(10);
  final c2 = Circle(20);
  print(c1.getArea());
  print(c2.getArea());

  final r1 = Rectangle(10, 20);
  final r2 = Rectangle(20, 30);
  print(r1.getArea());
  print(r2.getArea());
}

//定义抽象类
abstract class Shape {
  //定义抽象方法
  getArea(); //抽象类中的抽象方法必须被子类实现
}

class Circle extends Shape {
  double r;

  Circle(this.r);

  getArea() {
    return r * r * pi;
  }
}

class Rectangle extends Shape {
  double w;
  double h;

  Rectangle(this.w, this.h);

  getArea() {
    return w * h;
  }
}

// 计算面积 Shape
calcuArea(Shape s) {
  return s.getArea();
}
