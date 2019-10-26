import 'dart:io';

/**
 * Future的使用过程
 *
 * 1.创建一个Future
 * 2.通过 .then(成功回调函数)的方式来监听 Future内部执行完成时获取到的结果
 * 3.通过 .catchError(失败或异常回调函数)的方式来监听 Future 内部执行失败或者出现异常时的错误信息
 */

Future<String> getNetworkData() {
  return Future<String>(() {
    sleep(Duration(seconds: 3));
    throw Exception("网络请求出现错误");
  });
}

void main() {
  print("main function start");
  var future = getNetworkData();
  future.then((value) {
    print(value);
  }).catchError((error) {
    print(error);
  });
  print(future);
  print("main function end");

//  main function start
//  Instance of 'Future<String>'
//  main function end
//  Exception: 网络请求出现错误
}
