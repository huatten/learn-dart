/**
 * 1.Dart语言的入口是main函数
 * 2.Dart语言的入口函数是没有返回值的
 * 3.传递给main函数的命令行参数是通过 List<String> 完成的，其中每一个string都表示给main的一个参数
 * 4.每行语句结尾必须用分号
 */
main(List<String> args) {
  print('hello dart'); //hello dart
  print(args); //[]
}
