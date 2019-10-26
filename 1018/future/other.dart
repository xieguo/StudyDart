/**
 * 1。Future.value(value) 直接获取一个完成的 Future,该 Future 会直接调用 then 的回调函数
 *
 * 疑惑：为什么立即执行，但是 Hi Hello 是在最后打印的呢？
 * 这是因为 Future中的then会作为新的任务加入到事件队列中（Event Queue）,加入之后需要排队。
 */

// Value example start
// Value example end
// Hi Hello
void valueExample() {
  print("Value example start");
  Future.value("Hi Hello").then((value) {
    print(value);
  });
  print("Value example end");
}

/**
 * 2。Future.error(object) 直接获取一个完成的 Future,
 *
 */
// TODO : example
void main() {
  valueExample();
}
