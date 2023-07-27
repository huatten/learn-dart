/**
 * 匿名函数
 */

void printItem(item) {
  print(item);
}

void main(List<String> args) {
  List<String> stars = ['kd', 'harden', 'curry'];

  for (String star in stars) {
    print(star); //kd, harden, curry
  }
  //匿名函数
  stars.forEach((item) {
    printItem(item);
  });

  //箭头函数 如果只有一行简单的代码
  stars.forEach((item) => printItem(item)); //kd, harden, curry

  //练习
  final nba = stars.map((item) => 'NBA-' + item);
  print(nba); //(NBA-kd, NBA-harden, NBA-curry)
  print(nba.runtimeType); //MappedListIterable<String, String>
  print(List.from(nba)); //[NBA-kd, NBA-harden, NBA-curry]
  print(List.from(nba).runtimeType); //List<dynamic>
}
