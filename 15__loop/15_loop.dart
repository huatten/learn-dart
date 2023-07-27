/**
 * 循环
 */
main(List<String> args) {
  for (var i = 0; i < 10; i++) {
    print(i);
  }

  const names = ['a', 'b', 'c'];
  for (var name in names) {
    print(name);
  }
}
