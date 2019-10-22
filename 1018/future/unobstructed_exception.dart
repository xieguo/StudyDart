import 'dart:io';

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
