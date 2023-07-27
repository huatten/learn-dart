/**
 * 词法作用域
 * dart中的词法有自己明确的作用域范围，它是根据代码的结构({})来决定作用域范围的
 * 优先使用自己作用域中的变量，如果没有找到，则一层层向外查找
 */

var name = 'global';
main(List<String> args) {
  var name = 'main';
  void foo() {
    //var name = 'foo';
    print(name);
  }

  foo();
}
