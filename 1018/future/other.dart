/**
 * 1。Future.value(value) 直接获取一个完成的 Future,该 Future 会直接调用 then 的回调函数
 *
 * 疑惑：为什么立即执行，但是 Hi Hello 是在最后打印的呢？
 * 这是因为 Future中的then会作为新的任务加入到事件队列中（Event Queue）,加入之后需要排队。
 */

// main function start
// main function end
// Hi Hello
void valueExample() {
  Future.value("Hi Hello").then((value) {
    print(value);
  });
}

/**
 * 2。Future.error(object) 直接获取一个完成的 Future,但是是一个发生异常的 Future,
 * 该 Future 会直接调用 catchError 的回调函数
 */
// main function start
// main function end
// 错误信息
void valueExample2() {
  Future.error(Exception("错误信息")).catchError((error) {
    print(error);
  });
}

/**
 * 3。Future.delayed(时间， 回调函数) 在延迟一定时间执行回调函数，执行完回调函数后会执行 then 的回调
 */
// main function start
// main function end
// 3秒后的信息
void valueExample3() {
  Future.delayed(Duration(seconds: 3), () {
    return '3秒后的信息';
  }).then((value) {
    print(value);
  });
}

void main() {
  print('main function start');
//  valueExample();
//  valueExample2();
    valueExample3();
  print('main function end');
}
