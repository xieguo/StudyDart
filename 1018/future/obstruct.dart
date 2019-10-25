import 'dart:io';

String getNetworkData() {
  sleep(Duration(seconds: 3));
  return "network data";
}

void main() {
  print("main function start");
  print(getNetworkData());
  print("main function end");
}

//main function start
//network data
//main function end
