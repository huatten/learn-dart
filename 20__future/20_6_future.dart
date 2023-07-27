/**
 *      async/await
 *      有些时候，我们需要等待多个异步任务都执⾏结束后才进⾏⼀些操作，
 *      ⽐如我们有⼀个界⾯，需要先分别从两个⽹络接 ⼝获取数据，获取成功后，
 *      我们需要将两个接⼝数据进⾏特定的处理后再显示到UI界⾯上，应该怎么做？
 */

Future<String> login(String username, String pwd) async {
  return Future.delayed(new Duration(seconds: 1), () {
    return '9527';
  });
}

Future<String> getUserInfo(String id) async {
  return Future.delayed(new Duration(seconds: 2), () {
    return 'hua is admin!';
  });
}

Future saveUserInfo(String userInfo) {
  return Future.delayed(new Duration(seconds: 3), () {
    return userInfo;
  });
}

//async ⽤来表示函数是异步的，定义的函数会返回⼀个 Future 对象，可以使⽤then⽅法添加回调函数。
void task() async {
  try {
    //await 后⾯是⼀个 Future ，表示等待该异步任务完成，异步完成后才会往下⾛； await 必须出现在 async 函数 内部。
    String id = await login('hua', '12345');
    print('登录成功，用户id为${id}'); //1s 后打印 登录成功，用户id为9527
    String userInfo = await getUserInfo(id);
    print('获取用户信息成功，结果为${userInfo}'); //2s 后打印 获取用户信息成功，结果为hua is admin!
    saveUserInfo(userInfo); //3s 后打印 保存用户信息成功
    print('保存用户信息成功');
  } catch (e) {
    print(e);
  }
}

main(List<String> args) {
  //Future.then
  login('hua', '12345').then((id) {
    print('登录成功，用户id为${id}'); //1s 后打印 登录成功，用户id为9527
    return getUserInfo(id);
  }).then((userInfo) {
    print('获取用户信息成功，结果为${userInfo}'); //2s 后打印 获取用户信息成功，结果为hua is admin!
    return saveUserInfo(userInfo);
  }).then((data) {
    print('保存用户信息成功'); //3s 后打印 保存用户信息成功
  }).catchError((e) {
    print(e);
  });

  //async/wait
  task();
}
