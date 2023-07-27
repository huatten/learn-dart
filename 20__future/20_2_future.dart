/**
 *      Future.catchError 
 *      如果异步任务发⽣错误，我们可以在 catchError 中捕获错误
 */

//Future.catchError 如果异步任务发⽣错误，我们可以在 catchError 中捕获错误
main(List<String> args) {
  Future.delayed(new Duration(seconds: 3), () {
    throw AssertionError('Error');
  }).then((data) {
    //执⾏成功会⾛到这⾥
    print(data);
  }).catchError((e) {
    //执⾏失败会⾛到这⾥
    print(e); //Assertion failed: "Error"
  });
}
