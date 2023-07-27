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
  bool isTrue = true;
  print(isTrue);
  print(isTrue.runtimeType); //bool

  //Dart中不能判断非0即真, 或者非空即真
  var flag = 'flag';
  // if (flag) { //错误写法
  //   print(flag);
  // }
}
