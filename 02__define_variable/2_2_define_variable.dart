import 'dart:io';

/**
 * 定义变量 
 */

//类型推导  =>  var/dynamic/const/final 变量名称 = 赋值
void main(List<String> args) {
  // 1.var
  var name = 'harden';
  //name = 30; //error => 不可以将int类型赋值给一个String类型
  name = 'kd';
  print(name);
  print(name.runtimeType); //String

  //2.dynamic 动态类型，会在编译阶段检查类型
  dynamic message = 'hello';
  message = 18;
  print(message);
  print(message.runtimeType); //int

  //3.final && const 定义常量
  final user = 'admin';
  //user = 'user'; //error
  const age = 19;
  //age = 20; //error
  print(user);
  print(age);

  //final和const区别
  //1.const 是编译器常量，在赋值时，赋值的内容必须是在编译期间就能确定下来的
  //2.final 是运行时常量，在赋值时，可以动态获取，比如赋值一个函数
  String getText() {
    return 'text';
  }

  //const text = getText();  //error
  final text = getText(); //ok
  print(text);

  //3.const 不可以赋值为DateTime.now()
  //4.final 一旦赋值后就有确定的结果，不会再次赋值，一个final变量只能被设置一次

  //const time = DateTime.now();  //error
  final time = DateTime.now();
  print(time); //2021-04-23 13:47:23.502237
  sleep(Duration(seconds: 3));
  print(time); //2021-04-23 13:47:23.502237

  //5.const 可以放在赋值语句右边，可以共享对象，提高性能

  final a = const Person();
  final b = const Person();
  print(a); //Instance of 'Person'
  print(b); //Instance of 'Person'
  print(identical(a, b)); //true!!!

  final c = Person();
  final d = Person();
  print(c); //Instance of 'Person'
  print(d); //Instance of 'Person'
  print(identical(c, d)); //false!!!
}

class Person {
  const Person();
}
