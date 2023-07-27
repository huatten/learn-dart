/**
 * 词法闭包
 * 闭包可以访问其词法范围内的变量，即使函数在其他地方被使用，也可以正常的访问。
 */
main(List<String> args) {
  foo(num m) {
    return (num n) {
      return n + m;
    };
  }

  var bar = foo(2);
  print(bar(8)); //10
  print(bar(10)); //12
}
