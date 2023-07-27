/**
 * 函数
 * Dart是一种真正的面向对象语言，所以即使函数也是对象，所有也有类型, 类型就是Function。
 * 
 * 定义方式：
 * 返回值  函数名称(参数列表){
 *    函数体
 *    return 返回值
 * }
 * 
 * 函数参数问题
 * 1.函数可选参数：
 *    1-1.命名可选参数   {param1, param2, ...}
 *    1-2.位置可选参数   [param1, param2, ...]
 * 2.函数必选参数 
 * 3.函数默认参数 ：只有可选参数才可以有默认值, 必须参数不能有默认值
 */

//定义一个完整函数
num sum(num m, num n) {
  return m + n;
}

//省略类型
add(m, n) {
  return m + n;
}

//箭头语法
int plus(int m, int n) => m + n;

////////////////////////////////////////////////////////////////////////////////

//函数参数问题
//函数可选参数：1.命名可选参数   2.位置可选参数

//命名可选参数  {param1, param2, ...}
void printInfo(String name, {int? age, double? height}) {
  //https://dart.dev/tools/diagnostic-messages#missing_default_value_for_parameter
  print('$name, $age, $height');
}

//位置可选参数  [param1, param2, ...]
void printLog(String name, [int? age, double? height]) {
  print('$name, $age, $height');
}

//命名可选参数必选参数 required
void printConsole(String name, {required int age}) {
  print('$name, $age');
}

//只有可选参数才可以有默认值, 必须参数不能有默认值
void printDefault(String name, [int age = 0, double height = 0.00]) {
  print('$name, $age, $height');
}

void main(List<String> args) {
  print(sum(1, 0));

  printInfo('harden'); //harden, null, null
  printInfo('harden', age: 31); //harden, 31, null
  printInfo('harden', age: 31, height: 1.98); //harden, 31, 1.98
  printInfo('harden', height: 1.98); //harden, null, 1.98

  printLog('kd'); //kd, null, null
  printLog('kd', 32); //kd, 32, null
  printLog('kd', 32, 2.08); //kd, 32, 2.08

  printConsole('curry', age: 30); // curry, 30

  printDefault('pulo'); //pulo, 0, 0.0
}
