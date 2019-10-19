void main() {
  operator_is();
  operator_division();
  operator_as();
  operator_double_question_make();
  operator_question_dot();
  operator_cascade();
  operator_three_dot();
  operator_three_dot();
}

// is 用于判断变量是否指定数据类型
// is! 含义是 is 取反
void operator_is() {
  var strValue = 'leavesC';
  print(strValue is String); // true
  print(strValue is int); // false
  print(strValue is! String); // true
}

// ~/ 用于除法取商(取整） / 除法，不取整
void operator_division() {
  print(10 / 3); // 3.3333333333333335
  print(10 ~/ 3); // 3
}

// as 用于强制类型转换
void operator_as() {
  num numValue = 10;
  int intValue = numValue as int;

  print(intValue.runtimeType); // int
}

// 如果 ??= 左边的变量为 null, 则右边的操作生效
void operator_double_question_make() {
  var name = null;
  var age = 25;
  name ??= "leavesC";
  age ??= 30;

  print("name:$name"); // name:leavesC
  print("age: $age"); // age: 25
}

// 如果 ?. 左边的变量值不为 null, 则右边的操作生效
// 用于避免发生空指针异常
void operator_question_dot() {
  var area = null;
  print(area?.runtimeType); // null
}

// 级联运算符 ..
// 用于连续操作某个对象，而无需每次操作时都 调用该对象
void operator_cascade() {
  var list = <int>[1, 2, 3, 4, 5];
  list
    ..insert(0, 6)
    ..removeAt(4)
    ..add(7);

  print(list); // [6, 1, 2, 3, 5, 7]
}

// 扩展运算符 ... 和空值感知运算符 ...?
// 提供了一种多个元素插入集合的简洁方法
void operator_three_dot() {
  var list1 = <int>[1, 2, 3];
  var list2 = [0, ...list1];
  print(list2); // [0, 1, 2, 3]

  var list3;
  var list4 = [0, ...?list3];
  print(list4); // [0]
}
