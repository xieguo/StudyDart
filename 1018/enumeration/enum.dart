// 枚举用于定义命名常量值，使用 enum 关键字声明枚举类型
enum State { RESUME, STOP, PAUSE }

void operator_enumeration() {
  var state = State.PAUSE;
  print(state); // State.PAUSE

//  State.RESUME
//  State.STOP
//  State.PAUSE
  State.values.forEach((state) {
    print(state);
  });
}

void main() {
  operator_enumeration();
}
