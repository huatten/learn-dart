/**
 *      onError
 *      并不是只有 catchError 回调才能捕获错误， then ⽅法还有⼀个可选参数 onError
 *      我们也可以 它来捕获异常
 */

//Future.catchError 如果异步任务发⽣错误，我们可以在 catchError 中捕获错误
main(List<String> args) {
  Future.delayed(new Duration(seconds: 3), () {
    throw AssertionError('Error');
  }).then((data) {
    //执⾏成功会⾛到这⾥
    print(data);
  }, onError: (e) {
    print(e); //Assertion failed: "Error"
  });
}
