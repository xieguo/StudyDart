import 'dart:io';

Future<String> getNetworkData() {
  return Future<String>(() {
    sleep(Duration(seconds: 3));
    return "network data";
  });
}

void main() {
  // example 1
  print("main function start");
  print(getNetworkData());
  print("main function end");
  // main function start
  // Instance of 'Future<String>'
  // main function end

  // example 2
  print("main function start");
  var future = getNetworkData(); // 使用变量接收 getNetworkData 返回的future
  // 当 future 有返回结果时，会自动回调 then 中传入的函数
  // 该函数会被放入到事伯循环中，被执行
  future.then((value) {
    print(value);
  });
  print("main function end");
  //  main function start
  //  main function end
  //  network data
}
