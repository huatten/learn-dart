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

//字符串 String
void main(List<String> args) {
  var firstName = 'kevin'; //Dart 自动推断类型

  String lastName = "durat"; //String 显示声明

  String color = ''' 
    green
    red
    blue
  '''; //字符串换行 三引号
  print(color);

  var fullName = firstName + lastName; //+ 字符串拼接

  String sex = 'man';

  //字符串和其他变量或表达式拼接: 使用${expression}, 如果表达式是一个标识符, 那么{}可以省略
  print('my name is $fullName, i am a good $sex!');
}
