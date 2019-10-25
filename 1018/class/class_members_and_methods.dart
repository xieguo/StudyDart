// 类成员和方法
// 类中定义的成员和方法都属于类级别的
// dart 中使用 static 关键字来定义
class Student {
  String name;
  int sno;

  // 类成员
  static String time;

  study() {
    print('$name 在学习');
  }

  // 类方法
  static attendClass() {
    print('$time 去上课');
  }
}

void main() {
  var stu = Student();
  stu.name = 'Thank';
  stu.sno = 10;
  stu.study(); // Thank 在学习

  Student.time = '早上 8 点';
  Student.attendClass(); // 早上 8 点 去上课
}
