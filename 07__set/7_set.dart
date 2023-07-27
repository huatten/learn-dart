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
  //Set和List最大的两个不同就是：Set是无序的，并且元素是不重复的
  var numsSet = {1, 2, 3, 4, 4, 2}; //使用类型推导定义
  print(numsSet); //{1,2,3,4}

  Set<String> wordsSet = {'a', 'b', 'c', 'd'}; //明确指定类型
  print(wordsSet);
  print(wordsSet.length); //4

  //Set 添加/删除/包含
  wordsSet.add('e');
  print(wordsSet); //{'a','b','c','d','e'}

  wordsSet.remove('a');
  print(wordsSet); //{'b','c','d','e'}

  print(wordsSet.contains('f')); //false
}
