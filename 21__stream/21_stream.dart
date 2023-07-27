/**
 * Stream 也是用于接受异步事件数据，和 Future 不同的是，它可以接收多个异步操作的结果（成功/失败）。
 * 也就是说，在执行异步任务时，可以通过多次触发成功或失败事件来传递结果数据或者错误异常。
 * 通常用于多次读取异步任务的场景，如网络下载、文件读取。
 */

main(List<String> args) {
  Stream.fromFutures([
    //1秒后返回结果
    Future.delayed(new Duration(seconds: 1), () {
      return 'hello 1';
    }),
    //抛出异常
    Future.delayed(new Duration(seconds: 2), () {
      throw AssertionError('Error');
    }),
    //3秒后返回结果
    Future.delayed(new Duration(seconds: 3), () {
      return 'hello 3';
    })
  ]).listen((data) {
    print(data); // hello1 Error hello3
  }, onError: (e) {
    print(e.message);
  }, onDone: () {
    print('done!'); //done!
  });
}
