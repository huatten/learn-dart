/**
 *      Future.wait
 *      有些时候，我们需要等待多个异步任务都执⾏结束后才进⾏⼀些操作，
 *      ⽐如我们有⼀个界⾯，需要先分别从两个⽹络接 ⼝获取数据，获取成功后，
 *      我们需要将两个接⼝数据进⾏特定的处理后再显示到UI界⾯上，应该怎么做？
 */

//Future.wait ，它接受⼀个 Future 数组参数，
//只有数组中所有 Future 都执⾏成功后，才会触发 then 的成功回调，
//只要有⼀个 Future 执⾏失败，就会触发错误回调。
main(List<String> args) {
  Future.wait([
    Future.delayed(new Duration(seconds: 3), () {
      return 'hello';
    }),
    Future.delayed(new Duration(seconds: 5), () {
      return 'world';
    })
  ]).then((res) {
    print(res[0] + res[1]); //5s后打印helloworld
  }).catchError((e) {
    print(e);
  });
}
