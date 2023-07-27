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
  //1.数字类型
  //int整数
  int min = 0; //int 显示声明
  var max = 99; //Dart 自动推断类型
  print(min);
  print(max);

  //double浮点数
  double height = 1.88;
  print(height);

  //num数字
  //num 可以是整数或浮点数的类型，毕竟 num 是 int 和 double 的父类
  num number = 3.14;
  print(number);
}
