/**
 *      Future 与JavaScript中的 Promise ⾮常相似，表示⼀个异步操作的最终完成（或失败）及其结果值的表示
 *      简单来说，它就是⽤于处理异步操作的，异步处理成功了就执⾏成功的操作，异步处理失败了就捕获错误或者停⽌后续操作。 
 *      ⼀个Future只会对应⼀个结果，要么成功，要么失败。
 *      Future 的所有API的返回值仍然是⼀ 个 Future 对象，所以可以很⽅便的进⾏链式调⽤。
 */

//Future.then
main(List<String> args) {
  Future.delayed(new Duration(seconds: 3), () {
    return 'hi';
  }).then((data) {
    //执⾏成功会⾛到这⾥
    print(data);
  });
}
