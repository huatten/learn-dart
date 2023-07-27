/**
 * 泛型 generic
 *      泛型通常是类型安全所必需的，他们对于写出严谨高质量的代码是很有用的
 *      适当地指定泛型类型可以生成更好的代码。
 *      您可以使用泛型来减少代码重复。
 */

//可以限制类型
//创建list
var names = ['nba', 'cba', 'cuba', 'ncaa', 123];
//限制类型
//var names2 = <String>['nba', 'cba', 'cuba', 'ncaa', 123]; // 最后一个报错

//创建map
var info = {1: 'one', 'name': 'haha', 'age': 18};
//限制类型
//var info2 = <String, String>{1: 'one', 'name': 'haha', 'age': 18}; //1不能放在 key 中， 18不能放在 value 中

//减少重复代码

//缓存对象
abstract class ObjectCatch<Object> {
  Object getByKey(String key);
  void setByKey(String key, Object value);
}

//缓存字符串
abstract class StringCatch<String> {
  String getByKey(String key);
  void setByKey(String key, String value);
}

//缓存数字？？？
//可以看到会有重复代码
abstract class NumberCatch<num> {
  String getByKey(String key);
  void setByKey(String key, num value);
}

//泛型类型可以省去创建所有这些接口的麻烦。相反，您可以创建一个具有类型参数的接口
//T是替代类型
//它是一个占位符，您可以将其视为开发人员稍后将定义的类型。
abstract class Catch<T> {
  T getByKey(String key);
  void setByKey(String key, T value);
}

main(List<String> args) {
  print(names.runtimeType); //List<Object>
}
