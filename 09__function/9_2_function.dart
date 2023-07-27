/**
 * 函数是一等公民？
 * 函数可以作为另一个函数的参数传入，也可以作为另外一个函数的返回值
 */

void foo() {
  print('hello');
}

//函数作为参数
void test(Function func) {
  func();
}

//函数作为返回值
Function getFunc() {
  return foo;
}

void main(List<String> args) {
  test(foo); //hello

  Function bar = getFunc();
  bar(); //hello
}
