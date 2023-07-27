/**
 * 数据类型
 * 1.数字 num
 *    1.1 int整数
 *    1.2 double浮点数
 * 
 * 2.字符串 String
 * 
 * 3.布尔 bool
 * 
 * 4.集合之List List
 * 
 * 5.集合之Set Set
 * 
 * 6.集合之Map Map
 */

void main(List<String> args) {
  var infoMap = {'name': 'kd', 'age': 32}; //使用类型推导定义
  print(infoMap);

  Map<String, dynamic> manMap = {'name': 'harden', 'age': 31}; //明确指定类型
  print(manMap);
  print(manMap.length); //2

  //由于它有key和value，因此无论是读取值，还是操作，都要明确是基于key的，还是基于value的，或者是基于key/value对的。
  print(manMap['name']); //harden

  //获取所有的entries
  print(manMap.entries); //(MapEntry(name: harden), MapEntry(age: 31))

  //获取所有的keys
  print(manMap.keys); //(name, age)

  //获取所有的values
  print(manMap.values); //(harden, 31)

  //是否包含某个key
  print(manMap.containsKey('height')); //false

  //根据key删除元素
  manMap.remove('age'); //返回值31
  print(manMap); //{name: harden}
}
