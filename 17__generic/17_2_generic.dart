/**
 * 泛型 generic
 * 如果我们需要定义一个类, 用于存储位置信息Location, 
 * 但是并不确定使用者希望使用的是int类型,还是double类型, 甚至是一个字符串, 这个时候如何定义呢?
 *  1. 一种方案是使用Object类型, 但是在之后使用时, 非常不方便
*   2. 另一种方案就是使用泛型.
 */

//Location类的定义: Object方式
class LocationObject {
  Object x;
  Object y;
  LocationObject(this.x, this.y);
}

//Location类的定义: 泛型方式
class LocationGeneric<T> {
  T x;
  T y;
  LocationGeneric(this.x, this.y);
}

//如果我们希望类型只能是num类型, 怎么做呢?
class LocationGenericNumber<T extends num> {
  T x;
  T y;
  LocationGenericNumber(this.x, this.y);
}

//Dart仅仅在类中支持泛型。后来一种称为泛型方法的新语法允许在方法和函数中使用类型参数。
dynamic names = ['a', 'b', 1, 2, true];
//允许在方法和函数中使用类型参数
T getItem<T>(List<T> names, int i) {
  return names[i];
}

main(List<String> args) {
  LocationObject l1 = LocationObject(10, '100');
  print(l1.x.runtimeType); //int
  print(l1.y.runtimeType); //String

  LocationGeneric l2 = LocationGeneric<int>(1, 100);
  print(l2.x.runtimeType); //int

  LocationGeneric l3 = LocationGeneric<String>('111', '100');
  print(l3.x.runtimeType); //String
  print(l3.y.runtimeType); //String

  LocationGenericNumber l4 = LocationGenericNumber<num>(100.19, 200);
  print(l4.x.runtimeType); //double

  print(getItem(names, 0)); //a
  print(getItem(names, 1)); //b
  print(getItem(names, 2)); //1
  print(getItem(names, 3)); //2
  print(getItem(names, 4)); //true
}
