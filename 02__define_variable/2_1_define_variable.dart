/**
 * 定义变量 -- 明确声明
 */

// 明确声明  =>  变量类型 变量名 = 赋值
void main(List<String> args) {
  String name = 'kd';
  name = 'kobe'; //ok => 定义的变量可以修改值, 但是不能赋值其他类型
  //name = 100; //error => 将一个int值赋值给一个String变量

  //数字内置类型
  num count = 99;
  print(count.runtimeType); //int

  //整数值，范围通常在-32768到32767之间，num的子类型
  int age = 32;

  //64位双精度浮点数，按照IEEE754的标准，num的子类型
  double height = 2.11;

  //布尔内置类型
  bool isDone = true;
  print(isDone.runtimeType); //bool

  //所有类的基类，包括基本数据类型、Function和Null。所以任何类型的数据都可以赋值给Object声明的对象
  Object o = 'people';
  o = 100;

  //print(name, age, height)  //error 参数超出
  print(name); //kobe
  print(age); //32
  print(height); //2.11
  //参数拼接
  print('${name} ${age} ${height}'); //kobe 32 2.11
  print(o); //100
}
