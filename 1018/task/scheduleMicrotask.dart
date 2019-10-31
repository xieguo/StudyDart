/**
 * 可以通过 dart 中 async 下的 scheduleMicrotask 来创建一个微任务，
 * 如果我们有一个任务不希望它放在 Event Queue中依次排队，那么就可以创建一个微任务了。
 */

/**
 * Future的代码是加入到 Event Queue 还是 加入到 Microtask 呢？
 */
import 'dart:async';

void main() {
  scheduleMicrotask(() {
    print('scheduleMicrotask');
  });
}
