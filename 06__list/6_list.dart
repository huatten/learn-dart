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
  //list 就是编程语言中常见的数据类型 Array(数组)，但在 Dart 中用 List 对象表示数组
  var list = [0, '1', '2', 3]; //使用类型推导定义
  print(list);

  List<int> arr = [0, 1, 2, 3]; //List关键字明确指定类型
  print(arr.length); //4

  //list 添加/删除/包含
  arr.add(4);
  print(arr); //[0,1,2,3,4]

  arr.remove(1);
  print(arr); //[0,2,3,4]

  print(arr.contains(4)); //true

  //list去重
  List<String> colors = ['blue', 'green', 'red', 'yellow', 'red', 'blue'];
  List<String> newColors = [];
  for (String color in colors) {
    if (!newColors.contains(color)) {
      newColors.add(color);
    }
  }
  print(colors);
  print(newColors);

  //Set应用 去重
  List<String> newColors2 = List.from(Set.from(colors));
  print(newColors2);
}
