void main() {
  operator_is();
  operator_division();
  operator_as();
  operator_double_question_make();
  operator_question_dot();
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
