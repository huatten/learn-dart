/**
 * 类的构造函数
 *      10.隐式接口 implements
 *        Dart中接口比较特殊，没有专门的关键字来声明接口，默认情况所有的类都是接口
 *        class即是interface：
 *          当class被当做interface用时，class中的方法就是接口的方法，需要在子类里重新实现，否则抛出异常；
 *          当class被当做interface用时，class中的成员变量也需要在子类里重新实现，否则抛出异常；
 */

abstract class Runner {
  run();
}

abstract class Flyer {
  fly();
}

//实例可以实现多个接口
class SuperMan implements Runner, Flyer {
  @override
  run() {
    print('超人在奔跑');
  }

  @override
  fly() {
    print('超人在飞翔');
  }
}

main(List<String> args) {
  final s = new SuperMan();
  s.run();
  s.fly();
}
