import 'dart:io';

/**
 * Future 的链式调用
 *
 * 我们可以在 then 中继续返回值，会在下一个链式的 then 调用回调函数中拿到返回的结果
 */
Future<String> getNetworkData() {
  return Future<String>(() {
    sleep(Duration(seconds: 3));
    return "network data 1";
  });
}

void main() {
  print("main function start");

  getNetworkData().then((value) {
    print(value);
    return "network data 2";
  }).then((value) {
    print(value);
    return "network data 3";
  }).then((value) {
    print(value);
  });
  print("main function end");
}
// main function start
// main function end
// network data 1
// network data 2
// network data 3
