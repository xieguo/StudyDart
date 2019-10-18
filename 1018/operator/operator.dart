// is 用于判断变量是否指定数据类型
// is! 含义是 is 取反

void main() {
  var strValue = 'leavesC';
  print(strValue is String); // true
  print(strValue is int); // false
  print(strValue is! String); // true
}
