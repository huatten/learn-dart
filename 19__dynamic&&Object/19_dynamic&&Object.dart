/**
 * dynamic和Object的区别
 */

//Dart中所有的类继承自Object
class Person {}

main(List<String> args) {
  var p = Person();
  //p.toString 继承自 Object
  print(p.toString()); //Instance of 'Person'
  print(p.hashCode); //654350039

  final map = {"name": "hua", "age": 19, "height": 1.88};
  Map<String, Object> map1 = {"name": "hua", "age": 19, "height": 1.88};
  Map<String, dynamic> map2 = {"name": "hua", "age": 19, "height": 1.88};
  print(map.runtimeType); //_InternalLinkedHashMap<String, Object>
  print(map1.runtimeType); //_InternalLinkedHashMap<String, Object>
  print(map2.runtimeType); //_InternalLinkedHashMap<String, dynamic>

  //print(map1['name'].length); //error
  //print(map2['name'].length); //3

  //Object str = 'haha';
  //print(str.length); //The getter 'length' isn't defined for the class 'Object'.

  dynamic n = 123;
  print(n.length); //Class 'int' has no instance getter 'length'.

  dynamic s = '123';
  print(s.length); //3
}
