/**
 * 类的构造函数
 *      13.枚举类型
 *          枚举也是一种特殊的类, 通常用于表示固定数量的常量值。
 *          枚举类型中有两个比较常见的属性:
 *            1.index: 用于表示每个枚举常量的索引, 从0开始.
 *            2.values: 包含每个枚举值的List.
 */

enum Colors { blue, red, green }
main(List<String> args) {
  print(Colors.blue); //Colors.blue
  print(Colors.blue.index); //0
  print(Colors.values); //[Colors.blue, Colors.red, Colors.green]
}
