/**
 *      Future.whenComplete
 *      有些时候，我们会遇到⽆论异步任务执⾏成功或失败都需要做⼀些事的场景，⽐如在⽹络请求前弹出加载对话框，在请 求结束后关闭对话框。
 *      这种场景，可以有两种办法：
 *        1.分别在 then 或 catch 中关闭⼀下对话框
 *        2.使⽤ Future 的 whenComplete 回调
 */

//Future.catchError 如果异步任务发⽣错误，我们可以在 catchError 中捕获错误
main(List<String> args) {
  Future.delayed(new Duration(seconds: 3), () {
    throw AssertionError('Error');
  }).then((data) {
    //执⾏成功会⾛到这⾥
    print(data);
  }).catchError((e) {
    print(e);
  }).whenComplete(() {
    //⽆论成功或失败都会⾛到这⾥
    print('⽆论成功或失败都会⾛到这⾥');
  });
}
