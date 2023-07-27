/**
 * 类的构造函数
 *      3.初始化列表
 */

class Rectanle {
  num w;
  num h;
  late num area;

  //语法糖写法
  // Rectanle(this.w, this.h) {
  //   this.area = w * h;
  // }

  // 初始化列表
  Rectanle(this.w, this.h) : area = w * h;

  @override
  String toString() {
    return 'width:$w, height:$h, area:$area';
  }
}

main(List<String> args) {
  final r = new Rectanle(2, 4); //width:2, height:4, area:8
  print(r);
}
