/**
 * await、async
 * 1. 可以让我们用 同步的代码格式 ，去实现 异步的调用过程
 * 2. 通常一个 async 的函数会返回一个 Future.
 *
 * 备：
 * 1. Future 可以做到不阻塞我们的线程，让线程继续执行，并且在完成某个操作时改变自己的状态，并且回调 then 或者 errorCatch 函数。
 * 2. 如何生成 Future:
 *    2.1 通过 Future 构造函数
 *    2.2 通过 async 函数
 */

void main() {
  print('main function start');

  /**
     * main function start
     * Instance of 'Future<String>'
     * main function end
     */
//  print(getNetworkData());

  /**
     * main function start
        main function end
        请求到的数据:network data
     */
  getNetworkData().then((value) {
    print(value);
  });

  print('main function end');
}

Future<String> getNetworkData() async {
  // 可以像同步代码一样去使用 Future异步返回的结果
  var result = await Future.delayed(Duration(seconds: 3), () {
    return "network data";
  });

  /**
     * 1. 拿到结果 result之后 和其他数据进行拼接。
     * 2. 返回的时候并不需要包装一个Future,直接返回即可，返回值会默认被包装在一个Future中
     */
  return "请求到的数据:" + result;
}
