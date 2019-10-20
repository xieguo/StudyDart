// dart 没有用户来专门声明接口的语法
// 类声明本身就是 dart 中的接口，实现类使用 implements 关键字来实现接口，
// 实现类必须 提供目标接口的所有功能的具体实现，即类必须重新定义它希望实现的接口中的每一个函数
class Eat {
  void eat() {}
}

class Speak {
  void speak() {}
}

class Human implements Eat, Speak {
  void funA() {
    print("function A");
  }

  @override
  void eat() {
    print("function eat");
  }

  @override
  void speak() {
    print("function speak");
  }
}

void main() {
  var human = Human();
  human.eat();
  human.speak();
}
